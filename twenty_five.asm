; cerner_2^5_2020
; 8086 program to find the min value in a given array

MOV SI, 500
MOV DI, 600
MOV CL, [SI]
MOV CH, 00
INC SI
MOV AL, [SI]
DEC CX
INC SI
MOV BL, [SI]
CMP AL, BL
JC 0417
MOV AL, BL
LOOP 040E
MOV [DI], AL
HLT
