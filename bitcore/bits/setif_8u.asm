; byte setif(byte src, int srcpos, byte dst, int dstpos)
; setif_8u[7ff7c6e82960h, 7ff7c6e82991h][49] = {0f 1f 44 00 00 0f b6 c1 8b ca d3 e8 83 e0 01 85 c0 74 19 41 0f b6 c0 41 b8 01 00 00 00 8b ca 41 d3 e0 41 0f b6 d0 0b c2 0f b6 c0 c3 41 0f b6 c0 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:52:111
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
000ah shr eax,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 e8}
000ch and eax,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 01}
000fh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0011h je short 002ch                          ; JE rel8 || 74 cb || encoded[2]{74 19}
0013h movzx eax,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c0}
0017h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
001dh mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
001fh shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
0022h movzx edx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d0}
0026h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0028h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
002bh ret                                     ; RET || C3 || encoded[1]{c3}
002ch movzx eax,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c0}
0030h ret                                     ; RET || C3 || encoded[1]{c3}
