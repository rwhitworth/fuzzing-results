# gdb backtraces

These are a few backtraces of the first few inputs.  They're unique, but I don't expect they all will be unique.
Normally I provide valgrind output, but valgrind decided to cover up the segmentation fault, so using gdb instead.

gdb called via `gdb --batch --eval-command=bt ~/Core-War/corewar core`

`id:000000,sig:11,src:000124,op:flip1,pos:2228.cor`

```
Program terminated with signal SIGSEGV, Segmentation fault.
#0  0x000000000040a74e in ft_load (e=0x7ffff54349a8, cursor=0x166c090, r2=<optimized out>, ind=<optimized out>) at funcs/ft_lldi.c:20
#1  ft_lldi (e=0x7ffff54349a8, cursor=0x166c090) at funcs/ft_lldi.c:46
#2  0x0000000000406ab1 in ft_cycle_end_and_execute (e=0x7ffff54349a8, cursor=0x166c090) at srcs/adjust_cycles.c:86
#3  0x00000000004054a1 in ft_move_cursors (e=0x7ffff54349a8) at srcs/move_cursors.c:51
#4  0x0000000000401450 in main (ac=5, av=0x7ffff54518f8) at srcs/main_vm.c:28
```

`id:000000,sig:11,src:000144,op:havoc,rep:8.cor`

```
Program terminated with signal SIGSEGV, Segmentation fault.
#0  0x00000000004053ee in ft_move_cursors (e=0x7ffc40e6b898) at srcs/move_cursors.c:42
#1  0x0000000000401450 in main (ac=5, av=0x7ffc40e887e8) at srcs/main_vm.c:28
```

`id:000001,sig:11,src:000050+000145,op:splice,rep:8.cor`

```
Program terminated with signal SIGSEGV, Segmentation fault.
#0  0x000000000040a74e in ft_load (e=0x7ffca1445168, cursor=0x76d090, r2=<optimized out>, ind=<optimized out>) at funcs/ft_lldi.c:20
20              cursor->reg[e->a[MODA(cursor->index)].hex - 1] = value;
#0  0x000000000040a74e in ft_load (e=0x7ffca1445168, cursor=0x76d090, r2=<optimized out>, ind=<optimized out>) at funcs/ft_lldi.c:20
#1  ft_lldi (e=0x7ffca1445168, cursor=0x76d090) at funcs/ft_lldi.c:46
#2  0x0000000000406ab1 in ft_cycle_end_and_execute (e=0x7ffca1445168, cursor=0x76d090) at srcs/adjust_cycles.c:86
#3  0x00000000004054a1 in ft_move_cursors (e=0x7ffca1445168) at srcs/move_cursors.c:51
#4  0x0000000000401450 in main (ac=5, av=0x7ffca14620b8) at srcs/main_vm.c:28
```

`id:000001,sig:11,src:000124,op:flip1,pos:2228.cor`

```
Program terminated with signal SIGSEGV, Segmentation fault.
#0  0x00000000004053ee in ft_move_cursors (e=0x7ffdeb4386e8) at srcs/move_cursors.c:42
42                      if (cursor->counter)
#0  0x00000000004053ee in ft_move_cursors (e=0x7ffdeb4386e8) at srcs/move_cursors.c:42
#1  0x0000000000401450 in main (ac=5, av=0x7ffdeb455638) at srcs/main_vm.c:28
```
