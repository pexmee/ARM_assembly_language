; Let’s assume that A is an array of 100 words and that the compiler has associated 
; the variables g and h with the registers r1 and r2 and uses r5 
; as a temporary register as before. Let’s also assume that the starting address, or base
; address, of the array is in r3. Compile this C assignment statement:

; C code: g = h + A[8]

; ARM Assembly:
LDR r5,[r3,#8] ; Temporary register r5 gets A[8]
ADD r1,r2,r5 ; g = h + A[8]