; ulong bfly(N1 n, ulong x)
; bfly__n1_0o[7ff7c6e6f780h, 7ff7c6e6f7b2h][50] = {0f 1f 44 00 00 48 b8 66 66 66 66 66 66 66 66 48 23 c2 48 8b c8 48 d1 e1 48 33 c8 48 d1 e8 48 33 c1 48 b9 66 66 66 66 66 66 66 66 48 23 c1 48 33 c2 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 01:44:32:667
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
