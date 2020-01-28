------------------------------------------------------------------------------------------------------------------------
; byte avg<byte>(ReadOnlySpan<byte> src)
; avg_g8u[72] = {48 83 ec 28 90 48 8b 01 8b 51 08 33 c9 45 33 c0 85 d2 7e 18 4d 63 c8 46 0f b6 0c 08 49 03 c9 72 27 41 83 c0 01 70 21 44 3b c2 7c e8 85 d2 7c 18 44 8b c2 48 8b c1 33 d2 49 f7 f0 48 3d ff 00 00 00 77 05 48 83 c4 28 c3}
; TermCode = ZEDx7_RET
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov edx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 51 08}
000bh xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
000dh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0010h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0012h jle short 002ch                         ; JLE rel8 || 7E cb || encoded[2]{7e 18}
0014h movsxd r9,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c8}
0017h movzx r9d,byte ptr [rax+r9]             ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{46 0f b6 0c 08}
001ch add rcx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c9}
001fh jb short 0048h                          ; JB rel8 || 72 cb || encoded[2]{72 27}
0021h add r8d,1                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c0 01}
0025h jo short 0048h                          ; JO rel8 || 70 cb || encoded[2]{70 21}
0027h cmp r8d,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c2}
002ah jl short 0014h                          ; JL rel8 || 7C cb || encoded[2]{7c e8}
002ch test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
002eh jl short 0048h                          ; JL rel8 || 7C cb || encoded[2]{7c 18}
0030h mov r8d,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c2}
0033h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0036h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0038h div r8                                  ; DIV r/m64 || REX.W F7 /6 || encoded[3]{49 f7 f0}
003bh cmp rax,0ffh                            ; CMP RAX, imm32 || REX.W 3D id || encoded[6]{48 3d ff 00 00 00}
0041h ja short 0048h                          ; JA rel8 || 77 cb || encoded[2]{77 05}
0043h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0047h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte avg<sbyte>(ReadOnlySpan<sbyte> src)
; avg_g8i[75] = {48 83 ec 28 90 48 8b 01 8b 51 08 33 c9 45 33 c0 85 d2 7e 1b 4d 63 c8 4e 0f be 0c 08 4d 63 c9 49 03 c9 70 27 41 83 c0 01 70 21 44 3b c2 7c e5 4c 63 c2 48 8b c1 48 99 49 f7 f8 48 83 f8 7f 7f 0b 48 83 f8 80 7c 05 48 83 c4 28 c3}
; TermCode = ZEDx7_RET
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov edx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 51 08}
000bh xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
000dh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0010h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0012h jle short 002fh                         ; JLE rel8 || 7E cb || encoded[2]{7e 1b}
0014h movsxd r9,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c8}
0017h movsx r9,byte ptr [rax+r9]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{4e 0f be 0c 08}
001ch movsxd r9,r9d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c9}
001fh add rcx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c9}
0022h jo short 004bh                          ; JO rel8 || 70 cb || encoded[2]{70 27}
0024h add r8d,1                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c0 01}
0028h jo short 004bh                          ; JO rel8 || 70 cb || encoded[2]{70 21}
002ah cmp r8d,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c2}
002dh jl short 0014h                          ; JL rel8 || 7C cb || encoded[2]{7c e5}
002fh movsxd r8,edx                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4c 63 c2}
0032h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0035h cqo                                     ; CQO || REX.W 99 || encoded[2]{48 99}
0037h idiv r8                                 ; IDIV r/m64 || REX.W F7 /7 || encoded[3]{49 f7 f8}
003ah cmp rax,7fh                             ; CMP r/m64, imm8 || REX.W 83 /7 ib || encoded[4]{48 83 f8 7f}
003eh jg short 004bh                          ; JG rel8 || 7F cb || encoded[2]{7f 0b}
0040h cmp rax,0ffffffffffffff80h              ; CMP r/m64, imm8 || REX.W 83 /7 ib || encoded[4]{48 83 f8 80}
0044h jl short 004bh                          ; JL rel8 || 7C cb || encoded[2]{7c 05}
0046h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
004ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort avg<ushort>(ReadOnlySpan<ushort> src)
; avg_g16u[72] = {48 83 ec 28 90 48 8b 01 8b 51 08 33 c9 45 33 c0 85 d2 7e 18 4d 63 c8 46 0f b7 0c 48 49 03 c9 72 27 41 83 c0 01 70 21 44 3b c2 7c e8 85 d2 7c 18 44 8b c2 48 8b c1 33 d2 49 f7 f0 48 3d ff ff 00 00 77 05 48 83 c4 28 c3}
; TermCode = ZEDx7_RET
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov edx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 51 08}
000bh xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
000dh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0010h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0012h jle short 002ch                         ; JLE rel8 || 7E cb || encoded[2]{7e 18}
0014h movsxd r9,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c8}
0017h movzx r9d,word ptr [rax+r9*2]           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{46 0f b7 0c 48}
001ch add rcx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c9}
001fh jb short 0048h                          ; JB rel8 || 72 cb || encoded[2]{72 27}
0021h add r8d,1                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c0 01}
0025h jo short 0048h                          ; JO rel8 || 70 cb || encoded[2]{70 21}
0027h cmp r8d,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c2}
002ah jl short 0014h                          ; JL rel8 || 7C cb || encoded[2]{7c e8}
002ch test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
002eh jl short 0048h                          ; JL rel8 || 7C cb || encoded[2]{7c 18}
0030h mov r8d,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c2}
0033h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0036h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0038h div r8                                  ; DIV r/m64 || REX.W F7 /6 || encoded[3]{49 f7 f0}
003bh cmp rax,0ffffh                          ; CMP RAX, imm32 || REX.W 3D id || encoded[6]{48 3d ff ff 00 00}
0041h ja short 0048h                          ; JA rel8 || 77 cb || encoded[2]{77 05}
0043h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0047h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short avg<short>(ReadOnlySpan<short> src)
; avg_g16i[79] = {48 83 ec 28 90 48 8b 01 8b 51 08 33 c9 45 33 c0 85 d2 7e 1b 4d 63 c8 4e 0f bf 0c 48 4d 63 c9 49 03 c9 70 2b 41 83 c0 01 70 25 44 3b c2 7c e5 4c 63 c2 48 8b c1 48 99 49 f7 f8 48 3d ff 7f 00 00 7f 0d 48 3d 00 80 ff ff 7c 05 48 83 c4 28 c3}
; TermCode = ZEDx7_RET
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov edx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 51 08}
000bh xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
000dh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0010h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0012h jle short 002fh                         ; JLE rel8 || 7E cb || encoded[2]{7e 1b}
0014h movsxd r9,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c8}
0017h movsx r9,word ptr [rax+r9*2]            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{4e 0f bf 0c 48}
001ch movsxd r9,r9d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c9}
001fh add rcx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c9}
0022h jo short 004fh                          ; JO rel8 || 70 cb || encoded[2]{70 2b}
0024h add r8d,1                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c0 01}
0028h jo short 004fh                          ; JO rel8 || 70 cb || encoded[2]{70 25}
002ah cmp r8d,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c2}
002dh jl short 0014h                          ; JL rel8 || 7C cb || encoded[2]{7c e5}
002fh movsxd r8,edx                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4c 63 c2}
0032h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0035h cqo                                     ; CQO || REX.W 99 || encoded[2]{48 99}
0037h idiv r8                                 ; IDIV r/m64 || REX.W F7 /7 || encoded[3]{49 f7 f8}
003ah cmp rax,7fffh                           ; CMP RAX, imm32 || REX.W 3D id || encoded[6]{48 3d ff 7f 00 00}
0040h jg short 004fh                          ; JG rel8 || 7F cb || encoded[2]{7f 0d}
0042h cmp rax,0ffffffffffff8000h              ; CMP RAX, imm32 || REX.W 3D id || encoded[6]{48 3d 00 80 ff ff}
0048h jl short 004fh                          ; JL rel8 || 7C cb || encoded[2]{7c 05}
004ah add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
004eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint avg<uint>(ReadOnlySpan<uint> src)
; avg_g32u[72] = {48 83 ec 28 90 48 8b 01 8b 51 08 33 c9 45 33 c0 85 d2 7e 17 4d 63 c8 46 8b 0c 88 49 03 c9 72 28 41 83 c0 01 70 22 44 3b c2 7c e9 85 d2 7c 19 44 8b c2 48 8b c1 33 d2 49 f7 f0 48 8b d0 48 c1 ea 20 75 05 48 83 c4 28 c3}
; TermCode = ZEDx7_RET
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov edx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 51 08}
000bh xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
000dh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0010h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0012h jle short 002bh                         ; JLE rel8 || 7E cb || encoded[2]{7e 17}
0014h movsxd r9,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c8}
0017h mov r9d,[rax+r9*4]                      ; MOV r32, r/m32 || o32 8B /r || encoded[4]{46 8b 0c 88}
001bh add rcx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c9}
001eh jb short 0048h                          ; JB rel8 || 72 cb || encoded[2]{72 28}
0020h add r8d,1                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c0 01}
0024h jo short 0048h                          ; JO rel8 || 70 cb || encoded[2]{70 22}
0026h cmp r8d,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c2}
0029h jl short 0014h                          ; JL rel8 || 7C cb || encoded[2]{7c e9}
002bh test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
002dh jl short 0048h                          ; JL rel8 || 7C cb || encoded[2]{7c 19}
002fh mov r8d,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c2}
0032h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0035h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0037h div r8                                  ; DIV r/m64 || REX.W F7 /6 || encoded[3]{49 f7 f0}
003ah mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
003dh shr rdx,20h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 ea 20}
0041h jne short 0048h                         ; JNE rel8 || 75 cb || encoded[2]{75 05}
0043h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0047h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int avg<int>(ReadOnlySpan<int> src)
; avg_g32i[78] = {48 83 ec 28 90 48 8b 01 8b 51 08 33 c9 45 33 c0 85 d2 7e 1a 4d 63 c8 46 8b 0c 88 4d 63 c9 49 03 c9 70 2b 41 83 c0 01 70 25 44 3b c2 7c e6 4c 63 c2 48 8b c1 48 99 49 f7 f8 48 3d ff ff ff 7f 7f 0d 48 3d 00 00 00 80 7c 05 48 83 c4 28 c3}
; TermCode = ZEDx7_RET
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov edx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 51 08}
000bh xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
000dh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0010h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0012h jle short 002eh                         ; JLE rel8 || 7E cb || encoded[2]{7e 1a}
0014h movsxd r9,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c8}
0017h mov r9d,[rax+r9*4]                      ; MOV r32, r/m32 || o32 8B /r || encoded[4]{46 8b 0c 88}
001bh movsxd r9,r9d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c9}
001eh add rcx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c9}
0021h jo short 004eh                          ; JO rel8 || 70 cb || encoded[2]{70 2b}
0023h add r8d,1                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c0 01}
0027h jo short 004eh                          ; JO rel8 || 70 cb || encoded[2]{70 25}
0029h cmp r8d,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c2}
002ch jl short 0014h                          ; JL rel8 || 7C cb || encoded[2]{7c e6}
002eh movsxd r8,edx                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4c 63 c2}
0031h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0034h cqo                                     ; CQO || REX.W 99 || encoded[2]{48 99}
0036h idiv r8                                 ; IDIV r/m64 || REX.W F7 /7 || encoded[3]{49 f7 f8}
0039h cmp rax,7fffffffh                       ; CMP RAX, imm32 || REX.W 3D id || encoded[6]{48 3d ff ff ff 7f}
003fh jg short 004eh                          ; JG rel8 || 7F cb || encoded[2]{7f 0d}
0041h cmp rax,0ffffffff80000000h              ; CMP RAX, imm32 || REX.W 3D id || encoded[6]{48 3d 00 00 00 80}
0047h jl short 004eh                          ; JL rel8 || 7C cb || encoded[2]{7c 05}
0049h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
004dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong avg<ulong>(ReadOnlySpan<ulong> src)
; avg_g64u[60] = {48 83 ec 28 90 48 8b 01 8b 51 08 33 c9 45 33 c0 85 d2 7e 14 4d 63 c8 4a 03 0c c8 72 1f 41 83 c0 01 70 19 44 3b c2 7c ec 85 d2 7c 10 44 8b c2 48 8b c1 33 d2 49 f7 f0 48 83 c4 28 c3}
; TermCode = ZEDx7_RET
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov edx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 51 08}
000bh xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
000dh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0010h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0012h jle short 0028h                         ; JLE rel8 || 7E cb || encoded[2]{7e 14}
0014h movsxd r9,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c8}
0017h add rcx,[rax+r9*8]                      ; ADD r64, r/m64 || REX.W 03 /r || encoded[4]{4a 03 0c c8}
001bh jb short 003ch                          ; JB rel8 || 72 cb || encoded[2]{72 1f}
001dh add r8d,1                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c0 01}
0021h jo short 003ch                          ; JO rel8 || 70 cb || encoded[2]{70 19}
0023h cmp r8d,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c2}
0026h jl short 0014h                          ; JL rel8 || 7C cb || encoded[2]{7c ec}
0028h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
002ah jl short 003ch                          ; JL rel8 || 7C cb || encoded[2]{7c 10}
002ch mov r8d,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c2}
002fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0032h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0034h div r8                                  ; DIV r/m64 || REX.W F7 /6 || encoded[3]{49 f7 f0}
0037h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
003bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long avg<long>(ReadOnlySpan<long> src)
; avg_g64i[56] = {48 83 ec 28 90 48 8b 01 8b 51 08 33 c9 45 33 c0 85 d2 7e 14 4d 63 c8 4a 03 0c c8 70 1b 41 83 c0 01 70 15 44 3b c2 7c ec 4c 63 c2 48 8b c1 48 99 49 f7 f8 48 83 c4 28 c3}
; TermCode = ZEDx7_RET
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov edx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 51 08}
000bh xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
000dh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0010h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0012h jle short 0028h                         ; JLE rel8 || 7E cb || encoded[2]{7e 14}
0014h movsxd r9,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c8}
0017h add rcx,[rax+r9*8]                      ; ADD r64, r/m64 || REX.W 03 /r || encoded[4]{4a 03 0c c8}
001bh jo short 0038h                          ; JO rel8 || 70 cb || encoded[2]{70 1b}
001dh add r8d,1                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c0 01}
0021h jo short 0038h                          ; JO rel8 || 70 cb || encoded[2]{70 15}
0023h cmp r8d,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c2}
0026h jl short 0014h                          ; JL rel8 || 7C cb || encoded[2]{7c ec}
0028h movsxd r8,edx                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4c 63 c2}
002bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
002eh cqo                                     ; CQO || REX.W 99 || encoded[2]{48 99}
0030h idiv r8                                 ; IDIV r/m64 || REX.W F7 /7 || encoded[3]{49 f7 f8}
0033h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0037h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; float avg<float>(ReadOnlySpan<float> src)
; avg_g32f[47] = {48 83 ec 38 c5 f8 77 33 c0 48 89 44 24 28 48 8b 01 8b 49 08 48 8d 54 24 28 48 89 02 89 4a 08 48 8d 4c 24 28 e8 e7 9c e9 ff 90 48 83 c4 38 c3}
; TermCode = ZEDx7_RET
0000h sub rsp,38h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 38}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
000eh mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0011h mov ecx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 49 08}
0014h lea rdx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 28}
0019h mov [rdx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 02}
001ch mov [rdx+8],ecx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 4a 08}
001fh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0024h call 7ff7c6d51490h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 9c e9 ff}
0029h nop                                     ; NOP || o32 90 || encoded[1]{90}
002ah add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
002eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double avg<double>(ReadOnlySpan<double> src)
; avg_g64f[47] = {48 83 ec 38 c5 f8 77 33 c0 48 89 44 24 28 48 8b 01 8b 49 08 48 8d 54 24 28 48 89 02 89 4a 08 48 8d 4c 24 28 e8 9f 9c e9 ff 90 48 83 c4 38 c3}
; TermCode = ZEDx7_RET
0000h sub rsp,38h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 38}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
000eh mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0011h mov ecx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 49 08}
0014h lea rdx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 28}
0019h mov [rdx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 02}
001ch mov [rdx+8],ecx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 4a 08}
001fh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0024h call 7ff7c6d51498h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f 9c e9 ff}
0029h nop                                     ; NOP || o32 90 || encoded[1]{90}
002ah add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
002eh ret                                     ; RET || C3 || encoded[1]{c3}
