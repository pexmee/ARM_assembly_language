;int leaf_example (int g, int h, int i, int j)
;{
; int f;
; f = (g + h) – (i + j);
; return f;
;}
;The parameter variables g, h, i, and j correspond to the argument registers
;r0, r1, r2, and r3, and f corresponds to r4. The compiled program starts
;with the label of the procedure:
leaf_example:
SUB sp, sp, #12 ; Adjust stack to make room for 3 items (3x4 = 12, hence we pop 3 by subtracting 12)
STR r6, [sp,#8] ; save register r6 for use afterwards
STR r7, [sp,#4] ; save register r7 for use afterwards
STR r8, [sp,#0] ; save register r8 for use afterwards
ADD r5, r0, r1 ; register r5 contains g + h
ADD r6, r2, r3 ; register r6 contains i + j
SUB r4, r5, r6 ; f gets r5 - r6, which is (g + h) - (i + j)
MOV r0, r4 ; returns f (r0 = r4) 
LDR r4, [sp,#0] ; restore register r4 for caller
LDR r5, [sp,#4] ; restore register r5 for caller
LDR r6, [sp,#8] ; restore register r6 for caller
ADD sp,sp,#12 ; adjust stack to delete 3 items
MOV pc, lr ; jump back to calling routine