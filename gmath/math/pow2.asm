------------------------------------------------------------------------------------------------------------------------
; ulong pow2(int exp)
; pow2_32i[14] = {0f 1f 44 00 00 b8 01 00 00 00 48 d3 e0 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000ah shl rax,cl                              ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{48 d3 e0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
