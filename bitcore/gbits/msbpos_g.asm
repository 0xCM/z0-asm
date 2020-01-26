------------------------------------------------------------------------------------------------------------------------
; int msbpos<byte>(byte src)
; msbpos_g8u[21] = {0f 1f 44 00 00 0f b6 c1 f3 0f bd c0 83 c0 e8 f7 d8 83 c0 07 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h lzcnt eax,eax                           ; LZCNT r32, r/m32 || o32 F3 0F BD /r || encoded[4]{f3 0f bd c0}
000ch add eax,0ffffffe8h                      ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c0 e8}
000fh neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
0011h add eax,7                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c0 07}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int msbpos<ushort>(ushort src)
; msbpos_g16u[21] = {0f 1f 44 00 00 0f b7 c1 f3 0f bd c0 83 c0 f0 f7 d8 83 c0 0f c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h lzcnt eax,eax                           ; LZCNT r32, r/m32 || o32 F3 0F BD /r || encoded[4]{f3 0f bd c0}
000ch add eax,0fffffff0h                      ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c0 f0}
000fh neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
0011h add eax,0fh                             ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c0 0f}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int msbpos<uint>(uint src)
; msbpos_g32u[17] = {0f 1f 44 00 00 33 c0 f3 0f bd c1 f7 d8 83 c0 1f c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h lzcnt eax,ecx                           ; LZCNT r32, r/m32 || o32 F3 0F BD /r || encoded[4]{f3 0f bd c1}
000bh neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
000dh add eax,1fh                             ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c0 1f}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int msbpos<ulong>(ulong src)
; msbpos_g64u[18] = {0f 1f 44 00 00 33 c0 f3 48 0f bd c1 f7 d8 83 c0 3f c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h lzcnt rax,rcx                           ; LZCNT r64, r/m64 || F3 REX.W 0F BD /r || encoded[5]{f3 48 0f bd c1}
000ch neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
000eh add eax,3fh                             ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c0 3f}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
