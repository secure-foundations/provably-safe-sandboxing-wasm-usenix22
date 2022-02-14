#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include "utils.h"

typedef int32_t i32;

void netpbm_main();
byte* netpbm_get_mem();
void netpbm_gif2pnm(i32, i32);
i32 netpbm_new_databuf();
void netpbm_create_databuf(i32, i32);

void libjpeg_main();
byte* libjpeg_get_mem();
void libjpeg_pixels2jpg(i32, i32);
i32 libjpeg_new_databuf();
void libjpeg_create_databuf(i32, i32);
i32 libjpeg_new_pixels();
void libjpeg_create_pixels(i32, i32, i32, i32);

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

  netpbm_main();
  libjpeg_main();
  byte* netpbm_mem = netpbm_get_mem();
  byte* libjpeg_mem = libjpeg_get_mem();

  i32 imagein_p = netpbm_new_databuf();
  netpbm_create_databuf(imagein_p, imagein.len);

  i32 imagein_p_data_p = *(i32*)(netpbm_mem + imagein_p);
  memcpy(netpbm_mem + imagein_p_data_p, imagein.data, imagein.len);

  i32 pnmimage_p = netpbm_new_databuf();
  netpbm_gif2pnm(pnmimage_p, imagein_p);
  i32 pnmimage_p_data_p = *(i32*)(netpbm_mem + pnmimage_p);
  i32 pnmimage_p_len = *(i32*)(netpbm_mem + pnmimage_p + 4);

  databuf pnmimage = {.data = netpbm_mem + pnmimage_p_data_p, .len = pnmimage_p_len};
  printf(">>> conv gif\n");

  ASSERT_EQ(pnmimage.data[0], 'P');
  ASSERT_EQ(pnmimage.data[1], '6');
  ASSERT_EQ(pnmimage.data[2], '\n');

  int width = atoi(&pnmimage.data[3]);
  int height = atoi(strchr(&pnmimage.data[3], ' ') + 1);
  int max_color_value = atoi(strchr(&pnmimage.data[3], '\n') + 1);
  ASSERT_EQ(max_color_value, 255);
  byte* data = strchr(strchr(&pnmimage.data[3], '\n') + 1, '\n') + 1;
  i32 data_len = width * height * 3;
  printf(">>> grabbed pnm data\n");

  i32 pxls_p = libjpeg_new_pixels();
  libjpeg_create_pixels(pxls_p, data_len, width, height);
  i32 pxls_p_data_p = *(i32*)(libjpeg_mem + pxls_p);

  memcpy(libjpeg_mem + pxls_p_data_p, data, data_len);

  i32 imageout_p = libjpeg_new_databuf();
  libjpeg_pixels2jpg(imageout_p, pxls_p);

  i32 imageout_p_data_p = *(i32*)(libjpeg_mem + imageout_p);
  i32 imageout_p_len = *(i32*)(libjpeg_mem + imageout_p + 4);
  databuf imageout = {.data = libjpeg_mem + imageout_p_data_p, .len = imageout_p_len};
  printf(">>> conv jpg\n");

  write_file(argv[2], imageout);
  fprintf(stderr, ">>> write\n");

  return 0;

}
