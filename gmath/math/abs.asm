------------------------------------------------------------------------------------------------------------------------
; sbyte abs(sbyte a)
; abs_8i[23] = {0f 1f 44 00 00 48 0f be c1 8b d0 c1 fa 07 03 c2 33 c2 48 0f be c0 c3}
; Capture completion code = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
000bh sar edx,7                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 07}
000eh add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
0010h xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
0012h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Int16 abs(Int16 a)
; abs_16i[23] = {0f 1f 44 00 00 48 0f bf c1 8b d0 c1 fa 0f 03 c2 33 c2 48 0f bf c0 c3}
; Capture completion code = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
000bh sar edx,0fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 0f}
000eh add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
0010h xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
0012h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int abs(int a)
; abs_32i[16] = {0f 1f 44 00 00 8b c1 c1 f8 1f 8d 14 01 33 c2 c3}
; Capture completion code = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h sar eax,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 1f}
000ah lea edx,[rcx+rax]                       ; LEA r32, m || o32 8D /r || encoded[3]{8d 14 01}
000dh xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long abs(long a)
; abs_64i[20] = {0f 1f 44 00 00 48 8b c1 48 c1 f8 3f 48 8d 14 01 48 33 c2 c3}
; Capture completion code = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h sar rax,3fh                             ; SAR r/m64, imm8 || REX.W C1 /7 ib || encoded[4]{48 c1 f8 3f}
000ch lea rdx,[rcx+rax]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 14 01}
0010h xor rax,rdx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 c2}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
