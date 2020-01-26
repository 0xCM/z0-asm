------------------------------------------------------------------------------------------------------------------------
; byte eqz<byte>(byte a, byte b)
; eqz_g8u[38] = {0f 1f 44 00 00 0f b6 c1 0f b6 d2 0f b6 c0 3b c2 0f 94 c0 0f b6 c0 0f b6 c0 0f b6 c0 69 c0 ff 00 00 00 0f b6 c0 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
0010h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0013h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0016h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0019h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ch imul eax,0ffh                           ; IMUL r32, r/m32, imm32 || o32 69 /r id || encoded[6]{69 c0 ff 00 00 00}
0022h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0025h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte eqz<sbyte>(sbyte a, sbyte b)
; eqz_g8i[40] = {0f 1f 44 00 00 48 0f be c1 48 0f be d2 48 0f be c0 3b c2 0f 94 c0 0f b6 c0 48 0f be c0 48 0f be c0 f7 d8 48 0f be c0 c3}
; Capture completion code = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
000dh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0011h cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
0013h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0016h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0019h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
001dh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0021h neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
0023h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0027h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort eqz<ushort>(ushort a, ushort b)
; eqz_g16u[38] = {0f 1f 44 00 00 0f b7 c1 0f b7 d2 0f b7 c0 3b c2 0f 94 c0 0f b6 c0 0f b7 c0 0f b7 c0 69 c0 ff ff 00 00 0f b7 c0 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
000eh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
0010h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0013h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0016h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0019h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001ch imul eax,0ffffh                         ; IMUL r32, r/m32, imm32 || o32 69 /r id || encoded[6]{69 c0 ff ff 00 00}
0022h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0025h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short eqz<short>(short a, short b)
; eqz_g16i[40] = {0f 1f 44 00 00 48 0f bf c1 48 0f bf d2 48 0f bf c0 3b c2 0f 94 c0 0f b6 c0 48 0f bf c0 48 0f bf c0 f7 d8 48 0f bf c0 c3}
; Capture completion code = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
000dh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0011h cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
0013h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0016h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0019h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
001dh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0021h neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
0023h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0027h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint eqz<uint>(uint a, uint b)
; eqz_g32u[16] = {0f 1f 44 00 00 3b ca 0f 94 c0 0f b6 c0 f7 d8 c3}
; Capture completion code = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp ecx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b ca}
0007h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int eqz<int>(int a, int b)
; eqz_g32i[16] = {0f 1f 44 00 00 3b ca 0f 94 c0 0f b6 c0 f7 d8 c3}
; Capture completion code = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp ecx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b ca}
0007h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong eqz<ulong>(ulong a, ulong b)
; eqz_g64u[18] = {0f 1f 44 00 00 48 3b ca 0f 94 c0 0f b6 c0 48 f7 d8 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp rcx,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b ca}
0008h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh neg rax                                 ; NEG r/m64 || REX.W F7 /3 || encoded[3]{48 f7 d8}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long eqz<long>(long a, long b)
; eqz_g64i[18] = {0f 1f 44 00 00 48 3b ca 0f 94 c0 0f b6 c0 48 f7 d8 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp rcx,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b ca}
0008h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh neg rax                                 ; NEG r/m64 || REX.W F7 /3 || encoded[3]{48 f7 d8}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
