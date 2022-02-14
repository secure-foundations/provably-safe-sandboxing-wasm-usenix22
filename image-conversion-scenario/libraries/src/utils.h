#ifndef _UTILS_H
#define _UTILS_H

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <errno.h>

// __        __
// \ \      / /_ _ ___ _ __ ___
//  \ \ /\ / / _` / __| '_ ` _ \
//   \ V  V / (_| \__ \ | | | | |
//    \_/\_/ \__,_|___/_| |_| |_|
//

#define EXPORTWASM(NAME) __attribute__((export_name(#NAME)))

//      _       _          _
//   __| | __ _| |_ __ _  | |_ _   _ _ __   ___  ___
//  / _` |/ _` | __/ _` | | __| | | | '_ \ / _ \/ __|
// | (_| | (_| | || (_| | | |_| |_| | |_) |  __/\__ \
//  \__,_|\__,_|\__\__,_|  \__|\__, | .__/ \___||___/
//                             |___/|_|

typedef unsigned char byte;

//                             _                     _ _ _
//   ___ _ __ _ __ ___  _ __  | |__   __ _ _ __   __| | (_)_ __   __ _
//  / _ \ '__| '__/ _ \| '__| | '_ \ / _` | '_ \ / _` | | | '_ \ / _` |
// |  __/ |  | | | (_) | |    | | | | (_| | | | | (_| | | | | | | (_| |
//  \___|_|  |_|  \___/|_|    |_| |_|\__,_|_| |_|\__,_|_|_|_| |_|\__, |
//                                                               |___/

#define stderror(X) do {                                                \
    int errsv = errno;                                                  \
    fprintf(stderr, "[%s:%d] %s: (%d) %s", __FILE__, __LINE__,          \
            X, errsv, strerror(errsv));                                 \
    exit(1);                                                            \
  } while(0)

#define error(X) do {                                                   \
    fprintf(stderr, "[%s:%d] Error @ %s\n", __FILE__, __LINE__, X);     \
    exit(1);                                                            \
  } while(0)

//      _       _        _            __
//   __| | __ _| |_ __ _| |__  _   _ / _|
//  / _` |/ _` | __/ _` | '_ \| | | | |_
// | (_| | (_| | || (_| | |_) | |_| |  _|
//  \__,_|\__,_|\__\__,_|_.__/ \__,_|_|
//

typedef struct {
  byte* data;
  size_t len;
} databuf;


// Create a databuf. Must be followed by a `free_databuf` at some point.
EXPORTWASM(create_databuf)
databuf create_databuf(size_t len);

// Free a databuf
EXPORTWASM(free_databuf)
void free_databuf(databuf d);

// Read a file. Must be followed by a `free_databuf` at some point.
databuf read_file(char* filename);

// Write a file. Still need to call the `free_databuf` at some point.
void write_file(char* filename, databuf d);

//        _          _
//  _ __ (_)_  _____| |___
// | '_ \| \ \/ / _ \ / __|
// | |_) | |>  <  __/ \__ \
// | .__/|_/_/\_\___|_|___/
// |_|

typedef struct {
  byte* data;
  size_t width;
  size_t height;
} pixels;


// Create a pixels struct. Must be followed by a `free_pixels` at some point.
EXPORTWASM(create_pixels)
pixels create_pixels(size_t size, size_t width, size_t height);

// Free a pixels struct
EXPORTWASM(free_pixels)
void free_pixels(pixels p);

//                                 _
//   ___ ___  _ ____   _____ _ __ (_) ___ _ __   ___ ___
//  / __/ _ \| '_ \ \ / / _ \ '_ \| |/ _ \ '_ \ / __/ _ \
// | (_| (_) | | | \ V /  __/ | | | |  __/ | | | (_|  __/
//  \___\___/|_| |_|\_/ \___|_| |_|_|\___|_| |_|\___\___|
//

EXPORTWASM(new_databuf)
databuf* new_databuf();

EXPORTWASM(delete_databuf)
void delete_databuf(databuf* d);

EXPORTWASM(new_pixels)
pixels* new_pixels();

EXPORTWASM(delete_pixels)
void delete_pixels(pixels* p);

#endif
