------------------------------------------------------------------------------------------------------------------------
; byte bfly(N1 n, byte x)
; bfly_n1_8u[42] = {0f 1f 44 00 00 0f b6 c2 83 e0 66 0f b6 c0 8b c8 d1 e1 33 c8 d1 e8 33 c1 0f b6 c0 83 e0 66 0f b6 c0 0f b6 d2 33 c2 0f b6 c0 c3}
; TermCode = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0008h and eax,66h                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 66}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0010h shl ecx,1                               ; SHL r/m32, 1 || o32 D1 /4 || encoded[2]{d1 e1}
0012h xor ecx,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c8}
0014h shr eax,1                               ; SHR r/m32, 1 || o32 D1 /5 || encoded[2]{d1 e8}
0016h xor eax,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c1}
0018h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001bh and eax,66h                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 66}
001eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0021h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0024h xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
0026h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0029h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort bfly(N1 n, ushort x)
; bfly_n1_16u[46] = {0f 1f 44 00 00 0f b7 c2 25 66 66 00 00 0f b7 c0 8b c8 d1 e1 33 c8 d1 e8 33 c1 0f b7 c0 25 66 66 00 00 0f b7 c0 0f b7 d2 33 c2 0f b7 c0 c3}
; TermCode = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
0008h and eax,6666h                           ; AND EAX, imm32 || o32 25 id || encoded[5]{25 66 66 00 00}
000dh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0010h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0012h shl ecx,1                               ; SHL r/m32, 1 || o32 D1 /4 || encoded[2]{d1 e1}
0014h xor ecx,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c8}
0016h shr eax,1                               ; SHR r/m32, 1 || o32 D1 /5 || encoded[2]{d1 e8}
0018h xor eax,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c1}
001ah movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001dh and eax,6666h                           ; AND EAX, imm32 || o32 25 id || encoded[5]{25 66 66 00 00}
0022h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0025h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0028h xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
002ah movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
002dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint bfly(N1 n, uint x)
; bfly_n1_32u[30] = {0f 1f 44 00 00 8b c2 25 66 66 66 66 8b c8 d1 e1 33 c8 d1 e8 33 c1 25 66 66 66 66 33 c2 c3}
; TermCode = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h and eax,66666666h                       ; AND EAX, imm32 || o32 25 id || encoded[5]{25 66 66 66 66}
000ch mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
000eh shl ecx,1                               ; SHL r/m32, 1 || o32 D1 /4 || encoded[2]{d1 e1}
0010h xor ecx,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c8}
0012h shr eax,1                               ; SHR r/m32, 1 || o32 D1 /5 || encoded[2]{d1 e8}
0014h xor eax,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c1}
0016h and eax,66666666h                       ; AND EAX, imm32 || o32 25 id || encoded[5]{25 66 66 66 66}
001bh xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong bfly(N1 n, ulong x)
; bfly_n1_64u[50] = {0f 1f 44 00 00 48 b8 66 66 66 66 66 66 66 66 48 23 c2 48 8b c8 48 d1 e1 48 33 c8 48 d1 e8 48 33 c1 48 b9 66 66 66 66 66 66 66 66 48 23 c1 48 33 c2 c3}
; TermCode = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,6666666666666666h               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 66 66 66 66 66 66 66 66}
000fh and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
0012h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0015h shl rcx,1                               ; SHL r/m64, 1 || REX.W D1 /4 || encoded[3]{48 d1 e1}
0018h xor rcx,rax                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 c8}
001bh shr rax,1                               ; SHR r/m64, 1 || REX.W D1 /5 || encoded[3]{48 d1 e8}
001eh xor rax,rcx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 c1}
0021h mov rcx,6666666666666666h               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 66 66 66 66 66 66 66 66}
002bh and rax,rcx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c1}
002eh xor rax,rdx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 c2}
0031h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte bfly(N2 n, byte x)
; bfly_n2_8u[44] = {0f 1f 44 00 00 0f b6 c2 83 e0 3c 0f b6 c0 8b c8 c1 e1 02 33 c8 c1 e8 02 33 c1 0f b6 c0 83 e0 3c 0f b6 c0 0f b6 d2 33 c2 0f b6 c0 c3}
; TermCode = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0008h and eax,3ch                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 3c}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0010h shl ecx,2                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 02}
0013h xor ecx,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c8}
0015h shr eax,2                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e8 02}
0018h xor eax,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c1}
001ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001dh and eax,3ch                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 3c}
0020h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0023h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0026h xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
0028h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
002bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort bfly(N2 n, ushort x)
; bfly_n2_16u[48] = {0f 1f 44 00 00 0f b7 c2 25 3c 3c 00 00 0f b7 c0 8b c8 c1 e1 02 33 c8 c1 e8 02 33 c1 0f b7 c0 25 3c 3c 00 00 0f b7 c0 0f b7 d2 33 c2 0f b7 c0 c3}
; TermCode = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
0008h and eax,3c3ch                           ; AND EAX, imm32 || o32 25 id || encoded[5]{25 3c 3c 00 00}
000dh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0010h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0012h shl ecx,2                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 02}
0015h xor ecx,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c8}
0017h shr eax,2                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e8 02}
001ah xor eax,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c1}
001ch movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001fh and eax,3c3ch                           ; AND EAX, imm32 || o32 25 id || encoded[5]{25 3c 3c 00 00}
0024h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0027h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
002ah xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
002ch movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
002fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint bfly(N2 n, uint x)
; bfly_n2_32u[32] = {0f 1f 44 00 00 8b c2 25 3c 3c 3c 3c 8b c8 c1 e1 02 33 c8 c1 e8 02 33 c1 25 3c 3c 3c 3c 33 c2 c3}
; TermCode = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h and eax,3c3c3c3ch                       ; AND EAX, imm32 || o32 25 id || encoded[5]{25 3c 3c 3c 3c}
000ch mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
000eh shl ecx,2                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 02}
0011h xor ecx,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c8}
0013h shr eax,2                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e8 02}
0016h xor eax,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c1}
0018h and eax,3c3c3c3ch                       ; AND EAX, imm32 || o32 25 id || encoded[5]{25 3c 3c 3c 3c}
001dh xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong bfly(N2 n, ulong x)
; bfly_n2_64u[52] = {0f 1f 44 00 00 48 b8 3c 3c 3c 3c 3c 3c 3c 3c 48 23 c2 48 8b c8 48 c1 e1 02 48 33 c8 48 c1 e8 02 48 33 c1 48 b9 3c 3c 3c 3c 3c 3c 3c 3c 48 23 c1 48 33 c2 c3}
; TermCode = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,3c3c3c3c3c3c3c3ch               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 3c 3c 3c 3c 3c 3c 3c 3c}
000fh and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
0012h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0015h shl rcx,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e1 02}
0019h xor rcx,rax                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 c8}
001ch shr rax,2                               ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 02}
0020h xor rax,rcx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 c1}
0023h mov rcx,3c3c3c3c3c3c3c3ch               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 3c 3c 3c 3c 3c 3c 3c 3c}
002dh and rax,rcx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c1}
0030h xor rax,rdx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 c2}
0033h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort bfly(N4 n, ushort x)
; bfly_n4_16u[48] = {0f 1f 44 00 00 0f b7 c2 25 f0 0f 00 00 0f b7 c0 8b c8 c1 e1 04 33 c8 c1 e8 04 33 c1 0f b7 c0 25 f0 0f 00 00 0f b7 c0 0f b7 d2 33 c2 0f b7 c0 c3}
; TermCode = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
0008h and eax,0ff0h                           ; AND EAX, imm32 || o32 25 id || encoded[5]{25 f0 0f 00 00}
000dh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0010h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0012h shl ecx,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 04}
0015h xor ecx,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c8}
0017h shr eax,4                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e8 04}
001ah xor eax,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c1}
001ch movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001fh and eax,0ff0h                           ; AND EAX, imm32 || o32 25 id || encoded[5]{25 f0 0f 00 00}
0024h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0027h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
002ah xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
002ch movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
002fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint bfly(N4 n, uint x)
; bfly_n4_32u[32] = {0f 1f 44 00 00 8b c2 25 f0 0f f0 0f 8b c8 c1 e1 04 33 c8 c1 e8 04 33 c1 25 f0 0f f0 0f 33 c2 c3}
; TermCode = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h and eax,0ff00ff0h                       ; AND EAX, imm32 || o32 25 id || encoded[5]{25 f0 0f f0 0f}
000ch mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
000eh shl ecx,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 04}
0011h xor ecx,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c8}
0013h shr eax,4                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e8 04}
0016h xor eax,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c1}
0018h and eax,0ff00ff0h                       ; AND EAX, imm32 || o32 25 id || encoded[5]{25 f0 0f f0 0f}
001dh xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong bfly(N4 n, ulong x)
; bfly_n4_64u[52] = {0f 1f 44 00 00 48 b8 f0 0f f0 0f f0 0f f0 0f 48 23 c2 48 8b c8 48 c1 e1 04 48 33 c8 48 c1 e8 04 48 33 c1 48 b9 f0 0f f0 0f f0 0f f0 0f 48 23 c1 48 33 c2 c3}
; TermCode = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,0ff00ff00ff00ff0h               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 0f f0 0f f0 0f f0 0f}
000fh and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
0012h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0015h shl rcx,4                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e1 04}
0019h xor rcx,rax                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 c8}
001ch shr rax,4                               ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 04}
0020h xor rax,rcx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 c1}
0023h mov rcx,0ff00ff00ff00ff0h               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 0f f0 0f f0 0f f0 0f}
002dh and rax,rcx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c1}
0030h xor rax,rdx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 c2}
0033h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint bfly(N8 n, uint x)
; bfly_n8_32u[32] = {0f 1f 44 00 00 8b c2 25 00 ff ff 00 8b c8 c1 e1 08 33 c8 c1 e8 08 33 c1 25 00 ff ff 00 33 c2 c3}
; TermCode = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h and eax,0ffff00h                        ; AND EAX, imm32 || o32 25 id || encoded[5]{25 00 ff ff 00}
000ch mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
000eh shl ecx,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 08}
0011h xor ecx,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c8}
0013h shr eax,8                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e8 08}
0016h xor eax,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c1}
0018h and eax,0ffff00h                        ; AND EAX, imm32 || o32 25 id || encoded[5]{25 00 ff ff 00}
001dh xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong bfly(N8 n, ulong x)
; bfly_n8_64u[52] = {0f 1f 44 00 00 48 b8 00 ff ff 00 00 ff ff 00 48 23 c2 48 8b c8 48 c1 e1 08 48 33 c8 48 c1 e8 08 48 33 c1 48 b9 00 ff ff 00 00 ff ff 00 48 23 c1 48 33 c2 c3}
; TermCode = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,0ffff0000ffff00h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 ff ff 00 00 ff ff 00}
000fh and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
0012h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0015h shl rcx,8                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e1 08}
0019h xor rcx,rax                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 c8}
001ch shr rax,8                               ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 08}
0020h xor rax,rcx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 c1}
0023h mov rcx,0ffff0000ffff00h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 ff ff 00 00 ff ff 00}
002dh and rax,rcx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c1}
0030h xor rax,rdx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 c2}
0033h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong bfly(N16 n, ulong x)
; bfly_n16_64u[52] = {0f 1f 44 00 00 48 b8 00 00 ff ff ff ff 00 00 48 23 c2 48 8b c8 48 c1 e1 10 48 33 c8 48 c1 e8 10 48 33 c1 48 b9 00 00 ff ff ff ff 00 00 48 23 c1 48 33 c2 c3}
; TermCode = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,0ffffffff0000h                  ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 00 ff ff ff ff 00 00}
000fh and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
0012h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0015h shl rcx,10h                             ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e1 10}
0019h xor rcx,rax                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 c8}
001ch shr rax,10h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 10}
0020h xor rax,rcx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 c1}
0023h mov rcx,0ffffffff0000h                  ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 00 ff ff ff ff 00 00}
002dh and rax,rcx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c1}
0030h xor rax,rdx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 c2}
0033h ret                                     ; RET || C3 || encoded[1]{c3}
