; ushort avg<ushort>(ReadOnlySpan<ushort> src)
; avg_g16u[7ff7c71ab310h, 7ff7c71ab35eh][78] = {48 83 ec 28 90 48 8b 01 8b 51 08 33 c9 45 33 c0 85 d2 7e 18 4d 63 c8 46 0f b7 0c 48 49 03 c9 72 27 41 83 c0 01 70 21 44 3b c2 7c e8 85 d2 7c 18 44 8b c2 48 8b c1 33 d2 49 f7 f0 48 3d ff ff 00 00 77 05 48 83 c4 28 c3 e8 c3 48 e2 5e cc}
; Capture completion code, ZEDx2_SBB
; 2020-01-24 01:44:40:128
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
0048h call 7ff825fcfc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c3 48 e2 5e}
004dh int 3                                   ; INT3 || CC || encoded[1]{cc}
