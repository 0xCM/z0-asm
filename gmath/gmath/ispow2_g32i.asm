; bit ispow2<int>(int src)
; ispow2_g32i[7ff7c7195710h, 7ff7c7195726h][22] = {0f 1f 44 00 00 48 63 c1 48 8d 50 ff 48 85 c2 0f 94 c0 0f b6 c0 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 01:44:39:292
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c1}
0008h lea rdx,[rax-1]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 ff}
000ch test rax,rdx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c2}
000fh sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0012h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
