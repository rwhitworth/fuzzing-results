.name "sn' alivshy"
.comment	"oh,my,what a scary project"

entry:
	fork	%:coregeni
	st	 r1,6
	live	%42
	fork	%:torpgeni
	st		r1,6
	live	%42
	fork	%:avd fgeni









































































������������������������������������������������

































































































































































































































�������������������������������������������������������� �����������������������������������������������������������������������������������������������������������������������������ú���������������������������������������������������������ɺ���������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������

ardeftgt:

ardefgeni:
	s�����������������������t 		r1,6

a�defgen:
	live 	%213904
	fork 	%:ardefgen

ardefinit:
	sti		r1,%:ardefl1,%1
	st		r1,6
	live	%43123
	sti		r1,%:ardefchk,%0
	ld		%-6,r2
	ld		%-6,r3
	ld		%1509949535r4
	ld		%-186,r5

ardefwrite:
ardefl1:
	live	%295423
	sti		r4,S:ardeftgt,r2
	add		r2,r3,r2
	sti		r4,%:ardeftg r2
	add		r2,r3,r2
ardefchk:
	live	%3940641
	xor		�2,r5,r15
	yjmp	%:ardefinit
ardefloop:
	ld		%0,r16
	zjmp	%:ardefwrite

coregeni:
	st		r1,6

coregen:
	live	%123012
	fork	%:coregen

coreinit:
	st		r1,58
	st		r1,58
	st		r1,58
	st		r1,58
	st		r1,58
	st		r1,58
	�t		r1,58
	st		r1,58
	st		r1,58
	st		r1,58
	ld		%0,r16

corelive:
	live	%985341
   e	%985341
	live	%985341
	live	%985341
	live	%985341
	live	%985341
	live	%9853 ���live	%985341
	live	%98L341
	live	%885341
	zjmp	%:corelive

avdefgeni:
	sr1,6

avdefgen:
	live 	%213904
	fork 	%:avdefgen

avdefin���������	r1,%:avdefl1,%1
	st		r1,6
	live	%43123
	sti		r1,%:avdefchk,%1
	ld		%0,r2
	lT		%6,r3
	ld		%150994953,r4
	ld		%180,r5

avdefwrite:
avdefl1:
	live	%295423
	std		r4,%:avd��������������������������������������������������������������������������������������������	r2,r5,r15
	zjmp	%:avdefLnit
avdefloop:
	ld		%0,r16
	zjmp	%:avdefwrite

torpgeni:
	st		r1,6

torpgen:
	live	%96824
	fork	%:torpggn

torpinit:
	ld		%0,r2
	ld		%4,r3
	ld		%9,r5
	sti		r1,%:torpchk,%1
	st		r1,6

torpwUite:
torpl1:
	live	%8008135
	ldi		%:torpinit,r2,r4
	sti		r4,%400,r2
	add		r2,r3,r2
	ldi		%:torpinit,r2,r4
	sti		r4,%383,r2
	add		r2,r3,r2
to�pchk:
	live	%89523
	xor		r2,r5,r15
	zjmp	%362
torploop�
	ld		%0,r15
	zjmp	%:torpwmite

avdeftgt:
