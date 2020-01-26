------------------------------------------------------------------------------------------------------------------------
; byte rotr<byte>(byte a, byte count)
; rotr_g8u[35] = {0f 1f 44 00 00 0f b6 c1 0f b6 d2 8b ca 44 8b c0 41 d3 f8 8b ca f7 d9 83 c1 08 d3 e0 41 0b c0 0f b6 c0 c3}
; Capture completion code = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
000dh mov r8d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c0}
0010h sar r8d,cl                              ; SAR r/m32, CL || o32 D3 /7 || encoded[3]{41 d3 f8}
0013h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0015h neg ecx                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d9}
0017h add ecx,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c1 08}
001ah shl eax,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e0}
001ch or eax,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c0}
001fh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0022h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte rotr<sbyte>(sbyte a, byte count)
; rotr_g8i[33] = {0f 1f 44 00 00 48 0f be c9 0f b6 d2 48 b8 e8 a8 cf c6 f7 7f 00 00 48 ff e0 00 00 00 19 00 00 00 40}
; Capture completion code = ZEDx6_000
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rcx,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c9}
0009h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000ch mov rax,7ff7c6cfa8e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 a8 cf c6 f7 7f 00 00}
0016h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
0019h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
001bh add [rcx],bl                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 19}
001dh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
001fh (bad)                                   ; <invalid> || <invalid> || encoded[2]{00 40}
------------------------------------------------------------------------------------------------------------------------
; ushort rotr<ushort>(ushort a, byte count)
; rotr_g16u[35] = {0f 1f 44 00 00 0f b7 c1 0f b6 d2 8b ca 44 8b c0 41 d3 f8 8b ca f7 d9 83 c1 10 d3 e0 41 0b c0 0f b7 c0 c3}
; Capture completion code = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
000dh mov r8d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c0}
0010h sar r8d,cl                              ; SAR r/m32, CL || o32 D3 /7 || encoded[3]{41 d3 f8}
0013h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0015h neg ecx                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d9}
0017h add ecx,10h                             ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c1 10}
001ah shl eax,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e0}
001ch or eax,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c0}
001fh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0022h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short rotr<short>(short a, byte count)
; rotr_g16i[33] = {0f 1f 44 00 00 48 0f bf c9 0f b6 d2 48 b8 f8 a8 cf c6 f7 7f 00 00 48 ff e0 00 00 00 19 00 00 00 40}
; Capture completion code = ZEDx6_000
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rcx,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c9}
0009h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000ch mov rax,7ff7c6cfa8f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 a8 cf c6 f7 7f 00 00}
0016h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
0019h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
001bh add [rcx],bl                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 19}
001dh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
001fh (bad)                                   ; <invalid> || <invalid> || encoded[2]{00 40}
------------------------------------------------------------------------------------------------------------------------
; uint rotr<uint>(uint a, byte count)
; rotr_g32u[13] = {0f 1f 44 00 00 8b c1 0f b6 ca d3 c8 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000ah ror eax,cl                              ; ROR r/m32, CL || o32 D3 /1 || encoded[2]{d3 c8}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int rotr<int>(int a, byte count)
; rotr_g32i[29] = {0f 1f 44 00 00 0f b6 d2 48 b8 08 a9 cf c6 f7 7f 00 00 48 ff e0 00 00 00 19 00 00 00 40}
; Capture completion code = ZEDx6_000
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0008h mov rax,7ff7c6cfa908h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 a9 cf c6 f7 7f 00 00}
0012h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
0015h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0017h add [rcx],bl                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 19}
0019h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
001bh (bad)                                   ; <invalid> || <invalid> || encoded[2]{00 40}
------------------------------------------------------------------------------------------------------------------------
; ulong rotr<ulong>(ulong a, byte count)
; rotr_g64u[15] = {0f 1f 44 00 00 48 8b c1 0f b6 ca 48 d3 c8 c3}
; Capture completion code = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000bh ror rax,cl                              ; ROR r/m64, CL || REX.W D3 /1 || encoded[3]{48 d3 c8}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long rotr<long>(long a, byte count)
; rotr_g64i[29] = {0f 1f 44 00 00 0f b6 d2 48 b8 18 a9 cf c6 f7 7f 00 00 48 ff e0 00 00 00 19 00 00 00 40}
; Capture completion code = ZEDx6_000
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0008h mov rax,7ff7c6cfa918h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 a9 cf c6 f7 7f 00 00}
0012h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
0015h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0017h add [rcx],bl                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 19}
0019h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
001bh (bad)                                   ; <invalid> || <invalid> || encoded[2]{00 40}
