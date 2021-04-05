; C code: if (i == j) f = g + h; else f = g - h;

; Assembly code:
CMP r3,r4
BNE, Else ; go to Else if i != j
ADD r0, r1, r2 ; f = g + h (skipped if i != j)
B Exit ; go to Exit
Else:SUB r0,r1,r2 ; f = g - h (skipped if i = j)
Exit: