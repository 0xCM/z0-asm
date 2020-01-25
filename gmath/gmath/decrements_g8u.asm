; void decrements<byte>(byte first, int count, ref byte dst)
; decrements_g8u[7ff7c71a2e10h, 7ff7c71a2e3ch][44] = {0f 1f 44 00 00 33 c0 85 d2 7e 20 0f b6 c9 4c 63 c8 4d 03 c8 44 0f b6 d0 44 8b d9 45 2b da 45 0f b6 d3 45 88 11 ff c0 3b c2 7c e3 c3}
; Capture completion code, RET_SBB
; 2020-01-25 02:10:57:527
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0009h jle short 002bh                         ; JLE rel8 || 7E cb || encoded[2]{7e 20}
000bh movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
000eh movsxd r9,eax                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4c 63 c8}
0011h add r9,r8                               ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 c8}
0014h movzx r10d,al                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{44 0f b6 d0}
0018h mov r11d,ecx                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b d9}
001bh sub r11d,r10d                           ; SUB r32, r/m32 || o32 2B /r || encoded[3]{45 2b da}
001eh movzx r10d,r11b                         ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 d3}
0022h mov [r9],r10b                           ; MOV r/m8, r8 || 88 /r || encoded[3]{45 88 11}
0025h inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
0027h cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
0029h jl short 000eh                          ; JL rel8 || 7C cb || encoded[2]{7c e3}
002bh ret                                     ; RET || C3 || encoded[1]{c3}
