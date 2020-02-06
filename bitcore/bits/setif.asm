------------------------------------------------------------------------------------------------------------------------
; byte setif(byte src, int srcpos, byte dst, int dstpos)
; setif_8u_32i_8u_32i[49] = {0f 1f 44 00 00 0f b6 c1 8b ca d3 e8 83 e0 01 85 c0 74 19 41 0f b6 c0 41 b8 01 00 00 00 8b ca 41 d3 e0 41 0f b6 d0 0b c2 0f b6 c0 c3 41 0f b6 c0 c3}
; TermCode = CTC_RET_Zx3
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
------------------------------------------------------------------------------------------------------------------------
; ushort setif(ushort src, int srcpos, ushort dst, int dstpos)
; setif_16u_32i_16u_32i[50] = {0f 1f 44 00 00 0f b7 c1 8b ca d3 e8 83 e0 01 85 c0 74 1a 41 0f b7 c0 41 b8 01 00 00 00 41 8b c9 41 d3 e0 41 0f b7 d0 0b c2 0f b7 c0 c3 41 0f b7 c0 c3}
; TermCode = CTC_RET_Zx3
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
------------------------------------------------------------------------------------------------------------------------
; uint setif(uint src, int srcpos, uint dst, int dstpos)
; setif_32u_32i_32u_32i[36] = {0f 1f 44 00 00 8b c1 8b ca d3 e8 83 e0 01 85 c0 74 0e b8 01 00 00 00 41 8b c9 d3 e0 41 0b c0 c3 41 8b c0 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0009h shr eax,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 e8}
000bh and eax,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 01}
000eh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0010h je short 0020h                          ; JE rel8 || 74 cb || encoded[2]{74 0e}
0012h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
0017h mov ecx,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c9}
001ah shl eax,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e0}
001ch or eax,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c0}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
0020h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
0023h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong setif(ulong src, int srcpos, ulong dst, int dstpos)
; setif_64u_32i_64u_32i[41] = {0f 1f 44 00 00 48 8b c1 8b ca 48 d3 e8 8b c8 83 e1 01 85 c9 74 0f b8 01 00 00 00 41 8b c9 48 d3 e0 49 0b c0 c3 49 8b c0 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
000ah shr rax,cl                              ; SHR r/m64, CL || REX.W D3 /5 || encoded[3]{48 d3 e8}
000dh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
000fh and ecx,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 01}
0012h test ecx,ecx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c9}
0014h je short 0025h                          ; JE rel8 || 74 cb || encoded[2]{74 0f}
0016h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
001bh mov ecx,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c9}
001eh shl rax,cl                              ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{48 d3 e0}
0021h or rax,r8                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{49 0b c0}
0024h ret                                     ; RET || C3 || encoded[1]{c3}
0025h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0028h ret                                     ; RET || C3 || encoded[1]{c3}
