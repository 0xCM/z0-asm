; ushort setif(ushort src, int srcpos, ushort dst, int dstpos)
; setif_16u[7ff7c6e6dd50h, 7ff7c6e6dd82h][50] = {0f 1f 44 00 00 0f b7 c1 8b ca d3 e8 83 e0 01 85 c0 74 1a 41 0f b7 c0 41 b8 01 00 00 00 41 8b c9 41 d3 e0 41 0f b7 d0 0b c2 0f b7 c0 c3 41 0f b7 c0 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 01:44:32:583
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
000ah shr eax,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 e8}
000ch and eax,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 01}
000fh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0011h je short 002dh                          ; JE rel8 || 74 cb || encoded[2]{74 1a}
0013h movzx eax,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 c0}
0017h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
001dh mov ecx,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c9}
0020h shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
0023h movzx edx,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 d0}
0027h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0029h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
002ch ret                                     ; RET || C3 || encoded[1]{c3}
002dh movzx eax,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 c0}
0031h ret                                     ; RET || C3 || encoded[1]{c3}
