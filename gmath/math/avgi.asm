------------------------------------------------------------------------------------------------------------------------
; byte avgi(byte a, byte b)
; avgi_8u[25] = {0f 1f 44 00 00 0f b6 c1 0f b6 d2 8b c8 0b ca 33 c2 d1 f8 2b c8 0f b6 c1 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
000dh or ecx,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b ca}
000fh xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
0011h sar eax,1                               ; SAR r/m32, 1 || o32 D1 /7 || encoded[2]{d1 f8}
0013h sub ecx,eax                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c8}
0015h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort avgi(ushort a, ushort b)
; avgi_16u[25] = {0f 1f 44 00 00 0f b7 c1 0f b7 d2 8b c8 0b ca 33 c2 d1 f8 2b c8 0f b7 c1 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
000dh or ecx,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b ca}
000fh xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
0011h sar eax,1                               ; SAR r/m32, 1 || o32 D1 /7 || encoded[2]{d1 f8}
0013h sub ecx,eax                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c8}
0015h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint avgi(uint a, uint b)
; avgi_32u[16] = {0f 1f 44 00 00 8b c1 0b c2 33 d1 d1 ea 2b c2 c3}
; Capture completion code = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0009h xor edx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d1}
000bh shr edx,1                               ; SHR r/m32, 1 || o32 D1 /5 || encoded[2]{d1 ea}
000dh sub eax,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c2}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong avgi(ulong a, ulong b)
; avgi_64u[21] = {0f 1f 44 00 00 48 8b c1 48 0b c2 48 33 d1 48 d1 ea 48 2b c2 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
000bh xor rdx,rcx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 d1}
000eh shr rdx,1                               ; SHR r/m64, 1 || REX.W D1 /5 || encoded[3]{48 d1 ea}
0011h sub rax,rdx                             ; SUB r64, r/m64 || REX.W 2B /r || encoded[3]{48 2b c2}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
