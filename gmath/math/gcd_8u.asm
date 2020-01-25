; byte gcd(byte a, byte b)
; gcd_8u[7ff7c719c120h, 7ff7c719c13dh][29] = {0f 1f 44 00 00 84 d2 74 10 0f b6 c1 0f b6 ca 99 f7 f9 0f b6 d2 84 d2 75 f0 0f b6 c1 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:56:663
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test dl,dl                              ; TEST r/m8, r8 || 84 /r || encoded[2]{84 d2}
0007h je short 0019h                          ; JE rel8 || 74 cb || encoded[2]{74 10}
0009h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
000ch movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000fh cdq                                     ; CDQ || o32 99 || encoded[1]{99}
0010h idiv ecx                                ; IDIV r/m32 || o32 F7 /7 || encoded[2]{f7 f9}
0012h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0015h test dl,dl                              ; TEST r/m8, r8 || 84 /r || encoded[2]{84 d2}
0017h jne short 0009h                         ; JNE rel8 || 75 cb || encoded[2]{75 f0}
0019h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
