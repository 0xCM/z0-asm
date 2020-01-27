------------------------------------------------------------------------------------------------------------------------
; uint log2(byte src)
; log2_8u[26] = {0f 1f 44 00 00 0f b6 c1 85 c0 75 04 33 c0 eb 09 f3 0f bd c0 f7 d8 83 c0 1f c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
000ah jne short 0010h                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
000ch xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000eh jmp short 0019h                         ; JMP rel8 || EB cb || encoded[2]{eb 09}
0010h lzcnt eax,eax                           ; LZCNT r32, r/m32 || o32 F3 0F BD /r || encoded[4]{f3 0f bd c0}
0014h neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
0016h add eax,1fh                             ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c0 1f}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint log2(ushort src)
; log2_16u[26] = {0f 1f 44 00 00 0f b7 c1 85 c0 75 04 33 c0 eb 09 f3 0f bd c0 f7 d8 83 c0 1f c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
000ah jne short 0010h                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
000ch xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000eh jmp short 0019h                         ; JMP rel8 || EB cb || encoded[2]{eb 09}
0010h lzcnt eax,eax                           ; LZCNT r32, r/m32 || o32 F3 0F BD /r || encoded[4]{f3 0f bd c0}
0014h neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
0016h add eax,1fh                             ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c0 1f}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint log2(uint src)
; log2_32u[25] = {0f 1f 44 00 00 85 c9 75 04 33 c0 eb 0b 33 c0 f3 0f bd c1 f7 d8 83 c0 1f c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test ecx,ecx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c9}
0007h jne short 000dh                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
0009h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000bh jmp short 0018h                         ; JMP rel8 || EB cb || encoded[2]{eb 0b}
000dh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000fh lzcnt eax,ecx                           ; LZCNT r32, r/m32 || o32 F3 0F BD /r || encoded[4]{f3 0f bd c1}
0013h neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
0015h add eax,1fh                             ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c0 1f}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint log2(ulong src)
; log2_64u[27] = {0f 1f 44 00 00 48 85 c9 75 04 33 c0 eb 0c 33 c0 f3 48 0f bd c1 f7 d8 83 c0 3f c3}
; Capture completion code = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test rcx,rcx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c9}
0008h jne short 000eh                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch jmp short 001ah                         ; JMP rel8 || EB cb || encoded[2]{eb 0c}
000eh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0010h lzcnt rax,rcx                           ; LZCNT r64, r/m64 || F3 REX.W 0F BD /r || encoded[5]{f3 48 0f bd c1}
0015h neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
0017h add eax,3fh                             ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c0 3f}
001ah ret                                     ; RET || C3 || encoded[1]{c3}