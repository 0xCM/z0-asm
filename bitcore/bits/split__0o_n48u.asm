; ConstQuad<byte> split(uint src, N4 n)
; split__0o_n48u[7ff7c6e6ead0h, 7ff7c6e6eb28h][88] = {50 0f 1f 40 00 0f b6 c1 8b d1 c1 ea 08 0f b6 d2 44 8b c1 41 c1 e8 10 45 0f b6 c0 c1 e9 18 0f b6 c9 c6 04 24 00 c6 44 24 01 00 c6 44 24 02 00 c6 44 24 03 00 0f b6 c0 88 04 24 0f b6 c2 88 44 24 01 41 0f b6 c0 88 44 24 02 0f b6 c1 88 44 24 03 8b 04 24 48 83 c4 08 c3}
; Capture completion code, RET_SBB
; 2020-01-24 01:44:32:590
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h mov edx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d1}
000ah shr edx,8                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 ea 08}
000dh movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0010h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0013h shr r8d,10h                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[4]{41 c1 e8 10}
0017h movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
001bh shr ecx,18h                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e9 18}
001eh movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
0021h mov byte ptr [rsp],0                    ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 04 24 00}
0025h mov byte ptr [rsp+1],0                  ; MOV r/m8, imm8 || C6 /0 ib || encoded[5]{c6 44 24 01 00}
002ah mov byte ptr [rsp+2],0                  ; MOV r/m8, imm8 || C6 /0 ib || encoded[5]{c6 44 24 02 00}
002fh mov byte ptr [rsp+3],0                  ; MOV r/m8, imm8 || C6 /0 ib || encoded[5]{c6 44 24 03 00}
0034h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0037h mov [rsp],al                            ; MOV r/m8, r8 || 88 /r || encoded[3]{88 04 24}
003ah movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
003dh mov [rsp+1],al                          ; MOV r/m8, r8 || 88 /r || encoded[4]{88 44 24 01}
0041h movzx eax,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c0}
0045h mov [rsp+2],al                          ; MOV r/m8, r8 || 88 /r || encoded[4]{88 44 24 02}
0049h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
004ch mov [rsp+3],al                          ; MOV r/m8, r8 || 88 /r || encoded[4]{88 44 24 03}
0050h mov eax,[rsp]                           ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 24}
0053h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
