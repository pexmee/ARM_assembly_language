;Assume variable h is associated with register r2 and the base address of the
;array A is in r3. What is the ARM assembly code for the C assignment statement below?

; C code: A[12] = h + A[8]

; Assembly code: 
LDR r5,[r3,#32] ; Temporary register r5 gets A[8]. (4x8 = 32)