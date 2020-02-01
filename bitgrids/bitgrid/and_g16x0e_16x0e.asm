------------------------------------------------------------------------------------------------------------------------
; BitGrid16<byte> and<byte>(BitGrid16<byte> gx, BitGrid16<byte> gy)
; and_g16x8u_16x8u[87] = {50 0f 1f 40 00 48 89 4c 24 10 48 89 54 24 18 0f b6 44 24 12 0f b6 54 24 13 48 8d 4c 24 10 0f b7 09 4c 8d 44 24 18 45 0f b7 00 66 c7 04 24 00 00 c6 44 24 02 00 c6 44 24 03 00 0f b7 c9 41 23 c8 0f b7 c9 66 89 0c 24 88 44 24 02 88 54 24 03 8b 04 24 48 83 c4 08 c3}
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
; and_g16x16u_16x16u[87] = {50 0f 1f 40 00 48 89 4c 24 10 48 89 54 24 18 0f b6 44 24 12 0f b6 54 24 13 48 8d 4c 24 10 0f b7 09 4c 8d 44 24 18 45 0f b7 00 66 c7 04 24 00 00 c6 44 24 02 00 c6 44 24 03 00 0f b7 c9 41 23 c8 0f b7 c9 66 89 0c 24 88 44 24 02 88 54 24 03 8b 04 24 48 83 c4 08 c3}
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
; and_g16x32u_16x32u[87] = {50 0f 1f 40 00 48 89 4c 24 10 48 89 54 24 18 0f b6 44 24 12 0f b6 54 24 13 48 8d 4c 24 10 0f b7 09 4c 8d 44 24 18 45 0f b7 00 66 c7 04 24 00 00 c6 44 24 02 00 c6 44 24 03 00 0f b7 c9 41 23 c8 0f b7 c9 66 89 0c 24 88 44 24 02 88 54 24 03 8b 04 24 48 83 c4 08 c3}
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
; and_g16x64u_16x64u[87] = {50 0f 1f 40 00 48 89 4c 24 10 48 89 54 24 18 0f b6 44 24 12 0f b6 54 24 13 48 8d 4c 24 10 0f b7 09 4c 8d 44 24 18 45 0f b7 00 66 c7 04 24 00 00 c6 44 24 02 00 c6 44 24 03 00 0f b7 c9 41 23 c8 0f b7 c9 66 89 0c 24 88 44 24 02 88 54 24 03 8b 04 24 48 83 c4 08 c3}
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
