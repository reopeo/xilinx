#include <algorithm>
#include <cassert>
#include <fstream>
#include <iostream>
#include <list>
#include <map>
#include <vector>
#include "ap_fixed.h"
#include "ap_int.h"
#include "hls_stream.h"
using namespace std;

namespace hls::sim
{
  template<size_t n>
  struct Byte {
    unsigned char a[n];

    Byte()
    {
      for (size_t i = 0; i < n; ++i) {
        a[i] = 0;
      }
    }

    template<typename T>
    Byte<n>& operator= (const T &val)
    {
      std::memcpy(a, &val, n);
      return *this;
    }
  };

  struct SimException : public std::exception {
    const char *msg;
    const size_t line;
    SimException(const char *msg, const size_t line)
      : msg(msg), line(line)
    {
    }
  };

  void errExit(const size_t line, const char *msg)
  {
    std::string s;
    s += "at line ";
    s += std::to_string(line);
    s += " occurred problem: ";
    s += msg;
    s += "\n";
    fputs(s.c_str(), stderr);
    exit(1);
  }
}


namespace hls::sim
{
  struct Buffer {
    char *first;
    Buffer(char *addr) : first(addr)
    {
    }
  };

  struct DBuffer : public Buffer {
    static const size_t total = 1<<10;
    size_t ufree;

    DBuffer(size_t usize) : Buffer(nullptr), ufree(total)
    {
      first = new char[usize*ufree];
    }

    ~DBuffer()
    {
      delete[] first;
    }
  };

  struct CStream {
    char *front;
    char *back;
    size_t num;
    size_t usize;
    std::list<Buffer*> bufs;
    bool dynamic;

    CStream() : front(nullptr), back(nullptr),
                num(0), usize(0), dynamic(true)
    {
    }

    ~CStream()
    {
      for (Buffer *p : bufs) {
        delete p;
      }
    }

    template<typename T>
    T* data()
    {
      return (T*)front;
    }

    template<typename T>
    void transfer(hls::stream<T> *param)
    {
      while (!empty()) {
        param->write(*(T*)nextRead());
      }
    }

    bool empty();
    char* nextRead();
    char* nextWrite();
  };

  bool CStream::empty()
  {
    return num == 0;
  }

  char* CStream::nextRead()
  {
    assert(num > 0);
    char *res = front;
    front += usize;
    if (dynamic) {
      if (++static_cast<DBuffer*>(bufs.front())->ufree == DBuffer::total) {
        if (bufs.size() > 1) {
          bufs.pop_front();
          front = bufs.front()->first;
        } else {
          front = back = bufs.front()->first;
        }
      }
    }
    --num;
    return res;
  }

  char* CStream::nextWrite()
  {
    if (dynamic) {
      if (static_cast<DBuffer*>(bufs.back())->ufree == 0) {
        bufs.push_back(new DBuffer(usize));
        back = bufs.back()->first;
      }
      --static_cast<DBuffer*>(bufs.back())->ufree;
    }
    char *res = back;
    back += usize;
    ++num;
    return res;
  }

  std::list<CStream> streams;
  std::map<char*, CStream*> prebuilt;

  CStream* createStream(size_t usize)
  {
    streams.emplace_front();
    CStream &s = streams.front();
    {
      s.dynamic = true;
      s.bufs.push_back(new DBuffer(usize));
      s.front = s.bufs.back()->first;
      s.back = s.front;
      s.num = 0;
      s.usize = usize;
    }
    return &s;
  }

  template<typename T>
  CStream* createStream(hls::stream<T> *param)
  {
    CStream *s = createStream(sizeof(T));
    {
      s->dynamic = true;
      while (!param->empty()) {
        T data = param->read();
        memcpy(s->nextWrite(), (char*)&data, sizeof(T));
      }
      prebuilt[s->front] = s;
    }
    return s;
  }

  template<typename T>
  CStream* createStream(T *param, size_t usize)
  {
    streams.emplace_front();
    CStream &s = streams.front();
    {
      s.dynamic = false;
      s.bufs.push_back(new Buffer((char*)param));
      s.front = s.back = s.bufs.back()->first;
      s.usize = usize;
      s.num = ~0UL;
    }
    prebuilt[s.front] = &s;
    return &s;
  }

