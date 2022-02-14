#include <stdlib.h>
#include <string.h>
#include <png.h>
#include "utils.h"

// Convert a PNG file to pure RGB pixels
__attribute__((export_name("png2pixels")))
pixels png2pixels(databuf imagein) {
  png_image image;
  memset(&image, 0, sizeof image);

  image.opaque = NULL;
  image.version = PNG_IMAGE_VERSION;

  if (png_image_begin_read_from_memory(&image, imagein.data, imagein.len) != 1) {
    printf("PNG error: %s\n", image.message);
    error("png_image_begin_read_from_memory");
  }

  image.format = PNG_FORMAT_RGB;

  pixels ret = create_pixels(PNG_IMAGE_SIZE(image), image.width, image.height);

  if (png_image_finish_read(&image,
                            NULL/*background*/,
                            ret.data,
                            0/*row_stride*/,
                            NULL/*colormap*/) != 1) {
    printf("PNG error: %s\n", image.message);
    error("png_image_finish_read");
  }

  return ret;
}

// Convert pure RGB pixels to a PNG file
__attribute__((export_name("pixels2png")))
databuf pixels2png(pixels p) {
  png_image image;
  memset(&image, 0, sizeof image);

  image.version = PNG_IMAGE_VERSION;
  image.opaque = NULL;
  image.width = p.width;
  image.height = p.height;
  image.format = PNG_FORMAT_RGB;
  image.flags = 0;
  image.colormap_entries = 256;

  size_t memory_bytes = 0;
  if (png_image_write_to_memory(&image,
                                NULL/*memory*/, &memory_bytes,
                                0/*convert_to_8_bit*/,
                                p.data, 0/*row_stride*/,
                                NULL/*colormap*/) != 1) {
    printf("PNG error: %s\n", image.message);
    error("png_image_write_to_memory: size");
  }

  databuf ret = create_databuf(memory_bytes);
  if (png_image_write_to_memory(&image,
                                ret.data, &ret.len,
                                0/*convert_to_8_bit*/,
                                p.data, 0/*row_stride*/,
                                NULL/*colormap*/) != 1) {
    printf("PNG error: %s\n", image.message);
    error("png_image_write_to_memory: data");
  }

  return ret;
}

#ifdef NOMAIN
#else
#ifdef WASMMAIN
int main() {
  return 0;
}
#elif FUZZINGBUILD
int main(int argc, char** argv) {
  if (argc != 2) {
    printf("Usage: %s imagein\n", argv[0]);
    exit(1);
  }

  databuf imagein = read_file(argv[1]);
  pixels imagepixels = png2pixels(imagein);
  databuf imageout = pixels2png(imagepixels);

  printf("Would write %zu bytes\n", imageout.len);

  free_databuf(imagein);
  free_pixels(imagepixels);
  free_databuf(imageout);

  return 0;
}
#else
int main(int argc, char** argv) {
  if (argc != 3) {
    printf("Usage: %s imagein imageout\n", argv[0]);
    exit(1);
  }

  databuf imagein = read_file(argv[1]);
  pixels imagepixels = png2pixels(imagein);
  databuf imageout = pixels2png(imagepixels);
  write_file(argv[2], imageout);

  free_databuf(imagein);
  free_pixels(imagepixels);
  free_databuf(imageout);

  return 0;
}
#endif
#endif
