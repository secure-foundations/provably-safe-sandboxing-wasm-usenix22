// GIF to JPG

#include <stdlib.h>
#include <stdio.h>
#include "utils.h"

databuf gif2pnm(databuf imagein);
databuf pixels2jpg(pixels p);

#define ASSERT_EQ(A, B)                         \
  do {                                          \
    if ((A) != (B)) {                           \
      error(#A " != " #B "");                   \
    }                                           \
  } while(0)

int main(int argc, char** argv) {
  if (argc != 3) {
    printf("Usage: %s imagein.gif imageout.jpg\n", argv[0]);
    exit(1);
  }

  databuf imagein = read_file(argv[1]);
  fprintf(stderr, ">>> read\n");

  databuf pnmimage = gif2pnm(imagein);
  fprintf(stderr, ">>> conv gif\n");

  ASSERT_EQ(pnmimage.data[0], 'P');
  ASSERT_EQ(pnmimage.data[1], '6');
  ASSERT_EQ(pnmimage.data[2], '\n');

  int width = atoi(&pnmimage.data[3]);
  int height = atoi(strchr(&pnmimage.data[3], ' ') + 1);
  int max_color_value = atoi(strchr(&pnmimage.data[3], '\n') + 1);
  ASSERT_EQ(max_color_value, 255);
  byte* data = strchr(strchr(&pnmimage.data[3], '\n') + 1, '\n') + 1;

  pixels p = create_pixels(width * height * 3, width, height);
  memcpy(p.data, data, width * height * 3);

  databuf imageout = pixels2jpg(p);
  fprintf(stderr, ">>> conv jpg\n");

  write_file(argv[2], imageout);
  fprintf(stderr, ">>> write\n");

  free_databuf(imagein);
  free_databuf(pnmimage);
  free_databuf(imageout);
  free_pixels(p);

  return 0;

}
