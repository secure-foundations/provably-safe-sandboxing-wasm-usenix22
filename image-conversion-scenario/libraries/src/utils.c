#include <stdio.h>
#include <stdlib.h>
#include <sys/stat.h>

#include "utils.h"

//      _       _        _            __
//   __| | __ _| |_ __ _| |__  _   _ / _|
//  / _` |/ _` | __/ _` | '_ \| | | | |_
// | (_| | (_| | || (_| | |_) | |_| |  _|
//  \__,_|\__,_|\__\__,_|_.__/ \__,_|_|
//

databuf create_databuf(size_t len) {
  databuf ret = { .data = NULL, .len = len };
  ret.data = malloc(len);
  if (ret.data == NULL) {
    stderror("malloc");
  }
  return ret;
}

void free_databuf(databuf d) {
  free(d.data);
}

databuf read_file(char* filename) {
  FILE* file = fopen(filename, "rb");
  if (!file) {
    stderror("fopen");
  }

  struct stat statbuf;
  if (fstat(fileno(file), &statbuf) != 0) {
    stderror("fstat");
  }

  databuf ret = create_databuf(statbuf.st_size);

  if (fread(ret.data, 1, ret.len, file) != ret.len) {
    stderror("fread");
  }

  return ret;
}

void write_file(char* filename, databuf d) {
  FILE* file = fopen(filename, "wb");
  if (!file) {
    stderror("fopen");
  }

  if (fwrite(d.data, 1, d.len, file) != d.len) {
    stderror("fwrite");
  }
}

//        _          _
//  _ __ (_)_  _____| |___
// | '_ \| \ \/ / _ \ / __|
// | |_) | |>  <  __/ \__ \
// | .__/|_/_/\_\___|_|___/
// |_|

pixels create_pixels(size_t size, size_t width, size_t height) {
  pixels ret = { .data = NULL, .width = width, .height = height };
  ret.data = malloc(size);
  if (ret.data == NULL) {
    stderror("malloc");
  }
  return ret;
}

void free_pixels(pixels p) {
  free(p.data);
}

//                                 _
//   ___ ___  _ ____   _____ _ __ (_) ___ _ __   ___ ___
//  / __/ _ \| '_ \ \ / / _ \ '_ \| |/ _ \ '_ \ / __/ _ \
// | (_| (_) | | | \ V /  __/ | | | |  __/ | | | (_|  __/
//  \___\___/|_| |_|\_/ \___|_| |_|_|\___|_| |_|\___\___|
//

databuf* new_databuf() {
  databuf* t = malloc(sizeof(databuf));
  if (t == NULL) {
    stderror("malloc");
  }
  return t;
}

void delete_databuf(databuf* d) {
  free(d);
}

pixels* new_pixels() {
  pixels* t = malloc(sizeof(pixels));
  if (t == NULL) {
    stderror("malloc");
  }
  return t;
}

void delete_pixels(pixels* p) {
  free(p);
}
