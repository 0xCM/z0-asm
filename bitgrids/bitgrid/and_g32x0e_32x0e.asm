------------------------------------------------------------------------------------------------------------------------
; BitGrid32<byte> and<byte>(BitGrid32<byte> gx, BitGrid32<byte> gy)
; and_g32x8u_32x8u[35] = {0f 1f 44 00 00 0f b6 42 04 44 0f b6 4a 05 8b 12 45 8b 00 41 23 d0 89 11 88 41 04 44 88 49 05 48 8b c1 c3}
; TermCode = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,byte ptr [rdx+4]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 42 04}
0009h movzx r9d,byte ptr [rdx+5]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 4a 05}
000eh mov edx,[rdx]                           ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b 12}
0010h mov r8d,[r8]                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b 00}
0013h and edx,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 d0}
0016h mov [rcx],edx                           ; MOV r/m32, r32 || o32 89 /r || encoded[2]{89 11}
0018h mov [rcx+4],al                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 41 04}
001bh mov [rcx+5],r9b                         ; MOV r/m8, r8 || 88 /r || encoded[4]{44 88 49 05}
001fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0022h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitGrid32<ushort> and<ushort>(BitGrid32<ushort> gx, BitGrid32<ushort> gy)
; and_g32x16u_32x16u[35] = {0f 1f 44 00 00 0f b6 42 04 44 0f b6 4a 05 8b 12 45 8b 00 41 23 d0 89 11 88 41 04 44 88 49 05 48 8b c1 c3}
; TermCode = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,byte ptr [rdx+4]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 42 04}
0009h movzx r9d,byte ptr [rdx+5]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 4a 05}
000eh mov edx,[rdx]                           ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b 12}
0010h mov r8d,[r8]                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b 00}
0013h and edx,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 d0}
0016h mov [rcx],edx                           ; MOV r/m32, r32 || o32 89 /r || encoded[2]{89 11}
0018h mov [rcx+4],al                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 41 04}
001bh mov [rcx+5],r9b                         ; MOV r/m8, r8 || 88 /r || encoded[4]{44 88 49 05}
001fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0022h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitGrid32<uint> and<uint>(BitGrid32<uint> gx, BitGrid32<uint> gy)
; and_g32x32u_32x32u[35] = {0f 1f 44 00 00 0f b6 42 04 44 0f b6 4a 05 8b 12 45 8b 00 41 23 d0 89 11 88 41 04 44 88 49 05 48 8b c1 c3}
; TermCode = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,byte ptr [rdx+4]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 42 04}
0009h movzx r9d,byte ptr [rdx+5]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 4a 05}
000eh mov edx,[rdx]                           ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b 12}
0010h mov r8d,[r8]                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b 00}
0013h and edx,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 d0}
0016h mov [rcx],edx                           ; MOV r/m32, r32 || o32 89 /r || encoded[2]{89 11}
0018h mov [rcx+4],al                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 41 04}
001bh mov [rcx+5],r9b                         ; MOV r/m8, r8 || 88 /r || encoded[4]{44 88 49 05}
001fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0022h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitGrid32<ulong> and<ulong>(BitGrid32<ulong> gx, BitGrid32<ulong> gy)
; and_g32x64u_32x64u[35] = {0f 1f 44 00 00 0f b6 42 04 44 0f b6 4a 05 8b 12 45 8b 00 41 23 d0 89 11 88 41 04 44 88 49 05 48 8b c1 c3}
; TermCode = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,byte ptr [rdx+4]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 42 04}
0009h movzx r9d,byte ptr [rdx+5]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 4a 05}
000eh mov edx,[rdx]                           ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b 12}
0010h mov r8d,[r8]                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b 00}
0013h and edx,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 d0}
0016h mov [rcx],edx                           ; MOV r/m32, r32 || o32 89 /r || encoded[2]{89 11}
0018h mov [rcx+4],al                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 41 04}
001bh mov [rcx+5],r9b                         ; MOV r/m8, r8 || 88 /r || encoded[4]{44 88 49 05}
001fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0022h ret                                     ; RET || C3 || encoded[1]{c3}
