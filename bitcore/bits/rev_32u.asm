; uint rev(uint x)
; rev_32u[7ff7c6e82430h, 7ff7c6e8244ch][28] = {0f 1f 44 00 00 8b c1 25 aa aa aa aa d1 e8 81 e1 55 55 55 55 d1 e1 0b c8 8b c1 25 cc}
; Capture completion code, INTRx2
; 2020-01-25 02:10:52:078
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h and eax,0aaaaaaaah                      ; AND EAX, imm32 || o32 25 id || encoded[5]{25 aa aa aa aa}
000ch shr eax,1                               ; SHR r/m32, 1 || o32 D1 /5 || encoded[2]{d1 e8}
000eh and ecx,55555555h                       ; AND r/m32, imm32 || o32 81 /4 id || encoded[6]{81 e1 55 55 55 55}
0014h shl ecx,1                               ; SHL r/m32, 1 || o32 D1 /4 || encoded[2]{d1 e1}
0016h or ecx,eax                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c8}
0018h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
001ah (bad)                                   ; <invalid> || <invalid> || encoded[2]{25 cc}
