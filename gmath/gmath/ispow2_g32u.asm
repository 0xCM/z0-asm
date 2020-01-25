; bit ispow2<uint>(uint src)
; ispow2_g32u[7ff7c71956e0h, 7ff7c71956f5h][21] = {0f 1f 44 00 00 8b c1 48 8d 50 ff 48 85 c2 0f 94 c0 0f b6 c0 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 01:44:39:291
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h lea rdx,[rax-1]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 ff}
000bh test rax,rdx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c2}
000eh sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0011h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
