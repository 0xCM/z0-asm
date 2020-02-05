------------------------------------------------------------------------------------------------------------------------
; BitGrid16<byte> and<byte>(BitGrid16<byte> gx, BitGrid16<byte> gy)
; and_gbg8u_bg8u[87] = {50 0f 1f 40 00 48 89 4c 24 10 48 89 54 24 18 0f b6 44 24 12 0f b6 54 24 13 48 8d 4c 24 10 0f b7 09 4c 8d 44 24 18 45 0f b7 00 66 c7 04 24 00 00 c6 44 24 02 00 c6 44 24 03 00 0f b7 c9 41 23 c8 0f b7 c9 66 89 0c 24 88 44 24 02 88 54 24 03 8b 04 24 48 83 c4 08 c3}
; TermCode = RET_ZED_SBB
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h mov [rsp+10h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 4c 24 10}
000ah mov [rsp+18h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 18}
000fh movzx eax,byte ptr [rsp+12h]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{0f b6 44 24 12}
0014h movzx edx,byte ptr [rsp+13h]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{0f b6 54 24 13}
0019h lea rcx,[rsp+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 10}
001eh movzx ecx,word ptr [rcx]                ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 09}
0021h lea r8,[rsp+18h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 18}
0026h movzx r8d,word ptr [r8]                 ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 00}
002ah mov word ptr [rsp],0                    ; MOV r/m16, imm16 || o16 C7 /0 iw || encoded[6]{66 c7 04 24 00 00}
0030h mov byte ptr [rsp+2],0                  ; MOV r/m8, imm8 || C6 /0 ib || encoded[5]{c6 44 24 02 00}
0035h mov byte ptr [rsp+3],0                  ; MOV r/m8, imm8 || C6 /0 ib || encoded[5]{c6 44 24 03 00}
003ah movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
003dh and ecx,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 c8}
0040h movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
0043h mov [rsp],cx                            ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 0c 24}
0047h mov [rsp+2],al                          ; MOV r/m8, r8 || 88 /r || encoded[4]{88 44 24 02}
004bh mov [rsp+3],dl                          ; MOV r/m8, r8 || 88 /r || encoded[4]{88 54 24 03}
004fh mov eax,[rsp]                           ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 24}
0052h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitGrid16<ushort> and<ushort>(BitGrid16<ushort> gx, BitGrid16<ushort> gy)
; and_gbg16u_bg16u[87] = {50 0f 1f 40 00 48 89 4c 24 10 48 89 54 24 18 0f b6 44 24 12 0f b6 54 24 13 48 8d 4c 24 10 0f b7 09 4c 8d 44 24 18 45 0f b7 00 66 c7 04 24 00 00 c6 44 24 02 00 c6 44 24 03 00 0f b7 c9 41 23 c8 0f b7 c9 66 89 0c 24 88 44 24 02 88 54 24 03 8b 04 24 48 83 c4 08 c3}
; TermCode = RET_ZED_SBB
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h mov [rsp+10h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 4c 24 10}
000ah mov [rsp+18h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 18}
000fh movzx eax,byte ptr [rsp+12h]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{0f b6 44 24 12}
0014h movzx edx,byte ptr [rsp+13h]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{0f b6 54 24 13}
0019h lea rcx,[rsp+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 10}
001eh movzx ecx,word ptr [rcx]                ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 09}
0021h lea r8,[rsp+18h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 18}
0026h movzx r8d,word ptr [r8]                 ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 00}
002ah mov word ptr [rsp],0                    ; MOV r/m16, imm16 || o16 C7 /0 iw || encoded[6]{66 c7 04 24 00 00}
0030h mov byte ptr [rsp+2],0                  ; MOV r/m8, imm8 || C6 /0 ib || encoded[5]{c6 44 24 02 00}
0035h mov byte ptr [rsp+3],0                  ; MOV r/m8, imm8 || C6 /0 ib || encoded[5]{c6 44 24 03 00}
003ah movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
003dh and ecx,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 c8}
0040h movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
0043h mov [rsp],cx                            ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 0c 24}
0047h mov [rsp+2],al                          ; MOV r/m8, r8 || 88 /r || encoded[4]{88 44 24 02}
004bh mov [rsp+3],dl                          ; MOV r/m8, r8 || 88 /r || encoded[4]{88 54 24 03}
004fh mov eax,[rsp]                           ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 24}
0052h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitGrid16<uint> and<uint>(BitGrid16<uint> gx, BitGrid16<uint> gy)
; and_gbg32u_bg32u[87] = {50 0f 1f 40 00 48 89 4c 24 10 48 89 54 24 18 0f b6 44 24 12 0f b6 54 24 13 48 8d 4c 24 10 0f b7 09 4c 8d 44 24 18 45 0f b7 00 66 c7 04 24 00 00 c6 44 24 02 00 c6 44 24 03 00 0f b7 c9 41 23 c8 0f b7 c9 66 89 0c 24 88 44 24 02 88 54 24 03 8b 04 24 48 83 c4 08 c3}
; TermCode = RET_ZED_SBB
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h mov [rsp+10h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 4c 24 10}
000ah mov [rsp+18h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 18}
000fh movzx eax,byte ptr [rsp+12h]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{0f b6 44 24 12}
0014h movzx edx,byte ptr [rsp+13h]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{0f b6 54 24 13}
0019h lea rcx,[rsp+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 10}
001eh movzx ecx,word ptr [rcx]                ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 09}
0021h lea r8,[rsp+18h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 18}
0026h movzx r8d,word ptr [r8]                 ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 00}
002ah mov word ptr [rsp],0                    ; MOV r/m16, imm16 || o16 C7 /0 iw || encoded[6]{66 c7 04 24 00 00}
0030h mov byte ptr [rsp+2],0                  ; MOV r/m8, imm8 || C6 /0 ib || encoded[5]{c6 44 24 02 00}
0035h mov byte ptr [rsp+3],0                  ; MOV r/m8, imm8 || C6 /0 ib || encoded[5]{c6 44 24 03 00}
003ah movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
003dh and ecx,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 c8}
0040h movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
0043h mov [rsp],cx                            ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 0c 24}
0047h mov [rsp+2],al                          ; MOV r/m8, r8 || 88 /r || encoded[4]{88 44 24 02}
004bh mov [rsp+3],dl                          ; MOV r/m8, r8 || 88 /r || encoded[4]{88 54 24 03}
004fh mov eax,[rsp]                           ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 24}
0052h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitGrid16<ulong> and<ulong>(BitGrid16<ulong> gx, BitGrid16<ulong> gy)
; and_gbg64u_bg64u[87] = {50 0f 1f 40 00 48 89 4c 24 10 48 89 54 24 18 0f b6 44 24 12 0f b6 54 24 13 48 8d 4c 24 10 0f b7 09 4c 8d 44 24 18 45 0f b7 00 66 c7 04 24 00 00 c6 44 24 02 00 c6 44 24 03 00 0f b7 c9 41 23 c8 0f b7 c9 66 89 0c 24 88 44 24 02 88 54 24 03 8b 04 24 48 83 c4 08 c3}
; TermCode = RET_ZED_SBB
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h mov [rsp+10h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 4c 24 10}
000ah mov [rsp+18h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 18}
000fh movzx eax,byte ptr [rsp+12h]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{0f b6 44 24 12}
0014h movzx edx,byte ptr [rsp+13h]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{0f b6 54 24 13}
0019h lea rcx,[rsp+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 10}
001eh movzx ecx,word ptr [rcx]                ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 09}
0021h lea r8,[rsp+18h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 18}
0026h movzx r8d,word ptr [r8]                 ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 00}
002ah mov word ptr [rsp],0                    ; MOV r/m16, imm16 || o16 C7 /0 iw || encoded[6]{66 c7 04 24 00 00}
0030h mov byte ptr [rsp+2],0                  ; MOV r/m8, imm8 || C6 /0 ib || encoded[5]{c6 44 24 02 00}
0035h mov byte ptr [rsp+3],0                  ; MOV r/m8, imm8 || C6 /0 ib || encoded[5]{c6 44 24 03 00}
003ah movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
003dh and ecx,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 c8}
0040h movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
0043h mov [rsp],cx                            ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 0c 24}
0047h mov [rsp+2],al                          ; MOV r/m8, r8 || 88 /r || encoded[4]{88 44 24 02}
004bh mov [rsp+3],dl                          ; MOV r/m8, r8 || 88 /r || encoded[4]{88 54 24 03}
004fh mov eax,[rsp]                           ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 24}
0052h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitGrid32<byte> and<byte>(BitGrid32<byte> gx, BitGrid32<byte> gy)
; and_gbg8u_bg8u[35] = {0f 1f 44 00 00 0f b6 42 04 44 0f b6 4a 05 8b 12 45 8b 00 41 23 d0 89 11 88 41 04 44 88 49 05 48 8b c1 c3}
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
; and_gbg16u_bg16u[35] = {0f 1f 44 00 00 0f b6 42 04 44 0f b6 4a 05 8b 12 45 8b 00 41 23 d0 89 11 88 41 04 44 88 49 05 48 8b c1 c3}
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
; and_gbg32u_bg32u[35] = {0f 1f 44 00 00 0f b6 42 04 44 0f b6 4a 05 8b 12 45 8b 00 41 23 d0 89 11 88 41 04 44 88 49 05 48 8b c1 c3}
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
; and_gbg64u_bg64u[35] = {0f 1f 44 00 00 0f b6 42 04 44 0f b6 4a 05 8b 12 45 8b 00 41 23 d0 89 11 88 41 04 44 88 49 05 48 8b c1 c3}
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
; BitGrid64<byte> and<byte>(BitGrid64<byte> gx, BitGrid64<byte> gy)
; and_gbg8u_bg8u[29] = {0f 1f 44 00 00 48 8b 02 49 8b 10 48 23 c2 33 d2 48 89 01 88 51 08 88 51 09 48 8b c1 c3}
; TermCode = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
000eh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0010h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
0013h mov [rcx+8],dl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 51 08}
0016h mov [rcx+9],dl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 51 09}
0019h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitGrid64<ushort> and<ushort>(BitGrid64<ushort> gx, BitGrid64<ushort> gy)
; and_gbg16u_bg16u[29] = {0f 1f 44 00 00 48 8b 02 49 8b 10 48 23 c2 33 d2 48 89 01 88 51 08 88 51 09 48 8b c1 c3}
; TermCode = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
000eh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0010h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
0013h mov [rcx+8],dl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 51 08}
0016h mov [rcx+9],dl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 51 09}
0019h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitGrid64<uint> and<uint>(BitGrid64<uint> gx, BitGrid64<uint> gy)
; and_gbg32u_bg32u[29] = {0f 1f 44 00 00 48 8b 02 49 8b 10 48 23 c2 33 d2 48 89 01 88 51 08 88 51 09 48 8b c1 c3}
; TermCode = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
000eh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0010h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
0013h mov [rcx+8],dl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 51 08}
0016h mov [rcx+9],dl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 51 09}
0019h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitGrid64<ulong> and<ulong>(BitGrid64<ulong> gx, BitGrid64<ulong> gy)
; and_gbg64u_bg64u[29] = {0f 1f 44 00 00 48 8b 02 49 8b 10 48 23 c2 33 d2 48 89 01 88 51 08 88 51 09 48 8b c1 c3}
; TermCode = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
000eh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0010h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
0013h mov [rcx+8],dl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 51 08}
0016h mov [rcx+9],dl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 51 09}
0019h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitGrid<byte> and<byte>(in BitGrid<byte> gx, in BitGrid<byte> gy, in BitGrid<byte> gz)
; and_gbg8u~in_bg8u~in_bg8u~in[124] = {56 c5 f8 77 90 45 8b 48 08 45 8b d1 41 c1 fa 1f 41 83 e2 1f 45 03 ca 41 c1 f9 05 45 33 d2 45 85 c9 7e 51 48 8b 01 48 8b 12 49 8b 08 4c 8b d8 41 8b f2 c1 e6 05 48 63 f6 4c 03 de c4 c1 7f f0 03 4c 8b da 41 8b f2 c1 e6 05 48 63 f6 4c 03 de c4 c1 7f f0 0b c5 fd db c1 4c 8b d9 41 8b f2 c1 e6 05 48 63 f6 4c 03 de c4 c1 7e 7f 03 41 ff c2 45 3b d1 7c b8 49 8b c0 c5 f8 77 5e c3}
; TermCode = RET_INTR
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov r9d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 48 08}
0009h mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
000ch sar r10d,1fh                            ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[4]{41 c1 fa 1f}
0010h and r10d,1fh                            ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e2 1f}
0014h add r9d,r10d                            ; ADD r32, r/m32 || o32 03 /r || encoded[3]{45 03 ca}
0017h sar r9d,5                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[4]{41 c1 f9 05}
001bh xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
001eh test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0021h jle short 0074h                         ; JLE rel8 || 7E cb || encoded[2]{7e 51}
0023h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0026h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0029h mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
002ch mov r11,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b d8}
002fh mov esi,r10d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f2}
0032h shl esi,5                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e6 05}
0035h movsxd rsi,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 f6}
0038h add r11,rsi                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 de}
003bh vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
0040h mov r11,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b da}
0043h mov esi,r10d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f2}
0046h shl esi,5                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e6 05}
0049h movsxd rsi,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 f6}
004ch add r11,rsi                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 de}
004fh vlddqu ymm1,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 0b}
0054h vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
0058h mov r11,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b d9}
005bh mov esi,r10d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f2}
005eh shl esi,5                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e6 05}
0061h movsxd rsi,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 f6}
0064h add r11,rsi                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 de}
0067h vmovdqu ymmword ptr [r11],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 03}
006ch inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
006fh cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0072h jl short 002ch                          ; JL rel8 || 7C cb || encoded[2]{7c b8}
0074h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0077h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
007ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
007bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitGrid<ushort> and<ushort>(in BitGrid<ushort> gx, in BitGrid<ushort> gy, in BitGrid<ushort> gz)
; and_gbg16u~in_bg16u~in_bg16u~in[109] = {56 c5 f8 77 90 45 8b 48 08 45 8b d1 41 c1 fa 1f 41 83 e2 0f 45 03 ca 41 c1 f9 04 45 33 d2 45 85 c9 7e 42 48 8b 01 48 8b 12 49 8b 08 4c 8b d8 41 8b f2 c1 e6 04 48 63 f6 48 d1 e6 4c 03 de c4 c1 7f f0 03 4c 8b da 4c 03 de c4 c1 7f f0 0b c5 fd db c1 4c 8b d9 4c 03 de c4 c1 7e 7f 03 41 ff c2 45 3b d1 7c c7 49 8b c0 c5 f8 77 5e c3}
; TermCode = RET_INTR
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov r9d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 48 08}
0009h mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
000ch sar r10d,1fh                            ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[4]{41 c1 fa 1f}
0010h and r10d,0fh                            ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e2 0f}
0014h add r9d,r10d                            ; ADD r32, r/m32 || o32 03 /r || encoded[3]{45 03 ca}
0017h sar r9d,4                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[4]{41 c1 f9 04}
001bh xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
001eh test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0021h jle short 0065h                         ; JLE rel8 || 7E cb || encoded[2]{7e 42}
0023h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0026h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0029h mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
002ch mov r11,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b d8}
002fh mov esi,r10d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f2}
0032h shl esi,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e6 04}
0035h movsxd rsi,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 f6}
0038h shl rsi,1                               ; SHL r/m64, 1 || REX.W D1 /4 || encoded[3]{48 d1 e6}
003bh add r11,rsi                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 de}
003eh vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
0043h mov r11,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b da}
0046h add r11,rsi                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 de}
0049h vlddqu ymm1,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 0b}
004eh vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
0052h mov r11,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b d9}
0055h add r11,rsi                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 de}
0058h vmovdqu ymmword ptr [r11],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 03}
005dh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0060h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0063h jl short 002ch                          ; JL rel8 || 7C cb || encoded[2]{7c c7}
0065h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0068h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
006bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitGrid<uint> and<uint>(in BitGrid<uint> gx, in BitGrid<uint> gy, in BitGrid<uint> gz)
; and_gbg32u~in_bg32u~in_bg32u~in[110] = {56 c5 f8 77 90 45 8b 48 08 45 8b d1 41 c1 fa 1f 41 83 e2 07 45 03 ca 41 c1 f9 03 45 33 d2 45 85 c9 7e 43 48 8b 01 48 8b 12 49 8b 08 4c 8b d8 41 8b f2 c1 e6 03 48 63 f6 48 c1 e6 02 4c 03 de c4 c1 7f f0 03 4c 8b da 4c 03 de c4 c1 7f f0 0b c5 fd db c1 4c 8b d9 4c 03 de c4 c1 7e 7f 03 41 ff c2 45 3b d1 7c c6 49 8b c0 c5 f8 77 5e c3}
; TermCode = RET_INTR
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov r9d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 48 08}
0009h mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
000ch sar r10d,1fh                            ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[4]{41 c1 fa 1f}
0010h and r10d,7                              ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e2 07}
0014h add r9d,r10d                            ; ADD r32, r/m32 || o32 03 /r || encoded[3]{45 03 ca}
0017h sar r9d,3                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[4]{41 c1 f9 03}
001bh xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
001eh test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0021h jle short 0066h                         ; JLE rel8 || 7E cb || encoded[2]{7e 43}
0023h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0026h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0029h mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
002ch mov r11,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b d8}
002fh mov esi,r10d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f2}
0032h shl esi,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e6 03}
0035h movsxd rsi,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 f6}
0038h shl rsi,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e6 02}
003ch add r11,rsi                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 de}
003fh vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
0044h mov r11,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b da}
0047h add r11,rsi                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 de}
004ah vlddqu ymm1,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 0b}
004fh vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
0053h mov r11,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b d9}
0056h add r11,rsi                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 de}
0059h vmovdqu ymmword ptr [r11],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 03}
005eh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0061h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0064h jl short 002ch                          ; JL rel8 || 7C cb || encoded[2]{7c c6}
0066h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0069h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
006ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitGrid<ulong> and<ulong>(in BitGrid<ulong> gx, in BitGrid<ulong> gy, in BitGrid<ulong> gz)
; and_gbg64u~in_bg64u~in_bg64u~in[104] = {c5 f8 77 66 90 45 8b 48 08 45 8b d1 41 c1 fa 1f 41 83 e2 03 45 03 ca 41 c1 f9 02 45 33 d2 45 85 c9 7e 3e 48 8b 01 48 8b 02 48 8b 01 45 8b da 41 c1 e3 02 4d 63 db 49 c1 e3 03 49 03 c3 c5 ff f0 00 48 8b 02 49 03 c3 c5 ff f0 08 c5 fd db c1 49 8b 00 49 03 c3 c5 fe 7f 00 41 ff c2 45 3b d1 7c c8 49 8b c0 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov r9d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 48 08}
0009h mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
000ch sar r10d,1fh                            ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[4]{41 c1 fa 1f}
0010h and r10d,3                              ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e2 03}
0014h add r9d,r10d                            ; ADD r32, r/m32 || o32 03 /r || encoded[3]{45 03 ca}
0017h sar r9d,2                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[4]{41 c1 f9 02}
001bh xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
001eh test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0021h jle short 0061h                         ; JLE rel8 || 7E cb || encoded[2]{7e 3e}
0023h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0026h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0029h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
002ch mov r11d,r10d                           ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b da}
002fh shl r11d,2                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e3 02}
0033h movsxd r11,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 db}
0036h shl r11,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e3 03}
003ah add rax,r11                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c3}
003dh vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0041h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0044h add rax,r11                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c3}
0047h vlddqu ymm1,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 08}
004bh vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
004fh mov rax,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 00}
0052h add rax,r11                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c3}
0055h vmovdqu ymmword ptr [rax],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 00}
0059h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
005ch cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
005fh jl short 0029h                          ; JL rel8 || 7C cb || encoded[2]{7c c8}
0061h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0064h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0067h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitGrid<byte> and<byte>(in BitGrid<byte> gx, in BitGrid<byte> gy)
; and_gbg8u~in_bg8u~in[200] = {41 57 41 56 57 56 55 53 48 83 ec 38 c5 f8 77 33 c0 48 89 44 24 20 48 89 44 24 28 48 89 44 24 30 4c 8b f1 48 8b da 49 8b e8 8b 53 10 44 8b 43 14 48 8d 4c 24 20 45 33 c9 e8 63 fc ff ff 8b 44 24 28 8b d0 c1 fa 1f 83 e2 1f 03 c2 c1 f8 05 45 33 ff 85 c0 7e 4f 48 8b 55 00 48 8b 13 41 8b cf c1 e1 05 48 63 c9 48 03 d1 c5 ff f0 02 48 8b 55 00 41 8b cf c1 e1 05 48 63 c9 48 03 d1 c5 ff f0 0a c5 fd db c1 48 8d 54 24 20 48 8b 12 41 8b cf c1 e1 05 48 63 c9 48 03 d1 c5 fe 7f 02 41 ff c7 44 3b f8 7c b5 49 8b fe 48 8d 74 24 20 e8 1f 8a b7 5e 48 a5 48 a5 49 8b c6 c5 f8 77 48 83 c4 38 5b 5d 5e 5f 41 5e 41 5f c3}
; TermCode = RET_INTR
0000h push r15                                ; PUSH r64 || 50+ro || encoded[2]{41 57}
0002h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0004h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0005h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0006h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0007h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0008h sub rsp,38h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 38}
000ch vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000fh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0011h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0016h mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
001bh mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
0020h mov r14,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b f1}
0023h mov rbx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b da}
0026h mov rbp,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b e8}
0029h mov edx,[rbx+10h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 53 10}
002ch mov r8d,[rbx+14h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 43 14}
0030h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0035h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0038h call 7ff7c732d060h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 fc ff ff}
003dh mov eax,[rsp+28h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 28}
0041h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
0043h sar edx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 1f}
0046h and edx,1fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 1f}
0049h add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
004bh sar eax,5                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 05}
004eh xor r15d,r15d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 ff}
0051h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0053h jle short 00a4h                         ; JLE rel8 || 7E cb || encoded[2]{7e 4f}
0055h mov rdx,[rbp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 55 00}
0059h mov rdx,[rbx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 13}
005ch mov ecx,r15d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b cf}
005fh shl ecx,5                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 05}
0062h movsxd rcx,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c9}
0065h add rdx,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d1}
0068h vlddqu ymm0,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 02}
006ch mov rdx,[rbp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 55 00}
0070h mov ecx,r15d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b cf}
0073h shl ecx,5                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 05}
0076h movsxd rcx,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c9}
0079h add rdx,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d1}
007ch vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
0080h vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
0084h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
0089h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
008ch mov ecx,r15d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b cf}
008fh shl ecx,5                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 05}
0092h movsxd rcx,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c9}
0095h add rdx,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d1}
0098h vmovdqu ymmword ptr [rdx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 02}
009ch inc r15d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c7}
009fh cmp r15d,eax                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b f8}
00a2h jl short 0059h                          ; JL rel8 || 7C cb || encoded[2]{7c b5}
00a4h mov rdi,r14                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b fe}
00a7h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
00ach call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f 8a b7 5e}
00b1h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
00b3h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
00b5h mov rax,r14                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c6}
00b8h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00bbh add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
00bfh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00c0h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00c1h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00c2h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00c3h pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
00c5h pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
00c7h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitGrid<ushort> and<ushort>(in BitGrid<ushort> gx, in BitGrid<ushort> gy)
; and_gbg16u~in_bg16u~in[185] = {41 57 41 56 57 56 55 53 48 83 ec 38 c5 f8 77 33 c0 48 89 44 24 20 48 89 44 24 28 48 89 44 24 30 4c 8b f1 48 8b da 49 8b e8 8b 53 10 44 8b 43 14 48 8d 4c 24 20 45 33 c9 e8 b3 fb ff ff 8b 44 24 28 8b d0 c1 fa 1f 83 e2 0f 03 c2 c1 f8 04 45 33 ff 85 c0 7e 40 48 8b 55 00 48 8b 13 41 8b cf c1 e1 04 48 63 c9 48 d1 e1 48 03 d1 c5 ff f0 02 48 8b 55 00 48 03 d1 c5 ff f0 0a c5 fd db c1 48 8d 54 24 20 48 8b 12 48 03 d1 c5 fe 7f 02 41 ff c7 44 3b f8 7c c4 49 8b fe 48 8d 74 24 20 e8 3e 89 b7 5e 48 a5 48 a5 49 8b c6 c5 f8 77 48 83 c4 38 5b 5d 5e 5f 41 5e 41 5f c3}
; TermCode = RET_INTR
0000h push r15                                ; PUSH r64 || 50+ro || encoded[2]{41 57}
0002h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0004h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0005h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0006h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0007h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0008h sub rsp,38h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 38}
000ch vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000fh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0011h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0016h mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
001bh mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
0020h mov r14,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b f1}
0023h mov rbx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b da}
0026h mov rbp,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b e8}
0029h mov edx,[rbx+10h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 53 10}
002ch mov r8d,[rbx+14h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 43 14}
0030h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0035h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0038h call 7ff7c732d0a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 fb ff ff}
003dh mov eax,[rsp+28h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 28}
0041h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
0043h sar edx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 1f}
0046h and edx,0fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 0f}
0049h add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
004bh sar eax,4                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 04}
004eh xor r15d,r15d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 ff}
0051h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0053h jle short 0095h                         ; JLE rel8 || 7E cb || encoded[2]{7e 40}
0055h mov rdx,[rbp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 55 00}
0059h mov rdx,[rbx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 13}
005ch mov ecx,r15d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b cf}
005fh shl ecx,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 04}
0062h movsxd rcx,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c9}
0065h shl rcx,1                               ; SHL r/m64, 1 || REX.W D1 /4 || encoded[3]{48 d1 e1}
0068h add rdx,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d1}
006bh vlddqu ymm0,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 02}
006fh mov rdx,[rbp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 55 00}
0073h add rdx,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d1}
0076h vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
007ah vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
007eh lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
0083h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0086h add rdx,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d1}
0089h vmovdqu ymmword ptr [rdx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 02}
008dh inc r15d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c7}
0090h cmp r15d,eax                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b f8}
0093h jl short 0059h                          ; JL rel8 || 7C cb || encoded[2]{7c c4}
0095h mov rdi,r14                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b fe}
0098h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
009dh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e 89 b7 5e}
00a2h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
00a4h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
00a6h mov rax,r14                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c6}
00a9h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00ach add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
00b0h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00b1h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00b2h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00b3h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00b4h pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
00b6h pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
00b8h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitGrid<uint> and<uint>(in BitGrid<uint> gx, in BitGrid<uint> gy)
; and_gbg32u~in_bg32u~in[186] = {41 57 41 56 57 56 55 53 48 83 ec 38 c5 f8 77 33 c0 48 89 44 24 20 48 89 44 24 28 48 89 44 24 30 4c 8b f1 48 8b da 49 8b e8 8b 53 10 44 8b 43 14 48 8d 4c 24 20 45 33 c9 e8 f3 fa ff ff 8b 44 24 28 8b d0 c1 fa 1f 83 e2 07 03 c2 c1 f8 03 45 33 ff 85 c0 7e 41 48 8b 55 00 48 8b 13 41 8b cf c1 e1 03 48 63 c9 48 c1 e1 02 48 03 d1 c5 ff f0 02 48 8b 55 00 48 03 d1 c5 ff f0 0a c5 fd db c1 48 8d 54 24 20 48 8b 12 48 03 d1 c5 fe 7f 02 41 ff c7 44 3b f8 7c c3 49 8b fe 48 8d 74 24 20 e8 5d 88 b7 5e 48 a5 48 a5 49 8b c6 c5 f8 77 48 83 c4 38 5b 5d 5e 5f 41 5e 41 5f c3}
; TermCode = RET_INTR
0000h push r15                                ; PUSH r64 || 50+ro || encoded[2]{41 57}
0002h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0004h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0005h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0006h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0007h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0008h sub rsp,38h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 38}
000ch vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000fh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0011h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0016h mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
001bh mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
0020h mov r14,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b f1}
0023h mov rbx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b da}
0026h mov rbp,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b e8}
0029h mov edx,[rbx+10h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 53 10}
002ch mov r8d,[rbx+14h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 43 14}
0030h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0035h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0038h call 7ff7c732d0c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 fa ff ff}
003dh mov eax,[rsp+28h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 28}
0041h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
0043h sar edx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 1f}
0046h and edx,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 07}
0049h add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
004bh sar eax,3                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 03}
004eh xor r15d,r15d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 ff}
0051h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0053h jle short 0096h                         ; JLE rel8 || 7E cb || encoded[2]{7e 41}
0055h mov rdx,[rbp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 55 00}
0059h mov rdx,[rbx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 13}
005ch mov ecx,r15d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b cf}
005fh shl ecx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 03}
0062h movsxd rcx,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c9}
0065h shl rcx,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e1 02}
0069h add rdx,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d1}
006ch vlddqu ymm0,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 02}
0070h mov rdx,[rbp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 55 00}
0074h add rdx,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d1}
0077h vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
007bh vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
007fh lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
0084h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0087h add rdx,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d1}
008ah vmovdqu ymmword ptr [rdx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 02}
008eh inc r15d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c7}
0091h cmp r15d,eax                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b f8}
0094h jl short 0059h                          ; JL rel8 || 7C cb || encoded[2]{7c c3}
0096h mov rdi,r14                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b fe}
0099h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
009eh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d 88 b7 5e}
00a3h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
00a5h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
00a7h mov rax,r14                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c6}
00aah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00adh add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
00b1h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00b2h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00b3h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00b4h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00b5h pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
00b7h pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
00b9h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitGrid<ulong> and<ulong>(in BitGrid<ulong> gx, in BitGrid<ulong> gy)
; and_gbg64u~in_bg64u~in[186] = {41 57 41 56 57 56 55 53 48 83 ec 38 c5 f8 77 33 c0 48 89 44 24 20 48 89 44 24 28 48 89 44 24 30 4c 8b f1 48 8b da 49 8b e8 8b 53 10 44 8b 43 14 48 8d 4c 24 20 45 33 c9 e8 33 fa ff ff 8b 44 24 28 8b d0 c1 fa 1f 83 e2 03 03 c2 c1 f8 02 45 33 ff 85 c0 7e 41 48 8b 55 00 48 8b 13 41 8b cf c1 e1 02 48 63 c9 48 c1 e1 03 48 03 d1 c5 ff f0 02 48 8b 55 00 48 03 d1 c5 ff f0 0a c5 fd db c1 48 8d 54 24 20 48 8b 12 48 03 d1 c5 fe 7f 02 41 ff c7 44 3b f8 7c c3 49 8b fe 48 8d 74 24 20 e8 7d 87 b7 5e 48 a5 48 a5 49 8b c6 c5 f8 77 48 83 c4 38 5b 5d 5e 5f 41 5e 41 5f c3}
; TermCode = RET_INTR
0000h push r15                                ; PUSH r64 || 50+ro || encoded[2]{41 57}
0002h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0004h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0005h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0006h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0007h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0008h sub rsp,38h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 38}
000ch vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000fh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0011h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0016h mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
001bh mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
0020h mov r14,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b f1}
0023h mov rbx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b da}
0026h mov rbp,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b e8}
0029h mov edx,[rbx+10h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 53 10}
002ch mov r8d,[rbx+14h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 43 14}
0030h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0035h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0038h call 7ff7c732d0e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 fa ff ff}
003dh mov eax,[rsp+28h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 28}
0041h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
0043h sar edx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 1f}
0046h and edx,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 03}
0049h add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
004bh sar eax,2                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 02}
004eh xor r15d,r15d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 ff}
0051h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0053h jle short 0096h                         ; JLE rel8 || 7E cb || encoded[2]{7e 41}
0055h mov rdx,[rbp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 55 00}
0059h mov rdx,[rbx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 13}
005ch mov ecx,r15d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b cf}
005fh shl ecx,2                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 02}
0062h movsxd rcx,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c9}
0065h shl rcx,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e1 03}
0069h add rdx,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d1}
006ch vlddqu ymm0,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 02}
0070h mov rdx,[rbp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 55 00}
0074h add rdx,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d1}
0077h vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
007bh vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
007fh lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
0084h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0087h add rdx,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d1}
008ah vmovdqu ymmword ptr [rdx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 02}
008eh inc r15d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c7}
0091h cmp r15d,eax                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b f8}
0094h jl short 0059h                          ; JL rel8 || 7C cb || encoded[2]{7c c3}
0096h mov rdi,r14                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b fe}
0099h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
009eh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d 87 b7 5e}
00a3h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
00a5h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
00a7h mov rax,r14                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c6}
00aah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00adh add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
00b1h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00b2h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00b3h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00b4h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00b5h pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
00b7h pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
00b9h ret                                     ; RET || C3 || encoded[1]{c3}
