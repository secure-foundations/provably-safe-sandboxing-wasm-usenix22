#include <stdlib.h>
#include <string.h>
#include <turbojpeg.h>
#include "utils.h"

// Convert a JPG file to pure RGB pixels
__attribute__((export_name("jpg2pixels")))
pixels jpg2pixels(databuf imagein) {
  tjhandle handle = tjInitDecompress();
  if (handle == NULL) {
    error(tjGetErrorStr());
  }

  int width, height;
  int jpegSubsamp, jpegColorspace;

  if (tjDecompressHeader3(handle,
                          imagein.data, imagein.len,
                          &width, &height,
                          &jpegSubsamp, &jpegColorspace) != 0) {
    error(tjGetErrorStr());
  }

  pixels ret = create_pixels(width * height * 3, width, height);

  if (tjDecompress2(handle,
                    imagein.data, imagein.len,
                    ret.data, width, 0/*pitch*/, height,
                    TJPF_RGB,
                    TJFLAG_NOREALLOC) != 0) {
    error(tjGetErrorStr());
  }

  return ret;
}

// Convert pure RGB pixels to a JPG file
__attribute__((export_name("pixels2jpg")))
databuf pixels2jpg(pixels p) {
  tjhandle handle = tjInitCompress();
  if (handle == NULL) {
    error(tjGetErrorStr());
  }

  size_t bufsize = tjBufSize(p.width, p.height, TJSAMP_444);
  if (bufsize == -1) {
    error("tjBufSize: arguments out of bounds");
  }

  databuf ret = create_databuf(bufsize);

  tjCompress2(handle,
              p.data, p.width, 0/*pitch*/, p.height,
              TJPF_RGB,
              &ret.data, &ret.len,
              TJSAMP_444,
              80/*quality*/,
              TJFLAG_NOREALLOC);
  if (strcmp(tjGetErrorStr(), "No error") != 0) {
    error(tjGetErrorStr());
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
  pixels imagepixels = jpg2pixels(imagein);
  databuf imageout = pixels2jpg(imagepixels);

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
  pixels imagepixels = jpg2pixels(imagein);
  databuf imageout = pixels2jpg(imagepixels);
  write_file(argv[2], imageout);

  free_databuf(imagein);
  free_pixels(imagepixels);
  free_databuf(imageout);

  return 0;
}
#endif
#endif
