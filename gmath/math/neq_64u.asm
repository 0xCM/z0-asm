; bit neq(ulong a, ulong b)
; neq_64u[7ff7c7184ad0h, 7ff7c7184adfh][15] = {0f 1f 44 00 00 48 3b ca 0f 95 c0 0f b6 c0 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-24 01:44:36:901
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp rcx,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b ca}
0008h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
