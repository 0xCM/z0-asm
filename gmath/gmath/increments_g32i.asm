; void increments<long>(int count, ref long dst)
; increments_g32i[7ff7c71903e0h, 7ff7c71903fch][28] = {0f 1f 44 00 00 33 c0 85 c9 7e 10 4c 63 c0 4e 8d 0c c2 4d 89 01 ff c0 3b c1 7c f0 c3}
; Capture completion code, RET_SBB
; 2020-01-24 01:44:38:524
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h test ecx,ecx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c9}
0009h jle short 001bh                         ; JLE rel8 || 7E cb || encoded[2]{7e 10}
000bh movsxd r8,eax                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4c 63 c0}
000eh lea r9,[rdx+r8*8]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 0c c2}
0012h mov [r9],r8                             ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4d 89 01}
0015h inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
0017h cmp eax,ecx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c1}
0019h jl short 000bh                          ; JL rel8 || 7C cb || encoded[2]{7c f0}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