  CStream* findStream(char *buf)
  {
    return prebuilt.at(buf);
  }
}
class AESL_RUNTIME_BC {
  public:
    AESL_RUNTIME_BC(const char* name) {
      file_token.open( name);
      if (!file_token.good()) {
        cout << "Failed to open tv file " << name << endl;
        exit (1);
      }
      file_token >> mName;//[[[runtime]]]
    }
    ~AESL_RUNTIME_BC() {
      file_token.close();
    }
    int read_size () {
      int size = 0;
      file_token >> mName;//[[transaction]]
      file_token >> mName;//transaction number
      file_token >> mName;//pop_size
      size = atoi(mName.c_str());
      file_token >> mName;//[[/transaction]]
      return size;
    }
  public:
    fstream file_token;
    string mName;
};
using hls::sim::Byte;
extern "C" void cnn_top(Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*);
extern "C" void apatb_cnn_top_hw(volatile void * __xlx_apatb_param_x, volatile void * __xlx_apatb_param_weight0, volatile void * __xlx_apatb_param_bias0, volatile void * __xlx_apatb_param_weight1, volatile void * __xlx_apatb_param_bias1, volatile void * __xlx_apatb_param_weight2, volatile void * __xlx_apatb_param_bias2, volatile void * __xlx_apatb_param_weight3, volatile void * __xlx_apatb_param_bias3, volatile void * __xlx_apatb_param_y) {
using hls::sim::createStream;
  // Collect __xlx_x__tmp_vec
std::vector<Byte<4>> __xlx_x__tmp_vec;
for (size_t i = 0; i < 784; ++i){
__xlx_x__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_x)[i]);
}
  int __xlx_size_param_x = 784;
  int __xlx_offset_param_x = 0;
  int __xlx_offset_byte_param_x = 0*4;
  // Collect __xlx_weight0__tmp_vec
std::vector<Byte<4>> __xlx_weight0__tmp_vec;
for (size_t i = 0; i < 36; ++i){
__xlx_weight0__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_weight0)[i]);
}
  int __xlx_size_param_weight0 = 36;
  int __xlx_offset_param_weight0 = 0;
  int __xlx_offset_byte_param_weight0 = 0*4;
  // Collect __xlx_bias0__tmp_vec
std::vector<Byte<4>> __xlx_bias0__tmp_vec;
for (size_t i = 0; i < 4; ++i){
__xlx_bias0__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_bias0)[i]);
}
  int __xlx_size_param_bias0 = 4;
  int __xlx_offset_param_bias0 = 0;
  int __xlx_offset_byte_param_bias0 = 0*4;
  // Collect __xlx_weight1__tmp_vec
std::vector<Byte<4>> __xlx_weight1__tmp_vec;
for (size_t i = 0; i < 288; ++i){
__xlx_weight1__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_weight1)[i]);
}
  int __xlx_size_param_weight1 = 288;
  int __xlx_offset_param_weight1 = 0;
  int __xlx_offset_byte_param_weight1 = 0*4;
  // Collect __xlx_bias1__tmp_vec
std::vector<Byte<4>> __xlx_bias1__tmp_vec;
for (size_t i = 0; i < 8; ++i){
__xlx_bias1__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_bias1)[i]);
}
  int __xlx_size_param_bias1 = 8;
  int __xlx_offset_param_bias1 = 0;
  int __xlx_offset_byte_param_bias1 = 0*4;
  // Collect __xlx_weight2__tmp_vec
std::vector<Byte<4>> __xlx_weight2__tmp_vec;
for (size_t i = 0; i < 12544; ++i){
__xlx_weight2__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_weight2)[i]);
}
  int __xlx_size_param_weight2 = 12544;
  int __xlx_offset_param_weight2 = 0;
  int __xlx_offset_byte_param_weight2 = 0*4;
  // Collect __xlx_bias2__tmp_vec
std::vector<Byte<4>> __xlx_bias2__tmp_vec;
for (size_t i = 0; i < 32; ++i){
__xlx_bias2__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_bias2)[i]);
}
  int __xlx_size_param_bias2 = 32;
  int __xlx_offset_param_bias2 = 0;
  int __xlx_offset_byte_param_bias2 = 0*4;
  // Collect __xlx_weight3__tmp_vec
