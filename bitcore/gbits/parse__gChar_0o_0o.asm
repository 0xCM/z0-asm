; ref double parse<double>(ReadOnlySpan<Char> src, int offset, out double dst)
; parse__gChar_0o_0o[7ff7c6e858b0h, 7ff7c6e85921h][113] = {56 48 83 ec 10 c5 f8 77 8b 41 08 83 f8 40 7f 02 eb 05 b8 40 00 00 00 ff c8 4c 8b 09 33 c9 49 89 08 45 33 d2 3b d0 7f 40 48 63 ca 66 41 83 3c 49 31 75 2c c4 c1 7b 10 00 c5 fb 11 44 24 08 4c 8b 5c 24 08 be 01 00 00 00 41 8b ca 48 d3 e6 4c 0b de 4c 89 1c 24 c5 fb 10 04 24 c4 c1 7b 11 00 ff c2 41 ff c2 3b d0 7e c0 49 8b c0 48 83 c4 10 5e c3}
; Capture completion code, RET_INTR
; 2020-01-24 01:44:34:282
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,10h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 10}
0005h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0008h mov eax,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 41 08}
000bh cmp eax,40h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 40}
000eh jg short 0012h                          ; JG rel8 || 7F cb || encoded[2]{7f 02}
0010h jmp short 0017h                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
0012h mov eax,40h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 40 00 00 00}
0017h dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
0019h mov r9,[rcx]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 09}
001ch xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
001eh mov [r8],rcx                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 08}
0021h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0024h cmp edx,eax                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b d0}
0026h jg short 0068h                          ; JG rel8 || 7F cb || encoded[2]{7f 40}
0028h movsxd rcx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 ca}
002bh cmp word ptr [r9+rcx*2],31h             ; CMP r/m16, imm8 || o16 83 /7 ib || encoded[6]{66 41 83 3c 49 31}
0031h jne short 005fh                         ; JNE rel8 || 75 cb || encoded[2]{75 2c}
0033h vmovsd xmm0,qword ptr [r8]              ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c4 c1 7b 10 00}
0038h vmovsd qword ptr [rsp+8],xmm0           ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[6]{c5 fb 11 44 24 08}
003eh mov r11,[rsp+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{4c 8b 5c 24 08}
0043h mov esi,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{be 01 00 00 00}
0048h mov ecx,r10d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b ca}
004bh shl rsi,cl                              ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{48 d3 e6}
004eh or r11,rsi                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{4c 0b de}
0051h mov [rsp],r11                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 1c 24}
0055h vmovsd xmm0,qword ptr [rsp]             ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 04 24}
005ah vmovsd qword ptr [r8],xmm0              ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c4 c1 7b 11 00}
005fh inc edx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c2}
0061h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0064h cmp edx,eax                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b d0}
0066h jle short 0028h                         ; JLE rel8 || 7E cb || encoded[2]{7e c0}
0068h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
006bh add rsp,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 10}
006fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0070h ret                                     ; RET || C3 || encoded[1]{c3}
