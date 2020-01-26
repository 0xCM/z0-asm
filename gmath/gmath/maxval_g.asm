------------------------------------------------------------------------------------------------------------------------
; byte maxval<byte>(byte t)
; maxval_g8u[11] = {0f 1f 44 00 00 b8 ff 00 00 00 c3}
; Capture completion code = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,0ffh                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte maxval<sbyte>(sbyte t)
; maxval_g8i[11] = {0f 1f 44 00 00 b8 7f 00 00 00 c3}
; Capture completion code = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,7fh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 7f 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort maxval<ushort>(ushort t)
; maxval_g16u[11] = {0f 1f 44 00 00 b8 ff ff 00 00 c3}
; Capture completion code = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,0ffffh                          ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Int16 maxval<Int16>(Int16 t)
; maxval_g16i[11] = {0f 1f 44 00 00 b8 ff 7f 00 00 c3}
; Capture completion code = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,7fffh                           ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff 7f 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint maxval<uint>(uint t)
; maxval_g32u[11] = {0f 1f 44 00 00 b8 ff ff ff ff c3}
; Capture completion code = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,0ffffffffh                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff ff ff}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int maxval<int>(int t)
; maxval_g32i[11] = {0f 1f 44 00 00 b8 ff ff ff 7f c3}
; Capture completion code = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,7fffffffh                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff ff 7f}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong maxval<ulong>(ulong t)
; maxval_g64u[16] = {0f 1f 44 00 00 48 b8 ff ff ff ff ff ff ff ff c3}
; Capture completion code = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,0ffffffffffffffffh              ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 ff ff ff ff ff ff ff ff}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long maxval<long>(long t)
; maxval_g64i[16] = {0f 1f 44 00 00 48 b8 ff ff ff ff ff ff ff 7f c3}
; Capture completion code = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7fffffffffffffffh               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 ff ff ff ff ff ff ff 7f}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; float maxval<float>(float t)
; maxval_g32f[14] = {c5 f8 77 66 90 c5 fa 10 05 03 00 00 00 c3}
; Capture completion code = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovss xmm0,dword ptr [rip+3]           ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[8]{c5 fa 10 05 03 00 00 00}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double maxval<double>(double t)
; maxval_g64f[14] = {c5 f8 77 66 90 c5 fb 10 05 03 00 00 00 c3}
; Capture completion code = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovsd xmm0,qword ptr [rip+3]           ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[8]{c5 fb 10 05 03 00 00 00}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
