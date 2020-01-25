; byte avgi(byte a, byte b)
; avgi_8u[7ff7c719b7d0h, 7ff7c719b7e9h][25] = {0f 1f 44 00 00 0f b6 c1 0f b6 d2 8b c8 0b ca 33 c2 d1 f8 2b c8 0f b6 c1 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:56:606
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
