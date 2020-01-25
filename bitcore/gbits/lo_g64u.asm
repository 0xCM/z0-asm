; ulong lo<ulong>(ulong src)
; lo_g64u[7ff7c6e84660h, 7ff7c6e84673h][19] = {50 0f 1f 40 00 89 4c 24 04 48 8b 44 24 04 48 83 c4 08 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-24 01:44:34:222
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h mov [rsp+4],ecx                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 4c 24 04}
0009h mov rax,[rsp+4]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 44 24 04}
000eh add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
