; bit testc<ushort>(ushort a)
; testc_g16u[7ff7c6ca0480h, 7ff7c6ca0497h][23] = {0f 1f 44 00 00 0f b7 c1 f3 0f b8 c0 48 83 f8 10 0f 94 c0 0f b6 c0 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-24 02:54:49:379
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h popcnt eax,eax                          ; POPCNT r32, r/m32 || o32 F3 0F B8 /r || encoded[4]{f3 0f b8 c0}
000ch cmp rax,10h                             ; CMP r/m64, imm8 || REX.W 83 /7 ib || encoded[4]{48 83 f8 10}
0010h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0013h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
