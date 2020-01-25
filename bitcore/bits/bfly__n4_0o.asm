; ulong bfly(N4 n, ulong x)
; bfly__n4_0o[7ff7c6e6f940h, 7ff7c6e6f974h][52] = {0f 1f 44 00 00 48 b8 f0 0f f0 0f f0 0f f0 0f 48 23 c2 48 8b c8 48 c1 e1 04 48 33 c8 48 c1 e8 04 48 33 c1 48 b9 f0 0f f0 0f f0 0f f0 0f 48 23 c1 48 33 c2 c3}
; Capture completion code, RET_SBB
; 2020-01-24 01:44:32:679
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
