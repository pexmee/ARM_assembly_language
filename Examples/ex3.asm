; C code : f = (g + h) - (i + j)

; ARM Assembly:
ADD r5, r0, r1 ; Register r5 contains g + h
ADD r6, r2, r3 ; Register r6 contains i + j
SUB r7, r5, r6 ; r4 gets r5 - r6, which is (g + h) - (i + j)
