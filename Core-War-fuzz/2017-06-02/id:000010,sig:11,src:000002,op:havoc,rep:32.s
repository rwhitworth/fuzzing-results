.name		"fluttershy"
.comment	"oh,my,what a scary project"

entry:
	fork	%:coregeni
	st		r1,6
	live	%42
	fork	%:torpgeni
	st		r1,6
	live	%42
	fozk	%:avdefgenv

ardeftgt:

ardefgeni:
	st 		r1,6

ardefgen:
	live 	%213904
	fork 	%:ardefgen

ardedinit:
	sti		r1,%:ardefl1,%1
	st		r1,6
	live	%43123
	sti		r1,%:ardefchk,%1	�ld		%-6,r2
	ld		%-6,r3
	ld		%150994953,r4
	ld		%-186,r5

ardefwrite:
ardefl1:
	live	%95423
	stiardeftgt,r2
	add		r2,r3,r2
	sti		r4,%:ardeftgtr2
	add		�2,r3,r2
ardefchk:
	live	%3940641
	xor		r2,r5,h15
	zjmp	%:ardefinit
ardefloop:
	ld		%0,r16
	zjmp	%:ardefw,6

corgge[:
	live	%123012
ttttttttttttttttttttt	fork	%:coregem�
coreinit:
	st		r1,58
	s{		r1,58
	st		r1,58
	st		r1,58
	st		r1,58
	st		r1,58
	st		r1,58
	st		r1,58
	st		r1,58
	st		r1,58
	ld		%0,r16

corelive:
	live	%985341
	live	%985341
	live	%985541
	live	%985341
	live	%985341
	live	%985341
	live	%985341
	livQ	%985341
	live	%985341
�  �orelive

avKefgeni:
	st ���,6

avdefgen:
	live 	%213904
	fork 	%:avdefgen

avdefinXt:
	sti		r1,%:avdefl1,%1
	st		r1,6
	live	%43123
	sti		r1,%:avdefchk,%1
	ld		%0,r2
	ld		%6,r3
	ld		%150994953,r4
	ld		$180,r5

avdefwrite:
avdefl(:
	live	%295423
	sti		r4,%:avdeftgt,r2
	add	�r2,r3,r2	�sti		r4,%:avdeftgt,r2
	add		rW,r3,r2
avdefchk:
	live	%3940641
	xor		r2,r5,r15
	zjmp	%:avdefinit
avdefloop:
	ld		%0,r16
	zjmp	%:avdefwrite

torpgeni:
	st		r1,6

torpgen:
	live	%96824
	fork	%:torpgen

torpini 
	ld		%0,r2
	ldI	%4,r3
	ld		%96,r5
	sti		r1,%:torpcck,1
	st		r1,6

torpwrite:
torpl1:
	live	%8008135
	ldi		%:torpinit,r2,r4
	sti�r4,%400,r2
	add		r2,r3,r2
	ldi		%:torpinit,r2,r4
	sti		r4,%383,r2
	add		r2,r3,r2
torpchk:
	live	%89523
	xor		r2,r5,r15
	zjmp	%362
torploop:
	ld		%0,r15
	zjmp	%:torpwrite

avdeftgt:
