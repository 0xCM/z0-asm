------------------------------------------------------------------------------------------------------------------------
; uint log2<byte>(in byte src)
; log2_g8u[26] = {0f 1f 44 00 00 0f b6 01 85 c0 75 04 33 c0 eb 09 f3 0f bd c0 f7 d8 83 c0 1f c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,byte ptr [rcx]                ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 01}
0008h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
000ah jne short 0010h                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
000ch xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000eh jmp short 0019h                         ; JMP rel8 || EB cb || encoded[2]{eb 09}
0010h lzcnt eax,eax                           ; LZCNT r32, r/m32 || o32 F3 0F BD /r || encoded[4]{f3 0f bd c0}
0014h neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
0016h add eax,1fh                             ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c0 1f}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint log2<ushort>(in ushort src)
; log2_g16u[26] = {0f 1f 44 00 00 0f b7 01 85 c0 75 04 33 c0 eb 09 f3 0f bd c0 f7 d8 83 c0 1f c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,word ptr [rcx]                ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 01}
0008h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
000ah jne short 0010h                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
000ch xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000eh jmp short 0019h                         ; JMP rel8 || EB cb || encoded[2]{eb 09}
0010h lzcnt eax,eax                           ; LZCNT r32, r/m32 || o32 F3 0F BD /r || encoded[4]{f3 0f bd c0}
0014h neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
0016h add eax,1fh                             ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c0 1f}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint log2<uint>(in uint src)
; log2_g32u[25] = {0f 1f 44 00 00 8b 01 85 c0 75 04 33 c0 eb 09 f3 0f bd c0 f7 d8 83 c0 1f c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,[rcx]                           ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b 01}
0007h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0009h jne short 000fh                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
000bh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000dh jmp short 0018h                         ; JMP rel8 || EB cb || encoded[2]{eb 09}
000fh lzcnt eax,eax                           ; LZCNT r32, r/m32 || o32 F3 0F BD /r || encoded[4]{f3 0f bd c0}
0013h neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
0015h add eax,1fh                             ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c0 1f}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint log2<ulong>(in ulong src)
; log2_g64u[28] = {0f 1f 44 00 00 48 8b 01 48 85 c0 75 04 33 c0 eb 0a f3 48 0f bd c0 f7 d8 83 c0 3f c3}
; Capture completion code = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
000bh jne short 0011h                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
000dh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000fh jmp short 001bh                         ; JMP rel8 || EB cb || encoded[2]{eb 0a}
0011h lzcnt rax,rax                           ; LZCNT r64, r/m64 || F3 REX.W 0F BD /r || encoded[5]{f3 48 0f bd c0}
0016h neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
0018h add eax,3fh                             ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c0 3f}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
