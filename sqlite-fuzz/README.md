# sqlite-fuzz

- 2017-05-12-lemon.c - contains inputs that cause segfaults and inputs that trip assertions, when run against the `lemon` program

- 2017-05-13-lemon.c - contains inputs that cause segfaults and inputs that trip assertions, when run against the `lemon` program

`lemon` compiled with afl-clang-fast.  `AFL_HARDEN=1` was defined in environment.

Example crashes verified against (https://www.sqlite.org/src/tarball/sqlite.tar.gz) taken on 2017-05-31:

```
==19797== Memcheck, a memory error detector
==19797== Copyright (C) 2002-2013, and GNU GPL'd, by Julian Seward et al.
==19797== Using Valgrind-3.10.0 and LibVEX; rerun with -h for copyright info
==19797== Command: /root/build/lemon id:000133,sig:11,src:000172+001903,op:splice,rep:4
==19797==
id:000133,sig:11,src:000172+001903,op:splice,rep:4:1: Token "" should be either "%" or a nonterminal name.
id:000133,sig:11,src:000172+001903,op:splice,rep:4:1: Token "�" should be either "%" or a nonterminal name.
==19797== Invalid read of size 1
==19797==    at 0x412A43: Parse (lemon.c:2831)
==19797==    by 0x40D570: main (lemon.c:1631)
==19797==  Address 0x51fcc38 is 0 bytes after a block of size 73,144 alloc'd
==19797==    at 0x4C28C20: malloc (vg_replace_malloc.c:296)
==19797==    by 0x41115B: Parse (lemon.c:2772)
==19797==    by 0x40D570: main (lemon.c:1631)
==19797==
id:000133,sig:11,src:000172+001903,op:splice,rep:4:1: C code starting on this line is not terminated before the end of the file.
==19797== Invalid read of size 1
==19797==    at 0x412B0C: Parse (lemon.c:2881)
==19797==    by 0x40D570: main (lemon.c:1631)
==19797==  Address 0x51fcc38 is 0 bytes after a block of size 73,144 alloc'd
==19797==    at 0x4C28C20: malloc (vg_replace_malloc.c:296)
==19797==    by 0x41115B: Parse (lemon.c:2772)
==19797==    by 0x40D570: main (lemon.c:1631)
==19797==
==19797== Invalid write of size 1
==19797==    at 0x412B10: Parse (lemon.c:2882)
==19797==    by 0x40D570: main (lemon.c:1631)
==19797==  Address 0x51fcc38 is 0 bytes after a block of size 73,144 alloc'd
==19797==    at 0x4C28C20: malloc (vg_replace_malloc.c:296)
==19797==    by 0x41115B: Parse (lemon.c:2772)
==19797==    by 0x40D570: main (lemon.c:1631)
==19797==
id:000133,sig:11,src:000172+001903,op:splice,rep:4:1: There is no prior rule upon which to attach the code fragment which begins on this line.
==19797== Invalid write of size 1
==19797==    at 0x4156BC: Parse (lemon.c:2884)
==19797==    by 0x40D570: main (lemon.c:1631)
==19797==  Address 0x51fcc38 is 0 bytes after a block of size 73,144 alloc'd
==19797==    at 0x4C28C20: malloc (vg_replace_malloc.c:296)
==19797==    by 0x41115B: Parse (lemon.c:2772)
==19797==    by 0x40D570: main (lemon.c:1631)
==19797==
==19797== Invalid read of size 1
==19797==    at 0x411EC8: Parse (lemon.c:2797)
==19797==    by 0x40D570: main (lemon.c:1631)
==19797==  Address 0x51fcc38 is 0 bytes after a block of size 73,144 alloc'd
==19797==    at 0x4C28C20: malloc (vg_replace_malloc.c:296)
==19797==    by 0x41115B: Parse (lemon.c:2772)
==19797==    by 0x40D570: main (lemon.c:1631)
==19797==
==19797==
==19797== HEAP SUMMARY:
==19797==     in use at exit: 116,426 bytes in 13 blocks
==19797==   total heap usage: 15 allocs, 2 frees, 190,138 bytes allocated
==19797==
==19797== LEAK SUMMARY:
==19797==    definitely lost: 0 bytes in 0 blocks
==19797==    indirectly lost: 0 bytes in 0 blocks
==19797==      possibly lost: 0 bytes in 0 blocks
==19797==    still reachable: 116,426 bytes in 13 blocks
==19797==         suppressed: 0 bytes in 0 blocks
==19797== Rerun with --leak-check=full to see details of leaked memory
==19797==
==19797== For counts of detected and suppressed errors, rerun with: -v
==19797== ERROR SUMMARY: 5 errors from 5 contexts (suppressed: 0 from 0)
```






```
==21531== Memcheck, a memory error detector
==21531== Copyright (C) 2002-2013, and GNU GPL'd, by Julian Seward et al.
==21531== Using Valgrind-3.10.0 and LibVEX; rerun with -h for copyright info
==21531== Command: /root/build/lemon id:000031,sig:11,src:000964+000819,op:splice,rep:2
==21531==
id:000031,sig:11,src:000964+000819,op:splice,rep:2:0: The start symbol "d" occurs on the right-hand side of a rule. This will result in a parser which does not work properly.
id:000031,sig:11,src:000964+000819,op:splice,rep:2:0: Nonterminal "b" has no rules.
==21531== Invalid write of size 1
==21531==    at 0x4C2D9C3: memcpy@@GLIBC_2.14 (vg_replace_strmem.c:915)
==21531==    by 0x41F2E3: lemon_addtext (lemon.c:88)
==21531==    by 0x41F2E3: lemon_vsprintf (lemon.c:127)
==21531==    by 0x41F2E3: lemon_sprintf (lemon.c:149)
==21531==    by 0x41BC56: ReportTable (lemon.c:4326)
==21531==    by 0x4545454545454544: ???
==21531==    by 0x4545454545454544: ???
==21531==    by 0x4545454545454544: ???
==21531==    by 0x4545454545454544: ???
==21531==    by 0x4545454545454544: ???
==21531==    by 0x4545454545454544: ???
==21531==    by 0x4545454545454544: ???
==21531==    by 0x4545454545454544: ???
==21531==    by 0x4545454545454544: ???
==21531==  Address 0xfff001000 is not stack'd, malloc'd or (recently) free'd
==21531==
==21531==
==21531== Process terminating with default action of signal 11 (SIGSEGV)
==21531==  Access not within mapped region at address 0xFFF001000
==21531==    at 0x4C2D9C3: memcpy@@GLIBC_2.14 (vg_replace_strmem.c:915)
==21531==    by 0x41F2E3: lemon_addtext (lemon.c:88)
==21531==    by 0x41F2E3: lemon_vsprintf (lemon.c:127)
==21531==    by 0x41F2E3: lemon_sprintf (lemon.c:149)
==21531==    by 0x41BC56: ReportTable (lemon.c:4326)
==21531==    by 0x4545454545454544: ???
==21531==    by 0x4545454545454544: ???
==21531==    by 0x4545454545454544: ???
==21531==    by 0x4545454545454544: ???
==21531==    by 0x4545454545454544: ???
==21531==    by 0x4545454545454544: ???
==21531==    by 0x4545454545454544: ???
==21531==    by 0x4545454545454544: ???
==21531==    by 0x4545454545454544: ???
==21531==  If you believe this happened as a result of a stack
==21531==  overflow in your program's main thread (unlikely but
==21531==  possible), you can try to increase the size of the
==21531==  main thread stack using the --main-stacksize= flag.
==21531==  The main thread stack size used in this run was 8388608.
==21531==
==21531== HEAP SUMMARY:
==21531==     in use at exit: 65,436 bytes in 55 blocks
==21531==   total heap usage: 63 allocs, 8 frees, 77,405 bytes allocated
==21531==
==21531== LEAK SUMMARY:
==21531==    definitely lost: 222 bytes in 5 blocks
==21531==    indirectly lost: 200 bytes in 1 blocks
==21531==      possibly lost: 1,600 bytes in 1 blocks
==21531==    still reachable: 63,414 bytes in 48 blocks
==21531==         suppressed: 0 bytes in 0 blocks
==21531== Rerun with --leak-check=full to see details of leaked memory
==21531==
==21531== For counts of detected and suppressed errors, rerun with: -v
==21531== ERROR SUMMARY: 1 errors from 1 contexts (suppressed: 0 from 0)
```



```
==27534== Memcheck, a memory error detector
==27534== Copyright (C) 2002-2013, and GNU GPL'd, by Julian Seward et al.
==27534== Using Valgrind-3.10.0 and LibVEX; rerun with -h for copyright info
==27534== Command: /root/build/lemon id:000067,sig:11,src:001333,op:havoc,rep:4
==27534==
==27534== Invalid read of size 4
==27534==    at 0x41BDAC: ReportTable (lemon.c:4338)
==27534==    by 0x5656565656565655: ???
==27534==    by 0x5656565656565655: ???
==27534==    by 0x5656565656565655: ???
==27534==    by 0x5A5A5A5A5A5A5655: ???
==27534==    by 0x5A5A5A5A5A5A5A59: ???
==27534==    by 0x2C2259: ???
==27534==    by 0x2E00000032: ???
==27534==    by 0x1400000029: ???
==27534==    by 0x7: ???
==27534==    by 0x51EF92F: ???
==27534==    by 0x12A: ???
==27534==  Address 0x5a5a5a5a5a5a5abe is not stack'd, malloc'd or (recently) free'd
==27534==
==27534==
==27534== Process terminating with default action of signal 11 (SIGSEGV)
==27534==  General Protection Fault
==27534==    at 0x41BDAC: ReportTable (lemon.c:4338)
==27534==    by 0x5656565656565655: ???
==27534==    by 0x5656565656565655: ???
==27534==    by 0x5656565656565655: ???
==27534==    by 0x5A5A5A5A5A5A5655: ???
==27534==    by 0x5A5A5A5A5A5A5A59: ???
==27534==    by 0x2C2259: ???
==27534==    by 0x2E00000032: ???
==27534==    by 0x1400000029: ???
==27534==    by 0x7: ???
==27534==    by 0x51EF92F: ???
==27534==    by 0x12A: ???
==27534==
==27534== HEAP SUMMARY:
==27534==     in use at exit: 201,079 bytes in 1,456 blocks
==27534==   total heap usage: 2,156 allocs, 700 frees, 217,926 bytes allocated
==27534==
==27534== LEAK SUMMARY:
==27534==    definitely lost: 477 bytes in 3 blocks
==27534==    indirectly lost: 200 bytes in 1 blocks
==27534==      possibly lost: 66,318 bytes in 549 blocks
==27534==    still reachable: 134,084 bytes in 903 blocks
==27534==         suppressed: 0 bytes in 0 blocks
==27534== Rerun with --leak-check=full to see details of leaked memory
==27534==
==27534== For counts of detected and suppressed errors, rerun with: -v
==27534== ERROR SUMMARY: 1 errors from 1 contexts (suppressed: 0 from 0)
```





```
==31501== Memcheck, a memory error detector
==31501== Copyright (C) 2002-2013, and GNU GPL'd, by Julian Seward et al.
==31501== Using Valgrind-3.10.0 and LibVEX; rerun with -h for copyright info
==31501== Command: /root/build/lemon id:000098,sig:11,src:001459,op:havoc,rep:4
==31501==
id:000098,sig:11,src:001459,op:havoc,rep:4:3: Nonterminal "y" has no rules.
id:000098,sig:11,src:001459,op:havoc,rep:4:0: Nonterminal "dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddy" has no rules.
id:000098,sig:11,src:001459,op:havoc,rep:4:1: Label BBBdB used for multiple symbols on the RHS of a rule.
id:000098,sig:11,src:001459,op:havoc,rep:4:1: Label BBBdB for "BBB(BBBdB)" is never used.
*** stack smashing detected ***: /root/build/lemon terminated
==31501== Invalid read of size 1
==31501==    at 0x55EF688: ??? (in /lib/x86_64-linux-gnu/libgcc_s.so.1)
==31501==    by 0x55F06F7: _Unwind_Backtrace (in /lib/x86_64-linux-gnu/libgcc_s.so.1)
==31501==    by 0x4F2A525: backtrace (backtrace.c:109)
==31501==    by 0x4E54D61: backtrace_and_maps (libc_fatal.c:47)
==31501==    by 0x4EA81AE: __libc_message (libc_fatal.c:172)
==31501==    by 0x4F2DAA6: __fortify_fail (fortify_fail.c:31)
==31501==    by 0x4F2DA6F: __stack_chk_fail (stack_chk_fail.c:28)
==31501==    by 0x41CF70: ReportTable (lemon.c:4459)
==31501==    by 0x6464646464646463: ???
==31501==    by 0x6464646464646463: ???
==31501==    by 0x2C227964646463: ???
==31501==    by 0x51EFAEF: ???
==31501==  Address 0x6464646464646464 is not stack'd, malloc'd or (recently) free'd
==31501==
==31501==
==31501== Process terminating with default action of signal 11 (SIGSEGV)
==31501==  General Protection Fault
==31501==    at 0x55EF688: ??? (in /lib/x86_64-linux-gnu/libgcc_s.so.1)
==31501==    by 0x55F06F7: _Unwind_Backtrace (in /lib/x86_64-linux-gnu/libgcc_s.so.1)
==31501==    by 0x4F2A525: backtrace (backtrace.c:109)
==31501==    by 0x4E54D61: backtrace_and_maps (libc_fatal.c:47)
==31501==    by 0x4EA81AE: __libc_message (libc_fatal.c:172)
==31501==    by 0x4F2DAA6: __fortify_fail (fortify_fail.c:31)
==31501==    by 0x4F2DA6F: __stack_chk_fail (stack_chk_fail.c:28)
==31501==    by 0x41CF70: ReportTable (lemon.c:4459)
==31501==    by 0x6464646464646463: ???
==31501==    by 0x6464646464646463: ???
==31501==    by 0x2C227964646463: ???
==31501==    by 0x51EFAEF: ???
==31501==
==31501== HEAP SUMMARY:
==31501==     in use at exit: 57,168 bytes in 87 blocks
==31501==   total heap usage: 107 allocs, 20 frees, 62,956 bytes allocated
==31501==
==31501== LEAK SUMMARY:
==31501==    definitely lost: 69 bytes in 2 blocks
==31501==    indirectly lost: 200 bytes in 1 blocks
==31501==      possibly lost: 0 bytes in 0 blocks
==31501==    still reachable: 56,899 bytes in 84 blocks
==31501==         suppressed: 0 bytes in 0 blocks
==31501== Rerun with --leak-check=full to see details of leaked memory
==31501==
==31501== For counts of detected and suppressed errors, rerun with: -v
==31501== ERROR SUMMARY: 1 errors from 1 contexts (suppressed: 0 from 0)
```