std::vector<Byte<4>> __xlx_weight3__tmp_vec;
for (size_t i = 0; i < 320; ++i){
__xlx_weight3__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_weight3)[i]);
}
  int __xlx_size_param_weight3 = 320;
  int __xlx_offset_param_weight3 = 0;
  int __xlx_offset_byte_param_weight3 = 0*4;
  // Collect __xlx_bias3__tmp_vec
std::vector<Byte<4>> __xlx_bias3__tmp_vec;
for (size_t i = 0; i < 10; ++i){
__xlx_bias3__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_bias3)[i]);
}
  int __xlx_size_param_bias3 = 10;
  int __xlx_offset_param_bias3 = 0;
  int __xlx_offset_byte_param_bias3 = 0*4;
  // Collect __xlx_y__tmp_vec
std::vector<Byte<4>> __xlx_y__tmp_vec;
for (size_t i = 0; i < 10; ++i){
__xlx_y__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_y)[i]);
}
  int __xlx_size_param_y = 10;
  int __xlx_offset_param_y = 0;
  int __xlx_offset_byte_param_y = 0*4;
  // DUT call
  cnn_top(__xlx_x__tmp_vec.data(), __xlx_weight0__tmp_vec.data(), __xlx_bias0__tmp_vec.data(), __xlx_weight1__tmp_vec.data(), __xlx_bias1__tmp_vec.data(), __xlx_weight2__tmp_vec.data(), __xlx_bias2__tmp_vec.data(), __xlx_weight3__tmp_vec.data(), __xlx_bias3__tmp_vec.data(), __xlx_y__tmp_vec.data());
// print __xlx_apatb_param_x
for (size_t i = 0; i < __xlx_size_param_x; ++i) {
((Byte<4>*)__xlx_apatb_param_x)[i] = __xlx_x__tmp_vec[__xlx_offset_param_x+i];
}
// print __xlx_apatb_param_weight0
for (size_t i = 0; i < __xlx_size_param_weight0; ++i) {
((Byte<4>*)__xlx_apatb_param_weight0)[i] = __xlx_weight0__tmp_vec[__xlx_offset_param_weight0+i];
}
// print __xlx_apatb_param_bias0
for (size_t i = 0; i < __xlx_size_param_bias0; ++i) {
((Byte<4>*)__xlx_apatb_param_bias0)[i] = __xlx_bias0__tmp_vec[__xlx_offset_param_bias0+i];
}
// print __xlx_apatb_param_weight1
for (size_t i = 0; i < __xlx_size_param_weight1; ++i) {
((Byte<4>*)__xlx_apatb_param_weight1)[i] = __xlx_weight1__tmp_vec[__xlx_offset_param_weight1+i];
}
// print __xlx_apatb_param_bias1
for (size_t i = 0; i < __xlx_size_param_bias1; ++i) {
((Byte<4>*)__xlx_apatb_param_bias1)[i] = __xlx_bias1__tmp_vec[__xlx_offset_param_bias1+i];
}
// print __xlx_apatb_param_weight2
for (size_t i = 0; i < __xlx_size_param_weight2; ++i) {
((Byte<4>*)__xlx_apatb_param_weight2)[i] = __xlx_weight2__tmp_vec[__xlx_offset_param_weight2+i];
}
// print __xlx_apatb_param_bias2
for (size_t i = 0; i < __xlx_size_param_bias2; ++i) {
((Byte<4>*)__xlx_apatb_param_bias2)[i] = __xlx_bias2__tmp_vec[__xlx_offset_param_bias2+i];
}
// print __xlx_apatb_param_weight3
for (size_t i = 0; i < __xlx_size_param_weight3; ++i) {
((Byte<4>*)__xlx_apatb_param_weight3)[i] = __xlx_weight3__tmp_vec[__xlx_offset_param_weight3+i];
}
// print __xlx_apatb_param_bias3
for (size_t i = 0; i < __xlx_size_param_bias3; ++i) {
((Byte<4>*)__xlx_apatb_param_bias3)[i] = __xlx_bias3__tmp_vec[__xlx_offset_param_bias3+i];
}
// print __xlx_apatb_param_y
for (size_t i = 0; i < __xlx_size_param_y; ++i) {
((Byte<4>*)__xlx_apatb_param_y)[i] = __xlx_y__tmp_vec[__xlx_offset_param_y+i];
}
}
