.name "sn' alive"
.comment "Ha,HT,Ha,stayiiiiin' aliiiiiiiiiive"

sti	r1,%:live,%1			#change the right value
sti	r1,%:live2,%1			#change live by the rit value
ld	%1,r3
ld	%33,r6
#While ( 30)
forks:
add	r2,r3,r2		#increment r2
xor	r2,%15,r4		#if (r4) {carry = 0}
lang:
	live 	%4
zjmp	%: dwhile		#if (carry)
fork	%:forks
ld	%0,r4.comment "Ha,Ha,Ha,stayiii			#carry = 1
zjmp	%:forks
#EndWhile
endwhile:
ld	%0,r4			#carry = 1

live:
|ive %4
zjmp %:live
