; void decrements<Int16>(Int16 first, int count, ref Int16 dst)
; decrements_g16i[7ff7c71a2ed0h, 7ff7c71a2effh][47] = {0f 1f 44 00 00 33 c0 85 d2 7e 23 48 0f bf c9 4c 63 c8 4f 8d 0c 48 4c 0f bf d0 44 8b d9 45 2b da 4d 0f bf d3 66 45 89 11 ff c0 3b c2 7c e1 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-25 02:10:57:533
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0009h jle short 002eh                         ; JLE rel8 || 7E cb || encoded[2]{7e 23}
000bh movsx rcx,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c9}
000fh movsxd r9,eax                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4c 63 c8}
0012h lea r9,[r8+r9*2]                        ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 0c 48}
0016h movsx r10,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf d0}
001ah mov r11d,ecx                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b d9}
001dh sub r11d,r10d                           ; SUB r32, r/m32 || o32 2B /r || encoded[3]{45 2b da}
0020h movsx r10,r11w                          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4d 0f bf d3}
0024h mov [r9],r10w                           ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 45 89 11}
0028h inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
002ah cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
002ch jl short 000fh                          ; JL rel8 || 7C cb || encoded[2]{7c e1}
002eh ret                                     ; RET || C3 || encoded[1]{c3}
