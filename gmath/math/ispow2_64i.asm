; bit ispow2(long x)
; ispow2_64i[7ff7c7189720h, 7ff7c7189733h][19] = {0f 1f 44 00 00 48 8d 41 ff 48 85 c8 0f 94 c0 0f b6 c0 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-24 01:44:37:430
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h lea rax,[rcx-1]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 41 ff}
0009h test rcx,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c8}
000ch sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
000fh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
