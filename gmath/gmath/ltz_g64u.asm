; ulong ltz<ulong>(ulong a, ulong b)
; ltz_g64u[7ff7c71a0a00h, 7ff7c71a0a12h][18] = {0f 1f 44 00 00 48 3b ca 0f 92 c0 0f b6 c0 48 f7 d8 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:57:407
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp rcx,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b ca}
0008h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh neg rax                                 ; NEG r/m64 || REX.W F7 /3 || encoded[3]{48 f7 d8}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
