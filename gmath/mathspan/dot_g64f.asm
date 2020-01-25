; double dot<double>(ReadOnlySpan<double> lhs, ReadOnlySpan<double> rhs)
; dot_g64f[7ff7c71bd1e0h, 7ff7c71bd229h][73] = {50 c5 f8 77 90 8b 41 08 48 8b 09 48 8b 12 45 33 c0 4c 89 04 24 85 c0 7e 26 4d 63 c8 c4 a1 7b 10 04 c9 c4 a1 7b 10 0c ca c5 fb 10 14 24 c4 e2 f1 a9 c2 c5 fb 11 04 24 41 ff c0 44 3b c0 7c da c5 fb 10 04 24 48 83 c4 08 c3}
; Capture completion code, RET_INTR
; 2020-01-25 02:11:00:308
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov eax,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 41 08}
0008h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
000bh mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000eh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0011h mov [rsp],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 04 24}
0015h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0017h jle short 003fh                         ; JLE rel8 || 7E cb || encoded[2]{7e 26}
0019h movsxd r9,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c8}
001ch vmovsd xmm0,qword ptr [rcx+r9*8]        ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[6]{c4 a1 7b 10 04 c9}
0022h vmovsd xmm1,qword ptr [rdx+r9*8]        ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[6]{c4 a1 7b 10 0c ca}
0028h vmovsd xmm2,qword ptr [rsp]             ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 14 24}
002dh vfmadd213sd xmm0,xmm1,xmm2              ; VFMADD213SD xmm1, xmm2, xmm3/m64 || VEX.LIG.66.0F38.W1 A9 /r || encoded[5]{c4 e2 f1 a9 c2}
0032h vmovsd qword ptr [rsp],xmm0             ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 04 24}
0037h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
003ah cmp r8d,eax                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c0}
003dh jl short 0019h                          ; JL rel8 || 7C cb || encoded[2]{7c da}
003fh vmovsd xmm0,qword ptr [rsp]             ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 04 24}
0044h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0048h ret                                     ; RET || C3 || encoded[1]{c3}
