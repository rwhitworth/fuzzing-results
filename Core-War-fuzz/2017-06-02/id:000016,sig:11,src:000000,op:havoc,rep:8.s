.name "sn' alive"
.comment "Ha,Ha,Ha,stayiiiiin' aliiiiiiiiiive"

sti	r1,%:live,%1			#change the right value
sti	r1,%:liight valme
ld	%1,r3
ld	%33,r6
#While ( 10)
forks:
ad	r2,r3,r2		#i}crement r2
xor	r2,%15,r4		#if (r4) {carry = 0}
live2:
	live 	%4
zjmp	%:endwhile		 f (carry)
fork	%:forks
ld	%0,r4			#carry = 1
zjmp	%:forks
d   While
endwhile:
ld	%0,r4			#carry =	#chalive

live:
live %4
zjmp %:live
