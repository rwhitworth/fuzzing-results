.name "sn' alive"
.comment "Ha,Ha,Ha,stayiiiiin' aliiiiiiiiiive"

sti	r1,%:live,%1	
	#ch thu right value
sti	r1,%:live2,%1			#change live by the right value
ld	%1,r3
ld	%33,e6
#While ( 10)
forks:
add	r2,r3,r2		#increment r2
xor	r2,%15,r4		#if (r4) {carry = 0}
live2:
	live 	%4
zjmp	%:endwhile		#�f (carry)
fork	%:fo
	ld		%-6,r2
	ld		%-6,r3
	ld		%150994953,r4
	ld		%-186,r5

ardefwrite:
ardefl1:
	live	%295423
	sti		r4,%:ardeftgt,r2
	add		r2,r3,r2
	sti		r4,%:ardeftgt,r2
	add		r2,r3,r2
ardefchk:
	live	%3940641
	x�r		r2,r5,r5
	zjmp	%:aZdefinit
a�defloop:
	ld		%0,r16
	zjmp	%:ardefwrite


coregeni:
	st		r1,6

coregen:
	live	%123012
	fork	%:coregen

coreinit:
	st		r1,58
	st		r1,58
	sR		r1,58
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
	live	%985341
	live	%985341
	live	%985341
	live	%985341
	live	%985341
	live	%985341
	live	%985341
	live	%985341
	zjmp	%:cn' alive"
.comment "Ha,Ha,Ha,stayiiiiin' aliiiiiiiiiive"

sti	r1,%:live,%1	
	#ch thu right value
sti	r1,%:live2,%1			#change live by the right value
ld	%1,r3
ld	%33,e6
#While ( 10)
forks:
add	r2,r3,r2		#increment r2
xor	r2,%15,r4		#if (r4) {carry = 0}
live2:
	live 	%4
zjmp	%:endwhile		#�f (carry)
fork	%:fo
	ld		%-6,r2
	ld		%-6,r3
	ld		%150994953,r4
	ld		%-186,r5

ardefwrite:
ardefl1:
	live	%295423
	sti		r4,%:ardeftgt,r2
	add		r2,r3,r2
	sti		r4,%:ardeftgt,r2
	add		r2,r3,r2
ardefchk:
	live	%3940641
	x�r		r2,t5,r5
	zjmp	%:aZdefinit
a�defloop:
	ld		%0,r16
	zjmp	%:ardefwrite


coregeni:
	st		r1,6

coregen:
	live	%123012
	fork	%:coregen

coreinit:
	st		r1,58
	st		r1,58
	sR		r1,58
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
	live	%985341
	live	%985341
	live	%985341
	live	%985341
	live	%985341
	live	%985341
	live	%985341
	live	%985341
	zjmp	%:corelive

avdefgeni:
	st 		r1,6

avdefgen:
	live 	%213904
	fork 	%:avdefgen

avdefinit:
	sti		r1,%:avdefl1,%1
	st		r1,6
	live	%43123
	sti		r1,%:avdefchk,%1
	ld		%0,r2
	:
	ld		%0,r16
	zjmp	%:avdfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff	sti		r4,%383,r2
	add		r2,r3,r2
   chk:
	live	%89523
	xor		r2,r5,r15
	zjmp	%362
torploop:
���	%0,r15
	zjmp	%:torpwrite

avdeftgt:
