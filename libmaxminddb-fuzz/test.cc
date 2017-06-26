#include <maxminddb.h>
#include <stdio.h>
#include <unistd.h>

extern "C" int LLVMFuzzerTestOneInput(const uint8_t *Data, size_t Size) {
  int result = 0;
  MMDB_s mmdb;

  FILE *fp;
  fp = fopen("file.mmdb" , "w");
  fwrite(Data, 1, Size, fp);
  fclose(fp);

  result = MMDB_open("file.mmdb", MMDB_MODE_MMAP, &mmdb);
  if (MMDB_SUCCESS != result) {
    unlink("file.mmdb");
    return 0;
  }

  int gai_error, mmdb_error;
  MMDB_lookup_result_s r = MMDB_lookup_string(&mmdb, "1.2.3.4", &gai_error, &mmdb_error);
  if (0 != gai_error) {
    unlink("file.mmdb");
    return 0;
  }
  if (MMDB_SUCCESS != mmdb_error) {
    unlink("file.mmdb");
    return 0;
  }
  MMDB_close(&mmdb);

  r = MMDB_lookup_string(&mmdb, "2001:540::1", &gai_error, &mmdb_error);
  if (0 != gai_error) {
    unlink("file.mmdb");
    return 0;
  }
  if (MMDB_SUCCESS != mmdb_error) {
    unlink("file.mmdb");
    return 0;
  }
  MMDB_close(&mmdb);

  unlink("file.mmdb");
  return 0;
}
