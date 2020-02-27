------------------------------------------------------------------------------------------------------------------------
; byte cjsb<byte>(N8 f, N2 cd, N2 jsbd, byte t), hex://bitcore/BitMask?cjsb#cjsb_g[8u](n8,n2,n2,8u)
; cjsb_g[8u](n8,n2,n2,8u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0xdb,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,0dbh                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 db 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort cjsb<ushort>(N8 f, N2 cd, N2 jsbd, ushort t), hex://bitcore/BitMask?cjsb#cjsb_g[16u](n8,n2,n2,16u)
; cjsb_g[16u](n8,n2,n2,16u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0xdb,0xdb,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,0dbdbh                          ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 db db 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint cjsb<uint>(N8 f, N2 cd, N2 jsbd, uint t), hex://bitcore/BitMask?cjsb#cjsb_g[32u](n8,n2,n2,32u)
; cjsb_g[32u](n8,n2,n2,32u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0xdb,0xdb,0xdb,0xdb,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,0dbdbdbdbh                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 db db db db}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte central<byte>(N8 f, N2 d, byte t), hex://bitcore/BitMask?central#central_g[8u](n8,n2,8u)
; central_g[8u](n8,n2,8u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x18,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,18h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 18 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort central<ushort>(N8 f, N2 d, ushort t), hex://bitcore/BitMask?central#central_g[16u](n8,n2,16u)
; central_g[16u](n8,n2,16u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x18,0x18,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,1818h                           ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 18 18 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint central<uint>(N8 f, N2 d, uint t), hex://bitcore/BitMask?central#central_g[32u](n8,n2,32u)
; central_g[32u](n8,n2,32u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x18,0x18,0x18,0x18,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,18181818h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 18 18 18 18}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong central<ulong>(N8 f, N2 d, ulong t), hex://bitcore/BitMask?central#central_g[64u](n8,n2,64u)
; central_g[64u](n8,n2,64u)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x18,0x18,0x18,0x18,0x18,0x18,0x18,0x18,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,1818181818181818h               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 18 18 18 18 18 18 18}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte central<byte>(N8 f, N4 d, byte t), hex://bitcore/BitMask?central#central_g[8u](n8,n4,8u)
; central_g[8u](n8,n4,8u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x3c,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,3ch                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 3c 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort central<ushort>(N8 f, N4 d, ushort t), hex://bitcore/BitMask?central#central_g[16u](n8,n4,16u)
; central_g[16u](n8,n4,16u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x3c,0x3c,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,3c3ch                           ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 3c 3c 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint central<uint>(N8 f, N4 d, uint t), hex://bitcore/BitMask?central#central_g[32u](n8,n4,32u)
; central_g[32u](n8,n4,32u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x3c,0x3c,0x3c,0x3c,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,3c3c3c3ch                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 3c 3c 3c 3c}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong central<ulong>(N8 f, N4 d, ulong t), hex://bitcore/BitMask?central#central_g[64u](n8,n4,64u)
; central_g[64u](n8,n4,64u)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x3c,0x3c,0x3c,0x3c,0x3c,0x3c,0x3c,0x3c,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,3c3c3c3c3c3c3c3ch               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 3c 3c 3c 3c 3c 3c 3c 3c}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte central<byte>(N8 f, N6 d, byte t), hex://bitcore/BitMask?central#central_g[8u](n8,n6,8u)
; central_g[8u](n8,n6,8u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x7e,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,7eh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 7e 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort central<ushort>(N8 f, N6 d, ushort t), hex://bitcore/BitMask?central#central_g[16u](n8,n6,16u)
; central_g[16u](n8,n6,16u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x7e,0x7e,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,7e7eh                           ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 7e 7e 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint central<uint>(N8 f, N6 d, uint t), hex://bitcore/BitMask?central#central_g[32u](n8,n6,32u)
; central_g[32u](n8,n6,32u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x7e,0x7e,0x7e,0x7e,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,7e7e7e7eh                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 7e 7e 7e 7e}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong central<ulong>(N8 f, N6 d, ulong t), hex://bitcore/BitMask?central#central_g[64u](n8,n6,64u)
; central_g[64u](n8,n6,64u)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x7e,0x7e,0x7e,0x7e,0x7e,0x7e,0x7e,0x7e,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7e7e7e7e7e7e7e7eh               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 7e 7e 7e 7e 7e 7e 7e 7e}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte cjsb<byte>(N8 f, N2 cd, N1 jsbd, byte t), hex://bitcore/BitMask?cjsb#cjsb_g[8u](n8,n2,n1,8u)
; cjsb_g[8u](n8,n2,n1,8u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x99,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,99h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 99 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort cjsb<ushort>(N8 f, N2 cd, N1 jsbd, ushort t), hex://bitcore/BitMask?cjsb#cjsb_g[16u](n8,n2,n1,16u)
; cjsb_g[16u](n8,n2,n1,16u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x99,0x99,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,9999h                           ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 99 99 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint cjsb<uint>(N8 f, N2 cd, N1 jsbd, uint t), hex://bitcore/BitMask?cjsb#cjsb_g[32u](n8,n2,n1,32u)
; cjsb_g[32u](n8,n2,n1,32u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x99,0x99,0x99,0x99,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,99999999h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 99 99 99 99}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong cjsb<ulong>(N8 f, N2 cd, N1 jsbd, ulong t), hex://bitcore/BitMask?cjsb#cjsb_g[64u](n8,n2,n1,64u)
; cjsb_g[64u](n8,n2,n1,64u)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x99,0x99,0x99,0x99,0x99,0x99,0x99,0x99,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,9999999999999999h               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 99 99 99 99 99 99 99 99}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong cjsb<ulong>(N8 f, N2 cd, N2 jsbd, ulong t), hex://bitcore/BitMask?cjsb#cjsb_g[64u](n8,n2,n2,64u)
; cjsb_g[64u](n8,n2,n2,64u)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xdb,0xdb,0xdb,0xdb,0xdb,0xdb,0xdb,0xdb,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,0dbdbdbdbdbdbdbdbh              ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 db db db db db db db db}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte cjsb<byte>(N8 f, N4 cd, N1 jsbd, byte t), hex://bitcore/BitMask?cjsb#cjsb_g[8u](n8,n4,n1,8u)
; cjsb_g[8u](n8,n4,n1,8u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0xbd,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,0bdh                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 bd 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort cjsb<ushort>(N8 f, N4 cd, N1 jsbd, ushort t), hex://bitcore/BitMask?cjsb#cjsb_g[16u](n8,n4,n1,16u)
; cjsb_g[16u](n8,n4,n1,16u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0xbd,0x99,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,99bdh                           ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 bd 99 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint cjsb<uint>(N8 f, N4 cd, N1 jsbd, uint t), hex://bitcore/BitMask?cjsb#cjsb_g[32u](n8,n4,n1,32u)
; cjsb_g[32u](n8,n4,n1,32u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0xbd,0x99,0x99,0x99,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,999999bdh                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 bd 99 99 99}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong cjsb<ulong>(N8 f, N4 cd, N1 jsbd, ulong t), hex://bitcore/BitMask?cjsb#cjsb_g[64u](n8,n4,n1,64u)
; cjsb_g[64u](n8,n4,n1,64u)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xbd,0x99,0x99,0x99,0x99,0x99,0x99,0x99,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,99999999999999bdh               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 bd 99 99 99 99 99 99 99}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte eraser<byte>(byte start, byte count), hex://bitcore/BitMask?eraser#eraser_g[8u](8u,8u)
; eraser_g[8u](8u,8u)[45] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0x0f,0xb6,0xca,0xff,0xc9,0xba,0x01,0x00,0x00,0x00,0x48,0xd3,0xe2,0xc4,0xe2,0xf0,0xf3,0xd2,0x0f,0xb6,0xd1,0x0f,0xb6,0xc8,0xd3,0xe2,0x0f,0xb6,0xc2,0x35,0xff,0x00,0x00,0x00,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000ah dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
000ch mov edx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 01 00 00 00}
0011h shl rdx,cl                              ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{48 d3 e2}
0014h blsmsk rcx,rdx                          ; BLSMSK r64, r/m64 || VEX.LZ.0F38.W1 F3 /2 || encoded[5]{c4 e2 f0 f3 d2}
0019h movzx edx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d1}
001ch movzx ecx,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c8}
001fh shl edx,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e2}
0021h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0024h xor eax,0ffh                            ; XOR EAX, imm32 || o32 35 id || encoded[5]{35 ff 00 00 00}
0029h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
002ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort eraser<ushort>(byte start, byte count), hex://bitcore/BitMask?eraser#eraser_g[16u](8u,8u)
; eraser_g[16u](8u,8u)[45] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0x0f,0xb6,0xca,0xff,0xc9,0xba,0x01,0x00,0x00,0x00,0x48,0xd3,0xe2,0xc4,0xe2,0xf0,0xf3,0xd2,0x0f,0xb7,0xd1,0x0f,0xb6,0xc8,0xd3,0xe2,0x0f,0xb7,0xc2,0x35,0xff,0xff,0x00,0x00,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000ah dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
000ch mov edx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 01 00 00 00}
0011h shl rdx,cl                              ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{48 d3 e2}
0014h blsmsk rcx,rdx                          ; BLSMSK r64, r/m64 || VEX.LZ.0F38.W1 F3 /2 || encoded[5]{c4 e2 f0 f3 d2}
0019h movzx edx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d1}
001ch movzx ecx,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c8}
001fh shl edx,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e2}
0021h movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
0024h xor eax,0ffffh                          ; XOR EAX, imm32 || o32 35 id || encoded[5]{35 ff ff 00 00}
0029h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
002ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint eraser<uint>(byte start, byte count), hex://bitcore/BitMask?eraser#eraser_g[32u](8u,8u)
; eraser_g[32u](8u,8u)[35] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0x0f,0xb6,0xca,0xff,0xc9,0xba,0x01,0x00,0x00,0x00,0x48,0xd3,0xe2,0xc4,0xe2,0xe8,0xf3,0xd2,0x0f,0xb6,0xc8,0xd3,0xe2,0x8b,0xc2,0xf7,0xd0,0xc3}
; TermCode = CTC_RET_INTR
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000ah dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
000ch mov edx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 01 00 00 00}
0011h shl rdx,cl                              ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{48 d3 e2}
0014h blsmsk rdx,rdx                          ; BLSMSK r64, r/m64 || VEX.LZ.0F38.W1 F3 /2 || encoded[5]{c4 e2 e8 f3 d2}
0019h movzx ecx,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c8}
001ch shl edx,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e2}
001eh mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0020h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0022h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong eraser<ulong>(byte start, byte count), hex://bitcore/BitMask?eraser#eraser_g[64u](8u,8u)
; eraser_g[64u](8u,8u)[38] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0x0f,0xb6,0xca,0xff,0xc9,0xba,0x01,0x00,0x00,0x00,0x48,0xd3,0xe2,0xc4,0xe2,0xe8,0xf3,0xd2,0x0f,0xb6,0xc8,0x48,0xd3,0xe2,0x48,0x8b,0xc2,0x48,0xf7,0xd0,0xc3}
; TermCode = CTC_RET_INTR
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000ah dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
000ch mov edx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 01 00 00 00}
0011h shl rdx,cl                              ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{48 d3 e2}
0014h blsmsk rdx,rdx                          ; BLSMSK r64, r/m64 || VEX.LZ.0F38.W1 F3 /2 || encoded[5]{c4 e2 e8 f3 d2}
0019h movzx ecx,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c8}
001ch shl rdx,cl                              ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{48 d3 e2}
001fh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0022h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
0025h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte hi<byte>(int n, byte t), hex://bitcore/BitMask?hi#hi_g[8u](32i,8u)
; hi_g[8u](32i,8u)[36] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0xba,0x01,0x00,0x00,0x00,0x8b,0xc8,0x48,0xd3,0xe2,0xc4,0xe2,0xe8,0xf3,0xd2,0x8b,0xc8,0xf7,0xd9,0x83,0xc1,0x08,0x48,0xd3,0xe2,0x0f,0xb6,0xc2,0xc3}
; TermCode = CTC_RET_INTR
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h mov edx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 01 00 00 00}
000ch mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
000eh shl rdx,cl                              ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{48 d3 e2}
0011h blsmsk rdx,rdx                          ; BLSMSK r64, r/m64 || VEX.LZ.0F38.W1 F3 /2 || encoded[5]{c4 e2 e8 f3 d2}
0016h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0018h neg ecx                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d9}
001ah add ecx,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c1 08}
001dh shl rdx,cl                              ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{48 d3 e2}
0020h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0023h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort hi<ushort>(int n, ushort t), hex://bitcore/BitMask?hi#hi_g[16u](32i,16u)
; hi_g[16u](32i,16u)[36] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0xba,0x01,0x00,0x00,0x00,0x8b,0xc8,0x48,0xd3,0xe2,0xc4,0xe2,0xe8,0xf3,0xd2,0x8b,0xc8,0xf7,0xd9,0x83,0xc1,0x10,0x48,0xd3,0xe2,0x0f,0xb7,0xc2,0xc3}
; TermCode = CTC_RET_INTR
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h mov edx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 01 00 00 00}
000ch mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
000eh shl rdx,cl                              ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{48 d3 e2}
0011h blsmsk rdx,rdx                          ; BLSMSK r64, r/m64 || VEX.LZ.0F38.W1 F3 /2 || encoded[5]{c4 e2 e8 f3 d2}
0016h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0018h neg ecx                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d9}
001ah add ecx,10h                             ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c1 10}
001dh shl rdx,cl                              ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{48 d3 e2}
0020h movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
0023h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint hi<uint>(int n, uint t), hex://bitcore/BitMask?hi#hi_g[32u](32i,32u)
; hi_g[32u](32i,32u)[35] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0xba,0x01,0x00,0x00,0x00,0x8b,0xc8,0x48,0xd3,0xe2,0xc4,0xe2,0xe8,0xf3,0xd2,0x8b,0xc8,0xf7,0xd9,0x83,0xc1,0x20,0x48,0xd3,0xe2,0x8b,0xc2,0xc3}
; TermCode = CTC_RET_INTR
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h mov edx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 01 00 00 00}
000ch mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
000eh shl rdx,cl                              ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{48 d3 e2}
0011h blsmsk rdx,rdx                          ; BLSMSK r64, r/m64 || VEX.LZ.0F38.W1 F3 /2 || encoded[5]{c4 e2 e8 f3 d2}
0016h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0018h neg ecx                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d9}
001ah add ecx,20h                             ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c1 20}
001dh shl rdx,cl                              ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{48 d3 e2}
0020h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0022h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong hi<ulong>(int n, ulong t), hex://bitcore/BitMask?hi#hi_g[64u](32i,64u)
; hi_g[64u](32i,64u)[36] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0xba,0x01,0x00,0x00,0x00,0x8b,0xc8,0x48,0xd3,0xe2,0xc4,0xe2,0xe8,0xf3,0xd2,0x8b,0xc8,0xf7,0xd9,0x83,0xc1,0x40,0x48,0xd3,0xe2,0x48,0x8b,0xc2,0xc3}
; TermCode = CTC_RET_INTR
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h mov edx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 01 00 00 00}
000ch mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
000eh shl rdx,cl                              ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{48 d3 e2}
0011h blsmsk rdx,rdx                          ; BLSMSK r64, r/m64 || VEX.LZ.0F38.W1 F3 /2 || encoded[5]{c4 e2 e8 f3 d2}
0016h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0018h neg ecx                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d9}
001ah add ecx,40h                             ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c1 40}
001dh shl rdx,cl                              ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{48 d3 e2}
0020h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0023h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte jsb<byte>(N8 f, N1 d, byte t), hex://bitcore/BitMask?jsb#jsb_g[8u](n8,n1,8u)
; jsb_g[8u](n8,n1,8u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x81,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,81h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 81 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort jsb<ushort>(N8 f, N1 d, ushort t), hex://bitcore/BitMask?jsb#jsb_g[16u](n8,n1,16u)
; jsb_g[16u](n8,n1,16u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x81,0x81,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,8181h                           ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 81 81 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint jsb<uint>(N8 f, N1 d, uint t), hex://bitcore/BitMask?jsb#jsb_g[32u](n8,n1,32u)
; jsb_g[32u](n8,n1,32u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x81,0x81,0x81,0x81,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,81818181h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 81 81 81 81}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong jsb<ulong>(N8 f, N1 d, ulong t), hex://bitcore/BitMask?jsb#jsb_g[64u](n8,n1,64u)
; jsb_g[64u](n8,n1,64u)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x81,0x81,0x81,0x81,0x81,0x81,0x81,0x81,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,8181818181818181h               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 81 81 81 81 81 81 81 81}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte jsb<byte>(N8 f, N2 d, byte t), hex://bitcore/BitMask?jsb#jsb_g[8u](n8,n2,8u)
; jsb_g[8u](n8,n2,8u)[7] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h (bad)                                   ; <invalid> || <invalid> || encoded[2]{b8 c3}
------------------------------------------------------------------------------------------------------------------------
; ushort jsb<ushort>(N8 f, N2 d, ushort t), hex://bitcore/BitMask?jsb#jsb_g[16u](n8,n2,16u)
; jsb_g[16u](n8,n2,16u)[8] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0xc3,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h (bad)                                   ; <invalid> || <invalid> || encoded[3]{b8 c3 c3}
------------------------------------------------------------------------------------------------------------------------
; uint jsb<uint>(N8 f, N2 d, uint t), hex://bitcore/BitMask?jsb#jsb_g[32u](n8,n2,32u)
; jsb_g[32u](n8,n2,32u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0xc3,0xc3,0xc3,0xc3,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,0c3c3c3c3h                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 c3 c3 c3 c3}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong jsb<ulong>(N8 f, N2 d, ulong t), hex://bitcore/BitMask?jsb#jsb_g[64u](n8,n2,64u)
; jsb_g[64u](n8,n2,64u)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xc3,0xc3,0xc3,0xc3,0xc3,0xc3,0xc3,0xc3,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,0c3c3c3c3c3c3c3c3h              ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c3 c3 c3 c3 c3 c3 c3 c3}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte jsb<byte>(N8 f, N3 d, byte t), hex://bitcore/BitMask?jsb#jsb_g[8u](n8,n3,8u)
; jsb_g[8u](n8,n3,8u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0xe7,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,0e7h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 e7 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort jsb<ushort>(N8 f, N3 d, ushort t), hex://bitcore/BitMask?jsb#jsb_g[16u](n8,n3,16u)
; jsb_g[16u](n8,n3,16u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0xe7,0xe7,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,0e7e7h                          ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 e7 e7 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint jsb<uint>(N8 f, N3 d, uint t), hex://bitcore/BitMask?jsb#jsb_g[32u](n8,n3,32u)
; jsb_g[32u](n8,n3,32u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0xe7,0xe7,0xe7,0xe7,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,0e7e7e7e7h                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 e7 e7 e7 e7}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong jsb<ulong>(N8 f, N3 d, ulong t), hex://bitcore/BitMask?jsb#jsb_g[64u](n8,n3,64u)
; jsb_g[64u](n8,n3,64u)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xe7,0xe7,0xe7,0xe7,0xe7,0xe7,0xe7,0xe7,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,0e7e7e7e7e7e7e7e7h              ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e7 e7 e7 e7 e7 e7 e7 e7}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte mask<byte>(JsbMask<N8,N1,byte> spec), hex://bitcore/BitMask?mask#mask_g[8u]()
; mask_g[8u]()[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x81,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,81h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 81 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort mask<ushort>(JsbMask<N8,N1,ushort> spec), hex://bitcore/BitMask?mask#mask_g[16u]()
; mask_g[16u]()[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x81,0x81,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,8181h                           ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 81 81 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint mask<uint>(JsbMask<N8,N1,uint> spec), hex://bitcore/BitMask?mask#mask_g[32u]()
; mask_g[32u]()[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x81,0x81,0x81,0x81,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,81818181h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 81 81 81 81}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong mask<ulong>(JsbMask<N8,N1,ulong> spec), hex://bitcore/BitMask?mask#mask_g[64u]()
; mask_g[64u]()[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x81,0x81,0x81,0x81,0x81,0x81,0x81,0x81,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,8181818181818181h               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 81 81 81 81 81 81 81 81}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte mask<byte>(JsbMask<N8,N2,byte> spec), hex://bitcore/BitMask?mask#mask_g[8u]()
; mask_g[8u]()[7] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h (bad)                                   ; <invalid> || <invalid> || encoded[2]{b8 c3}
------------------------------------------------------------------------------------------------------------------------
; ushort mask<ushort>(JsbMask<N8,N2,ushort> spec), hex://bitcore/BitMask?mask#mask_g[16u]()
; mask_g[16u]()[8] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0xc3,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h (bad)                                   ; <invalid> || <invalid> || encoded[3]{b8 c3 c3}
------------------------------------------------------------------------------------------------------------------------
; uint mask<uint>(JsbMask<N8,N2,uint> spec), hex://bitcore/BitMask?mask#mask_g[32u]()
; mask_g[32u]()[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0xc3,0xc3,0xc3,0xc3,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,0c3c3c3c3h                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 c3 c3 c3 c3}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong mask<ulong>(JsbMask<N8,N2,ulong> spec), hex://bitcore/BitMask?mask#mask_g[64u]()
; mask_g[64u]()[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xc3,0xc3,0xc3,0xc3,0xc3,0xc3,0xc3,0xc3,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,0c3c3c3c3c3c3c3c3h              ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c3 c3 c3 c3 c3 c3 c3 c3}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte mask<byte>(JsbMask<N8,N3,byte> spec), hex://bitcore/BitMask?mask#mask_g[8u]()
; mask_g[8u]()[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0xe7,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,0e7h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 e7 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort mask<ushort>(JsbMask<N8,N3,ushort> spec), hex://bitcore/BitMask?mask#mask_g[16u]()
; mask_g[16u]()[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0xe7,0xe7,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,0e7e7h                          ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 e7 e7 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint mask<uint>(JsbMask<N8,N3,uint> spec), hex://bitcore/BitMask?mask#mask_g[32u]()
; mask_g[32u]()[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0xe7,0xe7,0xe7,0xe7,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,0e7e7e7e7h                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 e7 e7 e7 e7}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong mask<ulong>(JsbMask<N8,N3,ulong> spec), hex://bitcore/BitMask?mask#mask_g[64u]()
; mask_g[64u]()[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xe7,0xe7,0xe7,0xe7,0xe7,0xe7,0xe7,0xe7,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,0e7e7e7e7e7e7e7e7h              ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e7 e7 e7 e7 e7 e7 e7 e7}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte lo<byte>(int n, byte t), hex://bitcore/BitMask?lo#lo_g[8u](32i,8u)
; lo_g[8u](32i,8u)[22] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x01,0x00,0x00,0x00,0x48,0xd3,0xe0,0xc4,0xe2,0xf8,0xf3,0xd0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000ah shl rax,cl                              ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{48 d3 e0}
000dh blsmsk rax,rax                          ; BLSMSK r64, r/m64 || VEX.LZ.0F38.W1 F3 /2 || encoded[5]{c4 e2 f8 f3 d0}
0012h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort lo<ushort>(int n, ushort t), hex://bitcore/BitMask?lo#lo_g[16u](32i,16u)
; lo_g[16u](32i,16u)[22] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x01,0x00,0x00,0x00,0x48,0xd3,0xe0,0xc4,0xe2,0xf8,0xf3,0xd0,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000ah shl rax,cl                              ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{48 d3 e0}
000dh blsmsk rax,rax                          ; BLSMSK r64, r/m64 || VEX.LZ.0F38.W1 F3 /2 || encoded[5]{c4 e2 f8 f3 d0}
0012h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint lo<uint>(int n, uint t), hex://bitcore/BitMask?lo#lo_g[32u](32i,32u)
; lo_g[32u](32i,32u)[19] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x01,0x00,0x00,0x00,0x48,0xd3,0xe0,0xc4,0xe2,0xf8,0xf3,0xd0,0xc3}
; TermCode = CTC_RET_INTR
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000ah shl rax,cl                              ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{48 d3 e0}
000dh blsmsk rax,rax                          ; BLSMSK r64, r/m64 || VEX.LZ.0F38.W1 F3 /2 || encoded[5]{c4 e2 f8 f3 d0}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong lo<ulong>(int n, ulong t), hex://bitcore/BitMask?lo#lo_g[64u](32i,64u)
; lo_g[64u](32i,64u)[19] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x01,0x00,0x00,0x00,0x48,0xd3,0xe0,0xc4,0xe2,0xf8,0xf3,0xd0,0xc3}
; TermCode = CTC_RET_INTR
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000ah shl rax,cl                              ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{48 d3 e0}
000dh blsmsk rax,rax                          ; BLSMSK r64, r/m64 || VEX.LZ.0F38.W1 F3 /2 || encoded[5]{c4 e2 f8 f3 d0}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte lsb<byte>(N1 f, N1 d, byte t), hex://bitcore/BitMask?lsb#lsb_g[8u](n1,n1,8u)
; lsb_g[8u](n1,n1,8u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x01,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort lsb<ushort>(N1 f, N1 d, ushort t), hex://bitcore/BitMask?lsb#lsb_g[16u](n1,n1,16u)
; lsb_g[16u](n1,n1,16u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x01,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint lsb<uint>(N1 f, N1 d, uint t), hex://bitcore/BitMask?lsb#lsb_g[32u](n1,n1,32u)
; lsb_g[32u](n1,n1,32u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x01,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong lsb<ulong>(N1 f, N1 d, ulong t), hex://bitcore/BitMask?lsb#lsb_g[64u](n1,n1,64u)
; lsb_g[64u](n1,n1,64u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x01,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte lsb<byte>(N2 f, N1 d, byte t), hex://bitcore/BitMask?lsb#lsb_g[8u](n2,n1,8u)
; lsb_g[8u](n2,n1,8u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x55,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,55h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 55 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort lsb<ushort>(N2 f, N1 d, ushort t), hex://bitcore/BitMask?lsb#lsb_g[16u](n2,n1,16u)
; lsb_g[16u](n2,n1,16u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x55,0x55,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,5555h                           ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 55 55 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint lsb<uint>(N2 f, N1 d, uint t), hex://bitcore/BitMask?lsb#lsb_g[32u](n2,n1,32u)
; lsb_g[32u](n2,n1,32u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x55,0x55,0x55,0x55,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,55555555h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 55 55 55 55}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong lsb<ulong>(N2 f, N1 d, ulong t), hex://bitcore/BitMask?lsb#lsb_g[64u](n2,n1,64u)
; lsb_g[64u](n2,n1,64u)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x55,0x55,0x55,0x55,0x55,0x55,0x55,0x55,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,5555555555555555h               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 55 55 55 55 55 55 55 55}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte lsb<byte>(N4 f, N1 d, byte t), hex://bitcore/BitMask?lsb#lsb_g[8u](n4,n1,8u)
; lsb_g[8u](n4,n1,8u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x11,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,11h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 11 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort lsb<ushort>(N4 f, N1 d, ushort t), hex://bitcore/BitMask?lsb#lsb_g[16u](n4,n1,16u)
; lsb_g[16u](n4,n1,16u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x11,0x11,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,1111h                           ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 11 11 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint lsb<uint>(N4 f, N1 d, uint t), hex://bitcore/BitMask?lsb#lsb_g[32u](n4,n1,32u)
; lsb_g[32u](n4,n1,32u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x11,0x11,0x11,0x11,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,11111111h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 11 11 11 11}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong lsb<ulong>(N4 f, N1 d, ulong t), hex://bitcore/BitMask?lsb#lsb_g[64u](n4,n1,64u)
; lsb_g[64u](n4,n1,64u)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x11,0x11,0x11,0x11,0x11,0x11,0x11,0x11,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,1111111111111111h               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 11 11 11 11 11 11 11 11}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte lsb<byte>(N8 f, N1 d, byte t), hex://bitcore/BitMask?lsb#lsb_g[8u](n8,n1,8u)
; lsb_g[8u](n8,n1,8u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x01,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort lsb<ushort>(N8 f, N1 d, ushort t), hex://bitcore/BitMask?lsb#lsb_g[16u](n8,n1,16u)
; lsb_g[16u](n8,n1,16u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x01,0x01,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,101h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 01 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint lsb<uint>(N8 f, N1 d, uint t), hex://bitcore/BitMask?lsb#lsb_g[32u](n8,n1,32u)
; lsb_g[32u](n8,n1,32u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x01,0x01,0x01,0x01,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,1010101h                        ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 01 01 01}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong lsb<ulong>(N8 f, N1 d, ulong t), hex://bitcore/BitMask?lsb#lsb_g[64u](n8,n1,64u)
; lsb_g[64u](n8,n1,64u)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 01 01 01 01 01 01 01 01}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte lsb<byte>(N16 f, N1 d, byte t), hex://bitcore/BitMask?lsb#lsb_g[8u](n16,n1,8u)
; lsb_g[8u](n16,n1,8u)[8] = {0x0f,0x1f,0x44,0x00,0x00,0x33,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort lsb<ushort>(N16 f, N1 d, ushort t), hex://bitcore/BitMask?lsb#lsb_g[16u](n16,n1,16u)
; lsb_g[16u](n16,n1,16u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x01,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint lsb<uint>(N16 f, N1 d, uint t), hex://bitcore/BitMask?lsb#lsb_g[32u](n16,n1,32u)
; lsb_g[32u](n16,n1,32u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x01,0x00,0x01,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,10001h                          ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 01 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong lsb<ulong>(N16 f, N1 d, ulong t), hex://bitcore/BitMask?lsb#lsb_g[64u](n16,n1,64u)
; lsb_g[64u](n16,n1,64u)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x01,0x00,0x01,0x00,0x01,0x00,0x01,0x00,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,1000100010001h                  ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 01 00 01 00 01 00 01 00}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte lsb<byte>(N8 f, N2 d, byte t), hex://bitcore/BitMask?lsb#lsb_g[8u](n8,n2,8u)
; lsb_g[8u](n8,n2,8u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x03,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,3                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 03 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort lsb<ushort>(N8 f, N2 d, ushort t), hex://bitcore/BitMask?lsb#lsb_g[16u](n8,n2,16u)
; lsb_g[16u](n8,n2,16u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x03,0x03,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,303h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 03 03 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint lsb<uint>(N8 f, N2 d, uint t), hex://bitcore/BitMask?lsb#lsb_g[32u](n8,n2,32u)
; lsb_g[32u](n8,n2,32u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x03,0x03,0x03,0x03,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,3030303h                        ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 03 03 03 03}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong lsb<ulong>(N8 f, N2 d, ulong t), hex://bitcore/BitMask?lsb#lsb_g[64u](n8,n2,64u)
; lsb_g[64u](n8,n2,64u)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x03,0x03,0x03,0x03,0x03,0x03,0x03,0x03,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,303030303030303h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 03 03 03 03 03 03 03 03}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte lsb<byte>(N8 f, N3 d, byte t), hex://bitcore/BitMask?lsb#lsb_g[8u](n8,n3,8u)
; lsb_g[8u](n8,n3,8u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x07,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,7                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 07 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort lsb<ushort>(N8 f, N3 d, ushort t), hex://bitcore/BitMask?lsb#lsb_g[16u](n8,n3,16u)
; lsb_g[16u](n8,n3,16u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x07,0x07,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,707h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 07 07 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint lsb<uint>(N8 f, N3 d, uint t), hex://bitcore/BitMask?lsb#lsb_g[32u](n8,n3,32u)
; lsb_g[32u](n8,n3,32u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x07,0x07,0x07,0x07,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,7070707h                        ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 07 07 07 07}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong lsb<ulong>(N8 f, N3 d, ulong t), hex://bitcore/BitMask?lsb#lsb_g[64u](n8,n3,64u)
; lsb_g[64u](n8,n3,64u)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x07,0x07,0x07,0x07,0x07,0x07,0x07,0x07,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,707070707070707h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 07 07 07 07 07 07 07 07}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte lsb<byte>(N8 f, N4 d, byte t), hex://bitcore/BitMask?lsb#lsb_g[8u](n8,n4,8u)
; lsb_g[8u](n8,n4,8u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x0f,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,0fh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 0f 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort lsb<ushort>(N8 f, N4 d, ushort t), hex://bitcore/BitMask?lsb#lsb_g[16u](n8,n4,16u)
; lsb_g[16u](n8,n4,16u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x0f,0x0f,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,0f0fh                           ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 0f 0f 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint lsb<uint>(N8 f, N4 d, uint t), hex://bitcore/BitMask?lsb#lsb_g[32u](n8,n4,32u)
; lsb_g[32u](n8,n4,32u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x0f,0x0f,0x0f,0x0f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,0f0f0f0fh                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 0f 0f 0f 0f}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong lsb<ulong>(N8 f, N4 d, ulong t), hex://bitcore/BitMask?lsb#lsb_g[64u](n8,n4,64u)
; lsb_g[64u](n8,n4,64u)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x0f,0x0f,0x0f,0x0f,0x0f,0x0f,0x0f,0x0f,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,0f0f0f0f0f0f0f0fh               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 0f 0f 0f 0f 0f 0f 0f 0f}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte lsb<byte>(N8 f, N5 d, byte t), hex://bitcore/BitMask?lsb#lsb_g[8u](n8,n5,8u)
; lsb_g[8u](n8,n5,8u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x1f,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,1fh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 1f 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort lsb<ushort>(N8 f, N5 d, ushort t), hex://bitcore/BitMask?lsb#lsb_g[16u](n8,n5,16u)
; lsb_g[16u](n8,n5,16u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x1f,0x1f,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,1f1fh                           ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 1f 1f 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint lsb<uint>(N8 f, N5 d, uint t), hex://bitcore/BitMask?lsb#lsb_g[32u](n8,n5,32u)
; lsb_g[32u](n8,n5,32u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x1f,0x1f,0x1f,0x1f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,1f1f1f1fh                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 1f 1f 1f 1f}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong lsb<ulong>(N8 f, N5 d, ulong t), hex://bitcore/BitMask?lsb#lsb_g[64u](n8,n5,64u)
; lsb_g[64u](n8,n5,64u)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x1f,0x1f,0x1f,0x1f,0x1f,0x1f,0x1f,0x1f,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,1f1f1f1f1f1f1f1fh               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 1f 1f 1f 1f 1f 1f 1f 1f}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte lsb<byte>(N8 f, N6 d, byte t), hex://bitcore/BitMask?lsb#lsb_g[8u](n8,n6,8u)
; lsb_g[8u](n8,n6,8u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x3f,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,3fh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 3f 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort lsb<ushort>(N8 f, N6 d, ushort t), hex://bitcore/BitMask?lsb#lsb_g[16u](n8,n6,16u)
; lsb_g[16u](n8,n6,16u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x3f,0x3f,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,3f3fh                           ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 3f 3f 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint lsb<uint>(N8 f, N6 d, uint t), hex://bitcore/BitMask?lsb#lsb_g[32u](n8,n6,32u)
; lsb_g[32u](n8,n6,32u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x3f,0x3f,0x3f,0x3f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,3f3f3f3fh                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 3f 3f 3f 3f}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong lsb<ulong>(N8 f, N6 d, ulong t), hex://bitcore/BitMask?lsb#lsb_g[64u](n8,n6,64u)
; lsb_g[64u](n8,n6,64u)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x3f,0x3f,0x3f,0x3f,0x3f,0x3f,0x3f,0x3f,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,3f3f3f3f3f3f3f3fh               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 3f 3f 3f 3f 3f 3f 3f 3f}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte lsb<byte>(N8 f, N7 d, byte t), hex://bitcore/BitMask?lsb#lsb_g[8u](n8,n7,8u)
; lsb_g[8u](n8,n7,8u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x7f,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,7fh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 7f 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort lsb<ushort>(N8 f, N7 d, ushort t), hex://bitcore/BitMask?lsb#lsb_g[16u](n8,n7,16u)
; lsb_g[16u](n8,n7,16u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x7f,0x7f,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,7f7fh                           ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 7f 7f 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint lsb<uint>(N8 f, N7 d, uint t), hex://bitcore/BitMask?lsb#lsb_g[32u](n8,n7,32u)
; lsb_g[32u](n8,n7,32u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x7f,0x7f,0x7f,0x7f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,7f7f7f7fh                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 7f 7f 7f 7f}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong lsb<ulong>(N8 f, N7 d, ulong t), hex://bitcore/BitMask?lsb#lsb_g[64u](n8,n7,64u)
; lsb_g[64u](n8,n7,64u)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x7f,0x7f,0x7f,0x7f,0x7f,0x7f,0x7f,0x7f,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7f7f7f7f7f7f7f7fh               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 7f 7f 7f 7f 7f 7f 7f 7f}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte mask<byte>(LsbMask<N1,N1,byte> spec), hex://bitcore/BitMask?mask#mask_g[8u]()
; mask_g[8u]()[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x01,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort mask<ushort>(LsbMask<N1,N1,ushort> spec), hex://bitcore/BitMask?mask#mask_g[16u]()
; mask_g[16u]()[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x01,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint mask<uint>(LsbMask<N1,N1,uint> spec), hex://bitcore/BitMask?mask#mask_g[32u]()
; mask_g[32u]()[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x01,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong mask<ulong>(LsbMask<N1,N1,ulong> spec), hex://bitcore/BitMask?mask#mask_g[64u]()
; mask_g[64u]()[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x01,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte mask<byte>(LsbMask<N2,N1,byte> spec), hex://bitcore/BitMask?mask#mask_g[8u]()
; mask_g[8u]()[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x55,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,55h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 55 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort mask<ushort>(LsbMask<N2,N1,ushort> spec), hex://bitcore/BitMask?mask#mask_g[16u]()
; mask_g[16u]()[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x55,0x55,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,5555h                           ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 55 55 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint mask<uint>(LsbMask<N2,N1,uint> spec), hex://bitcore/BitMask?mask#mask_g[32u]()
; mask_g[32u]()[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x55,0x55,0x55,0x55,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,55555555h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 55 55 55 55}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong mask<ulong>(LsbMask<N2,N1,ulong> spec), hex://bitcore/BitMask?mask#mask_g[64u]()
; mask_g[64u]()[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x55,0x55,0x55,0x55,0x55,0x55,0x55,0x55,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,5555555555555555h               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 55 55 55 55 55 55 55 55}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte mask<byte>(LsbMask<N4,N1,byte> spec), hex://bitcore/BitMask?mask#mask_g[8u]()
; mask_g[8u]()[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x11,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,11h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 11 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort mask<ushort>(LsbMask<N4,N1,ushort> spec), hex://bitcore/BitMask?mask#mask_g[16u]()
; mask_g[16u]()[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x11,0x11,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,1111h                           ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 11 11 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint mask<uint>(LsbMask<N4,N1,uint> spec), hex://bitcore/BitMask?mask#mask_g[32u]()
; mask_g[32u]()[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x11,0x11,0x11,0x11,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,11111111h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 11 11 11 11}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong mask<ulong>(LsbMask<N4,N1,ulong> spec), hex://bitcore/BitMask?mask#mask_g[64u]()
; mask_g[64u]()[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x11,0x11,0x11,0x11,0x11,0x11,0x11,0x11,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,1111111111111111h               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 11 11 11 11 11 11 11 11}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte mask<byte>(LsbMask<N8,N1,byte> spec), hex://bitcore/BitMask?mask#mask_g[8u]()
; mask_g[8u]()[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x01,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort mask<ushort>(LsbMask<N8,N1,ushort> spec), hex://bitcore/BitMask?mask#mask_g[16u]()
; mask_g[16u]()[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x01,0x01,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,101h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 01 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint mask<uint>(LsbMask<N8,N1,uint> spec), hex://bitcore/BitMask?mask#mask_g[32u]()
; mask_g[32u]()[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x01,0x01,0x01,0x01,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,1010101h                        ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 01 01 01}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong mask<ulong>(LsbMask<N8,N1,ulong> spec), hex://bitcore/BitMask?mask#mask_g[64u]()
; mask_g[64u]()[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 01 01 01 01 01 01 01 01}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte mask<byte>(LsbMask<N16,N1,byte> spec), hex://bitcore/BitMask?mask#mask_g[8u]()
; mask_g[8u]()[8] = {0x0f,0x1f,0x44,0x00,0x00,0x33,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort mask<ushort>(LsbMask<N16,N1,ushort> spec), hex://bitcore/BitMask?mask#mask_g[16u]()
; mask_g[16u]()[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x01,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint mask<uint>(LsbMask<N16,N1,uint> spec), hex://bitcore/BitMask?mask#mask_g[32u]()
; mask_g[32u]()[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x01,0x00,0x01,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,10001h                          ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 01 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong mask<ulong>(LsbMask<N16,N1,ulong> spec), hex://bitcore/BitMask?mask#mask_g[64u]()
; mask_g[64u]()[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x01,0x00,0x01,0x00,0x01,0x00,0x01,0x00,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,1000100010001h                  ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 01 00 01 00 01 00 01 00}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte mask<byte>(LsbMask<N8,N3,byte> spec), hex://bitcore/BitMask?mask#mask_g[8u]()
; mask_g[8u]()[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x07,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,7                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 07 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort mask<ushort>(LsbMask<N8,N3,ushort> spec), hex://bitcore/BitMask?mask#mask_g[16u]()
; mask_g[16u]()[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x07,0x07,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,707h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 07 07 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint mask<uint>(LsbMask<N8,N3,uint> spec), hex://bitcore/BitMask?mask#mask_g[32u]()
; mask_g[32u]()[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x07,0x07,0x07,0x07,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,7070707h                        ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 07 07 07 07}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong mask<ulong>(LsbMask<N8,N3,ulong> spec), hex://bitcore/BitMask?mask#mask_g[64u]()
; mask_g[64u]()[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x07,0x07,0x07,0x07,0x07,0x07,0x07,0x07,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,707070707070707h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 07 07 07 07 07 07 07 07}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte mask<byte>(LsbMask<N8,N4,byte> spec), hex://bitcore/BitMask?mask#mask_g[8u]()
; mask_g[8u]()[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x0f,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,0fh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 0f 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort mask<ushort>(LsbMask<N8,N4,ushort> spec), hex://bitcore/BitMask?mask#mask_g[16u]()
; mask_g[16u]()[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x0f,0x0f,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,0f0fh                           ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 0f 0f 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint mask<uint>(LsbMask<N8,N4,uint> spec), hex://bitcore/BitMask?mask#mask_g[32u]()
; mask_g[32u]()[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x0f,0x0f,0x0f,0x0f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,0f0f0f0fh                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 0f 0f 0f 0f}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong mask<ulong>(LsbMask<N8,N4,ulong> spec), hex://bitcore/BitMask?mask#mask_g[64u]()
; mask_g[64u]()[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x0f,0x0f,0x0f,0x0f,0x0f,0x0f,0x0f,0x0f,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,0f0f0f0f0f0f0f0fh               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 0f 0f 0f 0f 0f 0f 0f 0f}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte mask<byte>(LsbMask<N8,N5,byte> spec), hex://bitcore/BitMask?mask#mask_g[8u]()
; mask_g[8u]()[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x1f,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,1fh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 1f 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort mask<ushort>(LsbMask<N8,N5,ushort> spec), hex://bitcore/BitMask?mask#mask_g[16u]()
; mask_g[16u]()[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x1f,0x1f,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,1f1fh                           ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 1f 1f 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint mask<uint>(LsbMask<N8,N5,uint> spec), hex://bitcore/BitMask?mask#mask_g[32u]()
; mask_g[32u]()[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x1f,0x1f,0x1f,0x1f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,1f1f1f1fh                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 1f 1f 1f 1f}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong mask<ulong>(LsbMask<N8,N5,ulong> spec), hex://bitcore/BitMask?mask#mask_g[64u]()
; mask_g[64u]()[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x1f,0x1f,0x1f,0x1f,0x1f,0x1f,0x1f,0x1f,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,1f1f1f1f1f1f1f1fh               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 1f 1f 1f 1f 1f 1f 1f 1f}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte mask<byte>(LsbMask<N8,N6,byte> spec), hex://bitcore/BitMask?mask#mask_g[8u]()
; mask_g[8u]()[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x3f,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,3fh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 3f 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort mask<ushort>(LsbMask<N8,N6,ushort> spec), hex://bitcore/BitMask?mask#mask_g[16u]()
; mask_g[16u]()[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x3f,0x3f,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,3f3fh                           ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 3f 3f 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint mask<uint>(LsbMask<N8,N6,uint> spec), hex://bitcore/BitMask?mask#mask_g[32u]()
; mask_g[32u]()[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x3f,0x3f,0x3f,0x3f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,3f3f3f3fh                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 3f 3f 3f 3f}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong mask<ulong>(LsbMask<N8,N6,ulong> spec), hex://bitcore/BitMask?mask#mask_g[64u]()
; mask_g[64u]()[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x3f,0x3f,0x3f,0x3f,0x3f,0x3f,0x3f,0x3f,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,3f3f3f3f3f3f3f3fh               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 3f 3f 3f 3f 3f 3f 3f 3f}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte mask<byte>(LsbMask<N8,N7,byte> spec), hex://bitcore/BitMask?mask#mask_g[8u]()
; mask_g[8u]()[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x7f,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,7fh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 7f 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort mask<ushort>(LsbMask<N8,N7,ushort> spec), hex://bitcore/BitMask?mask#mask_g[16u]()
; mask_g[16u]()[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x7f,0x7f,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,7f7fh                           ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 7f 7f 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint mask<uint>(LsbMask<N8,N7,uint> spec), hex://bitcore/BitMask?mask#mask_g[32u]()
; mask_g[32u]()[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x7f,0x7f,0x7f,0x7f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,7f7f7f7fh                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 7f 7f 7f 7f}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong mask<ulong>(LsbMask<N8,N7,ulong> spec), hex://bitcore/BitMask?mask#mask_g[64u]()
; mask_g[64u]()[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x7f,0x7f,0x7f,0x7f,0x7f,0x7f,0x7f,0x7f,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7f7f7f7f7f7f7f7fh               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 7f 7f 7f 7f 7f 7f 7f 7f}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong lo64(int n), hex://bitcore/BitMask?lo64#lo64_(32i)
; lo64_(32i)[19] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x01,0x00,0x00,0x00,0x48,0xd3,0xe0,0xc4,0xe2,0xf8,0xf3,0xd0,0xc3}
; TermCode = CTC_RET_INTR
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000ah shl rax,cl                              ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{48 d3 e0}
000dh blsmsk rax,rax                          ; BLSMSK r64, r/m64 || VEX.LZ.0F38.W1 F3 /2 || encoded[5]{c4 e2 f8 f3 d0}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong lsb64(N16 f, N1 d), hex://bitcore/BitMask?lsb64#lsb64_(n16,n1)
; lsb64_(n16,n1)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x01,0x00,0x01,0x00,0x01,0x00,0x01,0x00,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,1000100010001h                  ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 01 00 01 00 01 00 01 00}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint lsb(N32 f, N1 d, uint t), hex://bitcore/BitMask?lsb#lsb_(n32,n1,32u)
; lsb_(n32,n1,32u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x01,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong lsb64(N32 f, N1 d, ulong t), hex://bitcore/BitMask?lsb64#lsb64_(n32,n1,64u)
; lsb64_(n32,n1,64u)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x01,0x00,0x00,0x00,0x01,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,100000001h                      ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 01 00 00 00 01 00 00 00}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte lsb8f(byte density), hex://bitcore/BitMask?lsb8f#lsb8f_(8u)
; lsb8f_(8u)[24] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc9,0xf7,0xd9,0x83,0xc1,0x08,0xb8,0xff,0x00,0x00,0x00,0xd3,0xf8,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
0008h neg ecx                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d9}
000ah add ecx,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c1 08}
000dh mov eax,0ffh                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff 00 00 00}
0012h sar eax,cl                              ; SAR r/m32, CL || o32 D3 /7 || encoded[2]{d3 f8}
0014h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
