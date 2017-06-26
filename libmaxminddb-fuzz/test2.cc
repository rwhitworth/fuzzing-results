#include <maxminddb.h>
#include <stdio.h>
#include <unistd.h>

#include <errno.h>
#include <stdlib.h>
#include <string.h>

extern "C" int LLVMFuzzerTestOneInput(const uint8_t *Data, size_t Size) {
  MMDB_s mmdb;
  char ip_address[] = "1.2.3.4";

  FILE *fp;
  char filename[] = "file.mmdb";
  fp = fopen(filename, "w");
  fwrite(Data, 1, Size, fp);
  fclose(fp);

  int status = MMDB_open(filename, MMDB_MODE_MMAP, &mmdb);

  if (MMDB_SUCCESS != status) {
//    fprintf(stderr, "\n  Can't open %s - %s\n", filename, MMDB_strerror(status));
      if (MMDB_IO_ERROR == status) {
//        fprintf(stderr, "    IO error: %s\n", strerror(errno));
      }
    return 0;
  }

  int gai_error, mmdb_error;
  MMDB_lookup_result_s result = MMDB_lookup_string(&mmdb, ip_address, &gai_error, &mmdb_error);

  if (0 != gai_error) {
//    fprintf(stderr, "\n  Error from getaddrinfo for %s - %s\n\n", ip_address, gai_strerror(gai_error));
    return 0;
  }

  if (MMDB_SUCCESS != mmdb_error) {
//    fprintf(stderr, "\n  Got an error from libmaxminddb: %s\n\n", MMDB_strerror(mmdb_error));
    return 0;
  }

  MMDB_entry_data_list_s *entry_data_list = NULL;
  if (result.found_entry) {
    int status = MMDB_get_entry_data_list(&result.entry, &entry_data_list);
    if (MMDB_SUCCESS != status) {
//      fprintf(stderr, "Got an error looking up the entry data - %s\n", MMDB_strerror(status));
      goto end;
    }
    if (NULL != entry_data_list) {
      MMDB_dump_entry_data_list(stdout, entry_data_list, 2);
    }
  } else {
//    fprintf(stderr, "\n  No entry for this IP address (%s) was found\n\n", ip_address);
  }

  end:
    MMDB_free_entry_data_list(entry_data_list);
    MMDB_close(&mmdb);
    unlink(filename);
    return 0;
}
