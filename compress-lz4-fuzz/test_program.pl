use strict;
use Compress::LZ4;

while(Compress::LZ4::afl_persistent_loop(10000)) {
my $input = <>;
my $decompressed = decompress($input);
}
