; bit within(byte a, byte b, byte tolerance)
; within_8u[7ff7c7185890h, 7ff7c71858b9h][41] = {0f 1f 44 00 00 0f b6 c1 0f b6 d2 3b c2 7d 07 2b d0 48 63 ca eb 05 2b c2 48 63 c8 41 0f b6 c0 48 3b c8 0f 96 c0 0f b6 c0 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 01:44:37:008
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000dh jge short 0016h                         ; JGE rel8 || 7D cb || encoded[2]{7d 07}
000fh sub edx,eax                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d0}
0011h movsxd rcx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 ca}
0014h jmp short 001bh                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
0016h sub eax,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c2}
0018h movsxd rcx,eax                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c8}
001bh movzx eax,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c0}
001fh cmp rcx,rax                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b c8}
0022h setbe al                                ; SETBE r/m8 || 0F 96 /r || encoded[3]{0f 96 c0}
0025h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0028h ret                                     ; RET || C3 || encoded[1]{c3}
