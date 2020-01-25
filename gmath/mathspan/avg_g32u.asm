; uint avg<uint>(ReadOnlySpan<uint> src)
; avg_g32u[7ff7c71be1a0h, 7ff7c71be1eeh][78] = {48 83 ec 28 90 48 8b 01 8b 51 08 33 c9 45 33 c0 85 d2 7e 17 4d 63 c8 46 8b 0c 88 49 03 c9 72 28 41 83 c0 01 70 22 44 3b c2 7c e9 85 d2 7c 19 44 8b c2 48 8b c1 33 d2 49 f7 f0 48 8b d0 48 c1 ea 20 75 05 48 83 c4 28 c3 e8 33 1a e1 5e cc}
; Capture completion code, ZEDx2_SBB
; 2020-01-25 02:11:00:338
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
0048h call 7ff825fcfc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 1a e1 5e}
004dh int 3                                   ; INT3 || CC || encoded[1]{cc}
