; Sign:int signum<Int16>(Int16 a)
; signum_g16i[7ff7c71968c0h, 7ff7c71968d8h][24] = {0f 1f 44 00 00 48 0f bf c1 8b d0 f7 d2 ff c2 c1 ea 1f c1 f8 1f 0b c2 c3}
; Capture completion code, RET_SBB
; 2020-01-24 01:44:39:360
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
000bh not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
000dh inc edx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c2}
000fh shr edx,1fh                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 ea 1f}
0012h sar eax,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 1f}
0015h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
