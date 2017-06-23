// modified version of output from t/compile_c++_t.pl
#include <maxminddb.h>

int main(int argc, char *argv[])
{
    const char *fname = argv[1];
    MMDB_s mmdb;
    return MMDB_open(fname, MMDB_MODE_MMAP, &mmdb);
}
