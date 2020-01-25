; ushort dot<ushort>(ReadOnlySpan<ushort> lhs, ReadOnlySpan<ushort> rhs)
; dot_g16u[7ff7c71bcb70h, 7ff7c71bcbb8h][72] = {0f 1f 44 00 00 8b 41 08 48 8b 09 48 8b 12 45 33 c0 45 33 c9 85 c0 7e 2c 4d 63 d1 46 0f b7 1c 51 46 0f b7 14 52 45 0f b7 db 45 0f b7 db 45 0f b7 d2 45 0f af d3 45 03 c2 45 0f b7 c0 41 ff c1 44 3b c8 7c d4 41 8b c0 c3}
; Capture completion code, RET_SBB
; 2020-01-25 02:11:00:295
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 41 08}
0008h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
000bh mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000eh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0011h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0014h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0016h jle short 0044h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2c}
0018h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001bh movzx r11d,word ptr [rcx+r10*2]         ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{46 0f b7 1c 51}
0020h movzx r10d,word ptr [rdx+r10*2]         ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{46 0f b7 14 52}
0025h movzx r11d,r11w                         ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 db}
0029h movzx r11d,r11w                         ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 db}
002dh movzx r10d,r10w                         ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 d2}
0031h imul r10d,r11d                          ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{45 0f af d3}
0035h add r8d,r10d                            ; ADD r32, r/m32 || o32 03 /r || encoded[3]{45 03 c2}
0038h movzx r8d,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 c0}
003ch inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
003fh cmp r9d,eax                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c8}
0042h jl short 0018h                          ; JL rel8 || 7C cb || encoded[2]{7c d4}
0044h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
0047h ret                                     ; RET || C3 || encoded[1]{c3}
