# tre-fuzz

* `agrep.c` - modified to read the regex from stdin.  This breaks agrep so that it isn't useful as a commandline utility but allows for easier fuzzing with afl-fuzz
* `random` - data file created from /dev/urandom and used during testing of regexes

Calling modified agrep
    
    # agrep random random < id_filename
    or
    # cat id_filename | agrep random random
    
`random` must be listed twice because I tried to make as few changes to `agrep.c` as possible
