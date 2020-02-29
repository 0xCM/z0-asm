------------------------------------------------------------------------------------------------------------------------
; BitVector<byte> negate<byte>(BitVector<byte> x), hex://bitvectors/bitvector?negate#negate_g[8u]()
; negate_g[8u]()[16] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0xf7,0xd0,0xff,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000ah inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
000ch movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<ushort> negate<ushort>(BitVector<ushort> x), hex://bitvectors/bitvector?negate#negate_g[16u]()
; negate_g[16u]()[16] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0xf7,0xd0,0xff,0xc0,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000ah inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
000ch movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<uint> negate<uint>(BitVector<uint> x), hex://bitvectors/bitvector?negate#negate_g[32u]()
; negate_g[32u]()[12] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0xf7,0xd0,0xff,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0009h inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<ulong> negate<ulong>(BitVector<ulong> x), hex://bitvectors/bitvector?negate#negate_g[64u]()
; negate_g[64u]()[15] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0x48,0xf7,0xd0,0x48,0xff,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
000bh inc rax                                 ; INC r/m64 || REX.W FF /0 || encoded[3]{48 ff c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<byte> msbseg<byte>(BitVector<byte> x, byte n), hex://bitvectors/bitvector?msbseg#msbseg_g[8u](8u)
; msbseg_g[8u](8u)[48] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc2,0xf7,0xd8,0x83,0xc0,0x08,0x0f,0xb6,0xd1,0x0f,0xb6,0xc0,0xb9,0x07,0x00,0x00,0x00,0x2b,0xc8,0xff,0xc1,0x0f,0xb6,0xc9,0xc1,0xe1,0x08,0x0b,0xc1,0x0f,0xb7,0xc0,0xc4,0xe2,0x78,0xf7,0xc2,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0008h neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
000ah add eax,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c0 08}
000dh movzx edx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d1}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h mov ecx,7                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 07 00 00 00}
0018h sub ecx,eax                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c8}
001ah inc ecx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c1}
001ch movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
001fh shl ecx,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 08}
0022h or eax,ecx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c1}
0024h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0027h bextr eax,edx,eax                       ; BEXTR r32a, r/m32, r32b || VEX.LZ.0F38.W0 F7 /r || encoded[5]{c4 e2 78 f7 c2}
002ch movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
002fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<ushort> msbseg<ushort>(BitVector<ushort> x, byte n), hex://bitvectors/bitvector?msbseg#msbseg_g[16u](8u)
; msbseg_g[16u](8u)[48] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc2,0xf7,0xd8,0x83,0xc0,0x10,0x0f,0xb7,0xd1,0x0f,0xb6,0xc0,0xb9,0x0f,0x00,0x00,0x00,0x2b,0xc8,0xff,0xc1,0x0f,0xb6,0xc9,0xc1,0xe1,0x08,0x0b,0xc1,0x0f,0xb7,0xc0,0xc4,0xe2,0x78,0xf7,0xc2,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0008h neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
000ah add eax,10h                             ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c0 10}
000dh movzx edx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d1}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h mov ecx,0fh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 0f 00 00 00}
0018h sub ecx,eax                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c8}
001ah inc ecx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c1}
001ch movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
001fh shl ecx,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 08}
0022h or eax,ecx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c1}
0024h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0027h bextr eax,edx,eax                       ; BEXTR r32a, r/m32, r32b || VEX.LZ.0F38.W0 F7 /r || encoded[5]{c4 e2 78 f7 c2}
002ch movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
002fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<uint> msbseg<uint>(BitVector<uint> x, byte n), hex://bitvectors/bitvector?msbseg#msbseg_g[32u](8u)
; msbseg_g[32u](8u)[42] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc2,0xf7,0xd8,0x83,0xc0,0x20,0x0f,0xb6,0xc0,0xba,0x1f,0x00,0x00,0x00,0x2b,0xd0,0xff,0xc2,0x0f,0xb6,0xd2,0xc1,0xe2,0x08,0x0b,0xc2,0x0f,0xb7,0xc0,0xc4,0xe2,0x78,0xf7,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0008h neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
000ah add eax,20h                             ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c0 20}
000dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0010h mov edx,1fh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 1f 00 00 00}
0015h sub edx,eax                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d0}
0017h inc edx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c2}
0019h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
001ch shl edx,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 08}
001fh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0021h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0024h bextr eax,ecx,eax                       ; BEXTR r32a, r/m32, r32b || VEX.LZ.0F38.W0 F7 /r || encoded[5]{c4 e2 78 f7 c1}
0029h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<ulong> msbseg<ulong>(BitVector<ulong> x, byte n), hex://bitvectors/bitvector?msbseg#msbseg_g[64u](8u)
; msbseg_g[64u](8u)[42] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc2,0xf7,0xd8,0x83,0xc0,0x40,0x0f,0xb6,0xc0,0xba,0x3f,0x00,0x00,0x00,0x2b,0xd0,0xff,0xc2,0x0f,0xb6,0xd2,0xc1,0xe2,0x08,0x0b,0xc2,0x0f,0xb7,0xc0,0xc4,0xe2,0xf8,0xf7,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0008h neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
000ah add eax,40h                             ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c0 40}
000dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0010h mov edx,3fh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 3f 00 00 00}
0015h sub edx,eax                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d0}
0017h inc edx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c2}
0019h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
001ch shl edx,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 08}
001fh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0021h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0024h bextr rax,rcx,rax                       ; BEXTR r64a, r/m64, r64b || VEX.LZ.0F38.W1 F7 /r || encoded[5]{c4 e2 f8 f7 c1}
0029h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<byte> dec<byte>(BitVector<byte> x), hex://bitvectors/bitvector?dec#dec_g[8u]()
; dec_g[8u]()[14] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0xff,0xc8,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<ushort> dec<ushort>(BitVector<ushort> x), hex://bitvectors/bitvector?dec#dec_g[16u]()
; dec_g[16u]()[14] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0xff,0xc8,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
000ah movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<uint> dec<uint>(BitVector<uint> x), hex://bitvectors/bitvector?dec#dec_g[32u]()
; dec_g[32u]()[10] = {0x0f,0x1f,0x44,0x00,0x00,0xff,0xc9,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0007h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<ulong> dec<ulong>(BitVector<ulong> x), hex://bitvectors/bitvector?dec#dec_g[64u]()
; dec_g[64u]()[12] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xff,0xc9,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h dec rcx                                 ; DEC r/m64 || REX.W FF /1 || encoded[3]{48 ff c9}
0008h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<byte> disable<byte>(BitVector<byte> x, int index), hex://bitvectors/bitvector?disable#disable_g[8u](32i)
; disable_g[8u](32i)[34] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x41,0xb8,0x01,0x00,0x00,0x00,0x8b,0xca,0x41,0xd3,0xe0,0x41,0x0f,0xb6,0xd0,0xf7,0xd2,0x0f,0xb6,0xd2,0x23,0xc2,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
000eh mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0010h shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
0013h movzx edx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d0}
0017h not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
0019h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
001ch and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
001eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0021h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<ushort> disable<ushort>(BitVector<ushort> x, int index), hex://bitvectors/bitvector?disable#disable_g[16u](32i)
; disable_g[16u](32i)[34] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x41,0xb8,0x01,0x00,0x00,0x00,0x8b,0xca,0x41,0xd3,0xe0,0x41,0x0f,0xb7,0xd0,0xf7,0xd2,0x0f,0xb7,0xd2,0x23,0xc2,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
000eh mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0010h shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
0013h movzx edx,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 d0}
0017h not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
0019h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
001ch and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
001eh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0021h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<uint> disable<uint>(BitVector<uint> x, int index), hex://bitvectors/bitvector?disable#disable_g[32u](32i)
; disable_g[32u](32i)[26] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0x41,0xb8,0x01,0x00,0x00,0x00,0x8b,0xca,0x41,0xd3,0xe0,0x41,0x8b,0xd0,0xf7,0xd2,0x23,0xc2,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
000dh mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
000fh shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
0012h mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
0015h not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
0017h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<ulong> disable<ulong>(BitVector<ulong> x, int index), hex://bitvectors/bitvector?disable#disable_g[64u](32i)
; disable_g[64u](32i)[29] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0x41,0xb8,0x01,0x00,0x00,0x00,0x8b,0xca,0x49,0xd3,0xe0,0x49,0x8b,0xd0,0x48,0xf7,0xd2,0x48,0x23,0xc2,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
000eh mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0010h shl r8,cl                               ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e0}
0013h mov rdx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d0}
0016h not rdx                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d2}
0019h and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint dist<byte>(BitVector<byte> x, BitVector<byte> y), hex://bitvectors/bitvector?dist#dist_g[8u]()
; dist_g[8u]()[38] = {0x50,0x0f,0x1f,0x40,0x00,0x0f,0xb6,0xc1,0x0f,0xb6,0xd2,0x0f,0xb6,0xc0,0x33,0xc2,0x0f,0xb6,0xc0,0x88,0x04,0x24,0x0f,0xb6,0x04,0x24,0x0f,0xb6,0xc0,0xf3,0x0f,0xb8,0xc0,0x48,0x83,0xc4,0x08,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h mov [rsp],al                            ; MOV r/m8, r8 || 88 /r || encoded[3]{88 04 24}
0016h movzx eax,byte ptr [rsp]                ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 04 24}
001ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001dh popcnt eax,eax                          ; POPCNT r32, r/m32 || o32 F3 0F B8 /r || encoded[4]{f3 0f b8 c0}
0021h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0025h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint dist<ushort>(BitVector<ushort> x, BitVector<ushort> y), hex://bitvectors/bitvector?dist#dist_g[16u]()
; dist_g[16u]()[39] = {0x50,0x0f,0x1f,0x40,0x00,0x0f,0xb7,0xc1,0x0f,0xb7,0xd2,0x0f,0xb7,0xc0,0x33,0xc2,0x0f,0xb7,0xc0,0x66,0x89,0x04,0x24,0x0f,0xb7,0x04,0x24,0x0f,0xb7,0xc0,0xf3,0x0f,0xb8,0xc0,0x48,0x83,0xc4,0x08,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
000eh xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
0010h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0013h mov [rsp],ax                            ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 04 24}
0017h movzx eax,word ptr [rsp]                ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 04 24}
001bh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001eh popcnt eax,eax                          ; POPCNT r32, r/m32 || o32 F3 0F B8 /r || encoded[4]{f3 0f b8 c0}
0022h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0026h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint dist<uint>(BitVector<uint> x, BitVector<uint> y), hex://bitvectors/bitvector?dist#dist_g[32u]()
; dist_g[32u]()[14] = {0x0f,0x1f,0x44,0x00,0x00,0x33,0xd1,0x33,0xc0,0xf3,0x0f,0xb8,0xc2,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor edx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d1}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h popcnt eax,edx                          ; POPCNT r32, r/m32 || o32 F3 0F B8 /r || encoded[4]{f3 0f b8 c2}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint dist<ulong>(BitVector<ulong> x, BitVector<ulong> y), hex://bitvectors/bitvector?dist#dist_g[64u]()
; dist_g[64u]()[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x33,0xd1,0x33,0xc0,0xf3,0x48,0x0f,0xb8,0xc2,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor rdx,rcx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 d1}
0008h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ah popcnt rax,rdx                          ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 48 0f b8 c2}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit dot<byte>(BitVector<byte> x, BitVector<byte> y), hex://bitvectors/bitvector?dot#dot_g[8u]()
; dot_g[8u]()[45] = {0x50,0x0f,0x1f,0x40,0x00,0x0f,0xb6,0xc1,0x0f,0xb6,0xd2,0x0f,0xb6,0xc0,0x23,0xc2,0x0f,0xb6,0xc0,0x88,0x04,0x24,0x8b,0x04,0x24,0x0f,0xb6,0xc0,0xf3,0x0f,0xb8,0xc0,0xa8,0x01,0x0f,0x95,0xc0,0x0f,0xb6,0xc0,0x48,0x83,0xc4,0x08,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h mov [rsp],al                            ; MOV r/m8, r8 || 88 /r || encoded[3]{88 04 24}
0016h mov eax,[rsp]                           ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 24}
0019h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ch popcnt eax,eax                          ; POPCNT r32, r/m32 || o32 F3 0F B8 /r || encoded[4]{f3 0f b8 c0}
0020h test al,1                               ; TEST AL, imm8 || A8 ib || encoded[2]{a8 01}
0022h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0025h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0028h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
002ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit dot<ushort>(BitVector<ushort> x, BitVector<ushort> y), hex://bitvectors/bitvector?dot#dot_g[16u]()
; dot_g[16u]()[46] = {0x50,0x0f,0x1f,0x40,0x00,0x0f,0xb7,0xc1,0x0f,0xb7,0xd2,0x0f,0xb7,0xc0,0x23,0xc2,0x0f,0xb7,0xc0,0x66,0x89,0x04,0x24,0x8b,0x04,0x24,0x0f,0xb7,0xc0,0xf3,0x0f,0xb8,0xc0,0xa8,0x01,0x0f,0x95,0xc0,0x0f,0xb6,0xc0,0x48,0x83,0xc4,0x08,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
000eh and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0010h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0013h mov [rsp],ax                            ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 04 24}
0017h mov eax,[rsp]                           ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 24}
001ah movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001dh popcnt eax,eax                          ; POPCNT r32, r/m32 || o32 F3 0F B8 /r || encoded[4]{f3 0f b8 c0}
0021h test al,1                               ; TEST AL, imm8 || A8 ib || encoded[2]{a8 01}
0023h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0026h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0029h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
002dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit dot<uint>(BitVector<uint> x, BitVector<uint> y), hex://bitvectors/bitvector?dot#dot_g[32u]()
; dot_g[32u]()[22] = {0x0f,0x1f,0x44,0x00,0x00,0x23,0xd1,0x33,0xc0,0xf3,0x0f,0xb8,0xc2,0xa8,0x01,0x0f,0x95,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h and edx,ecx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 d1}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h popcnt eax,edx                          ; POPCNT r32, r/m32 || o32 F3 0F B8 /r || encoded[4]{f3 0f b8 c2}
000dh test al,1                               ; TEST AL, imm8 || A8 ib || encoded[2]{a8 01}
000fh setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0012h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit dot<ulong>(BitVector<ulong> x, BitVector<ulong> y), hex://bitvectors/bitvector?dot#dot_g[64u]()
; dot_g[64u]()[24] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x23,0xd1,0x33,0xc0,0xf3,0x48,0x0f,0xb8,0xc2,0xa8,0x01,0x0f,0x95,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h and rdx,rcx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 d1}
0008h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ah popcnt rax,rdx                          ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 48 0f b8 c2}
000fh test al,1                               ; TEST AL, imm8 || A8 ib || encoded[2]{a8 01}
0011h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0014h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<byte> enable<byte>(BitVector<byte> x, int index), hex://bitvectors/bitvector?enable#enable_g[8u](32i)
; enable_g[8u](32i)[32] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x41,0xb8,0x01,0x00,0x00,0x00,0x8b,0xca,0x41,0xd3,0xe0,0x41,0x0f,0xb6,0xd0,0x0b,0xc2,0x0f,0xb6,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
000eh mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0010h shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
0013h movzx edx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d0}
0017h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0019h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ch movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<ushort> enable<ushort>(BitVector<ushort> x, int index), hex://bitvectors/bitvector?enable#enable_g[16u](32i)
; enable_g[16u](32i)[32] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x41,0xb8,0x01,0x00,0x00,0x00,0x8b,0xca,0x41,0xd3,0xe0,0x41,0x0f,0xb7,0xd0,0x0b,0xc2,0x0f,0xb7,0xc0,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
000eh mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0010h shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
0013h movzx edx,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 d0}
0017h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0019h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001ch movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<uint> enable<uint>(BitVector<uint> x, int index), hex://bitvectors/bitvector?enable#enable_g[32u](32i)
; enable_g[32u](32i)[22] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0x41,0xb8,0x01,0x00,0x00,0x00,0x8b,0xca,0x41,0xd3,0xe0,0x41,0x0b,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
000dh mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
000fh shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
0012h or eax,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<ulong> enable<ulong>(BitVector<ulong> x, int index), hex://bitvectors/bitvector?enable#enable_g[64u](32i)
; enable_g[64u](32i)[23] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0x41,0xb8,0x01,0x00,0x00,0x00,0x8b,0xca,0x49,0xd3,0xe0,0x49,0x0b,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
000eh mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0010h shl r8,cl                               ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e0}
0013h or rax,r8                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{49 0b c0}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit enabled<byte>(BitVector<byte> x, int index), hex://bitvectors/bitvector?enabled#enabled_g[8u](32i)
; enabled_g[8u](32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x8b,0xca,0xd3,0xe8,0x83,0xe0,0x01,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
000ah shr eax,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 e8}
000ch and eax,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 01}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit enabled<ushort>(BitVector<ushort> x, int index), hex://bitvectors/bitvector?enabled#enabled_g[16u](32i)
; enabled_g[16u](32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x8b,0xca,0xd3,0xe8,0x83,0xe0,0x01,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
000ah shr eax,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 e8}
000ch and eax,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 01}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit enabled<uint>(BitVector<uint> x, int index), hex://bitvectors/bitvector?enabled#enabled_g[32u](32i)
; enabled_g[32u](32i)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0x8b,0xca,0xd3,0xe8,0x83,0xe0,0x01,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0009h shr eax,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 e8}
000bh and eax,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 01}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit enabled<ulong>(BitVector<ulong> x, int index), hex://bitvectors/bitvector?enabled#enabled_g[64u](32i)
; enabled_g[64u](32i)[17] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0x8b,0xca,0x48,0xd3,0xe8,0x83,0xe0,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
000ah shr rax,cl                              ; SHR r/m64, CL || REX.W D3 /5 || encoded[3]{48 d3 e8}
000dh and eax,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 01}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; string format<uint>(BitVector<uint> x, Nullable<BitFormatConfig> fmt), hex://bitvectors/bitvector?format#format_g[32u]()
; format_g[32u]()[226] = {0x57,0x56,0x53,0x48,0x83,0xec,0x50,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x48,0x48,0x89,0x44,0x24,0x38,0x48,0x89,0x44,0x24,0x40,0x48,0x8b,0xf2,0x8b,0xf9,0xbb,0x20,0x00,0x00,0x00,0x48,0xb9,0x10,0xea,0x72,0xc7,0xf7,0x7f,0x00,0x00,0xba,0x20,0x00,0x00,0x00,0xe8,0xf7,0xd7,0xfd,0x5e,0x48,0x8d,0x50,0x10,0x45,0x33,0xc0,0x41,0x8b,0xc8,0xc1,0xe1,0x03,0x4c,0x63,0xc9,0x4c,0x03,0xca,0x41,0x8b,0xc8,0xc1,0xe1,0x03,0x44,0x8b,0xd7,0x41,0xd3,0xea,0x41,0x0f,0xb6,0xca,0xc1,0xe1,0x03,0x48,0x63,0xc9,0x49,0xba,0x6d,0xcc,0xfb,0x71,0x8e,0x01,0x00,0x00,0x49,0x03,0xca,0x48,0x8b,0x09,0x49,0x89,0x09,0x41,0xff,0xc0,0x41,0x83,0xf8,0x04,0x7c,0xc2,0x48,0x83,0xc0,0x10,0xb9,0x20,0x00,0x00,0x00,0x83,0xfb,0x20,0x7d,0x02,0xeb,0x05,0xbb,0x20,0x00,0x00,0x00,0x8b,0xd3,0x8b,0xc9,0x48,0x3b,0xd1,0x77,0x41,0x48,0x89,0x44,0x24,0x38,0x89,0x5c,0x24,0x40,0x48,0x8d,0x4c,0x24,0x38,0xe8,0x41,0x3f,0xd9,0x4e,0x48,0x89,0x44,0x24,0x48,0x48,0x8d,0x4c,0x24,0x48,0xc5,0xfa,0x6f,0x06,0xc5,0xfa,0x7f,0x44,0x24,0x20,0x8b,0x56,0x10,0x89,0x54,0x24,0x30,0x48,0x8d,0x54,0x24,0x20,0xe8,0x74,0x30,0x7d,0xff,0x90,0x48,0x83,0xc4,0x50,0x5b,0x5e,0x5f,0xc3,0xe8,0x0e,0xbc,0x4d,0xff}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,50h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 50}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+48h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 48}
0011h mov [rsp+38h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 38}
0016h mov [rsp+40h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 40}
001bh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
001eh mov edi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f9}
0020h mov ebx,20h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{bb 20 00 00 00}
0025h mov rcx,7ff7c772ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 72 c7 f7 7f 00 00}
002fh mov edx,20h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 20 00 00 00}
0034h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 d7 fd 5e}
0039h lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
003dh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0040h mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0043h shl ecx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 03}
0046h movsxd r9,ecx                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4c 63 c9}
0049h add r9,rdx                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 ca}
004ch mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
004fh shl ecx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 03}
0052h mov r10d,edi                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b d7}
0055h shr r10d,cl                             ; SHR r/m32, CL || o32 D3 /5 || encoded[3]{41 d3 ea}
0058h movzx ecx,r10b                          ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 ca}
005ch shl ecx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 03}
005fh movsxd rcx,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c9}
0062h mov r10,18e71fbcc6dh                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 ba 6d cc fb 71 8e 01 00 00}
006ch add rcx,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 ca}
006fh mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
0072h mov [r9],rcx                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 09}
0075h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
0078h cmp r8d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 04}
007ch jl short 0040h                          ; JL rel8 || 7C cb || encoded[2]{7c c2}
007eh add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
0082h mov ecx,20h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 20 00 00 00}
0087h cmp ebx,20h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 fb 20}
008ah jge short 008eh                         ; JGE rel8 || 7D cb || encoded[2]{7d 02}
008ch jmp short 0093h                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
008eh mov ebx,20h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{bb 20 00 00 00}
0093h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0095h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0097h cmp rdx,rcx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b d1}
009ah ja short 00ddh                          ; JA rel8 || 77 cb || encoded[2]{77 41}
009ch mov [rsp+38h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 38}
00a1h mov [rsp+40h],ebx                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 5c 24 40}
00a5h lea rcx,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 38}
00aah call 7ff81701d5a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 3f d9 4e}
00afh mov [rsp+48h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 48}
00b4h lea rcx,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 48}
00b9h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
00bdh vmovdqu xmmword ptr [rsp+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 20}
00c3h mov edx,[rsi+10h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 56 10}
00c6h mov [rsp+30h],edx                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 54 24 30}
00cah lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
00cfh call 7ff7c7a5c6f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 30 7d ff}
00d4h nop                                     ; NOP || o32 90 || encoded[1]{90}
00d5h add rsp,50h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 50}
00d9h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00dah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00dbh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00dch ret                                     ; RET || C3 || encoded[1]{c3}
00ddh call 7ff7c77652a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0e bc 4d ff}
------------------------------------------------------------------------------------------------------------------------
; string format<ulong>(BitVector<ulong> x, Nullable<BitFormatConfig> fmt), hex://bitvectors/bitvector?format#format_g[64u]()
; format_g[64u]()[227] = {0x57,0x56,0x53,0x48,0x83,0xec,0x50,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x48,0x48,0x89,0x44,0x24,0x38,0x48,0x89,0x44,0x24,0x40,0x48,0x8b,0xf2,0x48,0x8b,0xf9,0xbb,0x40,0x00,0x00,0x00,0x48,0xb9,0x10,0xea,0x72,0xc7,0xf7,0x7f,0x00,0x00,0xba,0x40,0x00,0x00,0x00,0xe8,0xf6,0xd6,0xfd,0x5e,0x48,0x8d,0x50,0x10,0x45,0x33,0xc0,0x41,0x8b,0xc8,0xc1,0xe1,0x03,0x4c,0x63,0xc9,0x4c,0x03,0xca,0x41,0x8b,0xc8,0xc1,0xe1,0x03,0x4c,0x8b,0xd7,0x49,0xd3,0xea,0x41,0x0f,0xb6,0xca,0xc1,0xe1,0x03,0x48,0x63,0xc9,0x49,0xba,0x6d,0xcc,0xfb,0x71,0x8e,0x01,0x00,0x00,0x49,0x03,0xca,0x48,0x8b,0x09,0x49,0x89,0x09,0x41,0xff,0xc0,0x41,0x83,0xf8,0x08,0x7c,0xc2,0x48,0x83,0xc0,0x10,0xb9,0x40,0x00,0x00,0x00,0x83,0xfb,0x40,0x7d,0x02,0xeb,0x05,0xbb,0x40,0x00,0x00,0x00,0x8b,0xd3,0x8b,0xc9,0x48,0x3b,0xd1,0x77,0x41,0x48,0x89,0x44,0x24,0x38,0x89,0x5c,0x24,0x40,0x48,0x8d,0x4c,0x24,0x38,0xe8,0x40,0x3e,0xd9,0x4e,0x48,0x89,0x44,0x24,0x48,0x48,0x8d,0x4c,0x24,0x48,0xc5,0xfa,0x6f,0x06,0xc5,0xfa,0x7f,0x44,0x24,0x20,0x8b,0x56,0x10,0x89,0x54,0x24,0x30,0x48,0x8d,0x54,0x24,0x20,0xe8,0x73,0x2f,0x7d,0xff,0x90,0x48,0x83,0xc4,0x50,0x5b,0x5e,0x5f,0xc3,0xe8,0x0d,0xbb,0x4d,0xff}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,50h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 50}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+48h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 48}
0011h mov [rsp+38h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 38}
0016h mov [rsp+40h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 40}
001bh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
001eh mov rdi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f9}
0021h mov ebx,40h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{bb 40 00 00 00}
0026h mov rcx,7ff7c772ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 72 c7 f7 7f 00 00}
0030h mov edx,40h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 40 00 00 00}
0035h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 d6 fd 5e}
003ah lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
003eh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0041h mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0044h shl ecx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 03}
0047h movsxd r9,ecx                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4c 63 c9}
004ah add r9,rdx                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 ca}
004dh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0050h shl ecx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 03}
0053h mov r10,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b d7}
0056h shr r10,cl                              ; SHR r/m64, CL || REX.W D3 /5 || encoded[3]{49 d3 ea}
0059h movzx ecx,r10b                          ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 ca}
005dh shl ecx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 03}
0060h movsxd rcx,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c9}
0063h mov r10,18e71fbcc6dh                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 ba 6d cc fb 71 8e 01 00 00}
006dh add rcx,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 ca}
0070h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
0073h mov [r9],rcx                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 09}
0076h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
0079h cmp r8d,8                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 08}
007dh jl short 0041h                          ; JL rel8 || 7C cb || encoded[2]{7c c2}
007fh add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
0083h mov ecx,40h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 40 00 00 00}
0088h cmp ebx,40h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 fb 40}
008bh jge short 008fh                         ; JGE rel8 || 7D cb || encoded[2]{7d 02}
008dh jmp short 0094h                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
008fh mov ebx,40h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{bb 40 00 00 00}
0094h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0096h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0098h cmp rdx,rcx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b d1}
009bh ja short 00deh                          ; JA rel8 || 77 cb || encoded[2]{77 41}
009dh mov [rsp+38h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 38}
00a2h mov [rsp+40h],ebx                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 5c 24 40}
00a6h lea rcx,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 38}
00abh call 7ff81701d5a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 3e d9 4e}
00b0h mov [rsp+48h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 48}
00b5h lea rcx,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 48}
00bah vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
00beh vmovdqu xmmword ptr [rsp+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 20}
00c4h mov edx,[rsi+10h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 56 10}
00c7h mov [rsp+30h],edx                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 54 24 30}
00cbh lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
00d0h call 7ff7c7a5c6f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 2f 7d ff}
00d5h nop                                     ; NOP || o32 90 || encoded[1]{90}
00d6h add rsp,50h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 50}
00dah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00dbh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00dch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00ddh ret                                     ; RET || C3 || encoded[1]{c3}
00deh call 7ff7c77652a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d bb 4d ff}
------------------------------------------------------------------------------------------------------------------------
; BitVector<byte> gather<byte>(BitVector<byte> src, BitVector<byte> spec), hex://bitvectors/bitvector?gather#gather_g[8u]()
; gather_g[8u]()[23] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x0f,0xb6,0xd2,0x0f,0xb6,0xc0,0xc4,0xe2,0x7a,0xf5,0xc2,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh pext eax,eax,edx                        ; PEXT r32a, r32b, r/m32 || VEX.LZ.F3.0F38.W0 F5 /r || encoded[5]{c4 e2 7a f5 c2}
0013h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<ushort> gather<ushort>(BitVector<ushort> src, BitVector<ushort> spec), hex://bitvectors/bitvector?gather#gather_g[16u]()
; gather_g[16u]()[23] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x0f,0xb7,0xd2,0x0f,0xb7,0xc0,0xc4,0xe2,0x7a,0xf5,0xc2,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
000eh pext eax,eax,edx                        ; PEXT r32a, r32b, r/m32 || VEX.LZ.F3.0F38.W0 F5 /r || encoded[5]{c4 e2 7a f5 c2}
0013h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<uint> gather<uint>(BitVector<uint> src, BitVector<uint> spec), hex://bitvectors/bitvector?gather#gather_g[32u]()
; gather_g[32u]()[11] = {0x0f,0x1f,0x44,0x00,0x00,0xc4,0xe2,0x72,0xf5,0xc2,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h pext eax,ecx,edx                        ; PEXT r32a, r32b, r/m32 || VEX.LZ.F3.0F38.W0 F5 /r || encoded[5]{c4 e2 72 f5 c2}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<ulong> gather<ulong>(BitVector<ulong> src, BitVector<ulong> spec), hex://bitvectors/bitvector?gather#gather_g[64u]()
; gather_g[64u]()[11] = {0x0f,0x1f,0x44,0x00,0x00,0xc4,0xe2,0xf2,0xf5,0xc2,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h pext rax,rcx,rdx                        ; PEXT r64a, r64b, r/m64 || VEX.LZ.F3.0F38.W1 F5 /r || encoded[5]{c4 e2 f2 f5 c2}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<byte> generic<byte>(byte src), hex://bitvectors/bitvector?generic#generic_g[8u](8u)
; generic_g[8u](8u)[12] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<ushort> generic<ushort>(ushort src), hex://bitvectors/bitvector?generic#generic_g[16u](16u)
; generic_g[16u](16u)[12] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<uint> generic<uint>(uint src), hex://bitvectors/bitvector?generic#generic_g[32u](32u)
; generic_g[32u](32u)[8] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<ulong> generic<ulong>(ulong src), hex://bitvectors/bitvector?generic#generic_g[64u](64u)
; generic_g[64u](64u)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<byte> generic<byte>(Span<byte> src), hex://bitvectors/bitvector?generic#generic_g[8u](span8u)
; generic_g[8u](span8u)[18] = {0x48,0x83,0xec,0x28,0x90,0xe8,0x96,0xf6,0xff,0xff,0x0f,0xb6,0xc0,0x48,0x83,0xc4,0x28,0xc3}
; TermCode = CTC_RET_Zx3
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h call 7ff7c8289360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 f6 ff ff}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<ushort> generic<ushort>(Span<byte> src), hex://bitvectors/bitvector?generic#generic_g[16u](span8u)
; generic_g[16u](span8u)[18] = {0x48,0x83,0xec,0x28,0x90,0xe8,0xa6,0xf6,0xff,0xff,0x0f,0xb7,0xc0,0x48,0x83,0xc4,0x28,0xc3}
; TermCode = CTC_RET_Zx3
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h call 7ff7c82893a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 f6 ff ff}
000ah movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
000dh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<uint> generic<uint>(Span<byte> src), hex://bitvectors/bitvector?generic#generic_g[32u](span8u)
; generic_g[32u](span8u)[16] = {0x48,0x83,0xec,0x28,0x90,0xe8,0x96,0xf6,0xff,0xff,0x90,0x48,0x83,0xc4,0x28,0xc3}
; TermCode = CTC_RET_SBB
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h call 7ff7c82893c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 f6 ff ff}
000ah nop                                     ; NOP || o32 90 || encoded[1]{90}
000bh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<ulong> generic<ulong>(Span<byte> src), hex://bitvectors/bitvector?generic#generic_g[64u](span8u)
; generic_g[64u](span8u)[16] = {0x48,0x83,0xec,0x28,0x90,0xe8,0xee,0xfb,0xff,0xff,0x90,0x48,0x83,0xc4,0x28,0xc3}
; TermCode = CTC_RET_SBB
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h call 7ff7c8289d48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee fb ff ff}
000ah nop                                     ; NOP || o32 90 || encoded[1]{90}
000bh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<byte> generic<byte>(BitString src), hex://bitvectors/bitvector?generic#generic_g[8u]()
; generic_g[8u]()[140] = {0x57,0x56,0x48,0x83,0xec,0x58,0x48,0x8b,0xf1,0x48,0x8d,0x7c,0x24,0x20,0xb9,0x0e,0x00,0x00,0x00,0x33,0xc0,0xf3,0xab,0x48,0x8b,0xce,0x48,0x85,0xc9,0x75,0x07,0x33,0xd2,0x45,0x33,0xc9,0xeb,0x08,0x48,0x8d,0x51,0x10,0x44,0x8b,0x49,0x08,0x33,0xc9,0x45,0x33,0xc0,0x48,0x8d,0x44,0x24,0x48,0x4c,0x8d,0x54,0x24,0x38,0x49,0x89,0x12,0x45,0x89,0x4a,0x08,0x48,0x8d,0x54,0x24,0x30,0x88,0x0a,0x44,0x89,0x42,0x04,0x48,0x8b,0xc8,0x48,0x8d,0x54,0x24,0x38,0x4c,0x8b,0x4c,0x24,0x30,0x45,0x33,0xc0,0xe8,0x74,0x25,0x7d,0xff,0x48,0x8b,0x4c,0x24,0x48,0x8b,0x44,0x24,0x50,0x48,0x8d,0x54,0x24,0x20,0x48,0x89,0x0a,0x89,0x42,0x08,0x48,0x8d,0x4c,0x24,0x20,0xe8,0x5e,0xf1,0xff,0xff,0x0f,0xb6,0xc0,0x48,0x83,0xc4,0x58,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h lea rdi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 20}
000eh mov ecx,0eh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 0e 00 00 00}
0013h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0015h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
0017h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001ah test rcx,rcx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c9}
001dh jne short 0026h                         ; JNE rel8 || 75 cb || encoded[2]{75 07}
001fh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0021h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0024h jmp short 002eh                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
0026h lea rdx,[rcx+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 51 10}
002ah mov r9d,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 49 08}
002eh xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
0030h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0033h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0038h lea r10,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 54 24 38}
003dh mov [r10],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 12}
0040h mov [r10+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{45 89 4a 08}
0044h lea rdx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 30}
0049h mov [rdx],cl                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 0a}
004bh mov [rdx+4],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 42 04}
004fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0052h lea rdx,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 38}
0057h mov r9,[rsp+30h]                        ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{4c 8b 4c 24 30}
005ch xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
005fh call 7ff7c7a5c758h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 25 7d ff}
0064h mov rcx,[rsp+48h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 4c 24 48}
0069h mov eax,[rsp+50h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 50}
006dh lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
0072h mov [rdx],rcx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 0a}
0075h mov [rdx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 42 08}
0078h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
007dh call 7ff7c8289360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e f1 ff ff}
0082h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0085h add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0089h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
008ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<ushort> generic<ushort>(BitString src), hex://bitvectors/bitvector?generic#generic_g[16u]()
; generic_g[16u]()[140] = {0x57,0x56,0x48,0x83,0xec,0x58,0x48,0x8b,0xf1,0x48,0x8d,0x7c,0x24,0x20,0xb9,0x0e,0x00,0x00,0x00,0x33,0xc0,0xf3,0xab,0x48,0x8b,0xce,0x48,0x85,0xc9,0x75,0x07,0x33,0xd2,0x45,0x33,0xc9,0xeb,0x08,0x48,0x8d,0x51,0x10,0x44,0x8b,0x49,0x08,0x33,0xc9,0x45,0x33,0xc0,0x48,0x8d,0x44,0x24,0x48,0x4c,0x8d,0x54,0x24,0x38,0x49,0x89,0x12,0x45,0x89,0x4a,0x08,0x48,0x8d,0x54,0x24,0x30,0x88,0x0a,0x44,0x89,0x42,0x04,0x48,0x8b,0xc8,0x48,0x8d,0x54,0x24,0x38,0x4c,0x8b,0x4c,0x24,0x30,0x45,0x33,0xc0,0xe8,0xc4,0x24,0x7d,0xff,0x48,0x8b,0x4c,0x24,0x48,0x8b,0x44,0x24,0x50,0x48,0x8d,0x54,0x24,0x20,0x48,0x89,0x0a,0x89,0x42,0x08,0x48,0x8d,0x4c,0x24,0x20,0xe8,0xee,0xf0,0xff,0xff,0x0f,0xb7,0xc0,0x48,0x83,0xc4,0x58,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h lea rdi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 20}
000eh mov ecx,0eh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 0e 00 00 00}
0013h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0015h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
0017h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001ah test rcx,rcx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c9}
001dh jne short 0026h                         ; JNE rel8 || 75 cb || encoded[2]{75 07}
001fh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0021h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0024h jmp short 002eh                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
0026h lea rdx,[rcx+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 51 10}
002ah mov r9d,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 49 08}
002eh xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
0030h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0033h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0038h lea r10,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 54 24 38}
003dh mov [r10],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 12}
0040h mov [r10+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{45 89 4a 08}
0044h lea rdx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 30}
0049h mov [rdx],cl                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 0a}
004bh mov [rdx+4],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 42 04}
004fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0052h lea rdx,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 38}
0057h mov r9,[rsp+30h]                        ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{4c 8b 4c 24 30}
005ch xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
005fh call 7ff7c7a5c758h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 24 7d ff}
0064h mov rcx,[rsp+48h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 4c 24 48}
0069h mov eax,[rsp+50h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 50}
006dh lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
0072h mov [rdx],rcx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 0a}
0075h mov [rdx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 42 08}
0078h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
007dh call 7ff7c82893a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee f0 ff ff}
0082h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0085h add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0089h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
008ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<uint> generic<uint>(BitString src), hex://bitvectors/bitvector?generic#generic_g[32u]()
; generic_g[32u]()[138] = {0x57,0x56,0x48,0x83,0xec,0x58,0x48,0x8b,0xf1,0x48,0x8d,0x7c,0x24,0x20,0xb9,0x0e,0x00,0x00,0x00,0x33,0xc0,0xf3,0xab,0x48,0x8b,0xce,0x48,0x85,0xc9,0x75,0x07,0x33,0xd2,0x45,0x33,0xc9,0xeb,0x08,0x48,0x8d,0x51,0x10,0x44,0x8b,0x49,0x08,0x33,0xc9,0x45,0x33,0xc0,0x48,0x8d,0x44,0x24,0x48,0x4c,0x8d,0x54,0x24,0x38,0x49,0x89,0x12,0x45,0x89,0x4a,0x08,0x48,0x8d,0x54,0x24,0x30,0x88,0x0a,0x44,0x89,0x42,0x04,0x48,0x8b,0xc8,0x48,0x8d,0x54,0x24,0x38,0x4c,0x8b,0x4c,0x24,0x30,0x45,0x33,0xc0,0xe8,0x14,0x24,0x7d,0xff,0x48,0x8b,0x4c,0x24,0x48,0x8b,0x44,0x24,0x50,0x48,0x8d,0x54,0x24,0x20,0x48,0x89,0x0a,0x89,0x42,0x08,0x48,0x8d,0x4c,0x24,0x20,0xe8,0x5e,0xf0,0xff,0xff,0x90,0x48,0x83,0xc4,0x58,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h lea rdi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 20}
000eh mov ecx,0eh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 0e 00 00 00}
0013h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0015h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
0017h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001ah test rcx,rcx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c9}
001dh jne short 0026h                         ; JNE rel8 || 75 cb || encoded[2]{75 07}
001fh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0021h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0024h jmp short 002eh                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
0026h lea rdx,[rcx+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 51 10}
002ah mov r9d,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 49 08}
002eh xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
0030h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0033h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0038h lea r10,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 54 24 38}
003dh mov [r10],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 12}
0040h mov [r10+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{45 89 4a 08}
0044h lea rdx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 30}
0049h mov [rdx],cl                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 0a}
004bh mov [rdx+4],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 42 04}
004fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0052h lea rdx,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 38}
0057h mov r9,[rsp+30h]                        ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{4c 8b 4c 24 30}
005ch xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
005fh call 7ff7c7a5c758h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 24 7d ff}
0064h mov rcx,[rsp+48h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 4c 24 48}
0069h mov eax,[rsp+50h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 50}
006dh lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
0072h mov [rdx],rcx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 0a}
0075h mov [rdx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 42 08}
0078h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
007dh call 7ff7c82893c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e f0 ff ff}
0082h nop                                     ; NOP || o32 90 || encoded[1]{90}
0083h add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0087h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0088h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0089h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<ulong> generic<ulong>(BitString src), hex://bitvectors/bitvector?generic#generic_g[64u]()
; generic_g[64u]()[138] = {0x57,0x56,0x48,0x83,0xec,0x58,0x48,0x8b,0xf1,0x48,0x8d,0x7c,0x24,0x20,0xb9,0x0e,0x00,0x00,0x00,0x33,0xc0,0xf3,0xab,0x48,0x8b,0xce,0x48,0x85,0xc9,0x75,0x07,0x33,0xd2,0x45,0x33,0xc9,0xeb,0x08,0x48,0x8d,0x51,0x10,0x44,0x8b,0x49,0x08,0x33,0xc9,0x45,0x33,0xc0,0x48,0x8d,0x44,0x24,0x48,0x4c,0x8d,0x54,0x24,0x38,0x49,0x89,0x12,0x45,0x89,0x4a,0x08,0x48,0x8d,0x54,0x24,0x30,0x88,0x0a,0x44,0x89,0x42,0x04,0x48,0x8b,0xc8,0x48,0x8d,0x54,0x24,0x38,0x4c,0x8b,0x4c,0x24,0x30,0x45,0x33,0xc0,0xe8,0x64,0x23,0x7d,0xff,0x48,0x8b,0x4c,0x24,0x48,0x8b,0x44,0x24,0x50,0x48,0x8d,0x54,0x24,0x20,0x48,0x89,0x0a,0x89,0x42,0x08,0x48,0x8d,0x4c,0x24,0x20,0xe8,0x36,0xf9,0xff,0xff,0x90,0x48,0x83,0xc4,0x58,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h lea rdi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 20}
000eh mov ecx,0eh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 0e 00 00 00}
0013h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0015h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
0017h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001ah test rcx,rcx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c9}
001dh jne short 0026h                         ; JNE rel8 || 75 cb || encoded[2]{75 07}
001fh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0021h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0024h jmp short 002eh                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
0026h lea rdx,[rcx+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 51 10}
002ah mov r9d,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 49 08}
002eh xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
0030h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0033h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0038h lea r10,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 54 24 38}
003dh mov [r10],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 12}
0040h mov [r10+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{45 89 4a 08}
0044h lea rdx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 30}
0049h mov [rdx],cl                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 0a}
004bh mov [rdx+4],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 42 04}
004fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0052h lea rdx,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 38}
0057h mov r9,[rsp+30h]                        ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{4c 8b 4c 24 30}
005ch xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
005fh call 7ff7c7a5c758h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 23 7d ff}
0064h mov rcx,[rsp+48h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 4c 24 48}
0069h mov eax,[rsp+50h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 50}
006dh lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
0072h mov [rdx],rcx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 0a}
0075h mov [rdx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 42 08}
0078h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
007dh call 7ff7c8289d48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 f9 ff ff}
0082h nop                                     ; NOP || o32 90 || encoded[1]{90}
0083h add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0087h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0088h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0089h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<byte> inc<byte>(BitVector<byte> x), hex://bitvectors/bitvector?inc#inc_g[8u]()
; inc_g[8u]()[14] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0xff,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<ushort> inc<ushort>(BitVector<ushort> x), hex://bitvectors/bitvector?inc#inc_g[16u]()
; inc_g[16u]()[14] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0xff,0xc0,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
000ah movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<uint> inc<uint>(BitVector<uint> x), hex://bitvectors/bitvector?inc#inc_g[32u]()
; inc_g[32u]()[10] = {0x0f,0x1f,0x44,0x00,0x00,0xff,0xc1,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h inc ecx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c1}
0007h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<ulong> inc<ulong>(BitVector<ulong> x), hex://bitvectors/bitvector?inc#inc_g[64u]()
; inc_g[64u]()[12] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xff,0xc1,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h inc rcx                                 ; INC r/m64 || REX.W FF /0 || encoded[3]{48 ff c1}
0008h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<byte> init<byte>(byte src), hex://bitvectors/bitvector?init#init_g[8u](8u)
; init_g[8u](8u)[12] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<ushort> init<ushort>(ushort src), hex://bitvectors/bitvector?init#init_g[16u](16u)
; init_g[16u](16u)[12] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<uint> init<uint>(uint src), hex://bitvectors/bitvector?init#init_g[32u](32u)
; init_g[32u](32u)[8] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<ulong> init<ulong>(ulong src), hex://bitvectors/bitvector?init#init_g[64u](64u)
; init_g[64u](64u)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<byte> lsbseg<byte>(BitVector<byte> x, byte n), hex://bitvectors/bitvector?lsbseg#lsbseg_g[8u](8u)
; lsbseg_g[8u](8u)[36] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x0f,0xb6,0xd2,0xff,0xca,0x0f,0xb6,0xd2,0xff,0xc2,0x0f,0xb6,0xd2,0xc1,0xe2,0x08,0x0f,0xb7,0xd2,0xc4,0xe2,0x68,0xf7,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh dec edx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff ca}
000dh movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0010h inc edx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c2}
0012h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0015h shl edx,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 08}
0018h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
001bh bextr eax,eax,edx                       ; BEXTR r32a, r/m32, r32b || VEX.LZ.0F38.W0 F7 /r || encoded[5]{c4 e2 68 f7 c0}
0020h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0023h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<ushort> lsbseg<ushort>(BitVector<ushort> x, byte n), hex://bitvectors/bitvector?lsbseg#lsbseg_g[16u](8u)
; lsbseg_g[16u](8u)[36] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x0f,0xb6,0xd2,0xff,0xca,0x0f,0xb6,0xd2,0xff,0xc2,0x0f,0xb6,0xd2,0xc1,0xe2,0x08,0x0f,0xb7,0xd2,0xc4,0xe2,0x68,0xf7,0xc0,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh dec edx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff ca}
000dh movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0010h inc edx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c2}
0012h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0015h shl edx,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 08}
0018h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
001bh bextr eax,eax,edx                       ; BEXTR r32a, r/m32, r32b || VEX.LZ.0F38.W0 F7 /r || encoded[5]{c4 e2 68 f7 c0}
0020h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0023h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<uint> lsbseg<uint>(BitVector<uint> x, byte n), hex://bitvectors/bitvector?lsbseg#lsbseg_g[32u](8u)
; lsbseg_g[32u](8u)[30] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc2,0xff,0xc8,0x0f,0xb6,0xc0,0xff,0xc0,0x0f,0xb6,0xc0,0xc1,0xe0,0x08,0x0f,0xb7,0xc0,0xc4,0xe2,0x78,0xf7,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0008h dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
000fh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0012h shl eax,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e0 08}
0015h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0018h bextr eax,ecx,eax                       ; BEXTR r32a, r/m32, r32b || VEX.LZ.0F38.W0 F7 /r || encoded[5]{c4 e2 78 f7 c1}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<ulong> lsbseg<ulong>(BitVector<ulong> x, byte n), hex://bitvectors/bitvector?lsbseg#lsbseg_g[64u](8u)
; lsbseg_g[64u](8u)[30] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc2,0xff,0xc8,0x0f,0xb6,0xc0,0xff,0xc0,0x0f,0xb6,0xc0,0xc1,0xe0,0x08,0x0f,0xb7,0xc0,0xc4,0xe2,0xf8,0xf7,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0008h dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
000fh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0012h shl eax,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e0 08}
0015h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0018h bextr rax,rcx,rax                       ; BEXTR r64a, r/m64, r64b || VEX.LZ.0F38.W1 F7 /r || encoded[5]{c4 e2 f8 f7 c1}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit modprod<byte>(BitVector<byte> x, BitVector<byte> y), hex://bitvectors/bitvector?modprod#modprod_g[8u]()
; modprod_g[8u]()[102] = {0x56,0x0f,0x1f,0x40,0x00,0x33,0xc0,0x45,0x33,0xc0,0x44,0x0f,0xb6,0xc9,0x0f,0xb6,0xd2,0x45,0x8b,0xd1,0x45,0x0f,0xb6,0xd8,0x41,0x83,0xe3,0x1f,0x41,0x8b,0xcb,0x41,0xd3,0xea,0x41,0x83,0xe2,0x01,0x45,0x85,0xd2,0x75,0x05,0x45,0x33,0xd2,0xeb,0x06,0x41,0xba,0x01,0x00,0x00,0x00,0x8b,0xf2,0x41,0x8b,0xcb,0xd3,0xee,0x83,0xe6,0x01,0x85,0xf6,0x75,0x04,0x33,0xc9,0xeb,0x05,0xb9,0x01,0x00,0x00,0x00,0x41,0x0f,0xaf,0xca,0x03,0xc1,0x41,0xff,0xc0,0x41,0x83,0xf8,0x08,0x7c,0xb5,0xa8,0x01,0x0f,0x95,0xc0,0x0f,0xb6,0xc0,0x5e,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
000ah movzx r9d,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{44 0f b6 c9}
000eh movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0011h mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
0014h movzx r11d,r8b                          ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 d8}
0018h and r11d,1fh                            ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e3 1f}
001ch mov ecx,r11d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b cb}
001fh shr r10d,cl                             ; SHR r/m32, CL || o32 D3 /5 || encoded[3]{41 d3 ea}
0022h and r10d,1                              ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e2 01}
0026h test r10d,r10d                          ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 d2}
0029h jne short 0030h                         ; JNE rel8 || 75 cb || encoded[2]{75 05}
002bh xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
002eh jmp short 0036h                         ; JMP rel8 || EB cb || encoded[2]{eb 06}
0030h mov r10d,1                              ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 ba 01 00 00 00}
0036h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0038h mov ecx,r11d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b cb}
003bh shr esi,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 ee}
003dh and esi,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e6 01}
0040h test esi,esi                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 f6}
0042h jne short 0048h                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
0044h xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
0046h jmp short 004dh                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
0048h mov ecx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 01 00 00 00}
004dh imul ecx,r10d                           ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{41 0f af ca}
0051h add eax,ecx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c1}
0053h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
0056h cmp r8d,8                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 08}
005ah jl short 0011h                          ; JL rel8 || 7C cb || encoded[2]{7c b5}
005ch test al,1                               ; TEST AL, imm8 || A8 ib || encoded[2]{a8 01}
005eh setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0061h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0064h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0065h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit modprod<ushort>(BitVector<ushort> x, BitVector<ushort> y), hex://bitvectors/bitvector?modprod#modprod_g[16u]()
; modprod_g[16u]()[102] = {0x56,0x0f,0x1f,0x40,0x00,0x33,0xc0,0x45,0x33,0xc0,0x44,0x0f,0xb7,0xc9,0x0f,0xb7,0xd2,0x45,0x8b,0xd1,0x45,0x0f,0xb6,0xd8,0x41,0x83,0xe3,0x1f,0x41,0x8b,0xcb,0x41,0xd3,0xea,0x41,0x83,0xe2,0x01,0x45,0x85,0xd2,0x75,0x05,0x45,0x33,0xd2,0xeb,0x06,0x41,0xba,0x01,0x00,0x00,0x00,0x8b,0xf2,0x41,0x8b,0xcb,0xd3,0xee,0x83,0xe6,0x01,0x85,0xf6,0x75,0x04,0x33,0xc9,0xeb,0x05,0xb9,0x01,0x00,0x00,0x00,0x41,0x0f,0xaf,0xca,0x03,0xc1,0x41,0xff,0xc0,0x41,0x83,0xf8,0x10,0x7c,0xb5,0xa8,0x01,0x0f,0x95,0xc0,0x0f,0xb6,0xc0,0x5e,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
000ah movzx r9d,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c9}
000eh movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0011h mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
0014h movzx r11d,r8b                          ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 d8}
0018h and r11d,1fh                            ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e3 1f}
001ch mov ecx,r11d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b cb}
001fh shr r10d,cl                             ; SHR r/m32, CL || o32 D3 /5 || encoded[3]{41 d3 ea}
0022h and r10d,1                              ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e2 01}
0026h test r10d,r10d                          ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 d2}
0029h jne short 0030h                         ; JNE rel8 || 75 cb || encoded[2]{75 05}
002bh xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
002eh jmp short 0036h                         ; JMP rel8 || EB cb || encoded[2]{eb 06}
0030h mov r10d,1                              ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 ba 01 00 00 00}
0036h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0038h mov ecx,r11d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b cb}
003bh shr esi,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 ee}
003dh and esi,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e6 01}
0040h test esi,esi                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 f6}
0042h jne short 0048h                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
0044h xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
0046h jmp short 004dh                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
0048h mov ecx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 01 00 00 00}
004dh imul ecx,r10d                           ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{41 0f af ca}
0051h add eax,ecx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c1}
0053h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
0056h cmp r8d,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 10}
005ah jl short 0011h                          ; JL rel8 || 7C cb || encoded[2]{7c b5}
005ch test al,1                               ; TEST AL, imm8 || A8 ib || encoded[2]{a8 01}
005eh setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0061h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0064h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0065h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit modprod<uint>(BitVector<uint> x, BitVector<uint> y), hex://bitvectors/bitvector?modprod#modprod_g[32u]()
; modprod_g[32u]()[99] = {0x56,0x8b,0xc1,0x66,0x90,0x45,0x33,0xc0,0x45,0x33,0xc9,0x45,0x0f,0xb6,0xd1,0x41,0x83,0xe2,0x1f,0x41,0x8b,0xca,0x44,0x8b,0xd8,0x41,0xd3,0xeb,0x41,0x83,0xe3,0x01,0x45,0x85,0xdb,0x75,0x05,0x45,0x33,0xdb,0xeb,0x06,0x41,0xbb,0x01,0x00,0x00,0x00,0x41,0x8b,0xca,0x8b,0xf2,0xd3,0xee,0x83,0xe6,0x01,0x85,0xf6,0x75,0x04,0x33,0xc9,0xeb,0x05,0xb9,0x01,0x00,0x00,0x00,0x41,0x0f,0xaf,0xcb,0x44,0x03,0xc1,0x41,0xff,0xc1,0x41,0x83,0xf9,0x20,0x7c,0xb4,0x41,0xf6,0xc0,0x01,0x0f,0x95,0xc0,0x0f,0xb6,0xc0,0x5e,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0008h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
000bh movzx r10d,r9b                          ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 d1}
000fh and r10d,1fh                            ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e2 1f}
0013h mov ecx,r10d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b ca}
0016h mov r11d,eax                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b d8}
0019h shr r11d,cl                             ; SHR r/m32, CL || o32 D3 /5 || encoded[3]{41 d3 eb}
001ch and r11d,1                              ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e3 01}
0020h test r11d,r11d                          ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 db}
0023h jne short 002ah                         ; JNE rel8 || 75 cb || encoded[2]{75 05}
0025h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0028h jmp short 0030h                         ; JMP rel8 || EB cb || encoded[2]{eb 06}
002ah mov r11d,1                              ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 bb 01 00 00 00}
0030h mov ecx,r10d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b ca}
0033h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0035h shr esi,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 ee}
0037h and esi,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e6 01}
003ah test esi,esi                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 f6}
003ch jne short 0042h                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
003eh xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
0040h jmp short 0047h                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
0042h mov ecx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 01 00 00 00}
0047h imul ecx,r11d                           ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{41 0f af cb}
004bh add r8d,ecx                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{44 03 c1}
004eh inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0051h cmp r9d,20h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f9 20}
0055h jl short 000bh                          ; JL rel8 || 7C cb || encoded[2]{7c b4}
0057h test r8b,1                              ; TEST r/m8, imm8 || F6 /0 ib || encoded[4]{41 f6 c0 01}
005bh setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
005eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0061h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0062h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit modprod<ulong>(BitVector<ulong> x, BitVector<ulong> y), hex://bitvectors/bitvector?modprod#modprod_g[64u]()
; modprod_g[64u]()[104] = {0x56,0x48,0x8b,0xc1,0x90,0x45,0x33,0xc0,0x45,0x33,0xc9,0x45,0x0f,0xb6,0xd1,0x41,0x83,0xe2,0x3f,0x41,0x8b,0xca,0x4c,0x8b,0xd8,0x49,0xd3,0xeb,0x41,0x8b,0xcb,0x83,0xe1,0x01,0x85,0xc9,0x75,0x05,0x45,0x33,0xdb,0xeb,0x06,0x41,0xbb,0x01,0x00,0x00,0x00,0x41,0x8b,0xca,0x48,0x8b,0xf2,0x48,0xd3,0xee,0x8b,0xce,0x83,0xe1,0x01,0x85,0xc9,0x75,0x04,0x33,0xc9,0xeb,0x05,0xb9,0x01,0x00,0x00,0x00,0x41,0x0f,0xaf,0xcb,0x44,0x03,0xc1,0x41,0xff,0xc1,0x41,0x83,0xf9,0x40,0x7c,0xaf,0x41,0xf6,0xc0,0x01,0x0f,0x95,0xc0,0x0f,0xb6,0xc0,0x5e,0xc3}
; TermCode = CTC_RET_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0008h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
000bh movzx r10d,r9b                          ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 d1}
000fh and r10d,3fh                            ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e2 3f}
0013h mov ecx,r10d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b ca}
0016h mov r11,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b d8}
0019h shr r11,cl                              ; SHR r/m64, CL || REX.W D3 /5 || encoded[3]{49 d3 eb}
001ch mov ecx,r11d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b cb}
001fh and ecx,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 01}
0022h test ecx,ecx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c9}
0024h jne short 002bh                         ; JNE rel8 || 75 cb || encoded[2]{75 05}
0026h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0029h jmp short 0031h                         ; JMP rel8 || EB cb || encoded[2]{eb 06}
002bh mov r11d,1                              ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 bb 01 00 00 00}
0031h mov ecx,r10d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b ca}
0034h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0037h shr rsi,cl                              ; SHR r/m64, CL || REX.W D3 /5 || encoded[3]{48 d3 ee}
003ah mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
003ch and ecx,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 01}
003fh test ecx,ecx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c9}
0041h jne short 0047h                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
0043h xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
0045h jmp short 004ch                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
0047h mov ecx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 01 00 00 00}
004ch imul ecx,r11d                           ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{41 0f af cb}
0050h add r8d,ecx                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{44 03 c1}
0053h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0056h cmp r9d,40h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f9 40}
005ah jl short 000bh                          ; JL rel8 || 7C cb || encoded[2]{7c af}
005ch test r8b,1                              ; TEST r/m8, imm8 || F6 /0 ib || encoded[4]{41 f6 c0 01}
0060h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0063h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0066h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0067h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<byte> add<byte>(BitVector<byte> x, BitVector<byte> y), hex://bitvectors/bitvector?add#add_g[8u]()
; add_g[8u]()[20] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x0f,0xb6,0xd2,0x0f,0xb6,0xc0,0x03,0xc2,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<ushort> add<ushort>(BitVector<ushort> x, BitVector<ushort> y), hex://bitvectors/bitvector?add#add_g[16u]()
; add_g[16u]()[20] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x0f,0xb7,0xd2,0x0f,0xb7,0xc0,0x03,0xc2,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
000eh add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
0010h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<uint> add<uint>(BitVector<uint> x, BitVector<uint> y), hex://bitvectors/bitvector?add#add_g[32u]()
; add_g[32u]()[10] = {0x0f,0x1f,0x44,0x00,0x00,0x03,0xd1,0x8b,0xc2,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h add edx,ecx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 d1}
0007h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<ulong> add<ulong>(BitVector<ulong> x, BitVector<ulong> y), hex://bitvectors/bitvector?add#add_g[64u]()
; add_g[64u]()[12] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x03,0xd1,0x48,0x8b,0xc2,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h add rdx,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d1}
0008h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<byte> alloc<byte>(byte fill), hex://bitvectors/bitvector?alloc#alloc_g[8u](8u)
; alloc_g[8u](8u)[12] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<ushort> alloc<ushort>(ushort fill), hex://bitvectors/bitvector?alloc#alloc_g[16u](16u)
; alloc_g[16u](16u)[12] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<uint> alloc<uint>(uint fill), hex://bitvectors/bitvector?alloc#alloc_g[32u](32u)
; alloc_g[32u](32u)[8] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<ulong> alloc<ulong>(ulong fill), hex://bitvectors/bitvector?alloc#alloc_g[64u](64u)
; alloc_g[64u](64u)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<byte> alt<byte>(bit parity), hex://bitvectors/bitvector?alt#alt_g[8u](1u)
; alt_g[8u](1u)[28] = {0x0f,0x1f,0x44,0x00,0x00,0x85,0xc9,0x75,0x07,0xb8,0xaa,0x00,0x00,0x00,0xeb,0x05,0xb8,0x55,0x00,0x00,0x00,0x0f,0xb6,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test ecx,ecx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c9}
0007h jne short 0010h                         ; JNE rel8 || 75 cb || encoded[2]{75 07}
0009h mov eax,0aah                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 aa 00 00 00}
000eh jmp short 0015h                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
0010h mov eax,55h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 55 00 00 00}
0015h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0018h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<ushort> alt<ushort>(bit parity), hex://bitvectors/bitvector?alt#alt_g[16u](1u)
; alt_g[16u](1u)[28] = {0x0f,0x1f,0x44,0x00,0x00,0x85,0xc9,0x75,0x07,0xb8,0xaa,0xaa,0x00,0x00,0xeb,0x05,0xb8,0x55,0x55,0x00,0x00,0x0f,0xb7,0xc0,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test ecx,ecx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c9}
0007h jne short 0010h                         ; JNE rel8 || 75 cb || encoded[2]{75 07}
0009h mov eax,0aaaah                          ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 aa aa 00 00}
000eh jmp short 0015h                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
0010h mov eax,5555h                           ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 55 55 00 00}
0015h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0018h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<uint> alt<uint>(bit parity), hex://bitvectors/bitvector?alt#alt_g[32u](1u)
; alt_g[32u](1u)[22] = {0x0f,0x1f,0x44,0x00,0x00,0x85,0xc9,0x75,0x07,0xb8,0xaa,0xaa,0xaa,0xaa,0xeb,0x05,0xb8,0x55,0x55,0x55,0x55,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test ecx,ecx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c9}
0007h jne short 0010h                         ; JNE rel8 || 75 cb || encoded[2]{75 07}
0009h mov eax,0aaaaaaaah                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 aa aa aa aa}
000eh jmp short 0015h                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
0010h mov eax,55555555h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 55 55 55 55}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<ulong> alt<ulong>(bit parity), hex://bitvectors/bitvector?alt#alt_g[64u](1u)
; alt_g[64u](1u)[32] = {0x0f,0x1f,0x44,0x00,0x00,0x85,0xc9,0x75,0x0c,0x48,0xb8,0xaa,0xaa,0xaa,0xaa,0xaa,0xaa,0xaa,0xaa,0xeb,0x0a,0x48,0xb8,0x55,0x55,0x55,0x55,0x55,0x55,0x55,0x55,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test ecx,ecx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c9}
0007h jne short 0015h                         ; JNE rel8 || 75 cb || encoded[2]{75 0c}
0009h mov rax,0aaaaaaaaaaaaaaaah              ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 aa aa aa aa aa aa aa aa}
0013h jmp short 001fh                         ; JMP rel8 || EB cb || encoded[2]{eb 0a}
0015h mov rax,5555555555555555h               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 55 55 55 55 55 55 55 55}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<byte> and<byte>(BitVector<byte> x, BitVector<byte> y), hex://bitvectors/bitvector?and#and_g[8u]()
; and_g[8u]()[20] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x0f,0xb6,0xd2,0x0f,0xb6,0xc0,0x23,0xc2,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<ushort> and<ushort>(BitVector<ushort> x, BitVector<ushort> y), hex://bitvectors/bitvector?and#and_g[16u]()
; and_g[16u]()[20] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x0f,0xb7,0xd2,0x0f,0xb7,0xc0,0x23,0xc2,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
000eh and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0010h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<uint> and<uint>(BitVector<uint> x, BitVector<uint> y), hex://bitvectors/bitvector?and#and_g[32u]()
; and_g[32u]()[10] = {0x0f,0x1f,0x44,0x00,0x00,0x23,0xd1,0x8b,0xc2,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h and edx,ecx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 d1}
0007h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<ulong> and<ulong>(BitVector<ulong> x, BitVector<ulong> y), hex://bitvectors/bitvector?and#and_g[64u]()
; and_g[64u]()[12] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x23,0xd1,0x48,0x8b,0xc2,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h and rdx,rcx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 d1}
0008h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<byte> cimpl<byte>(BitVector<byte> x, BitVector<byte> y), hex://bitvectors/bitvector?cimpl#cimpl_g[8u]()
; cimpl_g[8u]()[22] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x0f,0xb6,0xd2,0x0f,0xb6,0xc0,0xf7,0xd0,0x0b,0xc2,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0010h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0012h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<ushort> cimpl<ushort>(BitVector<ushort> x, BitVector<ushort> y), hex://bitvectors/bitvector?cimpl#cimpl_g[16u]()
; cimpl_g[16u]()[22] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x0f,0xb7,0xd2,0x0f,0xb7,0xc0,0xf7,0xd0,0x0b,0xc2,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
000eh not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0010h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0012h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<uint> cimpl<uint>(BitVector<uint> x, BitVector<uint> y), hex://bitvectors/bitvector?cimpl#cimpl_g[32u]()
; cimpl_g[32u]()[12] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0xf7,0xd0,0x0b,0xc2,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0009h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<ulong> cimpl<ulong>(BitVector<ulong> x, BitVector<ulong> y), hex://bitvectors/bitvector?cimpl#cimpl_g[64u]()
; cimpl_g[64u]()[15] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0x48,0xf7,0xd0,0x48,0x0b,0xc2,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
000bh or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<byte> cnonimpl<byte>(BitVector<byte> x, BitVector<byte> y), hex://bitvectors/bitvector?cnonimpl#cnonimpl_g[8u]()
; cnonimpl_g[8u]()[23] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x0f,0xb6,0xd2,0x0f,0xb6,0xc0,0xc4,0xe2,0x68,0xf2,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh andn eax,edx,eax                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 68 f2 c0}
0013h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<ushort> cnonimpl<ushort>(BitVector<ushort> x, BitVector<ushort> y), hex://bitvectors/bitvector?cnonimpl#cnonimpl_g[16u]()
; cnonimpl_g[16u]()[23] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x0f,0xb7,0xd2,0x0f,0xb7,0xc0,0xc4,0xe2,0x68,0xf2,0xc0,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
000eh andn eax,edx,eax                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 68 f2 c0}
0013h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<uint> cnonimpl<uint>(BitVector<uint> x, BitVector<uint> y), hex://bitvectors/bitvector?cnonimpl#cnonimpl_g[32u]()
; cnonimpl_g[32u]()[11] = {0x0f,0x1f,0x44,0x00,0x00,0xc4,0xe2,0x68,0xf2,0xc1,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h andn eax,edx,ecx                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 68 f2 c1}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<ulong> cnonimpl<ulong>(BitVector<ulong> x, BitVector<ulong> y), hex://bitvectors/bitvector?cnonimpl#cnonimpl_g[64u]()
; cnonimpl_g[64u]()[11] = {0x0f,0x1f,0x44,0x00,0x00,0xc4,0xe2,0xe8,0xf2,0xc1,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h andn rax,rdx,rcx                        ; ANDN r64a, r64b, r/m64 || VEX.LZ.0F38.W1 F2 /r || encoded[5]{c4 e2 e8 f2 c1}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<byte> true<byte>(BitVector<byte> x, BitVector<byte> y), hex://bitvectors/bitvector?true#true_g[8u]()
; true_g[8u]()[19] = {0x0f,0x1f,0x44,0x00,0x00,0x89,0x4c,0x24,0x08,0x89,0x54,0x24,0x10,0xb8,0xff,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov [rsp+8],ecx                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 4c 24 08}
0009h mov [rsp+10h],edx                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 54 24 10}
000dh mov eax,0ffh                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff 00 00 00}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<ushort> true<ushort>(BitVector<ushort> x, BitVector<ushort> y), hex://bitvectors/bitvector?true#true_g[16u]()
; true_g[16u]()[19] = {0x0f,0x1f,0x44,0x00,0x00,0x89,0x4c,0x24,0x08,0x89,0x54,0x24,0x10,0xb8,0xff,0xff,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov [rsp+8],ecx                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 4c 24 08}
0009h mov [rsp+10h],edx                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 54 24 10}
000dh mov eax,0ffffh                          ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff 00 00}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<uint> true<uint>(BitVector<uint> x, BitVector<uint> y), hex://bitvectors/bitvector?true#true_g[32u]()
; true_g[32u]()[19] = {0x0f,0x1f,0x44,0x00,0x00,0x89,0x4c,0x24,0x08,0x89,0x54,0x24,0x10,0xb8,0xff,0xff,0xff,0xff,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov [rsp+8],ecx                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 4c 24 08}
0009h mov [rsp+10h],edx                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 54 24 10}
000dh mov eax,0ffffffffh                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff ff ff}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<ulong> true<ulong>(BitVector<ulong> x, BitVector<ulong> y), hex://bitvectors/bitvector?true#true_g[64u]()
; true_g[64u]()[26] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x89,0x4c,0x24,0x08,0x48,0x89,0x54,0x24,0x10,0x48,0xb8,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov [rsp+8],rcx                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 4c 24 08}
000ah mov [rsp+10h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 10}
000fh mov rax,0ffffffffffffffffh              ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 ff ff ff ff ff ff ff ff}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<byte> false<byte>(BitVector<byte> x, BitVector<byte> y), hex://bitvectors/bitvector?false#false_g[8u]()
; false_g[8u]()[16] = {0x0f,0x1f,0x44,0x00,0x00,0x89,0x4c,0x24,0x08,0x89,0x54,0x24,0x10,0x33,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov [rsp+8],ecx                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 4c 24 08}
0009h mov [rsp+10h],edx                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 54 24 10}
000dh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<ushort> false<ushort>(BitVector<ushort> x, BitVector<ushort> y), hex://bitvectors/bitvector?false#false_g[16u]()
; false_g[16u]()[16] = {0x0f,0x1f,0x44,0x00,0x00,0x89,0x4c,0x24,0x08,0x89,0x54,0x24,0x10,0x33,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov [rsp+8],ecx                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 4c 24 08}
0009h mov [rsp+10h],edx                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 54 24 10}
000dh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<uint> false<uint>(BitVector<uint> x, BitVector<uint> y), hex://bitvectors/bitvector?false#false_g[32u]()
; false_g[32u]()[16] = {0x0f,0x1f,0x44,0x00,0x00,0x89,0x4c,0x24,0x08,0x89,0x54,0x24,0x10,0x33,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov [rsp+8],ecx                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 4c 24 08}
0009h mov [rsp+10h],edx                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 54 24 10}
000dh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<ulong> false<ulong>(BitVector<ulong> x, BitVector<ulong> y), hex://bitvectors/bitvector?false#false_g[64u]()
; false_g[64u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x89,0x4c,0x24,0x08,0x48,0x89,0x54,0x24,0x10,0x33,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov [rsp+8],rcx                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 4c 24 08}
000ah mov [rsp+10h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 10}
000fh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<byte> impl<byte>(BitVector<byte> x, BitVector<byte> y), hex://bitvectors/bitvector?impl#impl_g[8u]()
; impl_g[8u]()[22] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x0f,0xb6,0xd2,0x0f,0xb6,0xc0,0xf7,0xd2,0x0b,0xc2,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
0010h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0012h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<ushort> impl<ushort>(BitVector<ushort> x, BitVector<ushort> y), hex://bitvectors/bitvector?impl#impl_g[16u]()
; impl_g[16u]()[22] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x0f,0xb7,0xd2,0x0f,0xb7,0xc0,0xf7,0xd2,0x0b,0xc2,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
000eh not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
0010h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0012h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<uint> impl<uint>(BitVector<uint> x, BitVector<uint> y), hex://bitvectors/bitvector?impl#impl_g[32u]()
; impl_g[32u]()[12] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc2,0xf7,0xd0,0x0b,0xc1,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0009h or eax,ecx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c1}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<ulong> impl<ulong>(BitVector<ulong> x, BitVector<ulong> y), hex://bitvectors/bitvector?impl#impl_g[64u]()
; impl_g[64u]()[15] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc2,0x48,0xf7,0xd0,0x48,0x0b,0xc1,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0008h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
000bh or rax,rcx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c1}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<byte> nand<byte>(BitVector<byte> x, BitVector<byte> y), hex://bitvectors/bitvector?nand#nand_g[8u]()
; nand_g[8u]()[22] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x0f,0xb6,0xd2,0x0f,0xb6,0xc0,0x23,0xc2,0xf7,0xd0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0010h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0012h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<ushort> nand<ushort>(BitVector<ushort> x, BitVector<ushort> y), hex://bitvectors/bitvector?nand#nand_g[16u]()
; nand_g[16u]()[22] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x0f,0xb7,0xd2,0x0f,0xb7,0xc0,0x23,0xc2,0xf7,0xd0,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
000eh and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0010h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0012h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<uint> nand<uint>(BitVector<uint> x, BitVector<uint> y), hex://bitvectors/bitvector?nand#nand_g[32u]()
; nand_g[32u]()[12] = {0x0f,0x1f,0x44,0x00,0x00,0x23,0xd1,0x8b,0xc2,0xf7,0xd0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h and edx,ecx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 d1}
0007h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0009h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<ulong> nand<ulong>(BitVector<ulong> x, BitVector<ulong> y), hex://bitvectors/bitvector?nand#nand_g[64u]()
; nand_g[64u]()[15] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x23,0xd1,0x48,0x8b,0xc2,0x48,0xf7,0xd0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h and rdx,rcx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 d1}
0008h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
000bh not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<byte> nonimpl<byte>(BitVector<byte> x, BitVector<byte> y), hex://bitvectors/bitvector?nonimpl#nonimpl_g[8u]()
; nonimpl_g[8u]()[23] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x0f,0xb6,0xd2,0x0f,0xb6,0xc0,0xc4,0xe2,0x78,0xf2,0xc2,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh andn eax,eax,edx                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 78 f2 c2}
0013h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<ushort> nonimpl<ushort>(BitVector<ushort> x, BitVector<ushort> y), hex://bitvectors/bitvector?nonimpl#nonimpl_g[16u]()
; nonimpl_g[16u]()[23] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x0f,0xb7,0xd2,0x0f,0xb7,0xc0,0xc4,0xe2,0x78,0xf2,0xc2,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
000eh andn eax,eax,edx                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 78 f2 c2}
0013h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<uint> nonimpl<uint>(BitVector<uint> x, BitVector<uint> y), hex://bitvectors/bitvector?nonimpl#nonimpl_g[32u]()
; nonimpl_g[32u]()[11] = {0x0f,0x1f,0x44,0x00,0x00,0xc4,0xe2,0x70,0xf2,0xc2,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h andn eax,ecx,edx                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 70 f2 c2}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<ulong> nonimpl<ulong>(BitVector<ulong> x, BitVector<ulong> y), hex://bitvectors/bitvector?nonimpl#nonimpl_g[64u]()
; nonimpl_g[64u]()[11] = {0x0f,0x1f,0x44,0x00,0x00,0xc4,0xe2,0xf0,0xf2,0xc2,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h andn rax,rcx,rdx                        ; ANDN r64a, r64b, r/m64 || VEX.LZ.0F38.W1 F2 /r || encoded[5]{c4 e2 f0 f2 c2}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<byte> nor<byte>(BitVector<byte> x, BitVector<byte> y), hex://bitvectors/bitvector?nor#nor_g[8u]()
; nor_g[8u]()[22] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x0f,0xb6,0xd2,0x0f,0xb6,0xc0,0x0b,0xc2,0xf7,0xd0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0010h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0012h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<ushort> nor<ushort>(BitVector<ushort> x, BitVector<ushort> y), hex://bitvectors/bitvector?nor#nor_g[16u]()
; nor_g[16u]()[22] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x0f,0xb7,0xd2,0x0f,0xb7,0xc0,0x0b,0xc2,0xf7,0xd0,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
000eh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0010h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0012h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<uint> nor<uint>(BitVector<uint> x, BitVector<uint> y), hex://bitvectors/bitvector?nor#nor_g[32u]()
; nor_g[32u]()[12] = {0x0f,0x1f,0x44,0x00,0x00,0x0b,0xd1,0x8b,0xc2,0xf7,0xd0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h or edx,ecx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b d1}
0007h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0009h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<ulong> nor<ulong>(BitVector<ulong> x, BitVector<ulong> y), hex://bitvectors/bitvector?nor#nor_g[64u]()
; nor_g[64u]()[15] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0b,0xd1,0x48,0x8b,0xc2,0x48,0xf7,0xd0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h or rdx,rcx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b d1}
0008h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
000bh not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<byte> not<byte>(BitVector<byte> x), hex://bitvectors/bitvector?not#not_g[8u]()
; not_g[8u]()[14] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0xf7,0xd0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<ushort> not<ushort>(BitVector<ushort> x), hex://bitvectors/bitvector?not#not_g[16u]()
; not_g[16u]()[14] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0xf7,0xd0,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000ah movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<uint> not<uint>(BitVector<uint> x), hex://bitvectors/bitvector?not#not_g[32u]()
; not_g[32u]()[10] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0xf7,0xd0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<ulong> not<ulong>(BitVector<ulong> x), hex://bitvectors/bitvector?not#not_g[64u]()
; not_g[64u]()[12] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0x48,0xf7,0xd0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<byte> left<byte>(BitVector<byte> x, BitVector<byte> y), hex://bitvectors/bitvector?left#left_g[8u]()
; left_g[8u]()[13] = {0x0f,0x1f,0x44,0x00,0x00,0x89,0x54,0x24,0x10,0x0f,0xb6,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov [rsp+10h],edx                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 54 24 10}
0009h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<ushort> left<ushort>(BitVector<ushort> x, BitVector<ushort> y), hex://bitvectors/bitvector?left#left_g[16u]()
; left_g[16u]()[13] = {0x0f,0x1f,0x44,0x00,0x00,0x89,0x54,0x24,0x10,0x0f,0xb7,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov [rsp+10h],edx                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 54 24 10}
0009h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<uint> left<uint>(BitVector<uint> x, BitVector<uint> y), hex://bitvectors/bitvector?left#left_g[32u]()
; left_g[32u]()[12] = {0x0f,0x1f,0x44,0x00,0x00,0x89,0x54,0x24,0x10,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov [rsp+10h],edx                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 54 24 10}
0009h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<ulong> left<ulong>(BitVector<ulong> x, BitVector<ulong> y), hex://bitvectors/bitvector?left#left_g[64u]()
; left_g[64u]()[14] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x89,0x54,0x24,0x10,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov [rsp+10h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 10}
000ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<byte> right<byte>(BitVector<byte> x, BitVector<byte> y), hex://bitvectors/bitvector?right#right_g[8u]()
; right_g[8u]()[13] = {0x0f,0x1f,0x44,0x00,0x00,0x89,0x4c,0x24,0x08,0x0f,0xb6,0xc2,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov [rsp+8],ecx                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 4c 24 08}
0009h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<ushort> right<ushort>(BitVector<ushort> x, BitVector<ushort> y), hex://bitvectors/bitvector?right#right_g[16u]()
; right_g[16u]()[13] = {0x0f,0x1f,0x44,0x00,0x00,0x89,0x4c,0x24,0x08,0x0f,0xb7,0xc2,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov [rsp+8],ecx                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 4c 24 08}
0009h movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<uint> right<uint>(BitVector<uint> x, BitVector<uint> y), hex://bitvectors/bitvector?right#right_g[32u]()
; right_g[32u]()[12] = {0x0f,0x1f,0x44,0x00,0x00,0x89,0x4c,0x24,0x08,0x8b,0xc2,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov [rsp+8],ecx                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 4c 24 08}
0009h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<ulong> right<ulong>(BitVector<ulong> x, BitVector<ulong> y), hex://bitvectors/bitvector?right#right_g[64u]()
; right_g[64u]()[14] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x89,0x4c,0x24,0x08,0x48,0x8b,0xc2,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov [rsp+8],rcx                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 4c 24 08}
000ah mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<byte> lnot<byte>(BitVector<byte> x, BitVector<byte> y), hex://bitvectors/bitvector?lnot#lnot_g[8u]()
; lnot_g[8u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x89,0x54,0x24,0x10,0x0f,0xb6,0xc1,0xf7,0xd0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov [rsp+10h],edx                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 54 24 10}
0009h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
000ch not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<ushort> lnot<ushort>(BitVector<ushort> x, BitVector<ushort> y), hex://bitvectors/bitvector?lnot#lnot_g[16u]()
; lnot_g[16u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x89,0x54,0x24,0x10,0x0f,0xb7,0xc1,0xf7,0xd0,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov [rsp+10h],edx                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 54 24 10}
0009h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
000ch not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000eh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<uint> lnot<uint>(BitVector<uint> x, BitVector<uint> y), hex://bitvectors/bitvector?lnot#lnot_g[32u]()
; lnot_g[32u]()[14] = {0x0f,0x1f,0x44,0x00,0x00,0x89,0x54,0x24,0x10,0x8b,0xc1,0xf7,0xd0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov [rsp+10h],edx                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 54 24 10}
0009h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
000bh not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<ulong> lnot<ulong>(BitVector<ulong> x, BitVector<ulong> y), hex://bitvectors/bitvector?lnot#lnot_g[64u]()
; lnot_g[64u]()[17] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x89,0x54,0x24,0x10,0x48,0x8b,0xc1,0x48,0xf7,0xd0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov [rsp+10h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 10}
000ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000dh not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<byte> rnot<byte>(BitVector<byte> x, BitVector<byte> y), hex://bitvectors/bitvector?rnot#rnot_g[8u]()
; rnot_g[8u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x89,0x4c,0x24,0x08,0x0f,0xb6,0xc2,0xf7,0xd0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov [rsp+8],ecx                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 4c 24 08}
0009h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
000ch not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<ushort> rnot<ushort>(BitVector<ushort> x, BitVector<ushort> y), hex://bitvectors/bitvector?rnot#rnot_g[16u]()
; rnot_g[16u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x89,0x4c,0x24,0x08,0x0f,0xb7,0xc2,0xf7,0xd0,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov [rsp+8],ecx                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 4c 24 08}
0009h movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
000ch not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000eh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<uint> rnot<uint>(BitVector<uint> x, BitVector<uint> y), hex://bitvectors/bitvector?rnot#rnot_g[32u]()
; rnot_g[32u]()[14] = {0x0f,0x1f,0x44,0x00,0x00,0x89,0x4c,0x24,0x08,0x8b,0xc2,0xf7,0xd0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov [rsp+8],ecx                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 4c 24 08}
0009h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
000bh not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<ulong> rnot<ulong>(BitVector<ulong> x, BitVector<ulong> y), hex://bitvectors/bitvector?rnot#rnot_g[64u]()
; rnot_g[64u]()[17] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x89,0x4c,0x24,0x08,0x48,0x8b,0xc2,0x48,0xf7,0xd0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov [rsp+8],rcx                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 4c 24 08}
000ah mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
000dh not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<byte> select<byte>(BitVector<byte> x, BitVector<byte> y, BitVector<byte> z), hex://bitvectors/bitvector?select#select_g[8u]()
; select_g[8u]()[34] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x0f,0xb6,0xd2,0x41,0x0f,0xb6,0xc8,0x0f,0xb6,0xc0,0x0f,0xb6,0xd2,0x23,0xd0,0xc4,0xe2,0x78,0xf2,0xc1,0x0b,0xc2,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh movzx ecx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c8}
000fh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0012h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0015h and edx,eax                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 d0}
0017h andn eax,eax,ecx                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 78 f2 c1}
001ch or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
001eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0021h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<ushort> select<ushort>(BitVector<ushort> x, BitVector<ushort> y, BitVector<ushort> z), hex://bitvectors/bitvector?select#select_g[16u]()
; select_g[16u]()[34] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x0f,0xb7,0xd2,0x41,0x0f,0xb7,0xc8,0x0f,0xb7,0xc0,0x0f,0xb7,0xd2,0x23,0xd0,0xc4,0xe2,0x78,0xf2,0xc1,0x0b,0xc2,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh movzx ecx,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 c8}
000fh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0012h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0015h and edx,eax                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 d0}
0017h andn eax,eax,ecx                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 78 f2 c1}
001ch or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
001eh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0021h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<uint> select<uint>(BitVector<uint> x, BitVector<uint> y, BitVector<uint> z), hex://bitvectors/bitvector?select#select_g[32u]()
; select_g[32u]()[15] = {0x0f,0x1f,0x44,0x00,0x00,0x23,0xd1,0xc4,0xc2,0x70,0xf2,0xc0,0x0b,0xc2,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h and edx,ecx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 d1}
0007h andn eax,ecx,r8d                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 c2 70 f2 c0}
000ch or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<ulong> select<ulong>(BitVector<ulong> x, BitVector<ulong> y, BitVector<ulong> z), hex://bitvectors/bitvector?select#select_g[64u]()
; select_g[64u]()[17] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x23,0xd1,0xc4,0xc2,0xf0,0xf2,0xc0,0x48,0x0b,0xc2,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h and rdx,rcx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 d1}
0008h andn rax,rcx,r8                         ; ANDN r64a, r64b, r/m64 || VEX.LZ.0F38.W1 F2 /r || encoded[5]{c4 c2 f0 f2 c0}
000dh or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<byte> xnor<byte>(BitVector<byte> x, BitVector<byte> y), hex://bitvectors/bitvector?xnor#xnor_g[8u]()
; xnor_g[8u]()[22] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x0f,0xb6,0xd2,0x0f,0xb6,0xc0,0x33,0xc2,0xf7,0xd0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
0010h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0012h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<ushort> xnor<ushort>(BitVector<ushort> x, BitVector<ushort> y), hex://bitvectors/bitvector?xnor#xnor_g[16u]()
; xnor_g[16u]()[22] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x0f,0xb7,0xd2,0x0f,0xb7,0xc0,0x33,0xc2,0xf7,0xd0,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
000eh xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
0010h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0012h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<uint> xnor<uint>(BitVector<uint> x, BitVector<uint> y), hex://bitvectors/bitvector?xnor#xnor_g[32u]()
; xnor_g[32u]()[12] = {0x0f,0x1f,0x44,0x00,0x00,0x33,0xd1,0x8b,0xc2,0xf7,0xd0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor edx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d1}
0007h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0009h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<ulong> xnor<ulong>(BitVector<ulong> x, BitVector<ulong> y), hex://bitvectors/bitvector?xnor#xnor_g[64u]()
; xnor_g[64u]()[15] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x33,0xd1,0x48,0x8b,0xc2,0x48,0xf7,0xd0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor rdx,rcx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 d1}
0008h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
000bh not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<byte> xor<byte>(BitVector<byte> x, BitVector<byte> y), hex://bitvectors/bitvector?xor#xor_g[8u]()
; xor_g[8u]()[20] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x0f,0xb6,0xd2,0x0f,0xb6,0xc0,0x33,0xc2,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<ushort> xor<ushort>(BitVector<ushort> x, BitVector<ushort> y), hex://bitvectors/bitvector?xor#xor_g[16u]()
; xor_g[16u]()[20] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x0f,0xb7,0xd2,0x0f,0xb7,0xc0,0x33,0xc2,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
000eh xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
0010h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<uint> xor<uint>(BitVector<uint> x, BitVector<uint> y), hex://bitvectors/bitvector?xor#xor_g[32u]()
; xor_g[32u]()[10] = {0x0f,0x1f,0x44,0x00,0x00,0x33,0xd1,0x8b,0xc2,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor edx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d1}
0007h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<ulong> xor<ulong>(BitVector<ulong> x, BitVector<ulong> y), hex://bitvectors/bitvector?xor#xor_g[64u]()
; xor_g[64u]()[12] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x33,0xd1,0x48,0x8b,0xc2,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor rdx,rcx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 d1}
0008h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector4 negate(BitVector4 x), hex://bitvectors/bitvector?negate#negate_()
; negate_()[22] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0xf7,0xd0,0xff,0xc0,0x0f,0xb6,0xc0,0x83,0xe0,0x0f,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000ah inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
000ch movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000fh and eax,0fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 0f}
0012h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector8 negate(BitVector8 x), hex://bitvectors/bitvector?negate#negate_()
; negate_()[16] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0xf7,0xd0,0xff,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000ah inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
000ch movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector16 negate(BitVector16 x), hex://bitvectors/bitvector?negate#negate_()
; negate_()[16] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0xf7,0xd0,0xff,0xc0,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000ah inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
000ch movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector32 negate(BitVector32 x), hex://bitvectors/bitvector?negate#negate_()
; negate_()[12] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0xf7,0xd0,0xff,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0009h inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector64 negate(BitVector64 x), hex://bitvectors/bitvector?negate#negate_()
; negate_()[15] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0x48,0xf7,0xd0,0x48,0xff,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
000bh inc rax                                 ; INC r/m64 || REX.W FF /0 || encoded[3]{48 ff c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<BitVector4> partition(BitVector16 src, Span<BitVector4> dst), hex://bitvectors/bitvector?partition#partition_()
; partition_()[162] = {0x57,0x56,0x53,0x48,0x83,0xec,0x70,0xc5,0xf8,0x77,0x48,0x8b,0xf1,0x48,0x8d,0x7c,0x24,0x28,0xb9,0x10,0x00,0x00,0x00,0x33,0xc0,0xf3,0xab,0x48,0x8b,0xce,0x48,0x8b,0xd9,0x49,0x8b,0xf0,0x0f,0xb7,0xfa,0xc6,0x44,0x24,0x50,0x00,0x48,0x0f,0xbe,0x4c,0x24,0x50,0x88,0x4c,0x24,0x68,0x48,0x8b,0x0e,0x8b,0x56,0x08,0x4c,0x0f,0xbe,0x44,0x24,0x68,0x44,0x88,0x44,0x24,0x48,0x4c,0x8d,0x44,0x24,0x58,0x48,0x8d,0x44,0x24,0x28,0x48,0x89,0x08,0x89,0x50,0x08,0x49,0x8b,0xc8,0x48,0x8d,0x54,0x24,0x28,0x4c,0x0f,0xbe,0x44,0x24,0x48,0xe8,0x96,0xfb,0xff,0xff,0xc5,0xfa,0x6f,0x44,0x24,0x58,0xc5,0xfa,0x7f,0x44,0x24,0x38,0x48,0x8d,0x44,0x24,0x38,0x48,0x8b,0x00,0x0f,0xb7,0xd7,0xb9,0x0f,0x0f,0x0f,0x0f,0xc4,0xe2,0x6b,0xf5,0xd1,0x89,0x10,0x48,0x8b,0xfb,0xe8,0xcb,0x75,0xfd,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x70,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,70h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 70}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh lea rdi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 28}
0012h mov ecx,10h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 10 00 00 00}
0017h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0019h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001eh mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0021h mov rsi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f0}
0024h movzx edi,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 fa}
0027h mov byte ptr [rsp+50h],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[5]{c6 44 24 50 00}
002ch movsx rcx,byte ptr [rsp+50h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 4c 24 50}
0032h mov [rsp+68h],cl                        ; MOV r/m8, r8 || 88 /r || encoded[4]{88 4c 24 68}
0036h mov rcx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 0e}
0039h mov edx,[rsi+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 56 08}
003ch movsx r8,byte ptr [rsp+68h]             ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{4c 0f be 44 24 68}
0042h mov [rsp+48h],r8b                       ; MOV r/m8, r8 || 88 /r || encoded[5]{44 88 44 24 48}
0047h lea r8,[rsp+58h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 58}
004ch lea rax,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 28}
0051h mov [rax],rcx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 08}
0054h mov [rax+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 50 08}
0057h mov rcx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c8}
005ah lea rdx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 28}
005fh movsx r8,byte ptr [rsp+48h]             ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{4c 0f be 44 24 48}
0065h call 7ff7c828e430h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 fb ff ff}
006ah vmovdqu xmm0,xmmword ptr [rsp+58h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 58}
0070h vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0076h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
007bh mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
007eh movzx edx,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d7}
0081h mov ecx,0f0f0f0fh                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 0f 0f 0f 0f}
0086h pdep edx,edx,ecx                        ; PDEP r32a, r32b, r/m32 || VEX.LZ.F2.0F38.W0 F5 /r || encoded[5]{c4 e2 6b f5 d1}
008bh mov [rax],edx                           ; MOV r/m32, r32 || o32 89 /r || encoded[2]{89 10}
008dh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0090h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cb 75 fd 5e}
0095h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0097h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
009ah add rsp,70h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 70}
009eh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
009fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00a0h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00a1h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<BitVector8> partition(BitVector16 src, Span<BitVector8> dst), hex://bitvectors/bitvector?partition#partition_()
; partition_()[150] = {0x57,0x56,0x53,0x48,0x83,0xec,0x70,0xc5,0xf8,0x77,0x48,0x8b,0xf1,0x48,0x8d,0x7c,0x24,0x28,0xb9,0x10,0x00,0x00,0x00,0x33,0xc0,0xf3,0xab,0x48,0x8b,0xce,0x48,0x8b,0xd9,0x49,0x8b,0xf0,0x0f,0xb7,0xfa,0xc6,0x44,0x24,0x50,0x00,0x48,0x0f,0xbe,0x4c,0x24,0x50,0x88,0x4c,0x24,0x68,0x48,0x8b,0x0e,0x8b,0x56,0x08,0x4c,0x0f,0xbe,0x44,0x24,0x68,0x44,0x88,0x44,0x24,0x48,0x4c,0x8d,0x44,0x24,0x58,0x48,0x8d,0x44,0x24,0x28,0x48,0x89,0x08,0x89,0x50,0x08,0x49,0x8b,0xc8,0x48,0x8d,0x54,0x24,0x28,0x4c,0x0f,0xbe,0x44,0x24,0x48,0xe8,0x96,0xfc,0xff,0xff,0xc5,0xfa,0x6f,0x44,0x24,0x58,0xc5,0xfa,0x7f,0x44,0x24,0x38,0x48,0x8d,0x44,0x24,0x38,0x48,0x8b,0x00,0x66,0x89,0x38,0x48,0x8b,0xfb,0xe8,0x07,0x71,0xfd,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x70,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,70h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 70}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh lea rdi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 28}
0012h mov ecx,10h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 10 00 00 00}
0017h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0019h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001eh mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0021h mov rsi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f0}
0024h movzx edi,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 fa}
0027h mov byte ptr [rsp+50h],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[5]{c6 44 24 50 00}
002ch movsx rcx,byte ptr [rsp+50h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 4c 24 50}
0032h mov [rsp+68h],cl                        ; MOV r/m8, r8 || 88 /r || encoded[4]{88 4c 24 68}
0036h mov rcx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 0e}
0039h mov edx,[rsi+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 56 08}
003ch movsx r8,byte ptr [rsp+68h]             ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{4c 0f be 44 24 68}
0042h mov [rsp+48h],r8b                       ; MOV r/m8, r8 || 88 /r || encoded[5]{44 88 44 24 48}
0047h lea r8,[rsp+58h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 58}
004ch lea rax,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 28}
0051h mov [rax],rcx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 08}
0054h mov [rax+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 50 08}
0057h mov rcx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c8}
005ah lea rdx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 28}
005fh movsx r8,byte ptr [rsp+48h]             ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{4c 0f be 44 24 48}
0065h call 7ff7c828ea00h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 fc ff ff}
006ah vmovdqu xmm0,xmmword ptr [rsp+58h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 58}
0070h vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0076h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
007bh mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
007eh mov [rax],di                            ; MOV r/m16, r16 || o16 89 /r || encoded[3]{66 89 38}
0081h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0084h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 71 fd 5e}
0089h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
008bh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
008eh add rsp,70h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 70}
0092h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0093h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0094h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0095h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<BitVector4> partition(BitVector32 src, Span<BitVector4> dst), hex://bitvectors/bitvector?partition#partition_()
; partition_()[166] = {0x57,0x56,0x53,0x48,0x83,0xec,0x70,0xc5,0xf8,0x77,0x48,0x8b,0xf1,0x48,0x8d,0x7c,0x24,0x28,0xb9,0x10,0x00,0x00,0x00,0x33,0xc0,0xf3,0xab,0x48,0x8b,0xce,0x48,0x8b,0xd9,0x49,0x8b,0xf0,0x8b,0xfa,0xc6,0x44,0x24,0x50,0x00,0x48,0x0f,0xbe,0x4c,0x24,0x50,0x88,0x4c,0x24,0x68,0x48,0x8b,0x0e,0x8b,0x56,0x08,0x4c,0x0f,0xbe,0x44,0x24,0x68,0x44,0x88,0x44,0x24,0x48,0x4c,0x8d,0x44,0x24,0x58,0x48,0x8d,0x44,0x24,0x28,0x48,0x89,0x08,0x89,0x50,0x08,0x49,0x8b,0xc8,0x48,0x8d,0x54,0x24,0x28,0x4c,0x0f,0xbe,0x44,0x24,0x48,0xe8,0x57,0xfc,0xff,0xff,0xc5,0xfa,0x6f,0x44,0x24,0x58,0xc5,0xfa,0x7f,0x44,0x24,0x38,0x48,0x8d,0x44,0x24,0x38,0x48,0x8b,0x00,0x8b,0xd7,0x48,0xb9,0x0f,0x0f,0x0f,0x0f,0x0f,0x0f,0x0f,0x0f,0xc4,0xe2,0xeb,0xf5,0xd1,0x48,0x89,0x10,0x48,0x8b,0xfb,0xe8,0x47,0x70,0xfd,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x70,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,70h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 70}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh lea rdi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 28}
0012h mov ecx,10h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 10 00 00 00}
0017h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0019h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001eh mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0021h mov rsi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f0}
0024h mov edi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b fa}
0026h mov byte ptr [rsp+50h],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[5]{c6 44 24 50 00}
002bh movsx rcx,byte ptr [rsp+50h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 4c 24 50}
0031h mov [rsp+68h],cl                        ; MOV r/m8, r8 || 88 /r || encoded[4]{88 4c 24 68}
0035h mov rcx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 0e}
0038h mov edx,[rsi+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 56 08}
003bh movsx r8,byte ptr [rsp+68h]             ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{4c 0f be 44 24 68}
0041h mov [rsp+48h],r8b                       ; MOV r/m8, r8 || 88 /r || encoded[5]{44 88 44 24 48}
0046h lea r8,[rsp+58h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 58}
004bh lea rax,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 28}
0050h mov [rax],rcx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 08}
0053h mov [rax+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 50 08}
0056h mov rcx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c8}
0059h lea rdx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 28}
005eh movsx r8,byte ptr [rsp+48h]             ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{4c 0f be 44 24 48}
0064h call 7ff7c828ea70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 fc ff ff}
0069h vmovdqu xmm0,xmmword ptr [rsp+58h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 58}
006fh vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0075h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
007ah mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
007dh mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
007fh mov rcx,0f0f0f0f0f0f0f0fh               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 0f 0f 0f 0f 0f 0f 0f 0f}
0089h pdep rdx,rdx,rcx                        ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 e2 eb f5 d1}
008eh mov [rax],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 10}
0091h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0094h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 70 fd 5e}
0099h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
009bh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
009eh add rsp,70h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 70}
00a2h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00a3h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00a4h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00a5h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<BitVector8> partition(BitVector32 src, Span<BitVector8> dst), hex://bitvectors/bitvector?partition#partition_()
; partition_()[148] = {0x57,0x56,0x53,0x48,0x83,0xec,0x70,0xc5,0xf8,0x77,0x48,0x8b,0xf1,0x48,0x8d,0x7c,0x24,0x28,0xb9,0x10,0x00,0x00,0x00,0x33,0xc0,0xf3,0xab,0x48,0x8b,0xce,0x48,0x8b,0xd9,0x49,0x8b,0xf0,0x8b,0xfa,0xc6,0x44,0x24,0x50,0x00,0x48,0x0f,0xbe,0x4c,0x24,0x50,0x88,0x4c,0x24,0x68,0x48,0x8b,0x0e,0x8b,0x56,0x08,0x4c,0x0f,0xbe,0x44,0x24,0x68,0x44,0x88,0x44,0x24,0x48,0x4c,0x8d,0x44,0x24,0x58,0x48,0x8d,0x44,0x24,0x28,0x48,0x89,0x08,0x89,0x50,0x08,0x49,0x8b,0xc8,0x48,0x8d,0x54,0x24,0x28,0x4c,0x0f,0xbe,0x44,0x24,0x48,0xe8,0x57,0xf5,0xff,0xff,0xc5,0xfa,0x6f,0x44,0x24,0x58,0xc5,0xfa,0x7f,0x44,0x24,0x38,0x48,0x8d,0x44,0x24,0x38,0x48,0x8b,0x00,0x89,0x38,0x48,0x8b,0xfb,0xe8,0x99,0x6f,0xfd,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x70,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,70h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 70}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh lea rdi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 28}
0012h mov ecx,10h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 10 00 00 00}
0017h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0019h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001eh mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0021h mov rsi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f0}
0024h mov edi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b fa}
0026h mov byte ptr [rsp+50h],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[5]{c6 44 24 50 00}
002bh movsx rcx,byte ptr [rsp+50h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 4c 24 50}
0031h mov [rsp+68h],cl                        ; MOV r/m8, r8 || 88 /r || encoded[4]{88 4c 24 68}
0035h mov rcx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 0e}
0038h mov edx,[rsi+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 56 08}
003bh movsx r8,byte ptr [rsp+68h]             ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{4c 0f be 44 24 68}
0041h mov [rsp+48h],r8b                       ; MOV r/m8, r8 || 88 /r || encoded[5]{44 88 44 24 48}
0046h lea r8,[rsp+58h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 58}
004bh lea rax,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 28}
0050h mov [rax],rcx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 08}
0053h mov [rax+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 50 08}
0056h mov rcx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c8}
0059h lea rdx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 28}
005eh movsx r8,byte ptr [rsp+48h]             ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{4c 0f be 44 24 48}
0064h call 7ff7c828e430h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 f5 ff ff}
0069h vmovdqu xmm0,xmmword ptr [rsp+58h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 58}
006fh vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0075h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
007ah mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
007dh mov [rax],edi                           ; MOV r/m32, r32 || o32 89 /r || encoded[2]{89 38}
007fh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0082h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 6f fd 5e}
0087h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0089h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
008ch add rsp,70h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 70}
0090h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0091h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0092h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0093h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<BitVector16> partition(BitVector32 src, Span<BitVector16> dst), hex://bitvectors/bitvector?partition#partition_()
; partition_()[143] = {0x57,0x56,0x53,0x48,0x83,0xec,0x60,0xc5,0xf8,0x77,0x48,0x8b,0xf1,0x48,0x8d,0x7c,0x24,0x20,0xb9,0x0e,0x00,0x00,0x00,0x33,0xc0,0xf3,0xab,0x48,0x8b,0xce,0x48,0x8b,0xd9,0x49,0x8b,0xf0,0x8b,0xfa,0x48,0x8b,0x0e,0x8b,0x56,0x08,0xc6,0x44,0x24,0x40,0x00,0x4c,0x0f,0xbe,0x44,0x24,0x40,0x44,0x88,0x44,0x24,0x58,0x4c,0x8d,0x44,0x24,0x48,0x48,0x8d,0x44,0x24,0x20,0x48,0x89,0x08,0x89,0x50,0x08,0x49,0x8b,0xc8,0x48,0x8d,0x54,0x24,0x20,0x4c,0x0f,0xbe,0x44,0x24,0x58,0xe8,0x31,0xfc,0xff,0xff,0xc5,0xfa,0x6f,0x44,0x24,0x48,0xc5,0xfa,0x7f,0x44,0x24,0x30,0x48,0x8d,0x44,0x24,0x30,0x48,0x8b,0x00,0x89,0x38,0x48,0x8b,0xfb,0xe8,0xf3,0x6e,0xfd,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x60,0x5b,0x5e,0x5f,0xc3,0xe8,0x71,0x0c,0x10,0x5f}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,60h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 60}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh lea rdi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 20}
0012h mov ecx,0eh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 0e 00 00 00}
0017h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0019h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001eh mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0021h mov rsi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f0}
0024h mov edi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b fa}
0026h mov rcx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 0e}
0029h mov edx,[rsi+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 56 08}
002ch mov byte ptr [rsp+40h],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[5]{c6 44 24 40 00}
0031h movsx r8,byte ptr [rsp+40h]             ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{4c 0f be 44 24 40}
0037h mov [rsp+58h],r8b                       ; MOV r/m8, r8 || 88 /r || encoded[5]{44 88 44 24 58}
003ch lea r8,[rsp+48h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 48}
0041h lea rax,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 20}
0046h mov [rax],rcx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 08}
0049h mov [rax+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 50 08}
004ch mov rcx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c8}
004fh lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
0054h movsx r8,byte ptr [rsp+58h]             ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{4c 0f be 44 24 58}
005ah call 7ff7c828ebb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 fc ff ff}
005fh vmovdqu xmm0,xmmword ptr [rsp+48h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 48}
0065h vmovdqu xmmword ptr [rsp+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 30}
006bh lea rax,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 30}
0070h mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
0073h mov [rax],edi                           ; MOV r/m32, r32 || o32 89 /r || encoded[2]{89 38}
0075h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0078h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 6e fd 5e}
007dh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
007fh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0082h add rsp,60h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 60}
0086h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0087h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0088h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0089h ret                                     ; RET || C3 || encoded[1]{c3}
008ah call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 0c 10 5f}
------------------------------------------------------------------------------------------------------------------------
; Span<BitVector8> partition(BitVector64 src, Span<BitVector8> dst), hex://bitvectors/bitvector?partition#partition_()
; partition_()[150] = {0x57,0x56,0x53,0x48,0x83,0xec,0x70,0xc5,0xf8,0x77,0x48,0x8b,0xf1,0x48,0x8d,0x7c,0x24,0x28,0xb9,0x10,0x00,0x00,0x00,0x33,0xc0,0xf3,0xab,0x48,0x8b,0xce,0x48,0x8b,0xd9,0x49,0x8b,0xf0,0x48,0x8b,0xfa,0xc6,0x44,0x24,0x50,0x00,0x48,0x0f,0xbe,0x4c,0x24,0x50,0x88,0x4c,0x24,0x68,0x48,0x8b,0x0e,0x8b,0x56,0x08,0x4c,0x0f,0xbe,0x44,0x24,0x68,0x44,0x88,0x44,0x24,0x48,0x4c,0x8d,0x44,0x24,0x58,0x48,0x8d,0x44,0x24,0x28,0x48,0x89,0x08,0x89,0x50,0x08,0x49,0x8b,0xc8,0x48,0x8d,0x54,0x24,0x28,0x4c,0x0f,0xbe,0x44,0x24,0x48,0xe8,0x36,0xfa,0xff,0xff,0xc5,0xfa,0x6f,0x44,0x24,0x58,0xc5,0xfa,0x7f,0x44,0x24,0x38,0x48,0x8d,0x44,0x24,0x38,0x48,0x8b,0x00,0x48,0x89,0x38,0x48,0x8b,0xfb,0xe8,0x37,0x6e,0xfd,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x70,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,70h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 70}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh lea rdi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 28}
0012h mov ecx,10h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 10 00 00 00}
0017h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0019h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001eh mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0021h mov rsi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f0}
0024h mov rdi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fa}
0027h mov byte ptr [rsp+50h],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[5]{c6 44 24 50 00}
002ch movsx rcx,byte ptr [rsp+50h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 4c 24 50}
0032h mov [rsp+68h],cl                        ; MOV r/m8, r8 || 88 /r || encoded[4]{88 4c 24 68}
0036h mov rcx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 0e}
0039h mov edx,[rsi+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 56 08}
003ch movsx r8,byte ptr [rsp+68h]             ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{4c 0f be 44 24 68}
0042h mov [rsp+48h],r8b                       ; MOV r/m8, r8 || 88 /r || encoded[5]{44 88 44 24 48}
0047h lea r8,[rsp+58h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 58}
004ch lea rax,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 28}
0051h mov [rax],rcx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 08}
0054h mov [rax+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 50 08}
0057h mov rcx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c8}
005ah lea rdx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 28}
005fh movsx r8,byte ptr [rsp+48h]             ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{4c 0f be 44 24 48}
0065h call 7ff7c828ea70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 fa ff ff}
006ah vmovdqu xmm0,xmmword ptr [rsp+58h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 58}
0070h vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0076h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
007bh mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
007eh mov [rax],rdi                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 38}
0081h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0084h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 6e fd 5e}
0089h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
008bh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
008eh add rsp,70h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 70}
0092h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0093h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0094h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0095h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<BitVector<byte>> partition(BitVector<ushort> src, Span<BitVector<byte>> dst), hex://bitvectors/bitvector?partition#partition_()
; partition_()[150] = {0x57,0x56,0x53,0x48,0x83,0xec,0x70,0xc5,0xf8,0x77,0x48,0x8b,0xf1,0x48,0x8d,0x7c,0x24,0x28,0xb9,0x10,0x00,0x00,0x00,0x33,0xc0,0xf3,0xab,0x48,0x8b,0xce,0x48,0x8b,0xd9,0x49,0x8b,0xf0,0x0f,0xb7,0xfa,0xc6,0x44,0x24,0x50,0x00,0x48,0x0f,0xbe,0x4c,0x24,0x50,0x88,0x4c,0x24,0x68,0x48,0x8b,0x0e,0x8b,0x56,0x08,0x4c,0x0f,0xbe,0x44,0x24,0x68,0x44,0x88,0x44,0x24,0x48,0x4c,0x8d,0x44,0x24,0x58,0x48,0x8d,0x44,0x24,0x28,0x48,0x89,0x08,0x89,0x50,0x08,0x49,0x8b,0xc8,0x48,0x8d,0x54,0x24,0x28,0x4c,0x0f,0xbe,0x44,0x24,0x48,0xe8,0x06,0xf5,0xff,0xff,0xc5,0xfa,0x6f,0x44,0x24,0x58,0xc5,0xfa,0x7f,0x44,0x24,0x38,0x48,0x8d,0x44,0x24,0x38,0x48,0x8b,0x00,0x66,0x89,0x38,0x48,0x8b,0xfb,0xe8,0x77,0x69,0xfd,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x70,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,70h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 70}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh lea rdi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 28}
0012h mov ecx,10h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 10 00 00 00}
0017h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0019h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001eh mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0021h mov rsi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f0}
0024h movzx edi,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 fa}
0027h mov byte ptr [rsp+50h],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[5]{c6 44 24 50 00}
002ch movsx rcx,byte ptr [rsp+50h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 4c 24 50}
0032h mov [rsp+68h],cl                        ; MOV r/m8, r8 || 88 /r || encoded[4]{88 4c 24 68}
0036h mov rcx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 0e}
0039h mov edx,[rsi+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 56 08}
003ch movsx r8,byte ptr [rsp+68h]             ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{4c 0f be 44 24 68}
0042h mov [rsp+48h],r8b                       ; MOV r/m8, r8 || 88 /r || encoded[5]{44 88 44 24 48}
0047h lea r8,[rsp+58h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 58}
004ch lea rax,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 28}
0051h mov [rax],rcx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 08}
0054h mov [rax+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 50 08}
0057h mov rcx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c8}
005ah lea rdx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 28}
005fh movsx r8,byte ptr [rsp+48h]             ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{4c 0f be 44 24 48}
0065h call 7ff7c828ea00h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 f5 ff ff}
006ah vmovdqu xmm0,xmmword ptr [rsp+58h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 58}
0070h vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0076h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
007bh mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
007eh mov [rax],di                            ; MOV r/m16, r16 || o16 89 /r || encoded[3]{66 89 38}
0081h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0084h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 69 fd 5e}
0089h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
008bh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
008eh add rsp,70h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 70}
0092h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0093h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0094h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0095h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<BitVector<byte>> partition(BitVector<uint> src, Span<BitVector<byte>> dst), hex://bitvectors/bitvector?partition#partition_()
; partition_()[148] = {0x57,0x56,0x53,0x48,0x83,0xec,0x70,0xc5,0xf8,0x77,0x48,0x8b,0xf1,0x48,0x8d,0x7c,0x24,0x28,0xb9,0x10,0x00,0x00,0x00,0x33,0xc0,0xf3,0xab,0x48,0x8b,0xce,0x48,0x8b,0xd9,0x49,0x8b,0xf0,0x8b,0xfa,0xc6,0x44,0x24,0x50,0x00,0x48,0x0f,0xbe,0x4c,0x24,0x50,0x88,0x4c,0x24,0x68,0x48,0x8b,0x0e,0x8b,0x56,0x08,0x4c,0x0f,0xbe,0x44,0x24,0x68,0x44,0x88,0x44,0x24,0x48,0x4c,0x8d,0x44,0x24,0x58,0x48,0x8d,0x44,0x24,0x28,0x48,0x89,0x08,0x89,0x50,0x08,0x49,0x8b,0xc8,0x48,0x8d,0x54,0x24,0x28,0x4c,0x0f,0xbe,0x44,0x24,0x48,0xe8,0x87,0xee,0xff,0xff,0xc5,0xfa,0x6f,0x44,0x24,0x58,0xc5,0xfa,0x7f,0x44,0x24,0x38,0x48,0x8d,0x44,0x24,0x38,0x48,0x8b,0x00,0x89,0x38,0x48,0x8b,0xfb,0xe8,0xc9,0x68,0xfd,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x70,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,70h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 70}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh lea rdi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 28}
0012h mov ecx,10h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 10 00 00 00}
0017h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0019h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001eh mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0021h mov rsi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f0}
0024h mov edi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b fa}
0026h mov byte ptr [rsp+50h],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[5]{c6 44 24 50 00}
002bh movsx rcx,byte ptr [rsp+50h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 4c 24 50}
0031h mov [rsp+68h],cl                        ; MOV r/m8, r8 || 88 /r || encoded[4]{88 4c 24 68}
0035h mov rcx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 0e}
0038h mov edx,[rsi+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 56 08}
003bh movsx r8,byte ptr [rsp+68h]             ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{4c 0f be 44 24 68}
0041h mov [rsp+48h],r8b                       ; MOV r/m8, r8 || 88 /r || encoded[5]{44 88 44 24 48}
0046h lea r8,[rsp+58h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 58}
004bh lea rax,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 28}
0050h mov [rax],rcx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 08}
0053h mov [rax+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 50 08}
0056h mov rcx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c8}
0059h lea rdx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 28}
005eh movsx r8,byte ptr [rsp+48h]             ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{4c 0f be 44 24 48}
0064h call 7ff7c828e430h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 ee ff ff}
0069h vmovdqu xmm0,xmmword ptr [rsp+58h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 58}
006fh vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0075h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
007ah mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
007dh mov [rax],edi                           ; MOV r/m32, r32 || o32 89 /r || encoded[2]{89 38}
007fh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0082h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 68 fd 5e}
0087h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0089h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
008ch add rsp,70h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 70}
0090h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0091h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0092h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0093h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<BitVector<ushort>> partition(BitVector<uint> src, Span<BitVector<ushort>> dst), hex://bitvectors/bitvector?partition#partition_()
; partition_()[143] = {0x57,0x56,0x53,0x48,0x83,0xec,0x60,0xc5,0xf8,0x77,0x48,0x8b,0xf1,0x48,0x8d,0x7c,0x24,0x20,0xb9,0x0e,0x00,0x00,0x00,0x33,0xc0,0xf3,0xab,0x48,0x8b,0xce,0x48,0x8b,0xd9,0x49,0x8b,0xf0,0x8b,0xfa,0x48,0x8b,0x0e,0x8b,0x56,0x08,0xc6,0x44,0x24,0x40,0x00,0x4c,0x0f,0xbe,0x44,0x24,0x40,0x44,0x88,0x44,0x24,0x58,0x4c,0x8d,0x44,0x24,0x48,0x48,0x8d,0x44,0x24,0x20,0x48,0x89,0x08,0x89,0x50,0x08,0x49,0x8b,0xc8,0x48,0x8d,0x54,0x24,0x20,0x4c,0x0f,0xbe,0x44,0x24,0x58,0xe8,0x61,0xf5,0xff,0xff,0xc5,0xfa,0x6f,0x44,0x24,0x48,0xc5,0xfa,0x7f,0x44,0x24,0x30,0x48,0x8d,0x44,0x24,0x30,0x48,0x8b,0x00,0x89,0x38,0x48,0x8b,0xfb,0xe8,0x23,0x68,0xfd,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x60,0x5b,0x5e,0x5f,0xc3,0xe8,0xa1,0x05,0x10,0x5f}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,60h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 60}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh lea rdi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 20}
0012h mov ecx,0eh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 0e 00 00 00}
0017h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0019h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001eh mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0021h mov rsi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f0}
0024h mov edi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b fa}
0026h mov rcx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 0e}
0029h mov edx,[rsi+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 56 08}
002ch mov byte ptr [rsp+40h],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[5]{c6 44 24 40 00}
0031h movsx r8,byte ptr [rsp+40h]             ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{4c 0f be 44 24 40}
0037h mov [rsp+58h],r8b                       ; MOV r/m8, r8 || 88 /r || encoded[5]{44 88 44 24 58}
003ch lea r8,[rsp+48h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 48}
0041h lea rax,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 20}
0046h mov [rax],rcx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 08}
0049h mov [rax+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 50 08}
004ch mov rcx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c8}
004fh lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
0054h movsx r8,byte ptr [rsp+58h]             ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{4c 0f be 44 24 58}
005ah call 7ff7c828ebb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 f5 ff ff}
005fh vmovdqu xmm0,xmmword ptr [rsp+48h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 48}
0065h vmovdqu xmmword ptr [rsp+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 30}
006bh lea rax,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 30}
0070h mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
0073h mov [rax],edi                           ; MOV r/m32, r32 || o32 89 /r || encoded[2]{89 38}
0075h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0078h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 68 fd 5e}
007dh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
007fh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0082h add rsp,60h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 60}
0086h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0087h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0088h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0089h ret                                     ; RET || C3 || encoded[1]{c3}
008ah call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 05 10 5f}
------------------------------------------------------------------------------------------------------------------------
; Span<BitVector<byte>> partition(BitVector<ulong> src, Span<BitVector<byte>> dst), hex://bitvectors/bitvector?partition#partition_()
; partition_()[150] = {0x57,0x56,0x53,0x48,0x83,0xec,0x70,0xc5,0xf8,0x77,0x48,0x8b,0xf1,0x48,0x8d,0x7c,0x24,0x28,0xb9,0x10,0x00,0x00,0x00,0x33,0xc0,0xf3,0xab,0x48,0x8b,0xce,0x48,0x8b,0xd9,0x49,0x8b,0xf0,0x48,0x8b,0xfa,0xc6,0x44,0x24,0x50,0x00,0x48,0x0f,0xbe,0x4c,0x24,0x50,0x88,0x4c,0x24,0x68,0x48,0x8b,0x0e,0x8b,0x56,0x08,0x4c,0x0f,0xbe,0x44,0x24,0x68,0x44,0x88,0x44,0x24,0x48,0x4c,0x8d,0x44,0x24,0x58,0x48,0x8d,0x44,0x24,0x28,0x48,0x89,0x08,0x89,0x50,0x08,0x49,0x8b,0xc8,0x48,0x8d,0x54,0x24,0x28,0x4c,0x0f,0xbe,0x44,0x24,0x48,0xe8,0x66,0xf3,0xff,0xff,0xc5,0xfa,0x6f,0x44,0x24,0x58,0xc5,0xfa,0x7f,0x44,0x24,0x38,0x48,0x8d,0x44,0x24,0x38,0x48,0x8b,0x00,0x48,0x89,0x38,0x48,0x8b,0xfb,0xe8,0x67,0x67,0xfd,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x70,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,70h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 70}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh lea rdi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 28}
0012h mov ecx,10h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 10 00 00 00}
0017h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0019h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001eh mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0021h mov rsi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f0}
0024h mov rdi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fa}
0027h mov byte ptr [rsp+50h],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[5]{c6 44 24 50 00}
002ch movsx rcx,byte ptr [rsp+50h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 4c 24 50}
0032h mov [rsp+68h],cl                        ; MOV r/m8, r8 || 88 /r || encoded[4]{88 4c 24 68}
0036h mov rcx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 0e}
0039h mov edx,[rsi+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 56 08}
003ch movsx r8,byte ptr [rsp+68h]             ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{4c 0f be 44 24 68}
0042h mov [rsp+48h],r8b                       ; MOV r/m8, r8 || 88 /r || encoded[5]{44 88 44 24 48}
0047h lea r8,[rsp+58h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 58}
004ch lea rax,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 28}
0051h mov [rax],rcx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 08}
0054h mov [rax+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 50 08}
0057h mov rcx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c8}
005ah lea rdx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 28}
005fh movsx r8,byte ptr [rsp+48h]             ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{4c 0f be 44 24 48}
0065h call 7ff7c828ea70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 f3 ff ff}
006ah vmovdqu xmm0,xmmword ptr [rsp+58h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 58}
0070h vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0076h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
007bh mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
007eh mov [rax],rdi                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 38}
0081h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0084h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 67 fd 5e}
0089h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
008bh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
008eh add rsp,70h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 70}
0092h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0093h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0094h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0095h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit modprod(BitVector32 x, BitVector32 y), hex://bitvectors/bitvector?modprod#modprod_()
; modprod_()[98] = {0x56,0x8b,0xc1,0x66,0x90,0x45,0x33,0xc0,0x45,0x33,0xc9,0x45,0x8b,0xd1,0x41,0x83,0xe2,0x1f,0x41,0x8b,0xca,0x44,0x8b,0xd8,0x41,0xd3,0xeb,0x41,0x83,0xe3,0x01,0x45,0x85,0xdb,0x75,0x05,0x45,0x33,0xdb,0xeb,0x06,0x41,0xbb,0x01,0x00,0x00,0x00,0x41,0x8b,0xca,0x8b,0xf2,0xd3,0xee,0x83,0xe6,0x01,0x85,0xf6,0x75,0x04,0x33,0xc9,0xeb,0x05,0xb9,0x01,0x00,0x00,0x00,0x41,0x0f,0xaf,0xcb,0x44,0x03,0xc1,0x41,0xff,0xc1,0x41,0x83,0xf9,0x20,0x7c,0xb5,0x41,0xf6,0xc0,0x01,0x0f,0x95,0xc0,0x0f,0xb6,0xc0,0x5e,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0008h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
000bh mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
000eh and r10d,1fh                            ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e2 1f}
0012h mov ecx,r10d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b ca}
0015h mov r11d,eax                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b d8}
0018h shr r11d,cl                             ; SHR r/m32, CL || o32 D3 /5 || encoded[3]{41 d3 eb}
001bh and r11d,1                              ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e3 01}
001fh test r11d,r11d                          ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 db}
0022h jne short 0029h                         ; JNE rel8 || 75 cb || encoded[2]{75 05}
0024h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0027h jmp short 002fh                         ; JMP rel8 || EB cb || encoded[2]{eb 06}
0029h mov r11d,1                              ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 bb 01 00 00 00}
002fh mov ecx,r10d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b ca}
0032h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0034h shr esi,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 ee}
0036h and esi,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e6 01}
0039h test esi,esi                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 f6}
003bh jne short 0041h                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
003dh xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
003fh jmp short 0046h                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
0041h mov ecx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 01 00 00 00}
0046h imul ecx,r11d                           ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{41 0f af cb}
004ah add r8d,ecx                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{44 03 c1}
004dh inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0050h cmp r9d,20h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f9 20}
0054h jl short 000bh                          ; JL rel8 || 7C cb || encoded[2]{7c b5}
0056h test r8b,1                              ; TEST r/m8, imm8 || F6 /0 ib || encoded[4]{41 f6 c0 01}
005ah setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
005dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0060h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0061h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit modprod(BitVector64 x, BitVector64 y), hex://bitvectors/bitvector?modprod#modprod_()
; modprod_()[103] = {0x56,0x48,0x8b,0xc1,0x90,0x45,0x33,0xc0,0x45,0x33,0xc9,0x45,0x8b,0xd1,0x41,0x83,0xe2,0x3f,0x41,0x8b,0xca,0x4c,0x8b,0xd8,0x49,0xd3,0xeb,0x41,0x8b,0xcb,0x83,0xe1,0x01,0x85,0xc9,0x75,0x05,0x45,0x33,0xdb,0xeb,0x06,0x41,0xbb,0x01,0x00,0x00,0x00,0x41,0x8b,0xca,0x48,0x8b,0xf2,0x48,0xd3,0xee,0x8b,0xce,0x83,0xe1,0x01,0x85,0xc9,0x75,0x04,0x33,0xc9,0xeb,0x05,0xb9,0x01,0x00,0x00,0x00,0x41,0x0f,0xaf,0xcb,0x44,0x03,0xc1,0x41,0xff,0xc1,0x41,0x83,0xf9,0x40,0x7c,0xb0,0x41,0xf6,0xc0,0x01,0x0f,0x95,0xc0,0x0f,0xb6,0xc0,0x5e,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0008h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
000bh mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
000eh and r10d,3fh                            ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e2 3f}
0012h mov ecx,r10d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b ca}
0015h mov r11,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b d8}
0018h shr r11,cl                              ; SHR r/m64, CL || REX.W D3 /5 || encoded[3]{49 d3 eb}
001bh mov ecx,r11d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b cb}
001eh and ecx,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 01}
0021h test ecx,ecx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c9}
0023h jne short 002ah                         ; JNE rel8 || 75 cb || encoded[2]{75 05}
0025h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0028h jmp short 0030h                         ; JMP rel8 || EB cb || encoded[2]{eb 06}
002ah mov r11d,1                              ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 bb 01 00 00 00}
0030h mov ecx,r10d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b ca}
0033h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0036h shr rsi,cl                              ; SHR r/m64, CL || REX.W D3 /5 || encoded[3]{48 d3 ee}
0039h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
003bh and ecx,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 01}
003eh test ecx,ecx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c9}
0040h jne short 0046h                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
0042h xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
0044h jmp short 004bh                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
0046h mov ecx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 01 00 00 00}
004bh imul ecx,r11d                           ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{41 0f af cb}
004fh add r8d,ecx                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{44 03 c1}
0052h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0055h cmp r9d,40h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f9 40}
0059h jl short 000bh                          ; JL rel8 || 7C cb || encoded[2]{7c b0}
005bh test r8b,1                              ; TEST r/m8, imm8 || F6 /0 ib || encoded[4]{41 f6 c0 01}
005fh setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0062h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0065h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0066h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector4 msbseg(BitVector4 x, byte n), hex://bitvectors/bitvector?msbseg#msbseg_(8u)
; msbseg_(8u)[57] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc2,0xf7,0xd8,0x83,0xc0,0x04,0x0f,0xb6,0xc0,0x0f,0xb6,0xc0,0xba,0x03,0x00,0x00,0x00,0x2b,0xd0,0xff,0xc2,0x0f,0xb6,0xd2,0xc1,0xe2,0x08,0x0b,0xc2,0x0f,0xb7,0xc0,0x0f,0xb6,0xd1,0xc4,0xe2,0x78,0xf7,0xc2,0x0f,0xb6,0xc0,0x83,0xe0,0x0f,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0008h neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
000ah add eax,4                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c0 04}
000dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h mov edx,3                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 03 00 00 00}
0018h sub edx,eax                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d0}
001ah inc edx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c2}
001ch movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
001fh shl edx,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 08}
0022h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0024h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0027h movzx edx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d1}
002ah bextr eax,edx,eax                       ; BEXTR r32a, r/m32, r32b || VEX.LZ.0F38.W0 F7 /r || encoded[5]{c4 e2 78 f7 c2}
002fh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0032h and eax,0fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 0f}
0035h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0038h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector8 msbseg(BitVector8 x, byte n), hex://bitvectors/bitvector?msbseg#msbseg_(8u)
; msbseg_(8u)[46] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc2,0xf7,0xd8,0x83,0xc0,0x08,0x0f,0xb6,0xc0,0x8b,0xd0,0xf7,0xda,0x83,0xc2,0x08,0x0f,0xb6,0xd2,0xc1,0xe2,0x08,0x0b,0xc2,0x0f,0xb7,0xc0,0x0f,0xb6,0xd1,0xc4,0xe2,0x78,0xf7,0xc2,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0008h neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
000ah add eax,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c0 08}
000dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0010h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
0012h neg edx                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 da}
0014h add edx,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c2 08}
0017h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
001ah shl edx,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 08}
001dh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
001fh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0022h movzx edx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d1}
0025h bextr eax,edx,eax                       ; BEXTR r32a, r/m32, r32b || VEX.LZ.0F38.W0 F7 /r || encoded[5]{c4 e2 78 f7 c2}
002ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
002dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector16 msbseg(BitVector16 x, byte n), hex://bitvectors/bitvector?msbseg#msbseg_(8u)
; msbseg_(8u)[60] = {0x50,0x0f,0x1f,0x40,0x00,0x0f,0xb7,0xc1,0x66,0x89,0x04,0x24,0x0f,0xb6,0xc2,0xf7,0xd8,0x83,0xc0,0x10,0x0f,0xb6,0xc0,0x8b,0xd0,0xf7,0xda,0x83,0xc2,0x10,0x0f,0xb6,0xd2,0xc1,0xe2,0x08,0x0b,0xc2,0x0f,0xb7,0xc0,0x8b,0x14,0x24,0x0f,0xb7,0xd2,0xc4,0xe2,0x78,0xf7,0xc2,0x0f,0xb7,0xc0,0x48,0x83,0xc4,0x08,0xc3}
; TermCode = CTC_RET_SBB
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h mov [rsp],ax                            ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 04 24}
000ch movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
000fh neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
0011h add eax,10h                             ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c0 10}
0014h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0017h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
0019h neg edx                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 da}
001bh add edx,10h                             ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c2 10}
001eh movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0021h shl edx,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 08}
0024h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0026h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0029h mov edx,[rsp]                           ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 24}
002ch movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
002fh bextr eax,edx,eax                       ; BEXTR r32a, r/m32, r32b || VEX.LZ.0F38.W0 F7 /r || encoded[5]{c4 e2 78 f7 c2}
0034h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0037h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
003bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector32 msbseg(BitVector32 x, byte n), hex://bitvectors/bitvector?msbseg#msbseg_(8u)
; msbseg_(8u)[40] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc2,0xf7,0xd8,0x83,0xc0,0x20,0x0f,0xb6,0xc0,0x8b,0xd0,0xf7,0xda,0x83,0xc2,0x20,0x0f,0xb6,0xd2,0xc1,0xe2,0x08,0x0b,0xc2,0x0f,0xb7,0xc0,0xc4,0xe2,0x78,0xf7,0xc1,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0008h neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
000ah add eax,20h                             ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c0 20}
000dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0010h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
0012h neg edx                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 da}
0014h add edx,20h                             ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c2 20}
0017h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
001ah shl edx,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 08}
001dh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
001fh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0022h bextr eax,ecx,eax                       ; BEXTR r32a, r/m32, r32b || VEX.LZ.0F38.W0 F7 /r || encoded[5]{c4 e2 78 f7 c1}
0027h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector64 msbseg(BitVector64 x, byte n), hex://bitvectors/bitvector?msbseg#msbseg_(8u)
; msbseg_(8u)[40] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc2,0xf7,0xd8,0x83,0xc0,0x40,0x0f,0xb6,0xc0,0x8b,0xd0,0xf7,0xda,0x83,0xc2,0x40,0x0f,0xb6,0xd2,0xc1,0xe2,0x08,0x0b,0xc2,0x0f,0xb7,0xc0,0xc4,0xe2,0xf8,0xf7,0xc1,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0008h neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
000ah add eax,40h                             ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c0 40}
000dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0010h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
0012h neg edx                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 da}
0014h add edx,40h                             ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c2 40}
0017h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
001ah shl edx,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 08}
001dh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
001fh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0022h bextr rax,rcx,rax                       ; BEXTR r64a, r/m64, r64b || VEX.LZ.0F38.W1 F7 /r || encoded[5]{c4 e2 f8 f7 c1}
0027h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit mux(BitVector8 src, BitVector4 control), hex://bitvectors/bitvector?mux#mux_()
; mux_()[21] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc2,0x0f,0xb6,0xd1,0x8b,0xc8,0xd3,0xea,0x8b,0xc2,0x83,0xe0,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0008h movzx edx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d1}
000bh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
000dh shr edx,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 ea}
000fh mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0011h and eax,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 01}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit mux(BitVector16 src, BitVector4 control), hex://bitvectors/bitvector?mux#mux_()
; mux_()[21] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc2,0x0f,0xb7,0xd1,0x8b,0xc8,0xd3,0xea,0x8b,0xc2,0x83,0xe0,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0008h movzx edx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d1}
000bh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
000dh shr edx,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 ea}
000fh mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0011h and eax,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 01}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit mux(BitVector32 src, BitVector8 control), hex://bitvectors/bitvector?mux#mux_()
; mux_()[16] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0x0f,0xb6,0xca,0xd3,0xe8,0x83,0xe0,0x01,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000ah shr eax,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 e8}
000ch and eax,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 01}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit mux(BitVector64 src, BitVector8 control), hex://bitvectors/bitvector?mux#mux_()
; mux_()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0x0f,0xb6,0xca,0x48,0xd3,0xe8,0x83,0xe0,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000bh shr rax,cl                              ; SHR r/m64, CL || REX.W D3 /5 || encoded[3]{48 d3 e8}
000eh and eax,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 01}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector8 create(N8 n, byte src), hex://bitvectors/bitvector?create#create_(n8,8u)
; create_(n8,8u)[12] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc2,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0008h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector8 create(N8 n, int src), hex://bitvectors/bitvector?create#create_(n8,32i)
; create_(n8,32i)[12] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc2,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0008h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector8 create(N8 n, uint src), hex://bitvectors/bitvector?create#create_(n8,32u)
; create_(n8,32u)[12] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc2,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0008h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector8 create(N8 n, ulong src), hex://bitvectors/bitvector?create#create_(n8,64u)
; create_(n8,64u)[12] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc2,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0008h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector16 create(N16 n, BitString src), hex://bitvectors/bitvector?create#create_(n16)
; create_(n16)[156] = {0x48,0x83,0xec,0x48,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x38,0x48,0x89,0x44,0x24,0x28,0x48,0x8d,0x4c,0x24,0x38,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x01,0x48,0x85,0xd2,0x75,0x07,0x33,0xc9,0x45,0x33,0xc9,0xeb,0x08,0x48,0x8d,0x4a,0x10,0x44,0x8b,0x4a,0x08,0xba,0x02,0x00,0x00,0x00,0x41,0xb8,0x01,0x00,0x00,0x00,0x48,0x8d,0x44,0x24,0x38,0x4c,0x8d,0x54,0x24,0x28,0x49,0x89,0x0a,0x45,0x89,0x4a,0x08,0x48,0x8d,0x4c,0x24,0x20,0x44,0x88,0x01,0x89,0x51,0x04,0x48,0x8b,0xc8,0x48,0x8d,0x54,0x24,0x28,0x4c,0x8b,0x4c,0x24,0x20,0x45,0x33,0xc0,0xe8,0xf8,0xc7,0x7c,0xff,0x83,0x7c,0x24,0x40,0x00,0x75,0x04,0x33,0xc0,0xeb,0x12,0x48,0x8b,0x44,0x24,0x38,0x8b,0x4c,0x24,0x40,0x48,0x83,0xf9,0x02,0x7c,0x08,0x0f,0xb7,0x00,0x48,0x83,0xc4,0x48,0xc3,0xb9,0x28,0x00,0x00,0x00,0xe8,0xb4,0x53,0x4d,0xff}
; TermCode = CTC_INTRx2
0000h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+38h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 38}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h lea rcx,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 38}
0018h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
001ch vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0020h test rdx,rdx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 d2}
0023h jne short 002ch                         ; JNE rel8 || 75 cb || encoded[2]{75 07}
0025h xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
0027h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
002ah jmp short 0034h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
002ch lea rcx,[rdx+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4a 10}
0030h mov r9d,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 4a 08}
0034h mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
0039h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
003fh lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
0044h lea r10,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 54 24 28}
0049h mov [r10],rcx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 0a}
004ch mov [r10+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{45 89 4a 08}
0050h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0055h mov [rcx],r8b                           ; MOV r/m8, r8 || 88 /r || encoded[3]{44 88 01}
0058h mov [rcx+4],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 51 04}
005bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005eh lea rdx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 28}
0063h mov r9,[rsp+20h]                        ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{4c 8b 4c 24 20}
0068h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
006bh call 7ff7c7a5c758h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 c7 7c ff}
0070h cmp dword ptr [rsp+40h],0               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[5]{83 7c 24 40 00}
0075h jne short 007bh                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
0077h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0079h jmp short 008dh                         ; JMP rel8 || EB cb || encoded[2]{eb 12}
007bh mov rax,[rsp+38h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 44 24 38}
0080h mov ecx,[rsp+40h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 4c 24 40}
0084h cmp rcx,2                               ; CMP r/m64, imm8 || REX.W 83 /7 ib || encoded[4]{48 83 f9 02}
0088h jl short 0092h                          ; JL rel8 || 7C cb || encoded[2]{7c 08}
008ah movzx eax,word ptr [rax]                ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 00}
008dh add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
0091h ret                                     ; RET || C3 || encoded[1]{c3}
0092h mov ecx,28h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 28 00 00 00}
0097h call 7ff7c7765340h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 53 4d ff}
------------------------------------------------------------------------------------------------------------------------
; BitVector16 create(N16 n, byte lo, byte hi), hex://bitvectors/bitvector?create#create_(n16,8u,8u)
; create_(n16,8u,8u)[24] = {0x0f,0x1f,0x44,0x00,0x00,0x41,0x0f,0xb6,0xc0,0xc1,0xe0,0x08,0x0f,0xb6,0xd2,0x0b,0xc2,0x0f,0xb7,0xc0,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c0}
0009h shl eax,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e0 08}
000ch movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000fh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0011h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0014h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector16 create(N16 n, ulong src), hex://bitvectors/bitvector?create#create_(n16,64u)
; create_(n16,64u)[12] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc2,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
0008h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector32 create(N32 n, uint src), hex://bitvectors/bitvector?create#create_(n32,32u)
; create_(n32,32u)[8] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc2,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector32 create(N32 n, int src), hex://bitvectors/bitvector?create#create_(n32,32i)
; create_(n32,32i)[8] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc2,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector32 create(N32 n, long src), hex://bitvectors/bitvector?create#create_(n32,64i)
; create_(n32,64i)[8] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc2,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector32 create(N32 n, ulong src), hex://bitvectors/bitvector?create#create_(n32,64u)
; create_(n32,64u)[8] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc2,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector32 create(N32 n, BitString src), hex://bitvectors/bitvector?create#create_(n32)
; create_(n32)[155] = {0x48,0x83,0xec,0x48,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x38,0x48,0x89,0x44,0x24,0x28,0x48,0x8d,0x4c,0x24,0x38,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x01,0x48,0x85,0xd2,0x75,0x07,0x33,0xc9,0x45,0x33,0xc9,0xeb,0x08,0x48,0x8d,0x4a,0x10,0x44,0x8b,0x4a,0x08,0xba,0x04,0x00,0x00,0x00,0x41,0xb8,0x01,0x00,0x00,0x00,0x48,0x8d,0x44,0x24,0x38,0x4c,0x8d,0x54,0x24,0x28,0x49,0x89,0x0a,0x45,0x89,0x4a,0x08,0x48,0x8d,0x4c,0x24,0x20,0x44,0x88,0x01,0x89,0x51,0x04,0x48,0x8b,0xc8,0x48,0x8d,0x54,0x24,0x28,0x4c,0x8b,0x4c,0x24,0x20,0x45,0x33,0xc0,0xe8,0x68,0xc6,0x7c,0xff,0x83,0x7c,0x24,0x40,0x00,0x75,0x04,0x33,0xc0,0xeb,0x11,0x48,0x8b,0x44,0x24,0x38,0x8b,0x4c,0x24,0x40,0x48,0x83,0xf9,0x04,0x7c,0x07,0x8b,0x00,0x48,0x83,0xc4,0x48,0xc3,0xb9,0x28,0x00,0x00,0x00,0xe8,0x25,0x52,0x4d,0xff}
; TermCode = CTC_INTRx2
0000h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+38h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 38}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h lea rcx,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 38}
0018h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
001ch vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0020h test rdx,rdx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 d2}
0023h jne short 002ch                         ; JNE rel8 || 75 cb || encoded[2]{75 07}
0025h xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
0027h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
002ah jmp short 0034h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
002ch lea rcx,[rdx+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4a 10}
0030h mov r9d,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 4a 08}
0034h mov edx,4                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 04 00 00 00}
0039h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
003fh lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
0044h lea r10,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 54 24 28}
0049h mov [r10],rcx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 0a}
004ch mov [r10+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{45 89 4a 08}
0050h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0055h mov [rcx],r8b                           ; MOV r/m8, r8 || 88 /r || encoded[3]{44 88 01}
0058h mov [rcx+4],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 51 04}
005bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005eh lea rdx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 28}
0063h mov r9,[rsp+20h]                        ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{4c 8b 4c 24 20}
0068h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
006bh call 7ff7c7a5c758h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 c6 7c ff}
0070h cmp dword ptr [rsp+40h],0               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[5]{83 7c 24 40 00}
0075h jne short 007bh                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
0077h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0079h jmp short 008ch                         ; JMP rel8 || EB cb || encoded[2]{eb 11}
007bh mov rax,[rsp+38h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 44 24 38}
0080h mov ecx,[rsp+40h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 4c 24 40}
0084h cmp rcx,4                               ; CMP r/m64, imm8 || REX.W 83 /7 ib || encoded[4]{48 83 f9 04}
0088h jl short 0091h                          ; JL rel8 || 7C cb || encoded[2]{7c 07}
008ah mov eax,[rax]                           ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b 00}
008ch add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
0090h ret                                     ; RET || C3 || encoded[1]{c3}
0091h mov ecx,28h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 28 00 00 00}
0096h call 7ff7c7765340h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 52 4d ff}
------------------------------------------------------------------------------------------------------------------------
; BitVector32 create(N32 n, byte x0, byte x1, byte x2, byte x3), hex://bitvectors/bitvector?create#create_(n32,8u,8u,8u,8u)
; create_(n32,8u,8u,8u,8u)[39] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc2,0x41,0x0f,0xb6,0xd0,0xc1,0xe2,0x08,0x0b,0xc2,0x41,0x0f,0xb6,0xd1,0xc1,0xe2,0x10,0x0b,0xc2,0x8b,0x54,0x24,0x28,0x0f,0xb6,0xd2,0xc1,0xe2,0x18,0x0b,0xc2,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0008h movzx edx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d0}
000ch shl edx,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 08}
000fh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0011h movzx edx,r9b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d1}
0015h shl edx,10h                             ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 10}
0018h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
001ah mov edx,[rsp+28h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 54 24 28}
001eh movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0021h shl edx,18h                             ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 18}
0024h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0026h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector32 create(N32 n, ushort lo, ushort hi), hex://bitvectors/bitvector?create#create_(n32,16u,16u)
; create_(n32,16u,16u)[18] = {0x0f,0x1f,0x44,0x00,0x00,0x41,0x0f,0xb7,0xc0,0xc1,0xe0,0x10,0x0f,0xb7,0xd2,0x0b,0xc2,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 c0}
0009h shl eax,10h                             ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e0 10}
000ch movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000fh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector64 create(N64 n, ushort x0, ushort x1, ushort x2, ushort x3), hex://bitvectors/bitvector?create#create_(n64,16u,16u,16u,16u)
; create_(n64,16u,16u,16u,16u)[36] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc2,0x41,0x0f,0xb7,0xd0,0xc1,0xe2,0x10,0x0b,0xc2,0x41,0x0f,0xb7,0xd1,0x0b,0xc2,0x8b,0x54,0x24,0x28,0x0f,0xb7,0xd2,0xc1,0xe2,0x10,0x0b,0xc2,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
0008h movzx edx,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 d0}
000ch shl edx,10h                             ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 10}
000fh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0011h movzx edx,r9w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 d1}
0015h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0017h mov edx,[rsp+28h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 54 24 28}
001bh movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
001eh shl edx,10h                             ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 10}
0021h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0023h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector64 create(N64 n, byte src), hex://bitvectors/bitvector?create#create_(n64,8u)
; create_(n64,8u)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc2,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector64 create(N64 n, ushort src), hex://bitvectors/bitvector?create#create_(n64,16u)
; create_(n64,16u)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc2,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector64 create(N64 n, uint src), hex://bitvectors/bitvector?create#create_(n64,32u)
; create_(n64,32u)[8] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc2,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector64 create(N64 n, ulong src), hex://bitvectors/bitvector?create#create_(n64,64u)
; create_(n64,64u)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc2,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector64 create(N64 n, uint lo, uint hi), hex://bitvectors/bitvector?create#create_(n64,32u,32u)
; create_(n64,32u,32u)[18] = {0x0f,0x1f,0x44,0x00,0x00,0x41,0x8b,0xc0,0x48,0xc1,0xe0,0x20,0x8b,0xd2,0x48,0x0b,0xc2,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
0008h shl rax,20h                             ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e0 20}
000ch mov edx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d2}
000eh or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector64 create(N64 n, BitString src), hex://bitvectors/bitvector?create#create_(n64)
; create_(n64)[156] = {0x48,0x83,0xec,0x48,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x38,0x48,0x89,0x44,0x24,0x28,0x48,0x8d,0x4c,0x24,0x38,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x01,0x48,0x85,0xd2,0x75,0x07,0x33,0xc9,0x45,0x33,0xc9,0xeb,0x08,0x48,0x8d,0x4a,0x10,0x44,0x8b,0x4a,0x08,0xba,0x08,0x00,0x00,0x00,0x41,0xb8,0x01,0x00,0x00,0x00,0x48,0x8d,0x44,0x24,0x38,0x4c,0x8d,0x54,0x24,0x28,0x49,0x89,0x0a,0x45,0x89,0x4a,0x08,0x48,0x8d,0x4c,0x24,0x20,0x44,0x88,0x01,0x89,0x51,0x04,0x48,0x8b,0xc8,0x48,0x8d,0x54,0x24,0x28,0x4c,0x8b,0x4c,0x24,0x20,0x45,0x33,0xc0,0xe8,0x48,0xc4,0x7c,0xff,0x83,0x7c,0x24,0x40,0x00,0x75,0x04,0x33,0xc0,0xeb,0x12,0x48,0x8b,0x44,0x24,0x38,0x8b,0x4c,0x24,0x40,0x48,0x83,0xf9,0x08,0x7c,0x08,0x48,0x8b,0x00,0x48,0x83,0xc4,0x48,0xc3,0xb9,0x28,0x00,0x00,0x00,0xe8,0x04,0x50,0x4d,0xff}
; TermCode = CTC_INTRx2
0000h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+38h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 38}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h lea rcx,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 38}
0018h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
001ch vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0020h test rdx,rdx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 d2}
0023h jne short 002ch                         ; JNE rel8 || 75 cb || encoded[2]{75 07}
0025h xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
0027h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
002ah jmp short 0034h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
002ch lea rcx,[rdx+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4a 10}
0030h mov r9d,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 4a 08}
0034h mov edx,8                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 08 00 00 00}
0039h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
003fh lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
0044h lea r10,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 54 24 28}
0049h mov [r10],rcx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 0a}
004ch mov [r10+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{45 89 4a 08}
0050h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0055h mov [rcx],r8b                           ; MOV r/m8, r8 || 88 /r || encoded[3]{44 88 01}
0058h mov [rcx+4],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 51 04}
005bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005eh lea rdx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 28}
0063h mov r9,[rsp+20h]                        ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{4c 8b 4c 24 20}
0068h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
006bh call 7ff7c7a5c758h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 c4 7c ff}
0070h cmp dword ptr [rsp+40h],0               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[5]{83 7c 24 40 00}
0075h jne short 007bh                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
0077h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0079h jmp short 008dh                         ; JMP rel8 || EB cb || encoded[2]{eb 12}
007bh mov rax,[rsp+38h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 44 24 38}
0080h mov ecx,[rsp+40h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 4c 24 40}
0084h cmp rcx,8                               ; CMP r/m64, imm8 || REX.W 83 /7 ib || encoded[4]{48 83 f9 08}
0088h jl short 0092h                          ; JL rel8 || 7C cb || encoded[2]{7c 08}
008ah mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
008dh add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
0091h ret                                     ; RET || C3 || encoded[1]{c3}
0092h mov ecx,28h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 28 00 00 00}
0097h call 7ff7c7765340h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 50 4d ff}
------------------------------------------------------------------------------------------------------------------------
; BitVector4 dec(BitVector4 x), hex://bitvectors/bitvector?dec#dec_()
; dec_()[43] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x89,0x4c,0x24,0x08,0x80,0x7c,0x24,0x08,0x00,0x76,0x14,0x48,0x8d,0x44,0x24,0x08,0x0f,0xb6,0x10,0x8d,0x4a,0xff,0x88,0x08,0x83,0xe2,0x0f,0x0f,0xb6,0xc2,0xc3,0xb8,0x0f,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov [rsp+8],rcx                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 4c 24 08}
000ah cmp byte ptr [rsp+8],0                  ; CMP r/m8, imm8 || 80 /7 ib || encoded[5]{80 7c 24 08 00}
000fh jbe short 0025h                         ; JBE rel8 || 76 cb || encoded[2]{76 14}
0011h lea rax,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 08}
0016h movzx edx,byte ptr [rax]                ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 10}
0019h lea ecx,[rdx-1]                         ; LEA r32, m || o32 8D /r || encoded[3]{8d 4a ff}
001ch mov [rax],cl                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 08}
001eh and edx,0fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 0f}
0021h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0024h ret                                     ; RET || C3 || encoded[1]{c3}
0025h mov eax,0fh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 0f 00 00 00}
002ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector8 dec(BitVector8 x), hex://bitvectors/bitvector?dec#dec_()
; dec_()[14] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0xff,0xc8,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector16 dec(BitVector16 x), hex://bitvectors/bitvector?dec#dec_()
; dec_()[14] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0xff,0xc8,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
000ah movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector32 dec(BitVector32 x), hex://bitvectors/bitvector?dec#dec_()
; dec_()[10] = {0x0f,0x1f,0x44,0x00,0x00,0xff,0xc9,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0007h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector64 dec(BitVector64 x), hex://bitvectors/bitvector?dec#dec_()
; dec_()[12] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xff,0xc9,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h dec rcx                                 ; DEC r/m64 || REX.W FF /1 || encoded[3]{48 ff c9}
0008h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector4 disable(BitVector4 x, int index), hex://bitvectors/bitvector?disable#disable_(32i)
; disable_(32i)[40] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x41,0xb8,0x01,0x00,0x00,0x00,0x8b,0xca,0x41,0xd3,0xe0,0x41,0x0f,0xb6,0xd0,0xf7,0xd2,0x0f,0xb6,0xd2,0x23,0xc2,0x0f,0xb6,0xc0,0x83,0xe0,0x0f,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
000eh mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0010h shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
0013h movzx edx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d0}
0017h not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
0019h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
001ch and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
001eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0021h and eax,0fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 0f}
0024h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0027h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector8 disable(BitVector8 x, int index), hex://bitvectors/bitvector?disable#disable_(32i)
; disable_(32i)[37] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x41,0xb8,0x01,0x00,0x00,0x00,0x8b,0xca,0x41,0xd3,0xe0,0x41,0x0f,0xb6,0xd0,0xf7,0xd2,0x0f,0xb6,0xd2,0x23,0xc2,0x0f,0xb6,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
000eh mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0010h shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
0013h movzx edx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d0}
0017h not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
0019h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
001ch and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
001eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0021h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0024h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector16 disable(BitVector16 x, int index), hex://bitvectors/bitvector?disable#disable_(32i)
; disable_(32i)[37] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x41,0xb8,0x01,0x00,0x00,0x00,0x8b,0xca,0x41,0xd3,0xe0,0x41,0x0f,0xb7,0xd0,0xf7,0xd2,0x0f,0xb7,0xd2,0x23,0xc2,0x0f,0xb7,0xc0,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
000eh mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0010h shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
0013h movzx edx,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 d0}
0017h not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
0019h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
001ch and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
001eh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0021h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0024h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector32 disable(BitVector32 x, int index), hex://bitvectors/bitvector?disable#disable_(32i)
; disable_(32i)[26] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0x41,0xb8,0x01,0x00,0x00,0x00,0x8b,0xca,0x41,0xd3,0xe0,0x41,0x8b,0xd0,0xf7,0xd2,0x23,0xc2,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
000dh mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
000fh shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
0012h mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
0015h not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
0017h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector64 disable(BitVector64 x, int index), hex://bitvectors/bitvector?disable#disable_(32i)
; disable_(32i)[29] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0x41,0xb8,0x01,0x00,0x00,0x00,0x8b,0xca,0x49,0xd3,0xe0,0x49,0x8b,0xd0,0x48,0xf7,0xd2,0x48,0x23,0xc2,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
000eh mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0010h shl r8,cl                               ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e0}
0013h mov rdx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d0}
0016h not rdx                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d2}
0019h and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint dist(BitVector4 x, BitVector4 y), hex://bitvectors/bitvector?dist#dist_()
; dist_()[41] = {0x50,0x0f,0x1f,0x40,0x00,0x0f,0xb6,0xc1,0x0f,0xb6,0xd2,0x33,0xc2,0x0f,0xb6,0xc0,0x83,0xe0,0x0f,0x0f,0xb6,0xc0,0x88,0x04,0x24,0x0f,0xb6,0x04,0x24,0x0f,0xb6,0xc0,0xf3,0x0f,0xb8,0xc0,0x48,0x83,0xc4,0x08,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
000dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0010h and eax,0fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 0f}
0013h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0016h mov [rsp],al                            ; MOV r/m8, r8 || 88 /r || encoded[3]{88 04 24}
0019h movzx eax,byte ptr [rsp]                ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 04 24}
001dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0020h popcnt eax,eax                          ; POPCNT r32, r/m32 || o32 F3 0F B8 /r || encoded[4]{f3 0f b8 c0}
0024h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0028h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint dist(BitVector8 x, BitVector8 y), hex://bitvectors/bitvector?dist#dist_()
; dist_()[35] = {0x50,0x0f,0x1f,0x40,0x00,0x0f,0xb6,0xc1,0x0f,0xb6,0xd2,0x33,0xc2,0x0f,0xb6,0xc0,0x88,0x04,0x24,0x0f,0xb6,0x04,0x24,0x0f,0xb6,0xc0,0xf3,0x0f,0xb8,0xc0,0x48,0x83,0xc4,0x08,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
000dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0010h mov [rsp],al                            ; MOV r/m8, r8 || 88 /r || encoded[3]{88 04 24}
0013h movzx eax,byte ptr [rsp]                ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 04 24}
0017h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ah popcnt eax,eax                          ; POPCNT r32, r/m32 || o32 F3 0F B8 /r || encoded[4]{f3 0f b8 c0}
001eh add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0022h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint dist(BitVector16 x, BitVector16 y), hex://bitvectors/bitvector?dist#dist_()
; dist_()[36] = {0x50,0x0f,0x1f,0x40,0x00,0x0f,0xb7,0xc1,0x0f,0xb7,0xd2,0x33,0xc2,0x0f,0xb7,0xc0,0x66,0x89,0x04,0x24,0x0f,0xb7,0x04,0x24,0x0f,0xb7,0xc0,0xf3,0x0f,0xb8,0xc0,0x48,0x83,0xc4,0x08,0xc3}
; TermCode = CTC_RET_SBB
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
000dh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0010h mov [rsp],ax                            ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 04 24}
0014h movzx eax,word ptr [rsp]                ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 04 24}
0018h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001bh popcnt eax,eax                          ; POPCNT r32, r/m32 || o32 F3 0F B8 /r || encoded[4]{f3 0f b8 c0}
001fh add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0023h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint dist(BitVector32 x, BitVector32 y), hex://bitvectors/bitvector?dist#dist_()
; dist_()[14] = {0x0f,0x1f,0x44,0x00,0x00,0x33,0xd1,0x33,0xc0,0xf3,0x0f,0xb8,0xc2,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor edx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d1}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h popcnt eax,edx                          ; POPCNT r32, r/m32 || o32 F3 0F B8 /r || encoded[4]{f3 0f b8 c2}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint dist(BitVector64 x, BitVector64 y), hex://bitvectors/bitvector?dist#dist_()
; dist_()[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x33,0xd1,0x33,0xc0,0xf3,0x48,0x0f,0xb8,0xc2,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor rdx,rcx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 d1}
0008h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ah popcnt rax,rdx                          ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 48 0f b8 c2}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit dot(BitVector4 x, BitVector4 y), hex://bitvectors/bitvector?dot#dot_()
; dot_()[49] = {0x50,0x0f,0x1f,0x40,0x00,0x0f,0xb6,0xc1,0x0f,0xb6,0xd2,0x23,0xc2,0x0f,0xb6,0xc0,0x83,0xe0,0x0f,0x0f,0xb6,0xc0,0x88,0x04,0x24,0x0f,0xb6,0x04,0x24,0x0f,0xb6,0xc0,0xf3,0x0f,0xb8,0xc0,0xa8,0x01,0x0f,0x95,0xc0,0x0f,0xb6,0xc0,0x48,0x83,0xc4,0x08,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
000dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0010h and eax,0fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 0f}
0013h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0016h mov [rsp],al                            ; MOV r/m8, r8 || 88 /r || encoded[3]{88 04 24}
0019h movzx eax,byte ptr [rsp]                ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 04 24}
001dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0020h popcnt eax,eax                          ; POPCNT r32, r/m32 || o32 F3 0F B8 /r || encoded[4]{f3 0f b8 c0}
0024h test al,1                               ; TEST AL, imm8 || A8 ib || encoded[2]{a8 01}
0026h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0029h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
002ch add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0030h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit dot(BitVector8 x, BitVector8 y), hex://bitvectors/bitvector?dot#dot_()
; dot_()[43] = {0x50,0x0f,0x1f,0x40,0x00,0x0f,0xb6,0xc1,0x0f,0xb6,0xd2,0x23,0xc2,0x0f,0xb6,0xc0,0x88,0x04,0x24,0x0f,0xb6,0x04,0x24,0x0f,0xb6,0xc0,0xf3,0x0f,0xb8,0xc0,0xa8,0x01,0x0f,0x95,0xc0,0x0f,0xb6,0xc0,0x48,0x83,0xc4,0x08,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
000dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0010h mov [rsp],al                            ; MOV r/m8, r8 || 88 /r || encoded[3]{88 04 24}
0013h movzx eax,byte ptr [rsp]                ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 04 24}
0017h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ah popcnt eax,eax                          ; POPCNT r32, r/m32 || o32 F3 0F B8 /r || encoded[4]{f3 0f b8 c0}
001eh test al,1                               ; TEST AL, imm8 || A8 ib || encoded[2]{a8 01}
0020h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0023h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0026h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
002ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit dot(BitVector16 x, BitVector16 y), hex://bitvectors/bitvector?dot#dot_()
; dot_()[44] = {0x50,0x0f,0x1f,0x40,0x00,0x0f,0xb7,0xc1,0x0f,0xb7,0xd2,0x23,0xc2,0x0f,0xb7,0xc0,0x66,0x89,0x04,0x24,0x0f,0xb7,0x04,0x24,0x0f,0xb7,0xc0,0xf3,0x0f,0xb8,0xc0,0xa8,0x01,0x0f,0x95,0xc0,0x0f,0xb6,0xc0,0x48,0x83,0xc4,0x08,0xc3}
; TermCode = CTC_RET_SBB
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
000dh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0010h mov [rsp],ax                            ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 04 24}
0014h movzx eax,word ptr [rsp]                ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 04 24}
0018h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001bh popcnt eax,eax                          ; POPCNT r32, r/m32 || o32 F3 0F B8 /r || encoded[4]{f3 0f b8 c0}
001fh test al,1                               ; TEST AL, imm8 || A8 ib || encoded[2]{a8 01}
0021h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0024h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0027h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
002bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit dot(BitVector32 x, BitVector32 y), hex://bitvectors/bitvector?dot#dot_()
; dot_()[22] = {0x0f,0x1f,0x44,0x00,0x00,0x23,0xd1,0x33,0xc0,0xf3,0x0f,0xb8,0xc2,0xa8,0x01,0x0f,0x95,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h and edx,ecx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 d1}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h popcnt eax,edx                          ; POPCNT r32, r/m32 || o32 F3 0F B8 /r || encoded[4]{f3 0f b8 c2}
000dh test al,1                               ; TEST AL, imm8 || A8 ib || encoded[2]{a8 01}
000fh setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0012h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit dot(BitVector64 x, BitVector64 y), hex://bitvectors/bitvector?dot#dot_()
; dot_()[24] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x23,0xd1,0x33,0xc0,0xf3,0x48,0x0f,0xb8,0xc2,0xa8,0x01,0x0f,0x95,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h and rdx,rcx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 d1}
0008h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ah popcnt rax,rdx                          ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 48 0f b8 c2}
000fh test al,1                               ; TEST AL, imm8 || A8 ib || encoded[2]{a8 01}
0011h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0014h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector4 enable(BitVector4 x, int index), hex://bitvectors/bitvector?enable#enable_(32i)
; enable_(32i)[38] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x41,0xb8,0x01,0x00,0x00,0x00,0x8b,0xca,0x41,0xd3,0xe0,0x41,0x0f,0xb6,0xd0,0x0b,0xc2,0x0f,0xb6,0xc0,0x0f,0xb6,0xc0,0x83,0xe0,0x0f,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
000eh mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0010h shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
0013h movzx edx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d0}
0017h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0019h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ch movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001fh and eax,0fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 0f}
0022h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0025h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector8 enable(BitVector8 x, int index), hex://bitvectors/bitvector?enable#enable_(32i)
; enable_(32i)[35] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x41,0xb8,0x01,0x00,0x00,0x00,0x8b,0xca,0x41,0xd3,0xe0,0x41,0x0f,0xb6,0xd0,0x0b,0xc2,0x0f,0xb6,0xc0,0x0f,0xb6,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
000eh mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0010h shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
0013h movzx edx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d0}
0017h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0019h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ch movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001fh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0022h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector16 enable(BitVector16 x, int index), hex://bitvectors/bitvector?enable#enable_(32i)
; enable_(32i)[35] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x41,0xb8,0x01,0x00,0x00,0x00,0x8b,0xca,0x41,0xd3,0xe0,0x41,0x0f,0xb7,0xd0,0x0b,0xc2,0x0f,0xb7,0xc0,0x0f,0xb7,0xc0,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
000eh mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0010h shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
0013h movzx edx,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 d0}
0017h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0019h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001ch movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001fh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0022h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector32 enable(BitVector32 x, int index), hex://bitvectors/bitvector?enable#enable_(32i)
; enable_(32i)[22] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0x41,0xb8,0x01,0x00,0x00,0x00,0x8b,0xca,0x41,0xd3,0xe0,0x41,0x0b,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
000dh mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
000fh shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
0012h or eax,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector64 enable(BitVector64 x, int index), hex://bitvectors/bitvector?enable#enable_(32i)
; enable_(32i)[23] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0x41,0xb8,0x01,0x00,0x00,0x00,0x8b,0xca,0x49,0xd3,0xe0,0x49,0x0b,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
000eh mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0010h shl r8,cl                               ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e0}
0013h or rax,r8                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{49 0b c0}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit enabled(BitVector4 x, int pos), hex://bitvectors/bitvector?enabled#enabled_(32i)
; enabled_(32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x8b,0xca,0xd3,0xe8,0x83,0xe0,0x01,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
000ah shr eax,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 e8}
000ch and eax,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 01}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit enabled(BitVector8 x, int pos), hex://bitvectors/bitvector?enabled#enabled_(32i)
; enabled_(32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x8b,0xca,0xd3,0xe8,0x83,0xe0,0x01,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
000ah shr eax,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 e8}
000ch and eax,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 01}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit enabled(BitVector16 x, int pos), hex://bitvectors/bitvector?enabled#enabled_(32i)
; enabled_(32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x8b,0xca,0xd3,0xe8,0x83,0xe0,0x01,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
000ah shr eax,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 e8}
000ch and eax,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 01}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit enabled(BitVector32 x, int pos), hex://bitvectors/bitvector?enabled#enabled_(32i)
; enabled_(32i)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0x8b,0xca,0xd3,0xe8,0x83,0xe0,0x01,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0009h shr eax,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 e8}
000bh and eax,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 01}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit enabled(BitVector64 x, int pos), hex://bitvectors/bitvector?enabled#enabled_(32i)
; enabled_(32i)[17] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0x8b,0xca,0x48,0xd3,0xe8,0x83,0xe0,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
000ah shr rax,cl                              ; SHR r/m64, CL || REX.W D3 /5 || encoded[3]{48 d3 e8}
000dh and eax,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 01}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector8 extend(BitVector4 src, N8 n), hex://bitvectors/bitvector?extend#extend_(n8)
; extend_(n8)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector16 extend(BitVector8 src, N16 n), hex://bitvectors/bitvector?extend#extend_(n16)
; extend_(n16)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x0f,0xb7,0xc0,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
000bh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector32 extend(BitVector16 src, N32 n), hex://bitvectors/bitvector?extend#extend_(n32)
; extend_(n32)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector64 extend(BitVector32 src, N64 n), hex://bitvectors/bitvector?extend#extend_(n64)
; extend_(n64)[8] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector128<N128,ulong> extend(BitVector64 src, N128 n), hex://bitvectors/bitvector?extend#extend_(n128)
; extend_(n128)[18] = {0xc5,0xf8,0x77,0x66,0x90,0xc4,0xe1,0xf9,0x6e,0xc2,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovq xmm0,rdx                          ; VMOVQ xmm1, r/m64 || VEX.128.66.0F.W1 6E /r || encoded[5]{c4 e1 f9 6e c2}
000ah vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
000eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; string format(BitVector24 x, Nullable<BitFormatConfig> fmt), hex://bitvectors/bitvector?format#format_()
; format_()[226] = {0x57,0x56,0x53,0x48,0x83,0xec,0x50,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x48,0x48,0x89,0x44,0x24,0x38,0x48,0x89,0x44,0x24,0x40,0x48,0x8b,0xf2,0x8b,0xf9,0xbb,0x18,0x00,0x00,0x00,0x48,0xb9,0x10,0xea,0x72,0xc7,0xf7,0x7f,0x00,0x00,0xba,0x20,0x00,0x00,0x00,0xe8,0x27,0x61,0xfd,0x5e,0x48,0x8d,0x50,0x10,0x45,0x33,0xc0,0x41,0x8b,0xc8,0xc1,0xe1,0x03,0x4c,0x63,0xc9,0x4c,0x03,0xca,0x41,0x8b,0xc8,0xc1,0xe1,0x03,0x44,0x8b,0xd7,0x41,0xd3,0xea,0x41,0x0f,0xb6,0xca,0xc1,0xe1,0x03,0x48,0x63,0xc9,0x49,0xba,0x6d,0xcc,0xfb,0x71,0x8e,0x01,0x00,0x00,0x49,0x03,0xca,0x48,0x8b,0x09,0x49,0x89,0x09,0x41,0xff,0xc0,0x41,0x83,0xf8,0x04,0x7c,0xc2,0x48,0x83,0xc0,0x10,0xb9,0x20,0x00,0x00,0x00,0x83,0xfb,0x20,0x7d,0x02,0xeb,0x05,0xbb,0x20,0x00,0x00,0x00,0x8b,0xd3,0x8b,0xc9,0x48,0x3b,0xd1,0x77,0x41,0x48,0x89,0x44,0x24,0x38,0x89,0x5c,0x24,0x40,0x48,0x8d,0x4c,0x24,0x38,0xe8,0x71,0xc8,0xd8,0x4e,0x48,0x89,0x44,0x24,0x48,0x48,0x8d,0x4c,0x24,0x48,0xc5,0xfa,0x6f,0x06,0xc5,0xfa,0x7f,0x44,0x24,0x20,0x8b,0x56,0x10,0x89,0x54,0x24,0x30,0x48,0x8d,0x54,0x24,0x20,0xe8,0xa4,0xb9,0x7c,0xff,0x90,0x48,0x83,0xc4,0x50,0x5b,0x5e,0x5f,0xc3,0xe8,0x3e,0x45,0x4d,0xff}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,50h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 50}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+48h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 48}
0011h mov [rsp+38h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 38}
0016h mov [rsp+40h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 40}
001bh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
001eh mov edi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f9}
0020h mov ebx,18h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{bb 18 00 00 00}
0025h mov rcx,7ff7c772ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 72 c7 f7 7f 00 00}
002fh mov edx,20h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 20 00 00 00}
0034h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 61 fd 5e}
0039h lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
003dh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0040h mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0043h shl ecx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 03}
0046h movsxd r9,ecx                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4c 63 c9}
0049h add r9,rdx                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 ca}
004ch mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
004fh shl ecx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 03}
0052h mov r10d,edi                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b d7}
0055h shr r10d,cl                             ; SHR r/m32, CL || o32 D3 /5 || encoded[3]{41 d3 ea}
0058h movzx ecx,r10b                          ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 ca}
005ch shl ecx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 03}
005fh movsxd rcx,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c9}
0062h mov r10,18e71fbcc6dh                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 ba 6d cc fb 71 8e 01 00 00}
006ch add rcx,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 ca}
006fh mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
0072h mov [r9],rcx                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 09}
0075h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
0078h cmp r8d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 04}
007ch jl short 0040h                          ; JL rel8 || 7C cb || encoded[2]{7c c2}
007eh add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
0082h mov ecx,20h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 20 00 00 00}
0087h cmp ebx,20h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 fb 20}
008ah jge short 008eh                         ; JGE rel8 || 7D cb || encoded[2]{7d 02}
008ch jmp short 0093h                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
008eh mov ebx,20h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{bb 20 00 00 00}
0093h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0095h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0097h cmp rdx,rcx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b d1}
009ah ja short 00ddh                          ; JA rel8 || 77 cb || encoded[2]{77 41}
009ch mov [rsp+38h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 38}
00a1h mov [rsp+40h],ebx                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 5c 24 40}
00a5h lea rcx,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 38}
00aah call 7ff81701d5a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 c8 d8 4e}
00afh mov [rsp+48h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 48}
00b4h lea rcx,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 48}
00b9h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
00bdh vmovdqu xmmword ptr [rsp+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 20}
00c3h mov edx,[rsi+10h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 56 10}
00c6h mov [rsp+30h],edx                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 54 24 30}
00cah lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
00cfh call 7ff7c7a5c6f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 b9 7c ff}
00d4h nop                                     ; NOP || o32 90 || encoded[1]{90}
00d5h add rsp,50h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 50}
00d9h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00dah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00dbh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00dch ret                                     ; RET || C3 || encoded[1]{c3}
00ddh call 7ff7c77652a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e 45 4d ff}
------------------------------------------------------------------------------------------------------------------------
; string format(BitVector32 x, Nullable<BitFormatConfig> fmt), hex://bitvectors/bitvector?format#format_()
; format_()[226] = {0x57,0x56,0x53,0x48,0x83,0xec,0x50,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x48,0x48,0x89,0x44,0x24,0x38,0x48,0x89,0x44,0x24,0x40,0x48,0x8b,0xf2,0x8b,0xf9,0xbb,0x20,0x00,0x00,0x00,0x48,0xb9,0x10,0xea,0x72,0xc7,0xf7,0x7f,0x00,0x00,0xba,0x20,0x00,0x00,0x00,0xe8,0x27,0x60,0xfd,0x5e,0x48,0x8d,0x50,0x10,0x45,0x33,0xc0,0x41,0x8b,0xc8,0xc1,0xe1,0x03,0x4c,0x63,0xc9,0x4c,0x03,0xca,0x41,0x8b,0xc8,0xc1,0xe1,0x03,0x44,0x8b,0xd7,0x41,0xd3,0xea,0x41,0x0f,0xb6,0xca,0xc1,0xe1,0x03,0x48,0x63,0xc9,0x49,0xba,0x6d,0xcc,0xfb,0x71,0x8e,0x01,0x00,0x00,0x49,0x03,0xca,0x48,0x8b,0x09,0x49,0x89,0x09,0x41,0xff,0xc0,0x41,0x83,0xf8,0x04,0x7c,0xc2,0x48,0x83,0xc0,0x10,0xb9,0x20,0x00,0x00,0x00,0x83,0xfb,0x20,0x7d,0x02,0xeb,0x05,0xbb,0x20,0x00,0x00,0x00,0x8b,0xd3,0x8b,0xc9,0x48,0x3b,0xd1,0x77,0x41,0x48,0x89,0x44,0x24,0x38,0x89,0x5c,0x24,0x40,0x48,0x8d,0x4c,0x24,0x38,0xe8,0x71,0xc7,0xd8,0x4e,0x48,0x89,0x44,0x24,0x48,0x48,0x8d,0x4c,0x24,0x48,0xc5,0xfa,0x6f,0x06,0xc5,0xfa,0x7f,0x44,0x24,0x20,0x8b,0x56,0x10,0x89,0x54,0x24,0x30,0x48,0x8d,0x54,0x24,0x20,0xe8,0xa4,0xb8,0x7c,0xff,0x90,0x48,0x83,0xc4,0x50,0x5b,0x5e,0x5f,0xc3,0xe8,0x3e,0x44,0x4d,0xff}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,50h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 50}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+48h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 48}
0011h mov [rsp+38h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 38}
0016h mov [rsp+40h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 40}
001bh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
001eh mov edi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f9}
0020h mov ebx,20h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{bb 20 00 00 00}
0025h mov rcx,7ff7c772ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 72 c7 f7 7f 00 00}
002fh mov edx,20h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 20 00 00 00}
0034h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 60 fd 5e}
0039h lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
003dh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0040h mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0043h shl ecx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 03}
0046h movsxd r9,ecx                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4c 63 c9}
0049h add r9,rdx                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 ca}
004ch mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
004fh shl ecx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 03}
0052h mov r10d,edi                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b d7}
0055h shr r10d,cl                             ; SHR r/m32, CL || o32 D3 /5 || encoded[3]{41 d3 ea}
0058h movzx ecx,r10b                          ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 ca}
005ch shl ecx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 03}
005fh movsxd rcx,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c9}
0062h mov r10,18e71fbcc6dh                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 ba 6d cc fb 71 8e 01 00 00}
006ch add rcx,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 ca}
006fh mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
0072h mov [r9],rcx                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 09}
0075h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
0078h cmp r8d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 04}
007ch jl short 0040h                          ; JL rel8 || 7C cb || encoded[2]{7c c2}
007eh add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
0082h mov ecx,20h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 20 00 00 00}
0087h cmp ebx,20h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 fb 20}
008ah jge short 008eh                         ; JGE rel8 || 7D cb || encoded[2]{7d 02}
008ch jmp short 0093h                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
008eh mov ebx,20h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{bb 20 00 00 00}
0093h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0095h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0097h cmp rdx,rcx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b d1}
009ah ja short 00ddh                          ; JA rel8 || 77 cb || encoded[2]{77 41}
009ch mov [rsp+38h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 38}
00a1h mov [rsp+40h],ebx                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 5c 24 40}
00a5h lea rcx,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 38}
00aah call 7ff81701d5a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 c7 d8 4e}
00afh mov [rsp+48h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 48}
00b4h lea rcx,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 48}
00b9h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
00bdh vmovdqu xmmword ptr [rsp+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 20}
00c3h mov edx,[rsi+10h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 56 10}
00c6h mov [rsp+30h],edx                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 54 24 30}
00cah lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
00cfh call 7ff7c7a5c6f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 b8 7c ff}
00d4h nop                                     ; NOP || o32 90 || encoded[1]{90}
00d5h add rsp,50h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 50}
00d9h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00dah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00dbh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00dch ret                                     ; RET || C3 || encoded[1]{c3}
00ddh call 7ff7c77652a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e 44 4d ff}
------------------------------------------------------------------------------------------------------------------------
; string format(BitVector64 x, Nullable<BitFormatConfig> fmt), hex://bitvectors/bitvector?format#format_()
; format_()[227] = {0x57,0x56,0x53,0x48,0x83,0xec,0x50,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x48,0x48,0x89,0x44,0x24,0x38,0x48,0x89,0x44,0x24,0x40,0x48,0x8b,0xf2,0x48,0x8b,0xf9,0xbb,0x40,0x00,0x00,0x00,0x48,0xb9,0x10,0xea,0x72,0xc7,0xf7,0x7f,0x00,0x00,0xba,0x40,0x00,0x00,0x00,0xe8,0x26,0x5f,0xfd,0x5e,0x48,0x8d,0x50,0x10,0x45,0x33,0xc0,0x41,0x8b,0xc8,0xc1,0xe1,0x03,0x4c,0x63,0xc9,0x4c,0x03,0xca,0x41,0x8b,0xc8,0xc1,0xe1,0x03,0x4c,0x8b,0xd7,0x49,0xd3,0xea,0x41,0x0f,0xb6,0xca,0xc1,0xe1,0x03,0x48,0x63,0xc9,0x49,0xba,0x6d,0xcc,0xfb,0x71,0x8e,0x01,0x00,0x00,0x49,0x03,0xca,0x48,0x8b,0x09,0x49,0x89,0x09,0x41,0xff,0xc0,0x41,0x83,0xf8,0x08,0x7c,0xc2,0x48,0x83,0xc0,0x10,0xb9,0x40,0x00,0x00,0x00,0x83,0xfb,0x40,0x7d,0x02,0xeb,0x05,0xbb,0x40,0x00,0x00,0x00,0x8b,0xd3,0x8b,0xc9,0x48,0x3b,0xd1,0x77,0x41,0x48,0x89,0x44,0x24,0x38,0x89,0x5c,0x24,0x40,0x48,0x8d,0x4c,0x24,0x38,0xe8,0x70,0xc6,0xd8,0x4e,0x48,0x89,0x44,0x24,0x48,0x48,0x8d,0x4c,0x24,0x48,0xc5,0xfa,0x6f,0x06,0xc5,0xfa,0x7f,0x44,0x24,0x20,0x8b,0x56,0x10,0x89,0x54,0x24,0x30,0x48,0x8d,0x54,0x24,0x20,0xe8,0xa3,0xb7,0x7c,0xff,0x90,0x48,0x83,0xc4,0x50,0x5b,0x5e,0x5f,0xc3,0xe8,0x3d,0x43,0x4d,0xff}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,50h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 50}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+48h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 48}
0011h mov [rsp+38h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 38}
0016h mov [rsp+40h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 40}
001bh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
001eh mov rdi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f9}
0021h mov ebx,40h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{bb 40 00 00 00}
0026h mov rcx,7ff7c772ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 72 c7 f7 7f 00 00}
0030h mov edx,40h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 40 00 00 00}
0035h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 5f fd 5e}
003ah lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
003eh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0041h mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0044h shl ecx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 03}
0047h movsxd r9,ecx                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4c 63 c9}
004ah add r9,rdx                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 ca}
004dh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0050h shl ecx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 03}
0053h mov r10,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b d7}
0056h shr r10,cl                              ; SHR r/m64, CL || REX.W D3 /5 || encoded[3]{49 d3 ea}
0059h movzx ecx,r10b                          ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 ca}
005dh shl ecx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 03}
0060h movsxd rcx,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c9}
0063h mov r10,18e71fbcc6dh                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 ba 6d cc fb 71 8e 01 00 00}
006dh add rcx,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 ca}
0070h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
0073h mov [r9],rcx                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 09}
0076h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
0079h cmp r8d,8                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 08}
007dh jl short 0041h                          ; JL rel8 || 7C cb || encoded[2]{7c c2}
007fh add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
0083h mov ecx,40h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 40 00 00 00}
0088h cmp ebx,40h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 fb 40}
008bh jge short 008fh                         ; JGE rel8 || 7D cb || encoded[2]{7d 02}
008dh jmp short 0094h                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
008fh mov ebx,40h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{bb 40 00 00 00}
0094h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0096h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0098h cmp rdx,rcx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b d1}
009bh ja short 00deh                          ; JA rel8 || 77 cb || encoded[2]{77 41}
009dh mov [rsp+38h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 38}
00a2h mov [rsp+40h],ebx                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 5c 24 40}
00a6h lea rcx,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 38}
00abh call 7ff81701d5a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 c6 d8 4e}
00b0h mov [rsp+48h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 48}
00b5h lea rcx,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 48}
00bah vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
00beh vmovdqu xmmword ptr [rsp+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 20}
00c4h mov edx,[rsi+10h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 56 10}
00c7h mov [rsp+30h],edx                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 54 24 30}
00cbh lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
00d0h call 7ff7c7a5c6f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 b7 7c ff}
00d5h nop                                     ; NOP || o32 90 || encoded[1]{90}
00d6h add rsp,50h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 50}
00dah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00dbh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00dch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00ddh ret                                     ; RET || C3 || encoded[1]{c3}
00deh call 7ff7c77652a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d 43 4d ff}
------------------------------------------------------------------------------------------------------------------------
; BitVector4 gather(BitVector4 src, BitVector4 spec), hex://bitvectors/bitvector?gather#gather_()
; gather_()[29] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x0f,0xb6,0xd2,0x0f,0xb6,0xc0,0xc4,0xe2,0x7a,0xf5,0xc2,0x0f,0xb6,0xc0,0x83,0xe0,0x0f,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh pext eax,eax,edx                        ; PEXT r32a, r32b, r/m32 || VEX.LZ.F3.0F38.W0 F5 /r || encoded[5]{c4 e2 7a f5 c2}
0013h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0016h and eax,0fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 0f}
0019h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector8 gather(BitVector8 src, BitVector8 spec), hex://bitvectors/bitvector?gather#gather_()
; gather_()[23] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x0f,0xb6,0xd2,0x0f,0xb6,0xc0,0xc4,0xe2,0x7a,0xf5,0xc2,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh pext eax,eax,edx                        ; PEXT r32a, r32b, r/m32 || VEX.LZ.F3.0F38.W0 F5 /r || encoded[5]{c4 e2 7a f5 c2}
0013h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector16 gather(BitVector16 src, BitVector16 spec), hex://bitvectors/bitvector?gather#gather_()
; gather_()[23] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x0f,0xb7,0xd2,0x0f,0xb7,0xc0,0xc4,0xe2,0x7a,0xf5,0xc2,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
000eh pext eax,eax,edx                        ; PEXT r32a, r32b, r/m32 || VEX.LZ.F3.0F38.W0 F5 /r || encoded[5]{c4 e2 7a f5 c2}
0013h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector32 gather(BitVector32 src, BitVector32 spec), hex://bitvectors/bitvector?gather#gather_()
; gather_()[11] = {0x0f,0x1f,0x44,0x00,0x00,0xc4,0xe2,0x72,0xf5,0xc2,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h pext eax,ecx,edx                        ; PEXT r32a, r32b, r/m32 || VEX.LZ.F3.0F38.W0 F5 /r || encoded[5]{c4 e2 72 f5 c2}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector64 gather(BitVector64 src, BitVector64 spec), hex://bitvectors/bitvector?gather#gather_()
; gather_()[11] = {0x0f,0x1f,0x44,0x00,0x00,0xc4,0xe2,0xf2,0xf5,0xc2,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h pext rax,rcx,rdx                        ; PEXT r64a, r64b, r/m64 || VEX.LZ.F3.0F38.W1 F5 /r || encoded[5]{c4 e2 f2 f5 c2}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<byte> generic(N8 n8, byte a), hex://bitvectors/bitvector?generic#generic_(n8,8u)
; generic_(n8,8u)[12] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc2,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0008h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<byte> generic(N8 n, bit b0, bit b1, bit b2, bit b3), hex://bitvectors/bitvector?generic#generic_(n8,1u,1u,1u,1u)
; generic_(n8,1u,1u,1u,1u)[47] = {0x50,0x0f,0x1f,0x40,0x00,0x41,0xd1,0xe0,0x41,0x0b,0xd0,0x41,0xc1,0xe1,0x02,0x41,0x0b,0xd1,0x8b,0x44,0x24,0x30,0xc1,0xe0,0x03,0x0b,0xd0,0x0f,0xb6,0xc2,0x88,0x04,0x24,0x8b,0x04,0x24,0x0f,0xb6,0xc0,0x0f,0xb6,0xc0,0x48,0x83,0xc4,0x08,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h shl r8d,1                               ; SHL r/m32, 1 || o32 D1 /4 || encoded[3]{41 d1 e0}
0008h or edx,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b d0}
000bh shl r9d,2                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e1 02}
000fh or edx,r9d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b d1}
0012h mov eax,[rsp+30h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 30}
0016h shl eax,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e0 03}
0019h or edx,eax                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b d0}
001bh movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
001eh mov [rsp],al                            ; MOV r/m8, r8 || 88 /r || encoded[3]{88 04 24}
0021h mov eax,[rsp]                           ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 24}
0024h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0027h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
002ah add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
002eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<uint> generic(byte x0, byte x1, byte x2, byte x3), hex://bitvectors/bitvector?generic#generic_(8u,8u,8u,8u)
; generic_(8u,8u,8u,8u)[35] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x0f,0xb6,0xd2,0xc1,0xe2,0x08,0x0b,0xc2,0x41,0x0f,0xb6,0xd0,0xc1,0xe2,0x10,0x0b,0xc2,0x41,0x0f,0xb6,0xd1,0xc1,0xe2,0x18,0x0b,0xc2,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh shl edx,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 08}
000eh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0010h movzx edx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d0}
0014h shl edx,10h                             ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 10}
0017h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0019h movzx edx,r9b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d1}
001dh shl edx,18h                             ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 18}
0020h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0022h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector8 gfmul(BitVector8 x, BitVector8 y), hex://bitvectors/bitvector?gfmul#gfmul_()
; gfmul_()[164] = {0x57,0x56,0x48,0x83,0xec,0x28,0xc5,0xf8,0x77,0x40,0x0f,0xb6,0xf1,0x40,0x0f,0xb6,0xfa,0x48,0xb9,0xc8,0x63,0xad,0xc7,0xf7,0x7f,0x00,0x00,0xba,0x14,0x00,0x00,0x00,0xe8,0x8b,0x5f,0xfd,0x5e,0x0f,0xb7,0x05,0x0a,0x53,0x84,0xff,0x40,0x0f,0xb6,0xd6,0xc4,0xe1,0xf9,0x6e,0xc2,0x40,0x0f,0xb6,0xd7,0xc4,0xe1,0xf9,0x6e,0xca,0xc4,0xe3,0x79,0x44,0xc1,0x00,0xc4,0xe1,0xf9,0x7e,0xc2,0x0f,0xb7,0xd2,0x8b,0xca,0xc1,0xf9,0x08,0x0f,0xb7,0xc9,0xc4,0xe1,0xf9,0x6e,0xc1,0x8b,0xc8,0xc4,0xe1,0xf9,0x6e,0xc9,0xc4,0xe3,0x79,0x44,0xc1,0x00,0xc4,0xe1,0xf9,0x7e,0xc1,0x0f,0xb7,0xc9,0x33,0xd1,0x0f,0xb7,0xd2,0x8b,0xca,0xc1,0xf9,0x08,0x0f,0xb7,0xc9,0xc4,0xe1,0xf9,0x6e,0xc1,0x8b,0xc0,0xc4,0xe1,0xf9,0x6e,0xc8,0xc4,0xe3,0x79,0x44,0xc1,0x00,0xc4,0xe1,0xf9,0x7e,0xc0,0x0f,0xb7,0xc0,0x33,0xc2,0x0f,0xb7,0xd0,0x0f,0xb6,0xc2,0x48,0x83,0xc4,0x28,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h movzx esi,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f1}
000dh movzx edi,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 fa}
0011h mov rcx,7ff7c7ad63c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 63 ad c7 f7 7f 00 00}
001bh mov edx,14h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 14 00 00 00}
0020h call 7ff8272670b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b 5f fd 5e}
0025h movzx eax,word ptr [rip-7bacf6h]        ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[7]{0f b7 05 0a 53 84 ff}
002ch movzx edx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 d6}
0030h vmovq xmm0,rdx                          ; VMOVQ xmm1, r/m64 || VEX.128.66.0F.W1 6E /r || encoded[5]{c4 e1 f9 6e c2}
0035h movzx edx,dil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 d7}
0039h vmovq xmm1,rdx                          ; VMOVQ xmm1, r/m64 || VEX.128.66.0F.W1 6E /r || encoded[5]{c4 e1 f9 6e ca}
003eh vpclmullqlqdq xmm0,xmm0,xmm1            ; VPCLMULQDQ xmm1, xmm2, xmm3/m128, imm8 || VEX.128.66.0F3A.WIG 44 /r ib || encoded[6]{c4 e3 79 44 c1 00}
0044h vmovq rdx,xmm0                          ; VMOVQ r/m64, xmm1 || VEX.128.66.0F.W1 7E /r || encoded[5]{c4 e1 f9 7e c2}
0049h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
004ch mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
004eh sar ecx,8                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 08}
0051h movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
0054h vmovq xmm0,rcx                          ; VMOVQ xmm1, r/m64 || VEX.128.66.0F.W1 6E /r || encoded[5]{c4 e1 f9 6e c1}
0059h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
005bh vmovq xmm1,rcx                          ; VMOVQ xmm1, r/m64 || VEX.128.66.0F.W1 6E /r || encoded[5]{c4 e1 f9 6e c9}
0060h vpclmullqlqdq xmm0,xmm0,xmm1            ; VPCLMULQDQ xmm1, xmm2, xmm3/m128, imm8 || VEX.128.66.0F3A.WIG 44 /r ib || encoded[6]{c4 e3 79 44 c1 00}
0066h vmovq rcx,xmm0                          ; VMOVQ r/m64, xmm1 || VEX.128.66.0F.W1 7E /r || encoded[5]{c4 e1 f9 7e c1}
006bh movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
006eh xor edx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d1}
0070h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0073h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0075h sar ecx,8                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 08}
0078h movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
007bh vmovq xmm0,rcx                          ; VMOVQ xmm1, r/m64 || VEX.128.66.0F.W1 6E /r || encoded[5]{c4 e1 f9 6e c1}
0080h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
0082h vmovq xmm1,rax                          ; VMOVQ xmm1, r/m64 || VEX.128.66.0F.W1 6E /r || encoded[5]{c4 e1 f9 6e c8}
0087h vpclmullqlqdq xmm0,xmm0,xmm1            ; VPCLMULQDQ xmm1, xmm2, xmm3/m128, imm8 || VEX.128.66.0F3A.WIG 44 /r ib || encoded[6]{c4 e3 79 44 c1 00}
008dh vmovq rax,xmm0                          ; VMOVQ r/m64, xmm1 || VEX.128.66.0F.W1 7E /r || encoded[5]{c4 e1 f9 7e c0}
0092h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0095h xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
0097h movzx edx,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d0}
009ah movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
009dh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
00a1h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00a2h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00a3h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector4 inc(BitVector4 x), hex://bitvectors/bitvector?inc#inc_()
; inc_()[40] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x89,0x4c,0x24,0x08,0x80,0x7c,0x24,0x08,0x0f,0x73,0x14,0x48,0x8d,0x44,0x24,0x08,0x0f,0xb6,0x10,0x8d,0x4a,0x01,0x88,0x08,0x83,0xe2,0x0f,0x0f,0xb6,0xc2,0xc3,0x33,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov [rsp+8],rcx                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 4c 24 08}
000ah cmp byte ptr [rsp+8],0fh                ; CMP r/m8, imm8 || 80 /7 ib || encoded[5]{80 7c 24 08 0f}
000fh jae short 0025h                         ; JAE rel8 || 73 cb || encoded[2]{73 14}
0011h lea rax,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 08}
0016h movzx edx,byte ptr [rax]                ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 10}
0019h lea ecx,[rdx+1]                         ; LEA r32, m || o32 8D /r || encoded[3]{8d 4a 01}
001ch mov [rax],cl                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 08}
001eh and edx,0fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 0f}
0021h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0024h ret                                     ; RET || C3 || encoded[1]{c3}
0025h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0027h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector8 inc(BitVector8 x), hex://bitvectors/bitvector?inc#inc_()
; inc_()[14] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0xff,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector16 inc(BitVector16 x), hex://bitvectors/bitvector?inc#inc_()
; inc_()[14] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0xff,0xc0,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
000ah movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector32 inc(BitVector32 x), hex://bitvectors/bitvector?inc#inc_()
; inc_()[10] = {0x0f,0x1f,0x44,0x00,0x00,0xff,0xc1,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h inc ecx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c1}
0007h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector64 inc(BitVector64 x), hex://bitvectors/bitvector?inc#inc_()
; inc_()[12] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xff,0xc1,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h inc rcx                                 ; INC r/m64 || REX.W FF /0 || encoded[3]{48 ff c1}
0008h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector4 init(N4 w, byte src), hex://bitvectors/bitvector?init#init_(n4,8u)
; init_(n4,8u)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc2,0x83,0xe0,0x0f,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0008h and eax,0fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 0f}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector8 init(byte src), hex://bitvectors/bitvector?init#init_(8u)
; init_(8u)[12] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector16 init(ushort src), hex://bitvectors/bitvector?init#init_(16u)
; init_(16u)[12] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector24 init(ushort lo, byte hi), hex://bitvectors/bitvector?init#init_(16u,8u)
; init_(16u,8u)[17] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x0f,0xb6,0xd2,0xc1,0xe2,0x10,0x0b,0xc2,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh shl edx,10h                             ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 10}
000eh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector24 init(N24 w, uint src), hex://bitvectors/bitvector?init#init_(n24,32u)
; init_(n24,32u)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc2,0x25,0xff,0xff,0xff,0x00,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h and eax,0ffffffh                        ; AND EAX, imm32 || o32 25 id || encoded[5]{25 ff ff ff 00}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector32 init(uint src), hex://bitvectors/bitvector?init#init_(32u)
; init_(32u)[8] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector64 init(ulong src), hex://bitvectors/bitvector?init#init_(64u)
; init_(64u)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector4 inject(N4 n, byte data), hex://bitvectors/bitvector?inject#inject_(n4,8u)
; inject_(n4,8u)[12] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc2,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0008h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector4 lsbseg(BitVector4 x, byte n), hex://bitvectors/bitvector?lsbseg#lsbseg_(8u)
; lsbseg_(8u)[42] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc2,0xff,0xc8,0x0f,0xb6,0xc0,0xff,0xc0,0x0f,0xb6,0xc0,0xc1,0xe0,0x08,0x0f,0xb7,0xc0,0x0f,0xb6,0xd1,0xc4,0xe2,0x78,0xf7,0xc2,0x0f,0xb6,0xc0,0x83,0xe0,0x0f,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0008h dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
000fh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0012h shl eax,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e0 08}
0015h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0018h movzx edx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d1}
001bh bextr eax,edx,eax                       ; BEXTR r32a, r/m32, r32b || VEX.LZ.0F38.W0 F7 /r || encoded[5]{c4 e2 78 f7 c2}
0020h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0023h and eax,0fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 0f}
0026h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0029h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector8 lsbseg(BitVector8 x, byte n), hex://bitvectors/bitvector?lsbseg#lsbseg_(8u)
; lsbseg_(8u)[36] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc2,0xff,0xc8,0x0f,0xb6,0xc0,0xff,0xc0,0x0f,0xb6,0xc0,0xc1,0xe0,0x08,0x0f,0xb7,0xc0,0x0f,0xb6,0xd1,0xc4,0xe2,0x78,0xf7,0xc2,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0008h dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
000fh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0012h shl eax,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e0 08}
0015h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0018h movzx edx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d1}
001bh bextr eax,edx,eax                       ; BEXTR r32a, r/m32, r32b || VEX.LZ.0F38.W0 F7 /r || encoded[5]{c4 e2 78 f7 c2}
0020h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0023h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector16 lsbseg(BitVector16 x, byte n), hex://bitvectors/bitvector?lsbseg#lsbseg_(8u)
; lsbseg_(8u)[50] = {0x50,0x0f,0x1f,0x40,0x00,0x0f,0xb7,0xc1,0x66,0x89,0x04,0x24,0x0f,0xb6,0xc2,0xff,0xc8,0x0f,0xb6,0xc0,0xff,0xc0,0x0f,0xb6,0xc0,0xc1,0xe0,0x08,0x0f,0xb7,0xc0,0x8b,0x14,0x24,0x0f,0xb7,0xd2,0xc4,0xe2,0x78,0xf7,0xc2,0x0f,0xb7,0xc0,0x48,0x83,0xc4,0x08,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h mov [rsp],ax                            ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 04 24}
000ch movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
000fh dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
0011h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0014h inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
0016h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0019h shl eax,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e0 08}
001ch movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001fh mov edx,[rsp]                           ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 24}
0022h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0025h bextr eax,edx,eax                       ; BEXTR r32a, r/m32, r32b || VEX.LZ.0F38.W0 F7 /r || encoded[5]{c4 e2 78 f7 c2}
002ah movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
002dh add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0031h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector32 lsbseg(BitVector32 x, byte n), hex://bitvectors/bitvector?lsbseg#lsbseg_(8u)
; lsbseg_(8u)[30] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc2,0xff,0xc8,0x0f,0xb6,0xc0,0xff,0xc0,0x0f,0xb6,0xc0,0xc1,0xe0,0x08,0x0f,0xb7,0xc0,0xc4,0xe2,0x78,0xf7,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0008h dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
000fh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0012h shl eax,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e0 08}
0015h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0018h bextr eax,ecx,eax                       ; BEXTR r32a, r/m32, r32b || VEX.LZ.0F38.W0 F7 /r || encoded[5]{c4 e2 78 f7 c1}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector64 lsbseg(BitVector64 x, byte n), hex://bitvectors/bitvector?lsbseg#lsbseg_(8u)
; lsbseg_(8u)[30] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc2,0xff,0xc8,0x0f,0xb6,0xc0,0xff,0xc0,0x0f,0xb6,0xc0,0xc1,0xe0,0x08,0x0f,0xb7,0xc0,0xc4,0xe2,0xf8,0xf7,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0008h dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
000fh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0012h shl eax,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e0 08}
0015h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0018h bextr rax,rcx,rax                       ; BEXTR r64a, r/m64, r64b || VEX.LZ.0F38.W1 F7 /r || encoded[5]{c4 e2 f8 f7 c1}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit modprod(BitVector4 x, BitVector4 y), hex://bitvectors/bitvector?modprod#modprod_()
; modprod_()[106] = {0x0f,0x1f,0x44,0x00,0x00,0x33,0xc0,0x45,0x33,0xc0,0x44,0x0f,0xb6,0xc9,0x0f,0xb6,0xd2,0x41,0xba,0x01,0x00,0x00,0x00,0x41,0x8b,0xc8,0x41,0xd3,0xe2,0x45,0x85,0xca,0x0f,0x95,0xc1,0x0f,0xb6,0xc9,0x85,0xc9,0x75,0x04,0x33,0xc9,0xeb,0x05,0xb9,0x01,0x00,0x00,0x00,0x41,0x85,0xd2,0x41,0x0f,0x95,0xc2,0x45,0x0f,0xb6,0xd2,0x45,0x85,0xd2,0x75,0x05,0x45,0x33,0xd2,0xeb,0x06,0x41,0xba,0x01,0x00,0x00,0x00,0x41,0x0f,0xaf,0xca,0x03,0xc1,0x41,0xff,0xc0,0x45,0x0f,0xb6,0xc0,0x41,0x83,0xf8,0x04,0x7c,0xb0,0xa8,0x01,0x0f,0x95,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
000ah movzx r9d,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{44 0f b6 c9}
000eh movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0011h mov r10d,1                              ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 ba 01 00 00 00}
0017h mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
001ah shl r10d,cl                             ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e2}
001dh test r9d,r10d                           ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 ca}
0020h setne cl                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c1}
0023h movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
0026h test ecx,ecx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c9}
0028h jne short 002eh                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
002ah xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
002ch jmp short 0033h                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
002eh mov ecx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 01 00 00 00}
0033h test edx,r10d                           ; TEST r/m32, r32 || o32 85 /r || encoded[3]{41 85 d2}
0036h setne r10b                              ; SETNE r/m8 || 0F 95 /r || encoded[4]{41 0f 95 c2}
003ah movzx r10d,r10b                         ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 d2}
003eh test r10d,r10d                          ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 d2}
0041h jne short 0048h                         ; JNE rel8 || 75 cb || encoded[2]{75 05}
0043h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0046h jmp short 004eh                         ; JMP rel8 || EB cb || encoded[2]{eb 06}
0048h mov r10d,1                              ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 ba 01 00 00 00}
004eh imul ecx,r10d                           ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{41 0f af ca}
0052h add eax,ecx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c1}
0054h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
0057h movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
005bh cmp r8d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 04}
005fh jl short 0011h                          ; JL rel8 || 7C cb || encoded[2]{7c b0}
0061h test al,1                               ; TEST AL, imm8 || A8 ib || encoded[2]{a8 01}
0063h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0066h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0069h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit modprod(BitVector8 x, BitVector8 y), hex://bitvectors/bitvector?modprod#modprod_()
; modprod_()[101] = {0x56,0x0f,0x1f,0x40,0x00,0x33,0xc0,0x45,0x33,0xc0,0x44,0x0f,0xb6,0xc9,0x0f,0xb6,0xd2,0x45,0x8b,0xd1,0x45,0x8b,0xd8,0x41,0x83,0xe3,0x1f,0x41,0x8b,0xcb,0x41,0xd3,0xea,0x41,0x83,0xe2,0x01,0x45,0x85,0xd2,0x75,0x05,0x45,0x33,0xd2,0xeb,0x06,0x41,0xba,0x01,0x00,0x00,0x00,0x8b,0xf2,0x41,0x8b,0xcb,0xd3,0xee,0x83,0xe6,0x01,0x85,0xf6,0x75,0x04,0x33,0xc9,0xeb,0x05,0xb9,0x01,0x00,0x00,0x00,0x41,0x0f,0xaf,0xca,0x03,0xc1,0x41,0xff,0xc0,0x41,0x83,0xf8,0x08,0x7c,0xb6,0xa8,0x01,0x0f,0x95,0xc0,0x0f,0xb6,0xc0,0x5e,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
000ah movzx r9d,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{44 0f b6 c9}
000eh movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0011h mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
0014h mov r11d,r8d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d8}
0017h and r11d,1fh                            ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e3 1f}
001bh mov ecx,r11d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b cb}
001eh shr r10d,cl                             ; SHR r/m32, CL || o32 D3 /5 || encoded[3]{41 d3 ea}
0021h and r10d,1                              ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e2 01}
0025h test r10d,r10d                          ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 d2}
0028h jne short 002fh                         ; JNE rel8 || 75 cb || encoded[2]{75 05}
002ah xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
002dh jmp short 0035h                         ; JMP rel8 || EB cb || encoded[2]{eb 06}
002fh mov r10d,1                              ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 ba 01 00 00 00}
0035h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0037h mov ecx,r11d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b cb}
003ah shr esi,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 ee}
003ch and esi,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e6 01}
003fh test esi,esi                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 f6}
0041h jne short 0047h                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
0043h xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
0045h jmp short 004ch                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
0047h mov ecx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 01 00 00 00}
004ch imul ecx,r10d                           ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{41 0f af ca}
0050h add eax,ecx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c1}
0052h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
0055h cmp r8d,8                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 08}
0059h jl short 0011h                          ; JL rel8 || 7C cb || encoded[2]{7c b6}
005bh test al,1                               ; TEST AL, imm8 || A8 ib || encoded[2]{a8 01}
005dh setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0060h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0063h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0064h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit modprod(BitVector16 x, BitVector16 y), hex://bitvectors/bitvector?modprod#modprod_()
; modprod_()[101] = {0x56,0x0f,0x1f,0x40,0x00,0x33,0xc0,0x45,0x33,0xc0,0x44,0x0f,0xb7,0xc9,0x0f,0xb7,0xd2,0x45,0x8b,0xd1,0x45,0x8b,0xd8,0x41,0x83,0xe3,0x1f,0x41,0x8b,0xcb,0x41,0xd3,0xea,0x41,0x83,0xe2,0x01,0x45,0x85,0xd2,0x75,0x05,0x45,0x33,0xd2,0xeb,0x06,0x41,0xba,0x01,0x00,0x00,0x00,0x8b,0xf2,0x41,0x8b,0xcb,0xd3,0xee,0x83,0xe6,0x01,0x85,0xf6,0x75,0x04,0x33,0xc9,0xeb,0x05,0xb9,0x01,0x00,0x00,0x00,0x41,0x0f,0xaf,0xca,0x03,0xc1,0x41,0xff,0xc0,0x41,0x83,0xf8,0x10,0x7c,0xb6,0xa8,0x01,0x0f,0x95,0xc0,0x0f,0xb6,0xc0,0x5e,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
000ah movzx r9d,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c9}
000eh movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0011h mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
0014h mov r11d,r8d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d8}
0017h and r11d,1fh                            ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e3 1f}
001bh mov ecx,r11d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b cb}
001eh shr r10d,cl                             ; SHR r/m32, CL || o32 D3 /5 || encoded[3]{41 d3 ea}
0021h and r10d,1                              ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e2 01}
0025h test r10d,r10d                          ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 d2}
0028h jne short 002fh                         ; JNE rel8 || 75 cb || encoded[2]{75 05}
002ah xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
002dh jmp short 0035h                         ; JMP rel8 || EB cb || encoded[2]{eb 06}
002fh mov r10d,1                              ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 ba 01 00 00 00}
0035h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0037h mov ecx,r11d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b cb}
003ah shr esi,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 ee}
003ch and esi,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e6 01}
003fh test esi,esi                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 f6}
0041h jne short 0047h                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
0043h xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
0045h jmp short 004ch                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
0047h mov ecx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 01 00 00 00}
004ch imul ecx,r10d                           ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{41 0f af ca}
0050h add eax,ecx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c1}
0052h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
0055h cmp r8d,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 10}
0059h jl short 0011h                          ; JL rel8 || 7C cb || encoded[2]{7c b6}
005bh test al,1                               ; TEST AL, imm8 || A8 ib || encoded[2]{a8 01}
005dh setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0060h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0063h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0064h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector4 add(BitVector4 x, BitVector4 y), hex://bitvectors/bitvector?add#add_()
; add_()[38] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x0f,0xb6,0xd2,0x03,0xc2,0x0f,0xb6,0xc0,0x8b,0xd0,0xc1,0xfa,0x1f,0x83,0xe2,0x03,0x03,0xd0,0x83,0xe2,0xfc,0x2b,0xc2,0x0f,0xb6,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
000dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0010h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
0012h sar edx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 1f}
0015h and edx,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 03}
0018h add edx,eax                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 d0}
001ah and edx,0fffffffch                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 fc}
001dh sub eax,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c2}
001fh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0022h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0025h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector8 add(BitVector8 x, BitVector8 y), hex://bitvectors/bitvector?add#add_()
; add_()[17] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x0f,0xb6,0xd2,0x03,0xc2,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
000dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector16 add(BitVector16 x, BitVector16 y), hex://bitvectors/bitvector?add#add_()
; add_()[17] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x0f,0xb7,0xd2,0x03,0xc2,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
000dh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector32 add(BitVector32 x, BitVector32 y), hex://bitvectors/bitvector?add#add_()
; add_()[10] = {0x0f,0x1f,0x44,0x00,0x00,0x03,0xd1,0x8b,0xc2,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h add edx,ecx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 d1}
0007h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector64 add(BitVector64 x, BitVector64 y), hex://bitvectors/bitvector?add#add_()
; add_()[12] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x03,0xd1,0x48,0x8b,0xc2,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h add rdx,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d1}
0008h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector4 alloc(N4 n), hex://bitvectors/bitvector?alloc#alloc_(n4)
; alloc_(n4)[8] = {0x0f,0x1f,0x44,0x00,0x00,0x33,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector8 alloc(N8 n), hex://bitvectors/bitvector?alloc#alloc_(n8)
; alloc_(n8)[8] = {0x0f,0x1f,0x44,0x00,0x00,0x33,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector16 alloc(N16 n), hex://bitvectors/bitvector?alloc#alloc_(n16)
; alloc_(n16)[8] = {0x0f,0x1f,0x44,0x00,0x00,0x33,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector32 alloc(N32 n), hex://bitvectors/bitvector?alloc#alloc_(n32)
; alloc_(n32)[8] = {0x0f,0x1f,0x44,0x00,0x00,0x33,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector64 alloc(N64 n), hex://bitvectors/bitvector?alloc#alloc_(n64)
; alloc_(n64)[8] = {0x0f,0x1f,0x44,0x00,0x00,0x33,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector8 alt(N8 n, bit parity), hex://bitvectors/bitvector?alt#alt_(n8,1u)
; alt_(n8,1u)[28] = {0x0f,0x1f,0x44,0x00,0x00,0x85,0xd2,0x75,0x07,0xb8,0xaa,0x00,0x00,0x00,0xeb,0x05,0xb8,0x55,0x00,0x00,0x00,0x0f,0xb6,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0007h jne short 0010h                         ; JNE rel8 || 75 cb || encoded[2]{75 07}
0009h mov eax,0aah                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 aa 00 00 00}
000eh jmp short 0015h                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
0010h mov eax,55h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 55 00 00 00}
0015h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0018h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector16 alt(N16 n, bit parity), hex://bitvectors/bitvector?alt#alt_(n16,1u)
; alt_(n16,1u)[28] = {0x0f,0x1f,0x44,0x00,0x00,0x85,0xd2,0x75,0x07,0xb8,0xaa,0xaa,0x00,0x00,0xeb,0x05,0xb8,0x55,0x55,0x00,0x00,0x0f,0xb7,0xc0,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0007h jne short 0010h                         ; JNE rel8 || 75 cb || encoded[2]{75 07}
0009h mov eax,0aaaah                          ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 aa aa 00 00}
000eh jmp short 0015h                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
0010h mov eax,5555h                           ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 55 55 00 00}
0015h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0018h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector32 alt(N32 n, bit parity), hex://bitvectors/bitvector?alt#alt_(n32,1u)
; alt_(n32,1u)[22] = {0x0f,0x1f,0x44,0x00,0x00,0x85,0xd2,0x75,0x07,0xb8,0xaa,0xaa,0xaa,0xaa,0xeb,0x05,0xb8,0x55,0x55,0x55,0x55,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0007h jne short 0010h                         ; JNE rel8 || 75 cb || encoded[2]{75 07}
0009h mov eax,0aaaaaaaah                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 aa aa aa aa}
000eh jmp short 0015h                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
0010h mov eax,55555555h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 55 55 55 55}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector64 alt(N64 n, bit parity), hex://bitvectors/bitvector?alt#alt_(n64,1u)
; alt_(n64,1u)[32] = {0x0f,0x1f,0x44,0x00,0x00,0x85,0xd2,0x75,0x0c,0x48,0xb8,0xaa,0xaa,0xaa,0xaa,0xaa,0xaa,0xaa,0xaa,0xeb,0x0a,0x48,0xb8,0x55,0x55,0x55,0x55,0x55,0x55,0x55,0x55,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0007h jne short 0015h                         ; JNE rel8 || 75 cb || encoded[2]{75 0c}
0009h mov rax,0aaaaaaaaaaaaaaaah              ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 aa aa aa aa aa aa aa aa}
0013h jmp short 001fh                         ; JMP rel8 || EB cb || encoded[2]{eb 0a}
0015h mov rax,5555555555555555h               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 55 55 55 55 55 55 55 55}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector4 and(BitVector4 x, BitVector4 y), hex://bitvectors/bitvector?and#and_()
; and_()[23] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x0f,0xb6,0xd2,0x23,0xc2,0x0f,0xb6,0xc0,0x83,0xe0,0x0f,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
000dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0010h and eax,0fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 0f}
0013h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector8 and(BitVector8 x, BitVector8 y), hex://bitvectors/bitvector?and#and_()
; and_()[17] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x0f,0xb6,0xd2,0x23,0xc2,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
000dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector16 and(BitVector16 x, BitVector16 y), hex://bitvectors/bitvector?and#and_()
; and_()[17] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x0f,0xb7,0xd2,0x23,0xc2,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
000dh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector32 and(BitVector32 x, BitVector32 y), hex://bitvectors/bitvector?and#and_()
; and_()[10] = {0x0f,0x1f,0x44,0x00,0x00,0x23,0xd1,0x8b,0xc2,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h and edx,ecx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 d1}
0007h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector64 and(BitVector64 x, BitVector64 y), hex://bitvectors/bitvector?and#and_()
; and_()[12] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x23,0xd1,0x48,0x8b,0xc2,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h and rdx,rcx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 d1}
0008h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector4 nor(BitVector4 x, BitVector4 y), hex://bitvectors/bitvector?nor#nor_()
; nor_()[25] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x0f,0xb6,0xd2,0x0b,0xc2,0xf7,0xd0,0x0f,0xb6,0xc0,0x83,0xe0,0x0f,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
000dh not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000fh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0012h and eax,0fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 0f}
0015h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector8 nor(BitVector8 x, BitVector8 y), hex://bitvectors/bitvector?nor#nor_()
; nor_()[19] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x0f,0xb6,0xd2,0x0b,0xc2,0xf7,0xd0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
000dh not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000fh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector16 nor(BitVector16 x, BitVector16 y), hex://bitvectors/bitvector?nor#nor_()
; nor_()[19] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x0f,0xb7,0xd2,0x0b,0xc2,0xf7,0xd0,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
000dh not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000fh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector32 nor(BitVector32 x, BitVector32 y), hex://bitvectors/bitvector?nor#nor_()
; nor_()[12] = {0x0f,0x1f,0x44,0x00,0x00,0x0b,0xd1,0x8b,0xc2,0xf7,0xd0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h or edx,ecx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b d1}
0007h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0009h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector64 nor(BitVector64 x, BitVector64 y), hex://bitvectors/bitvector?nor#nor_()
; nor_()[15] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0b,0xd1,0x48,0x8b,0xc2,0x48,0xf7,0xd0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h or rdx,rcx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b d1}
0008h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
000bh not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector4 not(BitVector4 x), hex://bitvectors/bitvector?not#not_()
; not_()[20] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0xf7,0xd0,0x0f,0xb6,0xc0,0x83,0xe0,0x0f,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh and eax,0fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 0f}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector8 not(BitVector8 x), hex://bitvectors/bitvector?not#not_()
; not_()[14] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0xf7,0xd0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector16 not(BitVector16 x), hex://bitvectors/bitvector?not#not_()
; not_()[14] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0xf7,0xd0,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000ah movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector32 not(BitVector32 x), hex://bitvectors/bitvector?not#not_()
; not_()[10] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0xf7,0xd0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector64 not(BitVector64 x), hex://bitvectors/bitvector?not#not_()
; not_()[12] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0x48,0xf7,0xd0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector4 xnor(BitVector4 x, BitVector4 y), hex://bitvectors/bitvector?xnor#xnor_()
; xnor_()[28] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x0f,0xb6,0xd2,0x0f,0xb6,0xc0,0x33,0xc2,0xf7,0xd0,0x0f,0xb6,0xc0,0x83,0xe0,0x0f,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
0010h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0012h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0015h and eax,0fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 0f}
0018h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector8 xnor(BitVector8 x, BitVector8 y), hex://bitvectors/bitvector?xnor#xnor_()
; xnor_()[22] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x0f,0xb6,0xd2,0x0f,0xb6,0xc0,0x33,0xc2,0xf7,0xd0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
0010h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0012h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector16 xnor(BitVector16 x, BitVector16 y), hex://bitvectors/bitvector?xnor#xnor_()
; xnor_()[22] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x0f,0xb7,0xd2,0x0f,0xb7,0xc0,0x33,0xc2,0xf7,0xd0,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
000eh xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
0010h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0012h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector32 xnor(BitVector32 x, BitVector32 y), hex://bitvectors/bitvector?xnor#xnor_()
; xnor_()[12] = {0x0f,0x1f,0x44,0x00,0x00,0x33,0xd1,0x8b,0xc2,0xf7,0xd0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor edx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d1}
0007h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0009h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector64 xnor(BitVector64 x, BitVector64 y), hex://bitvectors/bitvector?xnor#xnor_()
; xnor_()[15] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x33,0xd1,0x48,0x8b,0xc2,0x48,0xf7,0xd0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor rdx,rcx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 d1}
0008h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
000bh not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector4 xor(BitVector4 x, BitVector4 y), hex://bitvectors/bitvector?xor#xor_()
; xor_()[23] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x0f,0xb6,0xd2,0x33,0xc2,0x0f,0xb6,0xc0,0x83,0xe0,0x0f,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
000dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0010h and eax,0fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 0f}
0013h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector8 xor(BitVector8 x, BitVector8 y), hex://bitvectors/bitvector?xor#xor_()
; xor_()[17] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x0f,0xb6,0xd2,0x33,0xc2,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
000dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector16 xor(BitVector16 x, BitVector16 y), hex://bitvectors/bitvector?xor#xor_()
; xor_()[17] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x0f,0xb7,0xd2,0x33,0xc2,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
000dh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector32 xor(BitVector32 x, BitVector32 y), hex://bitvectors/bitvector?xor#xor_()
; xor_()[10] = {0x0f,0x1f,0x44,0x00,0x00,0x33,0xd1,0x8b,0xc2,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor edx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d1}
0007h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector64 xor(BitVector64 x, BitVector64 y), hex://bitvectors/bitvector?xor#xor_()
; xor_()[12] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x33,0xd1,0x48,0x8b,0xc2,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor rdx,rcx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 d1}
0008h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitSpan bitspan(BitVector4 x, Nullable<int> maxbits), hex://bitvectors/bitvector?bitspan#bitspan_()
; bitspan_()[364] = {0x57,0x56,0x53,0x48,0x81,0xec,0xb0,0x00,0x00,0x00,0xc5,0xf8,0x77,0x48,0x8b,0xf1,0x48,0x8d,0x7c,0x24,0x28,0xb9,0x22,0x00,0x00,0x00,0x33,0xc0,0xf3,0xab,0x48,0x8b,0xce,0x4c,0x89,0x84,0x24,0xe0,0x00,0x00,0x00,0x48,0x8b,0xd9,0x0f,0xb6,0xc2,0x48,0x8d,0x94,0x24,0xe0,0x00,0x00,0x00,0x0f,0xb6,0x0a,0x8b,0x52,0x04,0x84,0xc9,0x75,0x07,0xb9,0x04,0x00,0x00,0x00,0xeb,0x02,0x8b,0xca,0x0f,0xb6,0xc0,0x33,0xd2,0x48,0x89,0x54,0x24,0x68,0x48,0x8d,0x54,0x24,0x68,0x4c,0x8d,0x44,0x24,0x48,0xc5,0xf8,0x57,0xc0,0xc4,0xc1,0x7a,0x7f,0x00,0xc4,0xc1,0x7a,0x7f,0x40,0x10,0x4c,0x8d,0x44,0x24,0x48,0x8b,0xc0,0x49,0xb9,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0xc4,0xc2,0xfb,0xf5,0xc1,0x48,0x89,0x02,0xc4,0xe2,0x7d,0x31,0x02,0xc4,0xc1,0x7e,0x7f,0x00,0x48,0x8d,0x44,0x24,0x48,0xba,0x08,0x00,0x00,0x00,0x4c,0x8d,0x44,0x24,0x38,0xc5,0xf8,0x57,0xc0,0xc4,0xc1,0x7a,0x7f,0x00,0x4c,0x8d,0x44,0x24,0x38,0x49,0x89,0x00,0x41,0x89,0x50,0x08,0xc5,0xfa,0x6f,0x44,0x24,0x38,0xc5,0xfa,0x7f,0x44,0x24,0x70,0xc5,0xfa,0x6f,0x44,0x24,0x70,0xc5,0xfa,0x7f,0x84,0x24,0x80,0x00,0x00,0x00,0xc5,0xfa,0x6f,0x84,0x24,0x80,0x00,0x00,0x00,0xc5,0xfa,0x7f,0x84,0x24,0x90,0x00,0x00,0x00,0x39,0x8c,0x24,0x98,0x00,0x00,0x00,0x7e,0x04,0x85,0xc9,0x75,0x14,0xc5,0xfa,0x6f,0x84,0x24,0x90,0x00,0x00,0x00,0xc5,0xfa,0x7f,0x84,0x24,0xa0,0x00,0x00,0x00,0xeb,0x3d,0x8b,0xc1,0x8b,0x94,0x24,0x98,0x00,0x00,0x00,0x48,0x3b,0xc2,0x77,0x57,0x48,0x8b,0x84,0x24,0x90,0x00,0x00,0x00,0x48,0x8d,0x54,0x24,0x28,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x02,0x48,0x8d,0x54,0x24,0x28,0x48,0x89,0x02,0x89,0x4a,0x08,0xc5,0xfa,0x6f,0x44,0x24,0x28,0xc5,0xfa,0x7f,0x84,0x24,0xa0,0x00,0x00,0x00,0x48,0x8b,0xfb,0x48,0x8d,0xb4,0x24,0xa0,0x00,0x00,0x00,0xe8,0xa1,0x3c,0xfd,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0xc5,0xf8,0x77,0x48,0x81,0xc4,0xb0,0x00,0x00,0x00,0x5b,0x5e,0x5f,0xc3,0xe8,0x19,0xda,0x0f,0x5f,0xe8,0x94,0x30,0x4d,0xff}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,0b0h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec b0 00 00 00}
000ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000dh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0010h lea rdi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 28}
0015h mov ecx,22h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 22 00 00 00}
001ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
001ch rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001eh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0021h mov [rsp+0e0h],r8                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[8]{4c 89 84 24 e0 00 00 00}
0029h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
002ch movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
002fh lea rdx,[rsp+0e0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 94 24 e0 00 00 00}
0037h movzx ecx,byte ptr [rdx]                ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 0a}
003ah mov edx,[rdx+4]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 52 04}
003dh test cl,cl                              ; TEST r/m8, r8 || 84 /r || encoded[2]{84 c9}
003fh jne short 0048h                         ; JNE rel8 || 75 cb || encoded[2]{75 07}
0041h mov ecx,4                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 04 00 00 00}
0046h jmp short 004ah                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
0048h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
004ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
004dh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
004fh mov [rsp+68h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 68}
0054h lea rdx,[rsp+68h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 68}
0059h lea r8,[rsp+48h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 48}
005eh vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0062h vmovdqu xmmword ptr [r8],xmm0           ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7a 7f 00}
0067h vmovdqu xmmword ptr [r8+10h],xmm0       ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c4 c1 7a 7f 40 10}
006dh lea r8,[rsp+48h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 48}
0072h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
0074h mov r9,101010101010101h                 ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 b9 01 01 01 01 01 01 01 01}
007eh pdep rax,rax,r9                         ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 c2 fb f5 c1}
0083h mov [rdx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 02}
0086h vpmovzxbd ymm0,qword ptr [rdx]          ; VPMOVZXBD ymm1, xmm2/m64 || VEX.256.66.0F38.WIG 31 /r || encoded[5]{c4 e2 7d 31 02}
008bh vmovdqu ymmword ptr [r8],ymm0           ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 00}
0090h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0095h mov edx,8                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 08 00 00 00}
009ah lea r8,[rsp+38h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 38}
009fh vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
00a3h vmovdqu xmmword ptr [r8],xmm0           ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7a 7f 00}
00a8h lea r8,[rsp+38h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 38}
00adh mov [r8],rax                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 00}
00b0h mov [r8+8],edx                          ; MOV r/m32, r32 || o32 89 /r || encoded[4]{41 89 50 08}
00b4h vmovdqu xmm0,xmmword ptr [rsp+38h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 38}
00bah vmovdqu xmmword ptr [rsp+70h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 70}
00c0h vmovdqu xmm0,xmmword ptr [rsp+70h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 70}
00c6h vmovdqu xmmword ptr [rsp+80h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 80 00 00 00}
00cfh vmovdqu xmm0,xmmword ptr [rsp+80h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 80 00 00 00}
00d8h vmovdqu xmmword ptr [rsp+90h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 90 00 00 00}
00e1h cmp [rsp+98h],ecx                       ; CMP r/m32, r32 || o32 39 /r || encoded[7]{39 8c 24 98 00 00 00}
00e8h jle short 00eeh                         ; JLE rel8 || 7E cb || encoded[2]{7e 04}
00eah test ecx,ecx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c9}
00ech jne short 0102h                         ; JNE rel8 || 75 cb || encoded[2]{75 14}
00eeh vmovdqu xmm0,xmmword ptr [rsp+90h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 90 00 00 00}
00f7h vmovdqu xmmword ptr [rsp+0a0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a0 00 00 00}
0100h jmp short 013fh                         ; JMP rel8 || EB cb || encoded[2]{eb 3d}
0102h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0104h mov edx,[rsp+98h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 94 24 98 00 00 00}
010bh cmp rax,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b c2}
010eh ja short 0167h                          ; JA rel8 || 77 cb || encoded[2]{77 57}
0110h mov rax,[rsp+90h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 90 00 00 00}
0118h lea rdx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 28}
011dh vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0121h vmovdqu xmmword ptr [rdx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 02}
0125h lea rdx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 28}
012ah mov [rdx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 02}
012dh mov [rdx+8],ecx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 4a 08}
0130h vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
0136h vmovdqu xmmword ptr [rsp+0a0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a0 00 00 00}
013fh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0142h lea rsi,[rsp+0a0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d b4 24 a0 00 00 00}
014ah call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 3c fd 5e}
014fh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0151h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0154h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0157h add rsp,0b0h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 b0 00 00 00}
015eh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
015fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0160h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0161h ret                                     ; RET || C3 || encoded[1]{c3}
0162h call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 da 0f 5f}
0167h call 7ff7c77652a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 30 4d ff}
------------------------------------------------------------------------------------------------------------------------
; BitSpan bitspan(BitVector8 x, Nullable<int> maxbits), hex://bitvectors/bitvector?bitspan#bitspan_()
; bitspan_()[369] = {0x57,0x56,0x53,0x48,0x81,0xec,0xb0,0x00,0x00,0x00,0xc5,0xf8,0x77,0x48,0x8b,0xf1,0x48,0x8d,0x7c,0x24,0x28,0xb9,0x22,0x00,0x00,0x00,0x33,0xc0,0xf3,0xab,0x48,0x8b,0xce,0x4c,0x89,0x84,0x24,0xe0,0x00,0x00,0x00,0x48,0x8b,0xd9,0x0f,0xb6,0xc2,0x8b,0x94,0x24,0xe4,0x00,0x00,0x00,0x0f,0xb6,0xc0,0x33,0xc9,0x48,0x89,0x4c,0x24,0x68,0x48,0x8d,0x4c,0x24,0x48,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x01,0xc5,0xfa,0x7f,0x41,0x10,0x33,0xc9,0x48,0x89,0x4c,0x24,0x68,0x48,0x8d,0x4c,0x24,0x68,0x4c,0x8d,0x44,0x24,0x48,0xc5,0xf8,0x57,0xc0,0xc4,0xc1,0x7a,0x7f,0x00,0xc4,0xc1,0x7a,0x7f,0x40,0x10,0x4c,0x8d,0x44,0x24,0x48,0x8b,0xc0,0x49,0xb9,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0xc4,0xc2,0xfb,0xf5,0xc1,0x48,0x89,0x01,0xc4,0xe2,0x7d,0x31,0x01,0xc4,0xc1,0x7e,0x7f,0x00,0x48,0x8d,0x44,0x24,0x48,0xb9,0x08,0x00,0x00,0x00,0x4c,0x8d,0x44,0x24,0x38,0xc5,0xf8,0x57,0xc0,0xc4,0xc1,0x7a,0x7f,0x00,0x4c,0x8d,0x44,0x24,0x38,0x49,0x89,0x00,0x41,0x89,0x48,0x08,0xc5,0xfa,0x6f,0x44,0x24,0x38,0xc5,0xfa,0x7f,0x44,0x24,0x70,0xc5,0xfa,0x6f,0x44,0x24,0x70,0xc5,0xfa,0x7f,0x84,0x24,0x80,0x00,0x00,0x00,0xc5,0xfa,0x6f,0x84,0x24,0x80,0x00,0x00,0x00,0xc5,0xfa,0x7f,0x84,0x24,0x90,0x00,0x00,0x00,0x39,0x94,0x24,0x98,0x00,0x00,0x00,0x7e,0x04,0x85,0xd2,0x75,0x14,0xc5,0xfa,0x6f,0x84,0x24,0x90,0x00,0x00,0x00,0xc5,0xfa,0x7f,0x84,0x24,0xa0,0x00,0x00,0x00,0xeb,0x3d,0x8b,0xc2,0x8b,0x8c,0x24,0x98,0x00,0x00,0x00,0x48,0x3b,0xc1,0x77,0x57,0x48,0x8b,0x84,0x24,0x90,0x00,0x00,0x00,0x48,0x8d,0x4c,0x24,0x28,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x01,0x48,0x8d,0x4c,0x24,0x28,0x48,0x89,0x01,0x89,0x51,0x08,0xc5,0xfa,0x6f,0x44,0x24,0x28,0xc5,0xfa,0x7f,0x84,0x24,0xa0,0x00,0x00,0x00,0x48,0x8b,0xfb,0x48,0x8d,0xb4,0x24,0xa0,0x00,0x00,0x00,0xe8,0xfc,0x3a,0xfd,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0xc5,0xf8,0x77,0x48,0x81,0xc4,0xb0,0x00,0x00,0x00,0x5b,0x5e,0x5f,0xc3,0xe8,0x74,0xd8,0x0f,0x5f,0xe8,0xef,0x2e,0x4d,0xff}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,0b0h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec b0 00 00 00}
000ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000dh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0010h lea rdi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 28}
0015h mov ecx,22h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 22 00 00 00}
001ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
001ch rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001eh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0021h mov [rsp+0e0h],r8                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[8]{4c 89 84 24 e0 00 00 00}
0029h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
002ch movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
002fh mov edx,[rsp+0e4h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 94 24 e4 00 00 00}
0036h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0039h xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
003bh mov [rsp+68h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 4c 24 68}
0040h lea rcx,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 48}
0045h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0049h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
004dh vmovdqu xmmword ptr [rcx+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 41 10}
0052h xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
0054h mov [rsp+68h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 4c 24 68}
0059h lea rcx,[rsp+68h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 68}
005eh lea r8,[rsp+48h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 48}
0063h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0067h vmovdqu xmmword ptr [r8],xmm0           ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7a 7f 00}
006ch vmovdqu xmmword ptr [r8+10h],xmm0       ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c4 c1 7a 7f 40 10}
0072h lea r8,[rsp+48h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 48}
0077h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
0079h mov r9,101010101010101h                 ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 b9 01 01 01 01 01 01 01 01}
0083h pdep rax,rax,r9                         ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 c2 fb f5 c1}
0088h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
008bh vpmovzxbd ymm0,qword ptr [rcx]          ; VPMOVZXBD ymm1, xmm2/m64 || VEX.256.66.0F38.WIG 31 /r || encoded[5]{c4 e2 7d 31 01}
0090h vmovdqu ymmword ptr [r8],ymm0           ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 00}
0095h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
009ah mov ecx,8                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 08 00 00 00}
009fh lea r8,[rsp+38h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 38}
00a4h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
00a8h vmovdqu xmmword ptr [r8],xmm0           ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7a 7f 00}
00adh lea r8,[rsp+38h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 38}
00b2h mov [r8],rax                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 00}
00b5h mov [r8+8],ecx                          ; MOV r/m32, r32 || o32 89 /r || encoded[4]{41 89 48 08}
00b9h vmovdqu xmm0,xmmword ptr [rsp+38h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 38}
00bfh vmovdqu xmmword ptr [rsp+70h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 70}
00c5h vmovdqu xmm0,xmmword ptr [rsp+70h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 70}
00cbh vmovdqu xmmword ptr [rsp+80h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 80 00 00 00}
00d4h vmovdqu xmm0,xmmword ptr [rsp+80h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 80 00 00 00}
00ddh vmovdqu xmmword ptr [rsp+90h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 90 00 00 00}
00e6h cmp [rsp+98h],edx                       ; CMP r/m32, r32 || o32 39 /r || encoded[7]{39 94 24 98 00 00 00}
00edh jle short 00f3h                         ; JLE rel8 || 7E cb || encoded[2]{7e 04}
00efh test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
00f1h jne short 0107h                         ; JNE rel8 || 75 cb || encoded[2]{75 14}
00f3h vmovdqu xmm0,xmmword ptr [rsp+90h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 90 00 00 00}
00fch vmovdqu xmmword ptr [rsp+0a0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a0 00 00 00}
0105h jmp short 0144h                         ; JMP rel8 || EB cb || encoded[2]{eb 3d}
0107h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0109h mov ecx,[rsp+98h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 8c 24 98 00 00 00}
0110h cmp rax,rcx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b c1}
0113h ja short 016ch                          ; JA rel8 || 77 cb || encoded[2]{77 57}
0115h mov rax,[rsp+90h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 90 00 00 00}
011dh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0122h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0126h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
012ah lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
012fh mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
0132h mov [rcx+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 51 08}
0135h vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
013bh vmovdqu xmmword ptr [rsp+0a0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a0 00 00 00}
0144h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0147h lea rsi,[rsp+0a0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d b4 24 a0 00 00 00}
014fh call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc 3a fd 5e}
0154h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0156h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0159h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
015ch add rsp,0b0h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 b0 00 00 00}
0163h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0164h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0165h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0166h ret                                     ; RET || C3 || encoded[1]{c3}
0167h call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 d8 0f 5f}
016ch call 7ff7c77652a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef 2e 4d ff}
------------------------------------------------------------------------------------------------------------------------
; BitSpan bitspan(BitVector16 x, Nullable<int> maxbits), hex://bitvectors/bitvector?bitspan#bitspan_()
; bitspan_()[465] = {0x57,0x56,0x53,0x48,0x81,0xec,0xd0,0x00,0x00,0x00,0xc5,0xf8,0x77,0x48,0x8b,0xf1,0x48,0x8d,0x7c,0x24,0x20,0xb9,0x2c,0x00,0x00,0x00,0x33,0xc0,0xf3,0xab,0x48,0x8b,0xce,0x4c,0x89,0x84,0x24,0x00,0x01,0x00,0x00,0x48,0x8b,0xd9,0x0f,0xb7,0xc2,0x8b,0x94,0x24,0x04,0x01,0x00,0x00,0x0f,0xb7,0xc0,0x33,0xc9,0x48,0x89,0x8c,0x24,0x80,0x00,0x00,0x00,0x48,0x89,0x8c,0x24,0x88,0x00,0x00,0x00,0x48,0x8d,0x4c,0x24,0x40,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x01,0xc5,0xfa,0x7f,0x41,0x10,0xc5,0xfa,0x7f,0x41,0x20,0xc5,0xfa,0x7f,0x41,0x30,0x33,0xc9,0x48,0x89,0x8c,0x24,0x80,0x00,0x00,0x00,0x48,0x89,0x8c,0x24,0x88,0x00,0x00,0x00,0x48,0x8d,0x8c,0x24,0x80,0x00,0x00,0x00,0x4c,0x8d,0x44,0x24,0x40,0xc5,0xf8,0x57,0xc0,0xc4,0xc1,0x7a,0x7f,0x00,0xc4,0xc1,0x7a,0x7f,0x40,0x10,0xc4,0xc1,0x7a,0x7f,0x40,0x20,0xc4,0xc1,0x7a,0x7f,0x40,0x30,0x4c,0x8d,0x44,0x24,0x40,0x44,0x0f,0xb6,0xc8,0x49,0xba,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0xc4,0x42,0xb3,0xf5,0xca,0x4c,0x89,0x09,0x4c,0x8d,0x49,0x08,0xc1,0xf8,0x08,0x0f,0xb6,0xc0,0xc4,0xc2,0xfb,0xf5,0xc2,0x49,0x89,0x01,0x48,0x8b,0xc1,0xc4,0xe2,0x7d,0x31,0x00,0x49,0x8b,0xc0,0xc5,0xfe,0x7f,0x00,0x48,0x83,0xc1,0x08,0xc4,0xe2,0x7d,0x31,0x01,0x49,0x83,0xc0,0x20,0xc4,0xc1,0x7e,0x7f,0x00,0x48,0x8d,0x44,0x24,0x40,0xb9,0x10,0x00,0x00,0x00,0x4c,0x8d,0x44,0x24,0x30,0xc5,0xf8,0x57,0xc0,0xc4,0xc1,0x7a,0x7f,0x00,0x4c,0x8d,0x44,0x24,0x30,0x49,0x89,0x00,0x41,0x89,0x48,0x08,0xc5,0xfa,0x6f,0x44,0x24,0x30,0xc5,0xfa,0x7f,0x84,0x24,0x90,0x00,0x00,0x00,0xc5,0xfa,0x6f,0x84,0x24,0x90,0x00,0x00,0x00,0xc5,0xfa,0x7f,0x84,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfa,0x6f,0x84,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfa,0x7f,0x84,0x24,0xb0,0x00,0x00,0x00,0x39,0x94,0x24,0xb8,0x00,0x00,0x00,0x7e,0x04,0x85,0xd2,0x75,0x14,0xc5,0xfa,0x6f,0x84,0x24,0xb0,0x00,0x00,0x00,0xc5,0xfa,0x7f,0x84,0x24,0xc0,0x00,0x00,0x00,0xeb,0x3d,0x8b,0xc2,0x8b,0x8c,0x24,0xb8,0x00,0x00,0x00,0x48,0x3b,0xc1,0x77,0x57,0x48,0x8b,0x84,0x24,0xb0,0x00,0x00,0x00,0x48,0x8d,0x4c,0x24,0x20,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x01,0x48,0x8d,0x4c,0x24,0x20,0x48,0x89,0x01,0x89,0x51,0x08,0xc5,0xfa,0x6f,0x44,0x24,0x20,0xc5,0xfa,0x7f,0x84,0x24,0xc0,0x00,0x00,0x00,0x48,0x8b,0xfb,0x48,0x8d,0xb4,0x24,0xc0,0x00,0x00,0x00,0xe8,0xfc,0x38,0xfd,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0xc5,0xf8,0x77,0x48,0x81,0xc4,0xd0,0x00,0x00,0x00,0x5b,0x5e,0x5f,0xc3,0xe8,0x74,0xd6,0x0f,0x5f,0xe8,0xef,0x2c,0x4d,0xff}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,0d0h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec d0 00 00 00}
000ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000dh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0010h lea rdi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 20}
0015h mov ecx,2ch                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 2c 00 00 00}
001ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
001ch rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001eh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0021h mov [rsp+100h],r8                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[8]{4c 89 84 24 00 01 00 00}
0029h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
002ch movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
002fh mov edx,[rsp+104h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 94 24 04 01 00 00}
0036h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0039h xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
003bh mov [rsp+80h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[8]{48 89 8c 24 80 00 00 00}
0043h mov [rsp+88h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[8]{48 89 8c 24 88 00 00 00}
004bh lea rcx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 40}
0050h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0054h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0058h vmovdqu xmmword ptr [rcx+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 41 10}
005dh vmovdqu xmmword ptr [rcx+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 41 20}
0062h vmovdqu xmmword ptr [rcx+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 41 30}
0067h xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
0069h mov [rsp+80h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[8]{48 89 8c 24 80 00 00 00}
0071h mov [rsp+88h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[8]{48 89 8c 24 88 00 00 00}
0079h lea rcx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 00 00 00}
0081h lea r8,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 40}
0086h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
008ah vmovdqu xmmword ptr [r8],xmm0           ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7a 7f 00}
008fh vmovdqu xmmword ptr [r8+10h],xmm0       ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c4 c1 7a 7f 40 10}
0095h vmovdqu xmmword ptr [r8+20h],xmm0       ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c4 c1 7a 7f 40 20}
009bh vmovdqu xmmword ptr [r8+30h],xmm0       ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c4 c1 7a 7f 40 30}
00a1h lea r8,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 40}
00a6h movzx r9d,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{44 0f b6 c8}
00aah mov r10,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 ba 01 01 01 01 01 01 01 01}
00b4h pdep r9,r9,r10                          ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 42 b3 f5 ca}
00b9h mov [rcx],r9                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 09}
00bch lea r9,[rcx+8]                          ; LEA r64, m || REX.W 8D /r || encoded[4]{4c 8d 49 08}
00c0h sar eax,8                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 08}
00c3h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
00c6h pdep rax,rax,r10                        ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 c2 fb f5 c2}
00cbh mov [r9],rax                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 01}
00ceh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
00d1h vpmovzxbd ymm0,qword ptr [rax]          ; VPMOVZXBD ymm1, xmm2/m64 || VEX.256.66.0F38.WIG 31 /r || encoded[5]{c4 e2 7d 31 00}
00d6h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
00d9h vmovdqu ymmword ptr [rax],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 00}
00ddh add rcx,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c1 08}
00e1h vpmovzxbd ymm0,qword ptr [rcx]          ; VPMOVZXBD ymm1, xmm2/m64 || VEX.256.66.0F38.WIG 31 /r || encoded[5]{c4 e2 7d 31 01}
00e6h add r8,20h                              ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{49 83 c0 20}
00eah vmovdqu ymmword ptr [r8],ymm0           ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 00}
00efh lea rax,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 40}
00f4h mov ecx,10h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 10 00 00 00}
00f9h lea r8,[rsp+30h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 30}
00feh vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0102h vmovdqu xmmword ptr [r8],xmm0           ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7a 7f 00}
0107h lea r8,[rsp+30h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 30}
010ch mov [r8],rax                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 00}
010fh mov [r8+8],ecx                          ; MOV r/m32, r32 || o32 89 /r || encoded[4]{41 89 48 08}
0113h vmovdqu xmm0,xmmword ptr [rsp+30h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 30}
0119h vmovdqu xmmword ptr [rsp+90h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 90 00 00 00}
0122h vmovdqu xmm0,xmmword ptr [rsp+90h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 90 00 00 00}
012bh vmovdqu xmmword ptr [rsp+0a0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a0 00 00 00}
0134h vmovdqu xmm0,xmmword ptr [rsp+0a0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 a0 00 00 00}
013dh vmovdqu xmmword ptr [rsp+0b0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 b0 00 00 00}
0146h cmp [rsp+0b8h],edx                      ; CMP r/m32, r32 || o32 39 /r || encoded[7]{39 94 24 b8 00 00 00}
014dh jle short 0153h                         ; JLE rel8 || 7E cb || encoded[2]{7e 04}
014fh test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0151h jne short 0167h                         ; JNE rel8 || 75 cb || encoded[2]{75 14}
0153h vmovdqu xmm0,xmmword ptr [rsp+0b0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 b0 00 00 00}
015ch vmovdqu xmmword ptr [rsp+0c0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 c0 00 00 00}
0165h jmp short 01a4h                         ; JMP rel8 || EB cb || encoded[2]{eb 3d}
0167h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0169h mov ecx,[rsp+0b8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 8c 24 b8 00 00 00}
0170h cmp rax,rcx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b c1}
0173h ja short 01cch                          ; JA rel8 || 77 cb || encoded[2]{77 57}
0175h mov rax,[rsp+0b0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 b0 00 00 00}
017dh lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0182h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0186h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
018ah lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
018fh mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
0192h mov [rcx+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 51 08}
0195h vmovdqu xmm0,xmmword ptr [rsp+20h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 20}
019bh vmovdqu xmmword ptr [rsp+0c0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 c0 00 00 00}
01a4h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
01a7h lea rsi,[rsp+0c0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d b4 24 c0 00 00 00}
01afh call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc 38 fd 5e}
01b4h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
01b6h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
01b9h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01bch add rsp,0d0h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 d0 00 00 00}
01c3h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01c4h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01c5h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01c6h ret                                     ; RET || C3 || encoded[1]{c3}
01c7h call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 d6 0f 5f}
01cch call 7ff7c77652a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef 2c 4d ff}
------------------------------------------------------------------------------------------------------------------------
; BitSpan bitspan(BitVector24 x, Nullable<int> maxbits), hex://bitvectors/bitvector?bitspan#bitspan_()
; bitspan_()[550] = {0x57,0x56,0x53,0x48,0x81,0xec,0x20,0x01,0x00,0x00,0xc5,0xf8,0x77,0x48,0x8b,0xf1,0x48,0x8d,0x7c,0x24,0x20,0xb9,0x40,0x00,0x00,0x00,0x33,0xc0,0xf3,0xab,0x48,0x8b,0xce,0x4c,0x89,0x84,0x24,0x50,0x01,0x00,0x00,0x48,0x8b,0xd9,0x48,0x8d,0x84,0x24,0x50,0x01,0x00,0x00,0x0f,0xb6,0x08,0x8b,0x40,0x04,0x84,0xc9,0x75,0x07,0xb9,0x18,0x00,0x00,0x00,0xeb,0x02,0x8b,0xc8,0x48,0x8d,0x84,0x24,0xc0,0x00,0x00,0x00,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x00,0xc5,0xfa,0x7f,0x40,0x10,0x48,0x8d,0x84,0x24,0xc0,0x00,0x00,0x00,0x4c,0x8d,0x44,0x24,0x40,0xc5,0xf8,0x57,0xc0,0xc4,0xc1,0x7a,0x7f,0x00,0xc4,0xc1,0x7a,0x7f,0x40,0x10,0xc4,0xc1,0x7a,0x7f,0x40,0x20,0xc4,0xc1,0x7a,0x7f,0x40,0x30,0xc4,0xc1,0x7a,0x7f,0x40,0x40,0xc4,0xc1,0x7a,0x7f,0x40,0x50,0xc4,0xc1,0x7a,0x7f,0x40,0x60,0xc4,0xc1,0x7a,0x7f,0x40,0x70,0x4c,0x8d,0x44,0x24,0x40,0x44,0x0f,0xb6,0xca,0x49,0xba,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0xc4,0x42,0xb3,0xf5,0xca,0x4c,0x89,0x08,0x4c,0x8d,0x48,0x08,0x44,0x8b,0xd2,0x41,0xc1,0xea,0x08,0x45,0x0f,0xb6,0xd2,0x49,0xbb,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0xc4,0x42,0xab,0xf5,0xd3,0x4d,0x89,0x11,0x4c,0x8d,0x48,0x10,0x44,0x8b,0xd2,0x41,0xc1,0xea,0x10,0x45,0x0f,0xb6,0xd2,0xc4,0x42,0xab,0xf5,0xd3,0x4d,0x89,0x11,0x4c,0x8d,0x48,0x18,0xc1,0xea,0x18,0x0f,0xb6,0xd2,0xc4,0xc2,0xeb,0xf5,0xd3,0x49,0x89,0x11,0x48,0x8b,0xd0,0xc4,0xe2,0x7d,0x31,0x02,0x49,0x8b,0xd0,0xc5,0xfe,0x7f,0x02,0x48,0x8d,0x50,0x08,0xc4,0xe2,0x7d,0x31,0x02,0x49,0x8d,0x50,0x20,0xc5,0xfe,0x7f,0x02,0x48,0x8d,0x50,0x10,0xc4,0xe2,0x7d,0x31,0x02,0x49,0x8d,0x50,0x40,0xc5,0xfe,0x7f,0x02,0x48,0x83,0xc0,0x18,0xc4,0xe2,0x7d,0x31,0x00,0x49,0x83,0xc0,0x60,0xc4,0xc1,0x7e,0x7f,0x00,0x48,0x8d,0x44,0x24,0x40,0xba,0x20,0x00,0x00,0x00,0x4c,0x8d,0x44,0x24,0x30,0xc5,0xf8,0x57,0xc0,0xc4,0xc1,0x7a,0x7f,0x00,0x4c,0x8d,0x44,0x24,0x30,0x49,0x89,0x00,0x41,0x89,0x50,0x08,0xc5,0xfa,0x6f,0x44,0x24,0x30,0xc5,0xfa,0x7f,0x84,0x24,0xe0,0x00,0x00,0x00,0xc5,0xfa,0x6f,0x84,0x24,0xe0,0x00,0x00,0x00,0xc5,0xfa,0x7f,0x84,0x24,0xf0,0x00,0x00,0x00,0xc5,0xfa,0x6f,0x84,0x24,0xf0,0x00,0x00,0x00,0xc5,0xfa,0x7f,0x84,0x24,0x00,0x01,0x00,0x00,0x39,0x8c,0x24,0x08,0x01,0x00,0x00,0x7e,0x04,0x85,0xc9,0x75,0x14,0xc5,0xfa,0x6f,0x84,0x24,0x00,0x01,0x00,0x00,0xc5,0xfa,0x7f,0x84,0x24,0x10,0x01,0x00,0x00,0xeb,0x3d,0x8b,0xc1,0x8b,0x94,0x24,0x08,0x01,0x00,0x00,0x48,0x3b,0xc2,0x77,0x57,0x48,0x8b,0x84,0x24,0x00,0x01,0x00,0x00,0x48,0x8d,0x54,0x24,0x20,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x02,0x48,0x8d,0x54,0x24,0x20,0x48,0x89,0x02,0x89,0x4a,0x08,0xc5,0xfa,0x6f,0x44,0x24,0x20,0xc5,0xfa,0x7f,0x84,0x24,0x10,0x01,0x00,0x00,0x48,0x8b,0xfb,0x48,0x8d,0xb4,0x24,0x10,0x01,0x00,0x00,0xe8,0x97,0x32,0xfd,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0xc5,0xf8,0x77,0x48,0x81,0xc4,0x20,0x01,0x00,0x00,0x5b,0x5e,0x5f,0xc3,0xe8,0x0f,0xd0,0x0f,0x5f,0xe8,0x8a,0x26,0x4d,0xff}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,120h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 20 01 00 00}
000ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000dh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0010h lea rdi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 20}
0015h mov ecx,40h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 40 00 00 00}
001ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
001ch rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001eh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0021h mov [rsp+150h],r8                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[8]{4c 89 84 24 50 01 00 00}
0029h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
002ch lea rax,[rsp+150h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 84 24 50 01 00 00}
0034h movzx ecx,byte ptr [rax]                ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 08}
0037h mov eax,[rax+4]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 04}
003ah test cl,cl                              ; TEST r/m8, r8 || 84 /r || encoded[2]{84 c9}
003ch jne short 0045h                         ; JNE rel8 || 75 cb || encoded[2]{75 07}
003eh mov ecx,18h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 18 00 00 00}
0043h jmp short 0047h                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
0045h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0047h lea rax,[rsp+0c0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 84 24 c0 00 00 00}
004fh vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0053h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0057h vmovdqu xmmword ptr [rax+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 10}
005ch lea rax,[rsp+0c0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 84 24 c0 00 00 00}
0064h lea r8,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 40}
0069h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
006dh vmovdqu xmmword ptr [r8],xmm0           ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7a 7f 00}
0072h vmovdqu xmmword ptr [r8+10h],xmm0       ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c4 c1 7a 7f 40 10}
0078h vmovdqu xmmword ptr [r8+20h],xmm0       ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c4 c1 7a 7f 40 20}
007eh vmovdqu xmmword ptr [r8+30h],xmm0       ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c4 c1 7a 7f 40 30}
0084h vmovdqu xmmword ptr [r8+40h],xmm0       ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c4 c1 7a 7f 40 40}
008ah vmovdqu xmmword ptr [r8+50h],xmm0       ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c4 c1 7a 7f 40 50}
0090h vmovdqu xmmword ptr [r8+60h],xmm0       ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c4 c1 7a 7f 40 60}
0096h vmovdqu xmmword ptr [r8+70h],xmm0       ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c4 c1 7a 7f 40 70}
009ch lea r8,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 40}
00a1h movzx r9d,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{44 0f b6 ca}
00a5h mov r10,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 ba 01 01 01 01 01 01 01 01}
00afh pdep r9,r9,r10                          ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 42 b3 f5 ca}
00b4h mov [rax],r9                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 08}
00b7h lea r9,[rax+8]                          ; LEA r64, m || REX.W 8D /r || encoded[4]{4c 8d 48 08}
00bbh mov r10d,edx                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b d2}
00beh shr r10d,8                              ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[4]{41 c1 ea 08}
00c2h movzx r10d,r10b                         ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 d2}
00c6h mov r11,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 01 01 01 01 01 01 01 01}
00d0h pdep r10,r10,r11                        ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 42 ab f5 d3}
00d5h mov [r9],r10                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4d 89 11}
00d8h lea r9,[rax+10h]                        ; LEA r64, m || REX.W 8D /r || encoded[4]{4c 8d 48 10}
00dch mov r10d,edx                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b d2}
00dfh shr r10d,10h                            ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[4]{41 c1 ea 10}
00e3h movzx r10d,r10b                         ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 d2}
00e7h pdep r10,r10,r11                        ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 42 ab f5 d3}
00ech mov [r9],r10                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4d 89 11}
00efh lea r9,[rax+18h]                        ; LEA r64, m || REX.W 8D /r || encoded[4]{4c 8d 48 18}
00f3h shr edx,18h                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 ea 18}
00f6h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
00f9h pdep rdx,rdx,r11                        ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 c2 eb f5 d3}
00feh mov [r9],rdx                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 11}
0101h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0104h vpmovzxbd ymm0,qword ptr [rdx]          ; VPMOVZXBD ymm1, xmm2/m64 || VEX.256.66.0F38.WIG 31 /r || encoded[5]{c4 e2 7d 31 02}
0109h mov rdx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d0}
010ch vmovdqu ymmword ptr [rdx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 02}
0110h lea rdx,[rax+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 08}
0114h vpmovzxbd ymm0,qword ptr [rdx]          ; VPMOVZXBD ymm1, xmm2/m64 || VEX.256.66.0F38.WIG 31 /r || encoded[5]{c4 e2 7d 31 02}
0119h lea rdx,[r8+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 50 20}
011dh vmovdqu ymmword ptr [rdx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 02}
0121h lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0125h vpmovzxbd ymm0,qword ptr [rdx]          ; VPMOVZXBD ymm1, xmm2/m64 || VEX.256.66.0F38.WIG 31 /r || encoded[5]{c4 e2 7d 31 02}
012ah lea rdx,[r8+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 50 40}
012eh vmovdqu ymmword ptr [rdx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 02}
0132h add rax,18h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 18}
0136h vpmovzxbd ymm0,qword ptr [rax]          ; VPMOVZXBD ymm1, xmm2/m64 || VEX.256.66.0F38.WIG 31 /r || encoded[5]{c4 e2 7d 31 00}
013bh add r8,60h                              ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{49 83 c0 60}
013fh vmovdqu ymmword ptr [r8],ymm0           ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 00}
0144h lea rax,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 40}
0149h mov edx,20h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 20 00 00 00}
014eh lea r8,[rsp+30h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 30}
0153h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0157h vmovdqu xmmword ptr [r8],xmm0           ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7a 7f 00}
015ch lea r8,[rsp+30h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 30}
0161h mov [r8],rax                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 00}
0164h mov [r8+8],edx                          ; MOV r/m32, r32 || o32 89 /r || encoded[4]{41 89 50 08}
0168h vmovdqu xmm0,xmmword ptr [rsp+30h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 30}
016eh vmovdqu xmmword ptr [rsp+0e0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 e0 00 00 00}
0177h vmovdqu xmm0,xmmword ptr [rsp+0e0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 e0 00 00 00}
0180h vmovdqu xmmword ptr [rsp+0f0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 f0 00 00 00}
0189h vmovdqu xmm0,xmmword ptr [rsp+0f0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 f0 00 00 00}
0192h vmovdqu xmmword ptr [rsp+100h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 00 01 00 00}
019bh cmp [rsp+108h],ecx                      ; CMP r/m32, r32 || o32 39 /r || encoded[7]{39 8c 24 08 01 00 00}
01a2h jle short 01a8h                         ; JLE rel8 || 7E cb || encoded[2]{7e 04}
01a4h test ecx,ecx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c9}
01a6h jne short 01bch                         ; JNE rel8 || 75 cb || encoded[2]{75 14}
01a8h vmovdqu xmm0,xmmword ptr [rsp+100h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 00 01 00 00}
01b1h vmovdqu xmmword ptr [rsp+110h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 10 01 00 00}
01bah jmp short 01f9h                         ; JMP rel8 || EB cb || encoded[2]{eb 3d}
01bch mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
01beh mov edx,[rsp+108h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 94 24 08 01 00 00}
01c5h cmp rax,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b c2}
01c8h ja short 0221h                          ; JA rel8 || 77 cb || encoded[2]{77 57}
01cah mov rax,[rsp+100h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 00 01 00 00}
01d2h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
01d7h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
01dbh vmovdqu xmmword ptr [rdx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 02}
01dfh lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
01e4h mov [rdx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 02}
01e7h mov [rdx+8],ecx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 4a 08}
01eah vmovdqu xmm0,xmmword ptr [rsp+20h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 20}
01f0h vmovdqu xmmword ptr [rsp+110h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 10 01 00 00}
01f9h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
01fch lea rsi,[rsp+110h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d b4 24 10 01 00 00}
0204h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 32 fd 5e}
0209h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
020bh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
020eh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0211h add rsp,120h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 20 01 00 00}
0218h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0219h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
021ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
021bh ret                                     ; RET || C3 || encoded[1]{c3}
021ch call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f d0 0f 5f}
0221h call 7ff7c77652a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a 26 4d ff}
------------------------------------------------------------------------------------------------------------------------
; BitSpan bitspan(BitVector32 x, Nullable<int> maxbits), hex://bitvectors/bitvector?bitspan#bitspan_()
; bitspan_()[599] = {0x57,0x56,0x53,0x48,0x81,0xec,0x20,0x01,0x00,0x00,0xc5,0xf8,0x77,0x48,0x8b,0xf1,0x48,0x8d,0x7c,0x24,0x20,0xb9,0x40,0x00,0x00,0x00,0x33,0xc0,0xf3,0xab,0x48,0x8b,0xce,0x4c,0x89,0x84,0x24,0x50,0x01,0x00,0x00,0x48,0x8b,0xd9,0x8b,0x84,0x24,0x54,0x01,0x00,0x00,0x48,0x8d,0x8c,0x24,0xc0,0x00,0x00,0x00,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x01,0xc5,0xfa,0x7f,0x41,0x10,0x48,0x8d,0x4c,0x24,0x40,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x01,0xc5,0xfa,0x7f,0x41,0x10,0xc5,0xfa,0x7f,0x41,0x20,0xc5,0xfa,0x7f,0x41,0x30,0xc5,0xfa,0x7f,0x41,0x40,0xc5,0xfa,0x7f,0x41,0x50,0xc5,0xfa,0x7f,0x41,0x60,0xc5,0xfa,0x7f,0x41,0x70,0x48,0x8d,0x8c,0x24,0xc0,0x00,0x00,0x00,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x01,0xc5,0xfa,0x7f,0x41,0x10,0x48,0x8d,0x8c,0x24,0xc0,0x00,0x00,0x00,0x4c,0x8d,0x44,0x24,0x40,0xc5,0xf8,0x57,0xc0,0xc4,0xc1,0x7a,0x7f,0x00,0xc4,0xc1,0x7a,0x7f,0x40,0x10,0xc4,0xc1,0x7a,0x7f,0x40,0x20,0xc4,0xc1,0x7a,0x7f,0x40,0x30,0xc4,0xc1,0x7a,0x7f,0x40,0x40,0xc4,0xc1,0x7a,0x7f,0x40,0x50,0xc4,0xc1,0x7a,0x7f,0x40,0x60,0xc4,0xc1,0x7a,0x7f,0x40,0x70,0x4c,0x8d,0x44,0x24,0x40,0x44,0x0f,0xb6,0xca,0x49,0xba,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0xc4,0x42,0xb3,0xf5,0xca,0x4c,0x89,0x09,0x4c,0x8d,0x49,0x08,0x44,0x8b,0xd2,0x41,0xc1,0xea,0x08,0x45,0x0f,0xb6,0xd2,0x49,0xbb,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0xc4,0x42,0xab,0xf5,0xd3,0x4d,0x89,0x11,0x4c,0x8d,0x49,0x10,0x44,0x8b,0xd2,0x41,0xc1,0xea,0x10,0x45,0x0f,0xb6,0xd2,0xc4,0x42,0xab,0xf5,0xd3,0x4d,0x89,0x11,0x4c,0x8d,0x49,0x18,0xc1,0xea,0x18,0x0f,0xb6,0xd2,0xc4,0xc2,0xeb,0xf5,0xd3,0x49,0x89,0x11,0x48,0x8b,0xd1,0xc4,0xe2,0x7d,0x31,0x02,0x49,0x8b,0xd0,0xc5,0xfe,0x7f,0x02,0x48,0x8d,0x51,0x08,0xc4,0xe2,0x7d,0x31,0x02,0x49,0x8d,0x50,0x20,0xc5,0xfe,0x7f,0x02,0x48,0x8d,0x51,0x10,0xc4,0xe2,0x7d,0x31,0x02,0x49,0x8d,0x50,0x40,0xc5,0xfe,0x7f,0x02,0x48,0x83,0xc1,0x18,0xc4,0xe2,0x7d,0x31,0x01,0x49,0x83,0xc0,0x60,0xc4,0xc1,0x7e,0x7f,0x00,0x48,0x8d,0x54,0x24,0x40,0xb9,0x20,0x00,0x00,0x00,0x4c,0x8d,0x44,0x24,0x30,0xc5,0xf8,0x57,0xc0,0xc4,0xc1,0x7a,0x7f,0x00,0x4c,0x8d,0x44,0x24,0x30,0x49,0x89,0x10,0x41,0x89,0x48,0x08,0xc5,0xfa,0x6f,0x44,0x24,0x30,0xc5,0xfa,0x7f,0x84,0x24,0xe0,0x00,0x00,0x00,0xc5,0xfa,0x6f,0x84,0x24,0xe0,0x00,0x00,0x00,0xc5,0xfa,0x7f,0x84,0x24,0xf0,0x00,0x00,0x00,0xc5,0xfa,0x6f,0x84,0x24,0xf0,0x00,0x00,0x00,0xc5,0xfa,0x7f,0x84,0x24,0x00,0x01,0x00,0x00,0x39,0x84,0x24,0x08,0x01,0x00,0x00,0x7e,0x04,0x85,0xc0,0x75,0x14,0xc5,0xfa,0x6f,0x84,0x24,0x00,0x01,0x00,0x00,0xc5,0xfa,0x7f,0x84,0x24,0x10,0x01,0x00,0x00,0xeb,0x3d,0x8b,0xd0,0x8b,0x8c,0x24,0x08,0x01,0x00,0x00,0x48,0x3b,0xd1,0x77,0x57,0x48,0x8b,0x94,0x24,0x00,0x01,0x00,0x00,0x48,0x8d,0x4c,0x24,0x20,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x01,0x48,0x8d,0x4c,0x24,0x20,0x48,0x89,0x11,0x89,0x41,0x08,0xc5,0xfa,0x6f,0x44,0x24,0x20,0xc5,0xfa,0x7f,0x84,0x24,0x10,0x01,0x00,0x00,0x48,0x8b,0xfb,0x48,0x8d,0xb4,0x24,0x10,0x01,0x00,0x00,0xe8,0x06,0x30,0xfd,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0xc5,0xf8,0x77,0x48,0x81,0xc4,0x20,0x01,0x00,0x00,0x5b,0x5e,0x5f,0xc3,0xe8,0x7e,0xcd,0x0f,0x5f,0xe8,0xf9,0x23,0x4d,0xff}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,120h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 20 01 00 00}
000ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000dh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0010h lea rdi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 20}
0015h mov ecx,40h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 40 00 00 00}
001ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
001ch rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001eh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0021h mov [rsp+150h],r8                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[8]{4c 89 84 24 50 01 00 00}
0029h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
002ch mov eax,[rsp+154h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 84 24 54 01 00 00}
0033h lea rcx,[rsp+0c0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 c0 00 00 00}
003bh vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
003fh vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0043h vmovdqu xmmword ptr [rcx+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 41 10}
0048h lea rcx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 40}
004dh vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0051h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0055h vmovdqu xmmword ptr [rcx+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 41 10}
005ah vmovdqu xmmword ptr [rcx+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 41 20}
005fh vmovdqu xmmword ptr [rcx+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 41 30}
0064h vmovdqu xmmword ptr [rcx+40h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 41 40}
0069h vmovdqu xmmword ptr [rcx+50h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 41 50}
006eh vmovdqu xmmword ptr [rcx+60h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 41 60}
0073h vmovdqu xmmword ptr [rcx+70h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 41 70}
0078h lea rcx,[rsp+0c0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 c0 00 00 00}
0080h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0084h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0088h vmovdqu xmmword ptr [rcx+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 41 10}
008dh lea rcx,[rsp+0c0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 c0 00 00 00}
0095h lea r8,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 40}
009ah vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
009eh vmovdqu xmmword ptr [r8],xmm0           ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7a 7f 00}
00a3h vmovdqu xmmword ptr [r8+10h],xmm0       ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c4 c1 7a 7f 40 10}
00a9h vmovdqu xmmword ptr [r8+20h],xmm0       ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c4 c1 7a 7f 40 20}
00afh vmovdqu xmmword ptr [r8+30h],xmm0       ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c4 c1 7a 7f 40 30}
00b5h vmovdqu xmmword ptr [r8+40h],xmm0       ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c4 c1 7a 7f 40 40}
00bbh vmovdqu xmmword ptr [r8+50h],xmm0       ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c4 c1 7a 7f 40 50}
00c1h vmovdqu xmmword ptr [r8+60h],xmm0       ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c4 c1 7a 7f 40 60}
00c7h vmovdqu xmmword ptr [r8+70h],xmm0       ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c4 c1 7a 7f 40 70}
00cdh lea r8,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 40}
00d2h movzx r9d,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{44 0f b6 ca}
00d6h mov r10,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 ba 01 01 01 01 01 01 01 01}
00e0h pdep r9,r9,r10                          ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 42 b3 f5 ca}
00e5h mov [rcx],r9                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 09}
00e8h lea r9,[rcx+8]                          ; LEA r64, m || REX.W 8D /r || encoded[4]{4c 8d 49 08}
00ech mov r10d,edx                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b d2}
00efh shr r10d,8                              ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[4]{41 c1 ea 08}
00f3h movzx r10d,r10b                         ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 d2}
00f7h mov r11,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 01 01 01 01 01 01 01 01}
0101h pdep r10,r10,r11                        ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 42 ab f5 d3}
0106h mov [r9],r10                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4d 89 11}
0109h lea r9,[rcx+10h]                        ; LEA r64, m || REX.W 8D /r || encoded[4]{4c 8d 49 10}
010dh mov r10d,edx                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b d2}
0110h shr r10d,10h                            ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[4]{41 c1 ea 10}
0114h movzx r10d,r10b                         ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 d2}
0118h pdep r10,r10,r11                        ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 42 ab f5 d3}
011dh mov [r9],r10                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4d 89 11}
0120h lea r9,[rcx+18h]                        ; LEA r64, m || REX.W 8D /r || encoded[4]{4c 8d 49 18}
0124h shr edx,18h                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 ea 18}
0127h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
012ah pdep rdx,rdx,r11                        ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 c2 eb f5 d3}
012fh mov [r9],rdx                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 11}
0132h mov rdx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d1}
0135h vpmovzxbd ymm0,qword ptr [rdx]          ; VPMOVZXBD ymm1, xmm2/m64 || VEX.256.66.0F38.WIG 31 /r || encoded[5]{c4 e2 7d 31 02}
013ah mov rdx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d0}
013dh vmovdqu ymmword ptr [rdx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 02}
0141h lea rdx,[rcx+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 51 08}
0145h vpmovzxbd ymm0,qword ptr [rdx]          ; VPMOVZXBD ymm1, xmm2/m64 || VEX.256.66.0F38.WIG 31 /r || encoded[5]{c4 e2 7d 31 02}
014ah lea rdx,[r8+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 50 20}
014eh vmovdqu ymmword ptr [rdx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 02}
0152h lea rdx,[rcx+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 51 10}
0156h vpmovzxbd ymm0,qword ptr [rdx]          ; VPMOVZXBD ymm1, xmm2/m64 || VEX.256.66.0F38.WIG 31 /r || encoded[5]{c4 e2 7d 31 02}
015bh lea rdx,[r8+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 50 40}
015fh vmovdqu ymmword ptr [rdx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 02}
0163h add rcx,18h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c1 18}
0167h vpmovzxbd ymm0,qword ptr [rcx]          ; VPMOVZXBD ymm1, xmm2/m64 || VEX.256.66.0F38.WIG 31 /r || encoded[5]{c4 e2 7d 31 01}
016ch add r8,60h                              ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{49 83 c0 60}
0170h vmovdqu ymmword ptr [r8],ymm0           ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 00}
0175h lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
017ah mov ecx,20h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 20 00 00 00}
017fh lea r8,[rsp+30h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 30}
0184h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0188h vmovdqu xmmword ptr [r8],xmm0           ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7a 7f 00}
018dh lea r8,[rsp+30h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 30}
0192h mov [r8],rdx                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 10}
0195h mov [r8+8],ecx                          ; MOV r/m32, r32 || o32 89 /r || encoded[4]{41 89 48 08}
0199h vmovdqu xmm0,xmmword ptr [rsp+30h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 30}
019fh vmovdqu xmmword ptr [rsp+0e0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 e0 00 00 00}
01a8h vmovdqu xmm0,xmmword ptr [rsp+0e0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 e0 00 00 00}
01b1h vmovdqu xmmword ptr [rsp+0f0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 f0 00 00 00}
01bah vmovdqu xmm0,xmmword ptr [rsp+0f0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 f0 00 00 00}
01c3h vmovdqu xmmword ptr [rsp+100h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 00 01 00 00}
01cch cmp [rsp+108h],eax                      ; CMP r/m32, r32 || o32 39 /r || encoded[7]{39 84 24 08 01 00 00}
01d3h jle short 01d9h                         ; JLE rel8 || 7E cb || encoded[2]{7e 04}
01d5h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
01d7h jne short 01edh                         ; JNE rel8 || 75 cb || encoded[2]{75 14}
01d9h vmovdqu xmm0,xmmword ptr [rsp+100h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 00 01 00 00}
01e2h vmovdqu xmmword ptr [rsp+110h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 10 01 00 00}
01ebh jmp short 022ah                         ; JMP rel8 || EB cb || encoded[2]{eb 3d}
01edh mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
01efh mov ecx,[rsp+108h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 8c 24 08 01 00 00}
01f6h cmp rdx,rcx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b d1}
01f9h ja short 0252h                          ; JA rel8 || 77 cb || encoded[2]{77 57}
01fbh mov rdx,[rsp+100h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 00 01 00 00}
0203h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0208h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
020ch vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0210h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0215h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0218h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
021bh vmovdqu xmm0,xmmword ptr [rsp+20h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 20}
0221h vmovdqu xmmword ptr [rsp+110h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 10 01 00 00}
022ah mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
022dh lea rsi,[rsp+110h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d b4 24 10 01 00 00}
0235h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 30 fd 5e}
023ah movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
023ch mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
023fh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0242h add rsp,120h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 20 01 00 00}
0249h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
024ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
024bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
024ch ret                                     ; RET || C3 || encoded[1]{c3}
024dh call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e cd 0f 5f}
0252h call 7ff7c77652a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 23 4d ff}
------------------------------------------------------------------------------------------------------------------------
; BitSpan bitspan(BitVector64 x, Nullable<int> maxbits), hex://bitvectors/bitvector?bitspan#bitspan_()
; bitspan_()[702] = {0x57,0x56,0x55,0x53,0x48,0x81,0xec,0xc8,0x00,0x00,0x00,0xc5,0xf8,0x77,0x48,0x8b,0xf1,0x48,0x8d,0x7c,0x24,0x28,0xb9,0x28,0x00,0x00,0x00,0x33,0xc0,0xf3,0xab,0x48,0x8b,0xce,0x4c,0x89,0x84,0x24,0x00,0x01,0x00,0x00,0x48,0x8b,0xd9,0x8b,0xb4,0x24,0x04,0x01,0x00,0x00,0x48,0x8b,0xfa,0x48,0x8d,0x4c,0x24,0x48,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x01,0xc5,0xfa,0x7f,0x41,0x10,0xc5,0xfa,0x7f,0x41,0x20,0xc5,0xfa,0x7f,0x41,0x30,0x48,0x8d,0x4c,0x24,0x48,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x01,0xc5,0xfa,0x7f,0x41,0x10,0xc5,0xfa,0x7f,0x41,0x20,0xc5,0xfa,0x7f,0x41,0x30,0x48,0x8d,0x6c,0x24,0x48,0x48,0xb9,0x78,0x25,0x1b,0xc8,0xf7,0x7f,0x00,0x00,0xba,0x40,0x00,0x00,0x00,0xe8,0x68,0x3e,0xfd,0x5e,0x48,0x83,0xc0,0x10,0xba,0x40,0x00,0x00,0x00,0x8b,0xcf,0x44,0x0f,0xb6,0xc1,0x49,0xb9,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0xc4,0x42,0xbb,0xf5,0xc1,0x4c,0x89,0x45,0x00,0x4c,0x8d,0x45,0x08,0x44,0x8b,0xc9,0x41,0xc1,0xe9,0x08,0x45,0x0f,0xb6,0xc9,0x49,0xba,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0xc4,0x42,0xb3,0xf5,0xca,0x4d,0x89,0x08,0x4c,0x8d,0x45,0x10,0x44,0x8b,0xc9,0x41,0xc1,0xe9,0x10,0x45,0x0f,0xb6,0xc9,0xc4,0x42,0xb3,0xf5,0xca,0x4d,0x89,0x08,0x4c,0x8d,0x45,0x18,0xc1,0xe9,0x18,0x0f,0xb6,0xc9,0xc4,0xc2,0xf3,0xf5,0xca,0x49,0x89,0x08,0x48,0xc1,0xef,0x20,0x8b,0xcf,0x4c,0x8d,0x45,0x20,0x44,0x0f,0xb6,0xc9,0xc4,0x42,0xb3,0xf5,0xca,0x4d,0x89,0x08,0x4d,0x8d,0x48,0x08,0x44,0x8b,0xd1,0x41,0xc1,0xea,0x08,0x45,0x0f,0xb6,0xd2,0x49,0xbb,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0xc4,0x42,0xab,0xf5,0xd3,0x4d,0x89,0x11,0x4d,0x8d,0x48,0x10,0x44,0x8b,0xd1,0x41,0xc1,0xea,0x10,0x45,0x0f,0xb6,0xd2,0xc4,0x42,0xab,0xf5,0xd3,0x4d,0x89,0x11,0x49,0x83,0xc0,0x18,0xc1,0xe9,0x18,0x0f,0xb6,0xc9,0xc4,0xc2,0xf3,0xf5,0xcb,0x49,0x89,0x08,0x48,0x8b,0xcd,0xc4,0xe2,0x7d,0x31,0x01,0x48,0x8b,0xc8,0xc5,0xfe,0x7f,0x01,0x48,0x8d,0x4d,0x08,0xc4,0xe2,0x7d,0x31,0x01,0x48,0x8d,0x48,0x20,0xc5,0xfe,0x7f,0x01,0x48,0x8d,0x4d,0x10,0xc4,0xe2,0x7d,0x31,0x01,0x48,0x8d,0x48,0x40,0xc5,0xfe,0x7f,0x01,0x48,0x8d,0x4d,0x18,0xc4,0xe2,0x7d,0x31,0x01,0x48,0x8d,0x48,0x60,0xc5,0xfe,0x7f,0x01,0x48,0x8d,0x4d,0x20,0xc4,0xe2,0x7d,0x31,0x01,0x48,0x8d,0x88,0x80,0x00,0x00,0x00,0xc5,0xfe,0x7f,0x01,0x48,0x8d,0x4d,0x28,0xc4,0xe2,0x7d,0x31,0x01,0x48,0x8d,0x88,0xa0,0x00,0x00,0x00,0xc5,0xfe,0x7f,0x01,0x48,0x8d,0x4d,0x30,0xc4,0xe2,0x7d,0x31,0x01,0x48,0x8d,0x88,0xc0,0x00,0x00,0x00,0xc5,0xfe,0x7f,0x01,0x48,0x83,0xc5,0x38,0xc4,0xe2,0x7d,0x31,0x45,0x00,0x48,0x8d,0x88,0xe0,0x00,0x00,0x00,0xc5,0xfe,0x7f,0x01,0x48,0x8d,0x4c,0x24,0x38,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x01,0x48,0x8d,0x4c,0x24,0x38,0x48,0x89,0x01,0x89,0x51,0x08,0xc5,0xfa,0x6f,0x44,0x24,0x38,0xc5,0xfa,0x7f,0x84,0x24,0x88,0x00,0x00,0x00,0xc5,0xfa,0x6f,0x84,0x24,0x88,0x00,0x00,0x00,0xc5,0xfa,0x7f,0x84,0x24,0x98,0x00,0x00,0x00,0xc5,0xfa,0x6f,0x84,0x24,0x98,0x00,0x00,0x00,0xc5,0xfa,0x7f,0x84,0x24,0xa8,0x00,0x00,0x00,0x39,0xb4,0x24,0xb0,0x00,0x00,0x00,0x7e,0x04,0x85,0xf6,0x75,0x14,0xc5,0xfa,0x6f,0x84,0x24,0xa8,0x00,0x00,0x00,0xc5,0xfa,0x7f,0x84,0x24,0xb8,0x00,0x00,0x00,0xeb,0x3d,0x8b,0xc6,0x8b,0x94,0x24,0xb0,0x00,0x00,0x00,0x48,0x3b,0xc2,0x77,0x58,0x48,0x8b,0x84,0x24,0xa8,0x00,0x00,0x00,0x48,0x8d,0x54,0x24,0x28,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x02,0x48,0x8d,0x54,0x24,0x28,0x48,0x89,0x02,0x89,0x72,0x08,0xc5,0xfa,0x6f,0x44,0x24,0x28,0xc5,0xfa,0x7f,0x84,0x24,0xb8,0x00,0x00,0x00,0x48,0x8b,0xfb,0x48,0x8d,0xb4,0x24,0xb8,0x00,0x00,0x00,0xe8,0x00,0x2d,0xfd,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0xc5,0xf8,0x77,0x48,0x81,0xc4,0xc8,0x00,0x00,0x00,0x5b,0x5d,0x5e,0x5f,0xc3,0xe8,0x77,0xca,0x0f,0x5f,0xe8,0xf2,0x20,0x4d,0xff}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,0c8h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec c8 00 00 00}
000bh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000eh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0011h lea rdi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 28}
0016h mov ecx,28h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 28 00 00 00}
001bh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
001dh rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0022h mov [rsp+100h],r8                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[8]{4c 89 84 24 00 01 00 00}
002ah mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
002dh mov esi,[rsp+104h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b b4 24 04 01 00 00}
0034h mov rdi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fa}
0037h lea rcx,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 48}
003ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0040h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0044h vmovdqu xmmword ptr [rcx+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 41 10}
0049h vmovdqu xmmword ptr [rcx+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 41 20}
004eh vmovdqu xmmword ptr [rcx+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 41 30}
0053h lea rcx,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 48}
0058h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
005ch vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0060h vmovdqu xmmword ptr [rcx+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 41 10}
0065h vmovdqu xmmword ptr [rcx+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 41 20}
006ah vmovdqu xmmword ptr [rcx+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 41 30}
006fh lea rbp,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 6c 24 48}
0074h mov rcx,7ff7c81b2578h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 25 1b c8 f7 7f 00 00}
007eh mov edx,40h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 40 00 00 00}
0083h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 3e fd 5e}
0088h add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
008ch mov edx,40h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 40 00 00 00}
0091h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0093h movzx r8d,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{44 0f b6 c1}
0097h mov r9,101010101010101h                 ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 b9 01 01 01 01 01 01 01 01}
00a1h pdep r8,r8,r9                           ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 42 bb f5 c1}
00a6h mov [rbp],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 45 00}
00aah lea r8,[rbp+8]                          ; LEA r64, m || REX.W 8D /r || encoded[4]{4c 8d 45 08}
00aeh mov r9d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c9}
00b1h shr r9d,8                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[4]{41 c1 e9 08}
00b5h movzx r9d,r9b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c9}
00b9h mov r10,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 ba 01 01 01 01 01 01 01 01}
00c3h pdep r9,r9,r10                          ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 42 b3 f5 ca}
00c8h mov [r8],r9                             ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4d 89 08}
00cbh lea r8,[rbp+10h]                        ; LEA r64, m || REX.W 8D /r || encoded[4]{4c 8d 45 10}
00cfh mov r9d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c9}
00d2h shr r9d,10h                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[4]{41 c1 e9 10}
00d6h movzx r9d,r9b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c9}
00dah pdep r9,r9,r10                          ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 42 b3 f5 ca}
00dfh mov [r8],r9                             ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4d 89 08}
00e2h lea r8,[rbp+18h]                        ; LEA r64, m || REX.W 8D /r || encoded[4]{4c 8d 45 18}
00e6h shr ecx,18h                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e9 18}
00e9h movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
00ech pdep rcx,rcx,r10                        ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 c2 f3 f5 ca}
00f1h mov [r8],rcx                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 08}
00f4h shr rdi,20h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 ef 20}
00f8h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
00fah lea r8,[rbp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[4]{4c 8d 45 20}
00feh movzx r9d,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{44 0f b6 c9}
0102h pdep r9,r9,r10                          ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 42 b3 f5 ca}
0107h mov [r8],r9                             ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4d 89 08}
010ah lea r9,[r8+8]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{4d 8d 48 08}
010eh mov r10d,ecx                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b d1}
0111h shr r10d,8                              ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[4]{41 c1 ea 08}
0115h movzx r10d,r10b                         ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 d2}
0119h mov r11,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 01 01 01 01 01 01 01 01}
0123h pdep r10,r10,r11                        ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 42 ab f5 d3}
0128h mov [r9],r10                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4d 89 11}
012bh lea r9,[r8+10h]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{4d 8d 48 10}
012fh mov r10d,ecx                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b d1}
0132h shr r10d,10h                            ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[4]{41 c1 ea 10}
0136h movzx r10d,r10b                         ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 d2}
013ah pdep r10,r10,r11                        ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 42 ab f5 d3}
013fh mov [r9],r10                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4d 89 11}
0142h add r8,18h                              ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{49 83 c0 18}
0146h shr ecx,18h                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e9 18}
0149h movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
014ch pdep rcx,rcx,r11                        ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 c2 f3 f5 cb}
0151h mov [r8],rcx                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 08}
0154h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0157h vpmovzxbd ymm0,qword ptr [rcx]          ; VPMOVZXBD ymm1, xmm2/m64 || VEX.256.66.0F38.WIG 31 /r || encoded[5]{c4 e2 7d 31 01}
015ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
015fh vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
0163h lea rcx,[rbp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4d 08}
0167h vpmovzxbd ymm0,qword ptr [rcx]          ; VPMOVZXBD ymm1, xmm2/m64 || VEX.256.66.0F38.WIG 31 /r || encoded[5]{c4 e2 7d 31 01}
016ch lea rcx,[rax+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 48 20}
0170h vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
0174h lea rcx,[rbp+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4d 10}
0178h vpmovzxbd ymm0,qword ptr [rcx]          ; VPMOVZXBD ymm1, xmm2/m64 || VEX.256.66.0F38.WIG 31 /r || encoded[5]{c4 e2 7d 31 01}
017dh lea rcx,[rax+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 48 40}
0181h vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
0185h lea rcx,[rbp+18h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4d 18}
0189h vpmovzxbd ymm0,qword ptr [rcx]          ; VPMOVZXBD ymm1, xmm2/m64 || VEX.256.66.0F38.WIG 31 /r || encoded[5]{c4 e2 7d 31 01}
018eh lea rcx,[rax+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 48 60}
0192h vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
0196h lea rcx,[rbp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4d 20}
019ah vpmovzxbd ymm0,qword ptr [rcx]          ; VPMOVZXBD ymm1, xmm2/m64 || VEX.256.66.0F38.WIG 31 /r || encoded[5]{c4 e2 7d 31 01}
019fh lea rcx,[rax+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 88 80 00 00 00}
01a6h vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
01aah lea rcx,[rbp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4d 28}
01aeh vpmovzxbd ymm0,qword ptr [rcx]          ; VPMOVZXBD ymm1, xmm2/m64 || VEX.256.66.0F38.WIG 31 /r || encoded[5]{c4 e2 7d 31 01}
01b3h lea rcx,[rax+0a0h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 88 a0 00 00 00}
01bah vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
01beh lea rcx,[rbp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4d 30}
01c2h vpmovzxbd ymm0,qword ptr [rcx]          ; VPMOVZXBD ymm1, xmm2/m64 || VEX.256.66.0F38.WIG 31 /r || encoded[5]{c4 e2 7d 31 01}
01c7h lea rcx,[rax+0c0h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 88 c0 00 00 00}
01ceh vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
01d2h add rbp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c5 38}
01d6h vpmovzxbd ymm0,qword ptr [rbp]          ; VPMOVZXBD ymm1, xmm2/m64 || VEX.256.66.0F38.WIG 31 /r || encoded[6]{c4 e2 7d 31 45 00}
01dch lea rcx,[rax+0e0h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 88 e0 00 00 00}
01e3h vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
01e7h lea rcx,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 38}
01ech vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
01f0h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
01f4h lea rcx,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 38}
01f9h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
01fch mov [rcx+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 51 08}
01ffh vmovdqu xmm0,xmmword ptr [rsp+38h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 38}
0205h vmovdqu xmmword ptr [rsp+88h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 88 00 00 00}
020eh vmovdqu xmm0,xmmword ptr [rsp+88h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 88 00 00 00}
0217h vmovdqu xmmword ptr [rsp+98h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 98 00 00 00}
0220h vmovdqu xmm0,xmmword ptr [rsp+98h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 98 00 00 00}
0229h vmovdqu xmmword ptr [rsp+0a8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a8 00 00 00}
0232h cmp [rsp+0b0h],esi                      ; CMP r/m32, r32 || o32 39 /r || encoded[7]{39 b4 24 b0 00 00 00}
0239h jle short 023fh                         ; JLE rel8 || 7E cb || encoded[2]{7e 04}
023bh test esi,esi                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 f6}
023dh jne short 0253h                         ; JNE rel8 || 75 cb || encoded[2]{75 14}
023fh vmovdqu xmm0,xmmword ptr [rsp+0a8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 a8 00 00 00}
0248h vmovdqu xmmword ptr [rsp+0b8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 b8 00 00 00}
0251h jmp short 0290h                         ; JMP rel8 || EB cb || encoded[2]{eb 3d}
0253h mov eax,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c6}
0255h mov edx,[rsp+0b0h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 94 24 b0 00 00 00}
025ch cmp rax,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b c2}
025fh ja short 02b9h                          ; JA rel8 || 77 cb || encoded[2]{77 58}
0261h mov rax,[rsp+0a8h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 a8 00 00 00}
0269h lea rdx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 28}
026eh vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0272h vmovdqu xmmword ptr [rdx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 02}
0276h lea rdx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 28}
027bh mov [rdx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 02}
027eh mov [rdx+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 72 08}
0281h vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
0287h vmovdqu xmmword ptr [rsp+0b8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 b8 00 00 00}
0290h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0293h lea rsi,[rsp+0b8h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d b4 24 b8 00 00 00}
029bh call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 00 2d fd 5e}
02a0h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
02a2h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
02a5h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
02a8h add rsp,0c8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 c8 00 00 00}
02afh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
02b0h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
02b1h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
02b2h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
02b3h ret                                     ; RET || C3 || encoded[1]{c3}
02b4h call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 ca 0f 5f}
02b9h call 7ff7c77652a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 20 4d ff}
------------------------------------------------------------------------------------------------------------------------
; BitVector16 broadcast(N16 n, byte a), hex://bitvectors/bitvector?broadcast#broadcast_(n16,8u)
; broadcast_(n16,8u)[22] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc2,0x8b,0xd0,0xc1,0xe2,0x08,0x0b,0xd0,0x0f,0xb7,0xc2,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0008h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
000ah shl edx,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 08}
000dh or edx,eax                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b d0}
000fh movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
0012h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector32 broadcast(N32 n, byte a), hex://bitvectors/bitvector?broadcast#broadcast_(n32,8u)
; broadcast_(n32,8u)[28] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc2,0x8b,0xd0,0xc1,0xe2,0x08,0x0b,0xd0,0x8b,0xc8,0xc1,0xe1,0x10,0x0b,0xd1,0xc1,0xe0,0x18,0x0b,0xc2,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0008h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
000ah shl edx,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 08}
000dh or edx,eax                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b d0}
000fh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0011h shl ecx,10h                             ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 10}
0014h or edx,ecx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b d1}
0016h shl eax,18h                             ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e0 18}
0019h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector32 broadcast(N32 n, ushort a), hex://bitvectors/bitvector?broadcast#broadcast_(n32,16u)
; broadcast_(n32,16u)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc2,0x8b,0xd0,0xc1,0xe2,0x10,0x0b,0xc2,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
0008h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
000ah shl edx,10h                             ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 10}
000dh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector64 broadcast(N64 n, byte a), hex://bitvectors/bitvector?broadcast#broadcast_(n64,8u)
; broadcast_(n64,8u)[66] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc2,0x48,0x8b,0xd0,0x48,0xc1,0xe2,0x08,0x48,0x0b,0xd0,0x48,0x8b,0xc8,0x48,0xc1,0xe1,0x10,0x48,0x0b,0xd1,0x48,0x8b,0xc8,0x48,0xc1,0xe1,0x18,0x48,0x0b,0xd1,0x48,0x8b,0xc8,0x48,0xc1,0xe1,0x20,0x48,0x0b,0xd1,0x48,0x8b,0xc8,0x48,0xc1,0xe1,0x30,0x48,0x0b,0xd1,0x48,0xc1,0xe0,0x38,0x48,0x0b,0xc2,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0008h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
000bh shl rdx,8                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e2 08}
000fh or rdx,rax                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b d0}
0012h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0015h shl rcx,10h                             ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e1 10}
0019h or rdx,rcx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b d1}
001ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
001fh shl rcx,18h                             ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e1 18}
0023h or rdx,rcx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b d1}
0026h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0029h shl rcx,20h                             ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e1 20}
002dh or rdx,rcx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b d1}
0030h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0033h shl rcx,30h                             ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e1 30}
0037h or rdx,rcx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b d1}
003ah shl rax,38h                             ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e0 38}
003eh or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
0041h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector64 broadcast(N64 n, ushort a), hex://bitvectors/bitvector?broadcast#broadcast_(n64,16u)
; broadcast_(n64,16u)[36] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc2,0x48,0x8b,0xd0,0x48,0xc1,0xe2,0x10,0x48,0x0b,0xd0,0x48,0x8b,0xc8,0x48,0xc1,0xe1,0x20,0x48,0x0b,0xd1,0x48,0xc1,0xe0,0x30,0x48,0x0b,0xc2,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
0008h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
000bh shl rdx,10h                             ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e2 10}
000fh or rdx,rax                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b d0}
0012h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0015h shl rcx,20h                             ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e1 20}
0019h or rdx,rcx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b d1}
001ch shl rax,30h                             ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e0 30}
0020h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
0023h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector64 broadcast(N64 n, uint a), hex://bitvectors/bitvector?broadcast#broadcast_(n64,32u)
; broadcast_(n64,32u)[18] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc2,0x48,0x8b,0xd0,0x48,0xc1,0xe2,0x20,0x48,0x0b,0xc2,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
000ah shl rdx,20h                             ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e2 20}
000eh or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector8 concat(BitVector4 lo, BitVector4 hi), hex://bitvectors/bitvector?concat#concat_()
; concat_()[23] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc2,0xc1,0xe0,0x04,0x0f,0xb6,0xd1,0x0b,0xc2,0x0f,0xb6,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0008h shl eax,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e0 04}
000bh movzx edx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d1}
000eh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector16 concat(BitVector4 x0, BitVector4 x1, BitVector4 x2, BitVector4 x3), hex://bitvectors/bitvector?concat#concat_()
; concat_()[79] = {0x48,0x83,0xec,0x18,0x90,0x0f,0xb6,0xc2,0xc1,0xe0,0x04,0x0f,0xb6,0xd1,0x0b,0xc2,0x0f,0xb6,0xc0,0x0f,0xb6,0xc0,0x88,0x44,0x24,0x10,0x41,0x0f,0xb6,0xc1,0xc1,0xe0,0x04,0x41,0x0f,0xb6,0xd0,0x0b,0xc2,0x0f,0xb6,0xc0,0x0f,0xb6,0xc0,0x88,0x44,0x24,0x08,0x8b,0x44,0x24,0x08,0x0f,0xb6,0xc0,0xc1,0xe0,0x08,0x8b,0x54,0x24,0x10,0x0f,0xb6,0xd2,0x0b,0xc2,0x0f,0xb7,0xc0,0x0f,0xb7,0xc0,0x48,0x83,0xc4,0x18,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h sub rsp,18h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 18}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0008h shl eax,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e0 04}
000bh movzx edx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d1}
000eh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0016h mov [rsp+10h],al                        ; MOV r/m8, r8 || 88 /r || encoded[4]{88 44 24 10}
001ah movzx eax,r9b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c1}
001eh shl eax,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e0 04}
0021h movzx edx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d0}
0025h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0027h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
002ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
002dh mov [rsp+8],al                          ; MOV r/m8, r8 || 88 /r || encoded[4]{88 44 24 08}
0031h mov eax,[rsp+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 08}
0035h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0038h shl eax,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e0 08}
003bh mov edx,[rsp+10h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 54 24 10}
003fh movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0042h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0044h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0047h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
004ah add rsp,18h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 18}
004eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector16 concat(BitVector8 lo, BitVector8 hi), hex://bitvectors/bitvector?concat#concat_()
; concat_()[23] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x0f,0xb6,0xd2,0xc1,0xe2,0x08,0x0b,0xc2,0x0f,0xb7,0xc0,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh shl edx,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 08}
000eh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0010h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0013h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector32 concat(BitVector16 lo, BitVector16 hi), hex://bitvectors/bitvector?concat#concat_()
; concat_()[17] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x0f,0xb7,0xd2,0xc1,0xe2,0x10,0x0b,0xc2,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh shl edx,10h                             ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 10}
000eh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector32 concat(BitVector8 x0, BitVector8 x1, BitVector8 x2, BitVector8 x3), hex://bitvectors/bitvector?concat#concat_()
; concat_()[37] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x0f,0xb6,0xd2,0x41,0x0f,0xb6,0xc8,0x45,0x0f,0xb6,0xc1,0xc1,0xe2,0x08,0x0b,0xc2,0xc1,0xe1,0x10,0x0b,0xc1,0x41,0xc1,0xe0,0x18,0x41,0x0b,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh movzx ecx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c8}
000fh movzx r8d,r9b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c1}
0013h shl edx,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 08}
0016h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0018h shl ecx,10h                             ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 10}
001bh or eax,ecx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c1}
001dh shl r8d,18h                             ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 18}
0021h or eax,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c0}
0024h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector64 concat(BitVector8 x0, BitVector8 x1, BitVector8 x2, BitVector8 x3, BitVector8 x4, BitVector8 x5, BitVector8 x6, BitVector8 x7), hex://bitvectors/bitvector?concat#concat_()
; concat_()[87] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x0f,0xb6,0xd2,0xc1,0xe2,0x08,0x0b,0xc2,0x41,0x0f,0xb6,0xd0,0xc1,0xe2,0x10,0x0b,0xc2,0x41,0x0f,0xb6,0xd1,0xc1,0xe2,0x18,0x0b,0xc2,0x8b,0x54,0x24,0x28,0x0f,0xb6,0xd2,0x8b,0x4c,0x24,0x30,0x0f,0xb6,0xc9,0xc1,0xe1,0x08,0x0b,0xd1,0x8b,0x4c,0x24,0x38,0x0f,0xb6,0xc9,0xc1,0xe1,0x10,0x0b,0xd1,0x8b,0x4c,0x24,0x40,0x0f,0xb6,0xc9,0xc1,0xe1,0x18,0x0b,0xd1,0x48,0xc1,0xe2,0x20,0x8b,0xc0,0x48,0x0b,0xc2,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh shl edx,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 08}
000eh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0010h movzx edx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d0}
0014h shl edx,10h                             ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 10}
0017h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0019h movzx edx,r9b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d1}
001dh shl edx,18h                             ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 18}
0020h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0022h mov edx,[rsp+28h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 54 24 28}
0026h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0029h mov ecx,[rsp+30h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 4c 24 30}
002dh movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
0030h shl ecx,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 08}
0033h or edx,ecx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b d1}
0035h mov ecx,[rsp+38h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 4c 24 38}
0039h movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
003ch shl ecx,10h                             ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 10}
003fh or edx,ecx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b d1}
0041h mov ecx,[rsp+40h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 4c 24 40}
0045h movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
0048h shl ecx,18h                             ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 18}
004bh or edx,ecx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b d1}
004dh shl rdx,20h                             ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e2 20}
0051h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
0053h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector64 concat(BitVector16 x0, BitVector16 x1, BitVector16 x2, BitVector16 x3), hex://bitvectors/bitvector?concat#concat_()
; concat_()[34] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x0f,0xb7,0xd2,0x41,0x0f,0xb7,0xc8,0x45,0x0f,0xb7,0xc1,0xc1,0xe2,0x10,0x0b,0xc2,0x0b,0xc1,0x41,0xc1,0xe0,0x10,0x41,0x0b,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh movzx ecx,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 c8}
000fh movzx r8d,r9w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 c1}
0013h shl edx,10h                             ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 10}
0016h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0018h or eax,ecx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c1}
001ah shl r8d,10h                             ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 10}
001eh or eax,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c0}
0021h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector64 concat(BitVector32 lo, BitVector32 hi), hex://bitvectors/bitvector?concat#concat_()
; concat_()[17] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc2,0x48,0xc1,0xe0,0x20,0x8b,0xd1,0x48,0x0b,0xc2,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h shl rax,20h                             ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e0 20}
000bh mov edx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d1}
000dh or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector4 create(N4 n, byte src), hex://bitvectors/bitvector?create#create_(n4,8u)
; create_(n4,8u)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc2,0x83,0xe0,0x0f,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0008h and eax,0fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 0f}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector4 create(N4 n, ushort src), hex://bitvectors/bitvector?create#create_(n4,16u)
; create_(n4,16u)[18] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc2,0x0f,0xb6,0xc0,0x83,0xe0,0x0f,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
0008h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000bh and eax,0fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 0f}
000eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector4 create(N4 n, uint src), hex://bitvectors/bitvector?create#create_(n4,32u)
; create_(n4,32u)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc2,0x83,0xe0,0x0f,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0008h and eax,0fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 0f}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector4 create(N4 n, ulong src), hex://bitvectors/bitvector?create#create_(n4,64u)
; create_(n4,64u)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc2,0x83,0xe0,0x0f,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0008h and eax,0fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 0f}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector4 create(N4 n, bit b0, bit b1), hex://bitvectors/bitvector?create#create_(n4,1u,1u)
; create_(n4,1u,1u)[34] = {0x0f,0x1f,0x44,0x00,0x00,0x33,0xc0,0x85,0xd2,0x74,0x05,0xb8,0x01,0x00,0x00,0x00,0x45,0x85,0xc0,0x74,0x03,0x83,0xc8,0x02,0x0f,0xb6,0xc0,0x83,0xe0,0x0f,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0009h je short 0010h                          ; JE rel8 || 74 cb || encoded[2]{74 05}
000bh mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
0010h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0013h je short 0018h                          ; JE rel8 || 74 cb || encoded[2]{74 03}
0015h or eax,2                                ; OR r/m32, imm8 || o32 83 /1 ib || encoded[3]{83 c8 02}
0018h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001bh and eax,0fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 0f}
001eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0021h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector4 create(N4 n, bit b0, bit b1, bit b2), hex://bitvectors/bitvector?create#create_(n4,1u,1u,1u)
; create_(n4,1u,1u,1u)[107] = {0x48,0x83,0xec,0x18,0x33,0xc0,0x48,0x89,0x44,0x24,0x10,0x48,0x89,0x44,0x24,0x08,0x33,0xc0,0x85,0xd2,0x74,0x05,0xb8,0x01,0x00,0x00,0x00,0x45,0x85,0xc0,0x74,0x03,0x83,0xc8,0x02,0x0f,0xb6,0xc0,0x83,0xe0,0x0f,0x0f,0xb6,0xc0,0x88,0x44,0x24,0x10,0x45,0x85,0xc9,0x74,0x24,0xc6,0x44,0x24,0x08,0x04,0x0f,0xb6,0x44,0x24,0x10,0x0f,0xb6,0x54,0x24,0x08,0x0f,0xb6,0xc0,0x0f,0xb6,0xd2,0x0b,0xc2,0x0f,0xb6,0xc0,0x83,0xe0,0x0f,0x0f,0xb6,0xc0,0x88,0x44,0x24,0x10,0x8b,0x44,0x24,0x10,0x0f,0xb6,0xc0,0x83,0xe0,0x0f,0x0f,0xb6,0xc0,0x48,0x83,0xc4,0x18,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h sub rsp,18h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 18}
0004h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0006h mov [rsp+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 10}
000bh mov [rsp+8],rax                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 08}
0010h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0012h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0014h je short 001bh                          ; JE rel8 || 74 cb || encoded[2]{74 05}
0016h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
001bh test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
001eh je short 0023h                          ; JE rel8 || 74 cb || encoded[2]{74 03}
0020h or eax,2                                ; OR r/m32, imm8 || o32 83 /1 ib || encoded[3]{83 c8 02}
0023h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0026h and eax,0fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 0f}
0029h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
002ch mov [rsp+10h],al                        ; MOV r/m8, r8 || 88 /r || encoded[4]{88 44 24 10}
0030h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0033h je short 0059h                          ; JE rel8 || 74 cb || encoded[2]{74 24}
0035h mov byte ptr [rsp+8],4                  ; MOV r/m8, imm8 || C6 /0 ib || encoded[5]{c6 44 24 08 04}
003ah movzx eax,byte ptr [rsp+10h]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{0f b6 44 24 10}
003fh movzx edx,byte ptr [rsp+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{0f b6 54 24 08}
0044h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0047h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
004ah or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
004ch movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
004fh and eax,0fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 0f}
0052h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0055h mov [rsp+10h],al                        ; MOV r/m8, r8 || 88 /r || encoded[4]{88 44 24 10}
0059h mov eax,[rsp+10h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 10}
005dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0060h and eax,0fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 0f}
0063h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0066h add rsp,18h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 18}
006ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector4 create(N4 n, bit b0, bit b1, bit b2, bit b3), hex://bitvectors/bitvector?create#create_(n4,1u,1u,1u,1u)
; create_(n4,1u,1u,1u,1u)[171] = {0x48,0x83,0xec,0x28,0x33,0xc0,0x48,0x89,0x44,0x24,0x20,0x48,0x89,0x44,0x24,0x18,0x48,0x89,0x44,0x24,0x10,0x48,0x89,0x44,0x24,0x08,0x33,0xc0,0x85,0xd2,0x74,0x05,0xb8,0x01,0x00,0x00,0x00,0x45,0x85,0xc0,0x74,0x03,0x83,0xc8,0x02,0x0f,0xb6,0xc0,0x83,0xe0,0x0f,0x0f,0xb6,0xc0,0x88,0x44,0x24,0x10,0x45,0x85,0xc9,0x74,0x24,0xc6,0x44,0x24,0x08,0x04,0x0f,0xb6,0x44,0x24,0x10,0x0f,0xb6,0x54,0x24,0x08,0x0f,0xb6,0xc0,0x0f,0xb6,0xd2,0x0b,0xc2,0x0f,0xb6,0xc0,0x83,0xe0,0x0f,0x0f,0xb6,0xc0,0x88,0x44,0x24,0x10,0x8b,0x44,0x24,0x10,0x0f,0xb6,0xc0,0x83,0xe0,0x0f,0x0f,0xb6,0xc0,0x88,0x44,0x24,0x20,0x83,0x7c,0x24,0x50,0x00,0x74,0x24,0xc6,0x44,0x24,0x18,0x08,0x0f,0xb6,0x44,0x24,0x20,0x0f,0xb6,0x54,0x24,0x18,0x0f,0xb6,0xc0,0x0f,0xb6,0xd2,0x0b,0xc2,0x0f,0xb6,0xc0,0x83,0xe0,0x0f,0x0f,0xb6,0xc0,0x88,0x44,0x24,0x20,0x8b,0x44,0x24,0x20,0x0f,0xb6,0xc0,0x48,0x83,0xc4,0x28,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0006h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000bh mov [rsp+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 18}
0010h mov [rsp+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 10}
0015h mov [rsp+8],rax                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 08}
001ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
001ch test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
001eh je short 0025h                          ; JE rel8 || 74 cb || encoded[2]{74 05}
0020h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
0025h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0028h je short 002dh                          ; JE rel8 || 74 cb || encoded[2]{74 03}
002ah or eax,2                                ; OR r/m32, imm8 || o32 83 /1 ib || encoded[3]{83 c8 02}
002dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0030h and eax,0fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 0f}
0033h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0036h mov [rsp+10h],al                        ; MOV r/m8, r8 || 88 /r || encoded[4]{88 44 24 10}
003ah test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
003dh je short 0063h                          ; JE rel8 || 74 cb || encoded[2]{74 24}
003fh mov byte ptr [rsp+8],4                  ; MOV r/m8, imm8 || C6 /0 ib || encoded[5]{c6 44 24 08 04}
0044h movzx eax,byte ptr [rsp+10h]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{0f b6 44 24 10}
0049h movzx edx,byte ptr [rsp+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{0f b6 54 24 08}
004eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0051h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0054h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0056h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0059h and eax,0fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 0f}
005ch movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
005fh mov [rsp+10h],al                        ; MOV r/m8, r8 || 88 /r || encoded[4]{88 44 24 10}
0063h mov eax,[rsp+10h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 10}
0067h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
006ah and eax,0fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 0f}
006dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0070h mov [rsp+20h],al                        ; MOV r/m8, r8 || 88 /r || encoded[4]{88 44 24 20}
0074h cmp dword ptr [rsp+50h],0               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[5]{83 7c 24 50 00}
0079h je short 009fh                          ; JE rel8 || 74 cb || encoded[2]{74 24}
007bh mov byte ptr [rsp+18h],8                ; MOV r/m8, imm8 || C6 /0 ib || encoded[5]{c6 44 24 18 08}
0080h movzx eax,byte ptr [rsp+20h]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{0f b6 44 24 20}
0085h movzx edx,byte ptr [rsp+18h]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{0f b6 54 24 18}
008ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
008dh movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0090h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0092h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0095h and eax,0fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 0f}
0098h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
009bh mov [rsp+20h],al                        ; MOV r/m8, r8 || 88 /r || encoded[4]{88 44 24 20}
009fh mov eax,[rsp+20h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 20}
00a3h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
00a6h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
00aah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector8 create(N8 n, BitString src), hex://bitvectors/bitvector?create#create_(n8)
; create_(n8)[156] = {0x48,0x83,0xec,0x48,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x38,0x48,0x89,0x44,0x24,0x28,0x48,0x8d,0x4c,0x24,0x38,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x7f,0x01,0x48,0x85,0xd2,0x75,0x07,0x33,0xc9,0x45,0x33,0xc9,0xeb,0x08,0x48,0x8d,0x4a,0x10,0x44,0x8b,0x4a,0x08,0xba,0x01,0x00,0x00,0x00,0x41,0xb8,0x01,0x00,0x00,0x00,0x48,0x8d,0x44,0x24,0x38,0x4c,0x8d,0x54,0x24,0x28,0x49,0x89,0x0a,0x45,0x89,0x4a,0x08,0x48,0x8d,0x4c,0x24,0x20,0x44,0x88,0x01,0x89,0x51,0x04,0x48,0x8b,0xc8,0x48,0x8d,0x54,0x24,0x28,0x4c,0x8b,0x4c,0x24,0x20,0x45,0x33,0xc0,0xe8,0x38,0x8a,0x7c,0xff,0x83,0x7c,0x24,0x40,0x00,0x75,0x04,0x33,0xc0,0xeb,0x12,0x48,0x8b,0x44,0x24,0x38,0x8b,0x4c,0x24,0x40,0x48,0x83,0xf9,0x01,0x7c,0x08,0x0f,0xb6,0x00,0x48,0x83,0xc4,0x48,0xc3,0xb9,0x28,0x00,0x00,0x00,0xe8,0xf4,0x15,0x4d,0xff}
; TermCode = CTC_INTRx2
0000h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+38h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 38}
000eh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0013h lea rcx,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 38}
0018h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
001ch vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0020h test rdx,rdx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 d2}
0023h jne short 002ch                         ; JNE rel8 || 75 cb || encoded[2]{75 07}
0025h xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
0027h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
002ah jmp short 0034h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
002ch lea rcx,[rdx+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4a 10}
0030h mov r9d,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 4a 08}
0034h mov edx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 01 00 00 00}
0039h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
003fh lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
0044h lea r10,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 54 24 28}
0049h mov [r10],rcx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 0a}
004ch mov [r10+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{45 89 4a 08}
0050h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0055h mov [rcx],r8b                           ; MOV r/m8, r8 || 88 /r || encoded[3]{44 88 01}
0058h mov [rcx+4],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 51 04}
005bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005eh lea rdx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 28}
0063h mov r9,[rsp+20h]                        ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{4c 8b 4c 24 20}
0068h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
006bh call 7ff7c7a5c758h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 8a 7c ff}
0070h cmp dword ptr [rsp+40h],0               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[5]{83 7c 24 40 00}
0075h jne short 007bh                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
0077h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0079h jmp short 008dh                         ; JMP rel8 || EB cb || encoded[2]{eb 12}
007bh mov rax,[rsp+38h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 44 24 38}
0080h mov ecx,[rsp+40h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 4c 24 40}
0084h cmp rcx,1                               ; CMP r/m64, imm8 || REX.W 83 /7 ib || encoded[4]{48 83 f9 01}
0088h jl short 0092h                          ; JL rel8 || 7C cb || encoded[2]{7c 08}
008ah movzx eax,byte ptr [rax]                ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 00}
008dh add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
0091h ret                                     ; RET || C3 || encoded[1]{c3}
0092h mov ecx,28h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 28 00 00 00}
0097h call 7ff7c7765340h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 15 4d ff}
------------------------------------------------------------------------------------------------------------------------
; BitVector8 create(N8 n, bit b0, bit b1, bit b2, bit b3), hex://bitvectors/bitvector?create#create_(n8,1u,1u,1u,1u)
; create_(n8,1u,1u,1u,1u)[31] = {0x0f,0x1f,0x44,0x00,0x00,0x41,0xd1,0xe0,0x41,0x0b,0xd0,0x41,0xc1,0xe1,0x02,0x41,0x0b,0xd1,0x8b,0x44,0x24,0x28,0xc1,0xe0,0x03,0x0b,0xd0,0x0f,0xb6,0xc2,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h shl r8d,1                               ; SHL r/m32, 1 || o32 D1 /4 || encoded[3]{41 d1 e0}
0008h or edx,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b d0}
000bh shl r9d,2                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e1 02}
000fh or edx,r9d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b d1}
0012h mov eax,[rsp+28h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 28}
0016h shl eax,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e0 03}
0019h or edx,eax                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b d0}
001bh movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector8 create(N8 n, bit b0, bit b1, bit b2, bit b3, bit b4, bit b5, bit b6, bit b7), hex://bitvectors/bitvector?create#create_(n8,1u,1u,1u,1u,1u,1u,1u,1u)
; create_(n8,1u,1u,1u,1u,1u,1u,1u,1u)[64] = {0x0f,0x1f,0x44,0x00,0x00,0x41,0xd1,0xe0,0x41,0x0b,0xd0,0x41,0xc1,0xe1,0x02,0x41,0x0b,0xd1,0x8b,0x44,0x24,0x28,0xc1,0xe0,0x03,0x0b,0xd0,0x8b,0x44,0x24,0x38,0xd1,0xe0,0x0b,0x44,0x24,0x30,0x8b,0x4c,0x24,0x40,0xc1,0xe1,0x02,0x0b,0xc1,0x8b,0x4c,0x24,0x48,0xc1,0xe1,0x03,0x0b,0xc1,0xc1,0xe0,0x04,0x0b,0xc2,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h shl r8d,1                               ; SHL r/m32, 1 || o32 D1 /4 || encoded[3]{41 d1 e0}
0008h or edx,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b d0}
000bh shl r9d,2                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e1 02}
000fh or edx,r9d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b d1}
0012h mov eax,[rsp+28h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 28}
0016h shl eax,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e0 03}
0019h or edx,eax                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b d0}
001bh mov eax,[rsp+38h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 38}
001fh shl eax,1                               ; SHL r/m32, 1 || o32 D1 /4 || encoded[2]{d1 e0}
0021h or eax,[rsp+30h]                        ; OR r32, r/m32 || o32 0B /r || encoded[4]{0b 44 24 30}
0025h mov ecx,[rsp+40h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 4c 24 40}
0029h shl ecx,2                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 02}
002ch or eax,ecx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c1}
002eh mov ecx,[rsp+48h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 4c 24 48}
0032h shl ecx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 03}
0035h or eax,ecx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c1}
0037h shl eax,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e0 04}
003ah or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
003ch movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
003fh ret                                     ; RET || C3 || encoded[1]{c3}
