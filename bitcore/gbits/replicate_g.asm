------------------------------------------------------------------------------------------------------------------------
; byte replicate<byte>(byte src)
; replicate_g8u[22] = {0f 1f 44 00 00 0f b6 c1 ba 00 08 00 00 c4 e2 e8 f7 c0 0f b6 c0 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h mov edx,800h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 00 08 00 00}
000dh bextr rax,rax,rdx                       ; BEXTR r64a, r/m64, r64b || VEX.LZ.0F38.W1 F7 /r || encoded[5]{c4 e2 e8 f7 c0}
0012h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort replicate<ushort>(byte src)
; replicate_g8u[58] = {0f 1f 44 00 00 0f b6 c9 b8 00 08 00 00 c4 e2 f8 f7 c1 48 8b d0 41 b8 01 00 00 00 41 8b c8 c1 e1 03 4c 8b c8 49 d3 e1 49 0b d1 41 ff c0 41 83 f8 02 7c e8 48 8b c2 0f b7 c0 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
0008h mov eax,800h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 00 08 00 00}
000dh bextr rax,rcx,rax                       ; BEXTR r64a, r/m64, r64b || VEX.LZ.0F38.W1 F7 /r || encoded[5]{c4 e2 f8 f7 c1}
0012h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0015h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
001bh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
001eh shl ecx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 03}
0021h mov r9,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c8}
0024h shl r9,cl                               ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e1}
0027h or rdx,r9                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{49 0b d1}
002ah inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
002dh cmp r8d,2                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 02}
0031h jl short 001bh                          ; JL rel8 || 7C cb || encoded[2]{7c e8}
0033h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0036h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0039h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint replicate<uint>(byte src)
; replicate_g8u[55] = {0f 1f 44 00 00 0f b6 c9 b8 00 08 00 00 c4 e2 f8 f7 c1 48 8b d0 41 b8 01 00 00 00 41 8b c8 c1 e1 03 4c 8b c8 49 d3 e1 49 0b d1 41 ff c0 41 83 f8 04 7c e8 48 8b c2 c3}
; Capture completion code = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
0008h mov eax,800h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 00 08 00 00}
000dh bextr rax,rcx,rax                       ; BEXTR r64a, r/m64, r64b || VEX.LZ.0F38.W1 F7 /r || encoded[5]{c4 e2 f8 f7 c1}
0012h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0015h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
001bh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
001eh shl ecx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 03}
0021h mov r9,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c8}
0024h shl r9,cl                               ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e1}
0027h or rdx,r9                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{49 0b d1}
002ah inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
002dh cmp r8d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 04}
0031h jl short 001bh                          ; JL rel8 || 7C cb || encoded[2]{7c e8}
0033h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0036h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong replicate<ulong>(byte src)
; replicate_g8u[55] = {0f 1f 44 00 00 0f b6 c9 b8 00 08 00 00 c4 e2 f8 f7 c1 48 8b d0 41 b8 01 00 00 00 41 8b c8 c1 e1 03 4c 8b c8 49 d3 e1 49 0b d1 41 ff c0 41 83 f8 08 7c e8 48 8b c2 c3}
; Capture completion code = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
0008h mov eax,800h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 00 08 00 00}
000dh bextr rax,rcx,rax                       ; BEXTR r64a, r/m64, r64b || VEX.LZ.0F38.W1 F7 /r || encoded[5]{c4 e2 f8 f7 c1}
0012h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0015h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
001bh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
001eh shl ecx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 03}
0021h mov r9,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c8}
0024h shl r9,cl                               ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e1}
0027h or rdx,r9                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{49 0b d1}
002ah inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
002dh cmp r8d,8                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 08}
0031h jl short 001bh                          ; JL rel8 || 7C cb || encoded[2]{7c e8}
0033h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0036h ret                                     ; RET || C3 || encoded[1]{c3}
