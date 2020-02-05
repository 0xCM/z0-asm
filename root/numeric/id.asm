------------------------------------------------------------------------------------------------------------------------
; NumericId:uint id(NumericKind:uint k)
; id_NumericKind~32u[20] = {0f 1f 44 00 00 c1 e1 03 c1 e9 03 c1 e9 10 8b c1 c1 e0 10 c3}
; TermCode = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h shl ecx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 03}
0008h shr ecx,3                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e9 03}
000bh shr ecx,10h                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e9 10}
000eh mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0010h shl eax,10h                             ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e0 10}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
