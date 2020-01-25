; int dot<int>(ReadOnlySpan<int> lhs, ReadOnlySpan<int> rhs)
; dot_g32i[7ff7c71a9ed0h, 7ff7c71a9f06h][54] = {0f 1f 44 00 00 8b 41 08 48 8b 09 48 8b 12 45 33 c0 45 33 c9 85 c0 7e 1a 4d 63 d1 46 8b 1c 91 46 8b 14 92 45 0f af d3 45 03 c2 41 ff c1 44 3b c8 7c e6 41 8b c0 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 01:44:40:088
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 41 08}
0008h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
000bh mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000eh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0011h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0014h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0016h jle short 0032h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1a}
0018h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001bh mov r11d,[rcx+r10*4]                    ; MOV r32, r/m32 || o32 8B /r || encoded[4]{46 8b 1c 91}
001fh mov r10d,[rdx+r10*4]                    ; MOV r32, r/m32 || o32 8B /r || encoded[4]{46 8b 14 92}
0023h imul r10d,r11d                          ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{45 0f af d3}
0027h add r8d,r10d                            ; ADD r32, r/m32 || o32 03 /r || encoded[3]{45 03 c2}
002ah inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
002dh cmp r9d,eax                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c8}
0030h jl short 0018h                          ; JL rel8 || 7C cb || encoded[2]{7c e6}
0032h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
0035h ret                                     ; RET || C3 || encoded[1]{c3}
