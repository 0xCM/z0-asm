; ushort gcd(ushort a, ushort b)
; gcd_16u[7ff7c719c1b0h, 7ff7c719c1d3h][35] = {0f 1f 44 00 00 0f b7 c2 85 c0 74 13 0f b7 c1 0f b7 ca 99 f7 f9 0f b7 d2 0f b7 c2 85 c0 75 ed 0f b7 c1 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-25 02:10:56:666
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
0008h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
000ah je short 001fh                          ; JE rel8 || 74 cb || encoded[2]{74 13}
000ch movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
000fh movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
0012h cdq                                     ; CDQ || o32 99 || encoded[1]{99}
0013h idiv ecx                                ; IDIV r/m32 || o32 F7 /7 || encoded[2]{f7 f9}
0015h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0018h movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
001bh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
001dh jne short 000ch                         ; JNE rel8 || 75 cb || encoded[2]{75 ed}
001fh movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0022h ret                                     ; RET || C3 || encoded[1]{c3}
