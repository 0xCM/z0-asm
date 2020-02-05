------------------------------------------------------------------------------------------------------------------------
; NumericClass:uint class(NumericKind:uint kind)
; class_NumericKind~32u[11] = {0f 1f 44 00 00 8b c1 c1 e8 1d c3}
; TermCode = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h shr eax,1dh                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e8 1d}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
