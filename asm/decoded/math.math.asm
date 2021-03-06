------------------------------------------------------------------------------------------------------------------------
; bit gteq(byte a, byte b), hex://math/math?gteq#gteq_(8u,8u)
; gteq_(8u,8u)[20] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x0f,0xb6,0xd2,0x3b,0xc2,0x0f,0x9d,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000dh setge al                                ; SETGE r/m8 || 0F 9D /r || encoded[3]{0f 9d c0}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit gteq(short a, short b), hex://math/math?gteq#gteq_(16i,16i)
; gteq_(16i,16i)[22] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbf,0xc1,0x48,0x0f,0xbf,0xd2,0x3b,0xc2,0x0f,0x9d,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
000dh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000fh setge al                                ; SETGE r/m8 || 0F 9D /r || encoded[3]{0f 9d c0}
0012h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit gteq(ushort a, ushort b), hex://math/math?gteq#gteq_(16u,16u)
; gteq_(16u,16u)[20] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x0f,0xb7,0xd2,0x3b,0xc2,0x0f,0x9d,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000dh setge al                                ; SETGE r/m8 || 0F 9D /r || encoded[3]{0f 9d c0}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit gteq(int a, int b), hex://math/math?gteq#gteq_(32i,32i)
; gteq_(32i,32i)[14] = {0x0f,0x1f,0x44,0x00,0x00,0x3b,0xca,0x0f,0x9d,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp ecx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b ca}
0007h setge al                                ; SETGE r/m8 || 0F 9D /r || encoded[3]{0f 9d c0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit gteq(uint a, uint b), hex://math/math?gteq#gteq_(32u,32u)
; gteq_(32u,32u)[14] = {0x0f,0x1f,0x44,0x00,0x00,0x3b,0xca,0x0f,0x93,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp ecx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b ca}
0007h setae al                                ; SETAE r/m8 || 0F 93 /r || encoded[3]{0f 93 c0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit gteq(long a, long b), hex://math/math?gteq#gteq_(64i,64i)
; gteq_(64i,64i)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x3b,0xca,0x0f,0x9d,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp rcx,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b ca}
0008h setge al                                ; SETGE r/m8 || 0F 9D /r || encoded[3]{0f 9d c0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit gteq(ulong a, ulong b), hex://math/math?gteq#gteq_(64u,64u)
; gteq_(64u,64u)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x3b,0xca,0x0f,0x93,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp rcx,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b ca}
0008h setae al                                ; SETAE r/m8 || 0F 93 /r || encoded[3]{0f 93 c0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit lt(sbyte a, sbyte b), hex://math/math?lt#lt_(8i,8i)
; lt_(8i,8i)[22] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbe,0xc1,0x48,0x0f,0xbe,0xd2,0x3b,0xc2,0x0f,0x9c,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
000dh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000fh setl al                                 ; SETL r/m8 || 0F 9C /r || encoded[3]{0f 9c c0}
0012h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit lt(byte a, byte b), hex://math/math?lt#lt_(8u,8u)
; lt_(8u,8u)[20] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x0f,0xb6,0xd2,0x3b,0xc2,0x0f,0x9c,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000dh setl al                                 ; SETL r/m8 || 0F 9C /r || encoded[3]{0f 9c c0}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit lt(short a, short b), hex://math/math?lt#lt_(16i,16i)
; lt_(16i,16i)[22] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbf,0xc1,0x48,0x0f,0xbf,0xd2,0x3b,0xc2,0x0f,0x9c,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
000dh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000fh setl al                                 ; SETL r/m8 || 0F 9C /r || encoded[3]{0f 9c c0}
0012h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit lt(ushort a, ushort b), hex://math/math?lt#lt_(16u,16u)
; lt_(16u,16u)[20] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x0f,0xb7,0xd2,0x3b,0xc2,0x0f,0x9c,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000dh setl al                                 ; SETL r/m8 || 0F 9C /r || encoded[3]{0f 9c c0}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit lt(int a, int b), hex://math/math?lt#lt_(32i,32i)
; lt_(32i,32i)[14] = {0x0f,0x1f,0x44,0x00,0x00,0x3b,0xca,0x0f,0x9c,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp ecx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b ca}
0007h setl al                                 ; SETL r/m8 || 0F 9C /r || encoded[3]{0f 9c c0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit lt(uint a, uint b), hex://math/math?lt#lt_(32u,32u)
; lt_(32u,32u)[14] = {0x0f,0x1f,0x44,0x00,0x00,0x3b,0xca,0x0f,0x92,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp ecx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b ca}
0007h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit lt(long a, long b), hex://math/math?lt#lt_(64i,64i)
; lt_(64i,64i)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x3b,0xca,0x0f,0x9c,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp rcx,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b ca}
0008h setl al                                 ; SETL r/m8 || 0F 9C /r || encoded[3]{0f 9c c0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit lt(ulong a, ulong b), hex://math/math?lt#lt_(64u,64u)
; lt_(64u,64u)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x3b,0xca,0x0f,0x92,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp rcx,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b ca}
0008h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit lteq(sbyte a, sbyte b), hex://math/math?lteq#lteq_(8i,8i)
; lteq_(8i,8i)[22] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbe,0xc1,0x48,0x0f,0xbe,0xd2,0x3b,0xc2,0x0f,0x9e,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
000dh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000fh setle al                                ; SETLE r/m8 || 0F 9E /r || encoded[3]{0f 9e c0}
0012h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit lteq(byte a, byte b), hex://math/math?lteq#lteq_(8u,8u)
; lteq_(8u,8u)[20] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x0f,0xb6,0xd2,0x3b,0xc2,0x0f,0x9e,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000dh setle al                                ; SETLE r/m8 || 0F 9E /r || encoded[3]{0f 9e c0}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit lteq(short a, short b), hex://math/math?lteq#lteq_(16i,16i)
; lteq_(16i,16i)[22] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbf,0xc1,0x48,0x0f,0xbf,0xd2,0x3b,0xc2,0x0f,0x9e,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
000dh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000fh setle al                                ; SETLE r/m8 || 0F 9E /r || encoded[3]{0f 9e c0}
0012h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit lteq(ushort a, ushort b), hex://math/math?lteq#lteq_(16u,16u)
; lteq_(16u,16u)[20] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x0f,0xb7,0xd2,0x3b,0xc2,0x0f,0x9e,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000dh setle al                                ; SETLE r/m8 || 0F 9E /r || encoded[3]{0f 9e c0}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit lteq(int a, int b), hex://math/math?lteq#lteq_(32i,32i)
; lteq_(32i,32i)[14] = {0x0f,0x1f,0x44,0x00,0x00,0x3b,0xca,0x0f,0x9e,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp ecx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b ca}
0007h setle al                                ; SETLE r/m8 || 0F 9E /r || encoded[3]{0f 9e c0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit lteq(uint a, uint b), hex://math/math?lteq#lteq_(32u,32u)
; lteq_(32u,32u)[14] = {0x0f,0x1f,0x44,0x00,0x00,0x3b,0xca,0x0f,0x96,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp ecx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b ca}
0007h setbe al                                ; SETBE r/m8 || 0F 96 /r || encoded[3]{0f 96 c0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit lteq(long a, long b), hex://math/math?lteq#lteq_(64i,64i)
; lteq_(64i,64i)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x3b,0xca,0x0f,0x9e,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp rcx,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b ca}
0008h setle al                                ; SETLE r/m8 || 0F 9E /r || encoded[3]{0f 9e c0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit lteq(ulong a, ulong b), hex://math/math?lteq#lteq_(64u,64u)
; lteq_(64u,64u)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x3b,0xca,0x0f,0x96,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp rcx,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b ca}
0008h setbe al                                ; SETBE r/m8 || 0F 96 /r || encoded[3]{0f 96 c0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte max(sbyte a, sbyte b), hex://math/math?max#max_(8i,8i)
; max_(8i,8i)[21] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbe,0xc1,0x48,0x0f,0xbe,0xd2,0x3b,0xc2,0x7f,0x03,0x8b,0xc2,0xc3,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
000dh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000fh jg short 0014h                          ; JG rel8 || 7F cb || encoded[2]{7f 03}
0011h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte max(byte a, byte b), hex://math/math?max#max_(8u,8u)
; max_(8u,8u)[19] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x0f,0xb6,0xd2,0x3b,0xc2,0x7f,0x03,0x8b,0xc2,0xc3,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000dh jg short 0012h                          ; JG rel8 || 7F cb || encoded[2]{7f 03}
000fh mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short max(short a, short b), hex://math/math?max#max_(16i,16i)
; max_(16i,16i)[21] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbf,0xc1,0x48,0x0f,0xbf,0xd2,0x3b,0xc2,0x7f,0x03,0x8b,0xc2,0xc3,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
000dh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000fh jg short 0014h                          ; JG rel8 || 7F cb || encoded[2]{7f 03}
0011h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort max(ushort a, ushort b), hex://math/math?max#max_(16u,16u)
; max_(16u,16u)[19] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x0f,0xb7,0xd2,0x3b,0xc2,0x7f,0x03,0x8b,0xc2,0xc3,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000dh jg short 0012h                          ; JG rel8 || 7F cb || encoded[2]{7f 03}
000fh mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int max(int a, int b), hex://math/math?max#max_(32i,32i)
; max_(32i,32i)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x3b,0xca,0x7f,0x03,0x8b,0xc2,0xc3,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp ecx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b ca}
0007h jg short 000ch                          ; JG rel8 || 7F cb || encoded[2]{7f 03}
0009h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
000ch mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint max(uint a, uint b), hex://math/math?max#max_(32u,32u)
; max_(32u,32u)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x3b,0xca,0x77,0x03,0x8b,0xc2,0xc3,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp ecx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b ca}
0007h ja short 000ch                          ; JA rel8 || 77 cb || encoded[2]{77 03}
0009h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
000ch mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long max(long a, long b), hex://math/math?max#max_(64i,64i)
; max_(64i,64i)[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x3b,0xca,0x7f,0x04,0x48,0x8b,0xc2,0xc3,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp rcx,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b ca}
0008h jg short 000eh                          ; JG rel8 || 7F cb || encoded[2]{7f 04}
000ah mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
000eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong max(ulong a, ulong b), hex://math/math?max#max_(64u,64u)
; max_(64u,64u)[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x3b,0xca,0x77,0x04,0x48,0x8b,0xc2,0xc3,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp rcx,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b ca}
0008h ja short 000eh                          ; JA rel8 || 77 cb || encoded[2]{77 04}
000ah mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
000eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte min(sbyte a, sbyte b), hex://math/math?min#min_(8i,8i)
; min_(8i,8i)[21] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbe,0xc1,0x48,0x0f,0xbe,0xd2,0x3b,0xc2,0x7c,0x03,0x8b,0xc2,0xc3,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
000dh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000fh jl short 0014h                          ; JL rel8 || 7C cb || encoded[2]{7c 03}
0011h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte min(byte a, byte b), hex://math/math?min#min_(8u,8u)
; min_(8u,8u)[19] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x0f,0xb6,0xd2,0x3b,0xc2,0x7c,0x03,0x8b,0xc2,0xc3,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000dh jl short 0012h                          ; JL rel8 || 7C cb || encoded[2]{7c 03}
000fh mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short min(short a, short b), hex://math/math?min#min_(16i,16i)
; min_(16i,16i)[21] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbf,0xc1,0x48,0x0f,0xbf,0xd2,0x3b,0xc2,0x7c,0x03,0x8b,0xc2,0xc3,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
000dh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000fh jl short 0014h                          ; JL rel8 || 7C cb || encoded[2]{7c 03}
0011h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort min(ushort a, ushort b), hex://math/math?min#min_(16u,16u)
; min_(16u,16u)[19] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x0f,0xb7,0xd2,0x3b,0xc2,0x7c,0x03,0x8b,0xc2,0xc3,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000dh jl short 0012h                          ; JL rel8 || 7C cb || encoded[2]{7c 03}
000fh mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int min(int a, int b), hex://math/math?min#min_(32i,32i)
; min_(32i,32i)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x3b,0xca,0x7c,0x03,0x8b,0xc2,0xc3,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp ecx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b ca}
0007h jl short 000ch                          ; JL rel8 || 7C cb || encoded[2]{7c 03}
0009h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
000ch mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint min(uint a, uint b), hex://math/math?min#min_(32u,32u)
; min_(32u,32u)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x3b,0xca,0x72,0x03,0x8b,0xc2,0xc3,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp ecx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b ca}
0007h jb short 000ch                          ; JB rel8 || 72 cb || encoded[2]{72 03}
0009h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
000ch mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long min(long a, long b), hex://math/math?min#min_(64i,64i)
; min_(64i,64i)[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x3b,0xca,0x7c,0x04,0x48,0x8b,0xc2,0xc3,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp rcx,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b ca}
0008h jl short 000eh                          ; JL rel8 || 7C cb || encoded[2]{7c 04}
000ah mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
000eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong min(ulong a, ulong b), hex://math/math?min#min_(64u,64u)
; min_(64u,64u)[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x3b,0xca,0x72,0x04,0x48,0x8b,0xc2,0xc3,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp rcx,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b ca}
0008h jb short 000eh                          ; JB rel8 || 72 cb || encoded[2]{72 04}
000ah mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
000eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit negative(sbyte x), hex://math/math?negative#negative_(8i)
; negative_(8i)[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbe,0xc1,0x85,0xc0,0x0f,0x9c,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
000bh setl al                                 ; SETL r/m8 || 0F 9C /r || encoded[3]{0f 9c c0}
000eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit negative(short x), hex://math/math?negative#negative_(16i)
; negative_(16i)[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbf,0xc1,0x85,0xc0,0x0f,0x9c,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
000bh setl al                                 ; SETL r/m8 || 0F 9C /r || encoded[3]{0f 9c c0}
000eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit negative(int x), hex://math/math?negative#negative_(32i)
; negative_(32i)[14] = {0x0f,0x1f,0x44,0x00,0x00,0x85,0xc9,0x0f,0x9c,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test ecx,ecx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c9}
0007h setl al                                 ; SETL r/m8 || 0F 9C /r || encoded[3]{0f 9c c0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit negative(long x), hex://math/math?negative#negative_(64i)
; negative_(64i)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x85,0xc9,0x0f,0x9c,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test rcx,rcx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c9}
0008h setl al                                 ; SETL r/m8 || 0F 9C /r || encoded[3]{0f 9c c0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit negative(float x), hex://math/math?negative#negative_(32f)
; negative_(32f)[20] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf0,0x57,0xc9,0xc5,0xf8,0x2e,0xc8,0x0f,0x97,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
0009h vucomiss xmm1,xmm0                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e c8}
000dh seta al                                 ; SETA r/m8 || 0F 97 /r || encoded[3]{0f 97 c0}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit negative(double x), hex://math/math?negative#negative_(64f)
; negative_(64f)[20] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf0,0x57,0xc9,0xc5,0xf9,0x2e,0xc8,0x0f,0x97,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
0009h vucomisd xmm1,xmm0                      ; VUCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2E /r || encoded[4]{c5 f9 2e c8}
000dh seta al                                 ; SETA r/m8 || 0F 97 /r || encoded[3]{0f 97 c0}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit nonzero(sbyte src), hex://math/math?nonzero#nonzero_(8i)
; nonzero_(8i)[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbe,0xc1,0x85,0xc0,0x0f,0x95,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
000bh setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit nonzero(byte src), hex://math/math?nonzero#nonzero_(8u)
; nonzero_(8u)[14] = {0x0f,0x1f,0x44,0x00,0x00,0x84,0xc9,0x0f,0x95,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test cl,cl                              ; TEST r/m8, r8 || 84 /r || encoded[2]{84 c9}
0007h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit nonzero(short src), hex://math/math?nonzero#nonzero_(16i)
; nonzero_(16i)[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbf,0xc1,0x85,0xc0,0x0f,0x95,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
000bh setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit nonzero(ushort src), hex://math/math?nonzero#nonzero_(16u)
; nonzero_(16u)[17] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x85,0xc0,0x0f,0x95,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
000ah setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit nonzero(int src), hex://math/math?nonzero#nonzero_(32i)
; nonzero_(32i)[14] = {0x0f,0x1f,0x44,0x00,0x00,0x85,0xc9,0x0f,0x95,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test ecx,ecx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c9}
0007h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit nonzero(uint src), hex://math/math?nonzero#nonzero_(32u)
; nonzero_(32u)[14] = {0x0f,0x1f,0x44,0x00,0x00,0x85,0xc9,0x0f,0x95,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test ecx,ecx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c9}
0007h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit nonzero(long src), hex://math/math?nonzero#nonzero_(64i)
; nonzero_(64i)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x85,0xc9,0x0f,0x95,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test rcx,rcx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c9}
0008h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit nonzero(ulong src), hex://math/math?nonzero#nonzero_(64u)
; nonzero_(64u)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x85,0xc9,0x0f,0x95,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test rcx,rcx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c9}
0008h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit nonzero(float src), hex://math/math?nonzero#nonzero_(32f)
; nonzero_(32f)[25] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf0,0x57,0xc9,0xc5,0xf8,0x2e,0xc1,0x0f,0x9a,0xc0,0x7a,0x03,0x0f,0x95,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
0009h vucomiss xmm0,xmm1                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e c1}
000dh setp al                                 ; SETP r/m8 || 0F 9A /r || encoded[3]{0f 9a c0}
0010h jp short 0015h                          ; JP rel8 || 7A cb || encoded[2]{7a 03}
0012h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0015h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit nonzero(double src), hex://math/math?nonzero#nonzero_(64f)
; nonzero_(64f)[25] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf0,0x57,0xc9,0xc5,0xf9,0x2e,0xc1,0x0f,0x9a,0xc0,0x7a,0x03,0x0f,0x95,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
0009h vucomisd xmm0,xmm1                      ; VUCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2E /r || encoded[4]{c5 f9 2e c1}
000dh setp al                                 ; SETP r/m8 || 0F 9A /r || encoded[3]{0f 9a c0}
0010h jp short 0015h                          ; JP rel8 || 7A cb || encoded[2]{7a 03}
0012h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0015h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit positive(sbyte a), hex://math/math?positive#positive_(8i)
; positive_(8i)[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbe,0xc1,0x85,0xc0,0x0f,0x9f,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
000bh setg al                                 ; SETG r/m8 || 0F 9F /r || encoded[3]{0f 9f c0}
000eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit positive(byte a), hex://math/math?positive#positive_(8u)
; positive_(8u)[14] = {0x0f,0x1f,0x44,0x00,0x00,0x84,0xc9,0x0f,0x97,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test cl,cl                              ; TEST r/m8, r8 || 84 /r || encoded[2]{84 c9}
0007h seta al                                 ; SETA r/m8 || 0F 97 /r || encoded[3]{0f 97 c0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit positive(short a), hex://math/math?positive#positive_(16i)
; positive_(16i)[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbf,0xc1,0x85,0xc0,0x0f,0x9f,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
000bh setg al                                 ; SETG r/m8 || 0F 9F /r || encoded[3]{0f 9f c0}
000eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit positive(ushort a), hex://math/math?positive#positive_(16u)
; positive_(16u)[17] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x85,0xc0,0x0f,0x9f,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
000ah setg al                                 ; SETG r/m8 || 0F 9F /r || encoded[3]{0f 9f c0}
000dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit positive(int a), hex://math/math?positive#positive_(32i)
; positive_(32i)[14] = {0x0f,0x1f,0x44,0x00,0x00,0x85,0xc9,0x0f,0x9f,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test ecx,ecx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c9}
0007h setg al                                 ; SETG r/m8 || 0F 9F /r || encoded[3]{0f 9f c0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit positive(uint a), hex://math/math?positive#positive_(32u)
; positive_(32u)[14] = {0x0f,0x1f,0x44,0x00,0x00,0x85,0xc9,0x0f,0x95,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test ecx,ecx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c9}
0007h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit positive(long a), hex://math/math?positive#positive_(64i)
; positive_(64i)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x85,0xc9,0x0f,0x9f,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test rcx,rcx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c9}
0008h setg al                                 ; SETG r/m8 || 0F 9F /r || encoded[3]{0f 9f c0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit positive(ulong a), hex://math/math?positive#positive_(64u)
; positive_(64u)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x85,0xc9,0x0f,0x95,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test rcx,rcx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c9}
0008h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit positive(float a), hex://math/math?positive#positive_(32f)
; positive_(32f)[20] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf0,0x57,0xc9,0xc5,0xf8,0x2e,0xc1,0x0f,0x97,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
0009h vucomiss xmm0,xmm1                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e c1}
000dh seta al                                 ; SETA r/m8 || 0F 97 /r || encoded[3]{0f 97 c0}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit positive(double a), hex://math/math?positive#positive_(64f)
; positive_(64f)[20] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf0,0x57,0xc9,0xc5,0xf9,0x2e,0xc1,0x0f,0x97,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
0009h vucomisd xmm0,xmm1                      ; VUCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2E /r || encoded[4]{c5 f9 2e c1}
000dh seta al                                 ; SETA r/m8 || 0F 97 /r || encoded[3]{0f 97 c0}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit within(sbyte a, sbyte b, sbyte tolerance), hex://math/math?within#within_(8i,8i,8i)
; within_(8i,8i,8i)[45] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbe,0xc1,0x48,0x0f,0xbe,0xd2,0x3b,0xc2,0x7d,0x07,0x2b,0xd0,0x48,0x63,0xca,0xeb,0x05,0x2b,0xc2,0x48,0x63,0xc8,0x49,0x0f,0xbe,0xc0,0x8b,0xc0,0x48,0x3b,0xc8,0x0f,0x96,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
000dh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000fh jge short 0018h                         ; JGE rel8 || 7D cb || encoded[2]{7d 07}
0011h sub edx,eax                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d0}
0013h movsxd rcx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 ca}
0016h jmp short 001dh                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
0018h sub eax,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c2}
001ah movsxd rcx,eax                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c8}
001dh movsx rax,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be c0}
0021h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
0023h cmp rcx,rax                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b c8}
0026h setbe al                                ; SETBE r/m8 || 0F 96 /r || encoded[3]{0f 96 c0}
0029h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
002ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit within(byte a, byte b, byte tolerance), hex://math/math?within#within_(8u,8u,8u)
; within_(8u,8u,8u)[41] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x0f,0xb6,0xd2,0x3b,0xc2,0x7d,0x07,0x2b,0xd0,0x48,0x63,0xca,0xeb,0x05,0x2b,0xc2,0x48,0x63,0xc8,0x41,0x0f,0xb6,0xc0,0x48,0x3b,0xc8,0x0f,0x96,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000dh jge short 0016h                         ; JGE rel8 || 7D cb || encoded[2]{7d 07}
000fh sub edx,eax                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d0}
0011h movsxd rcx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 ca}
0014h jmp short 001bh                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
0016h sub eax,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c2}
0018h movsxd rcx,eax                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c8}
001bh movzx eax,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c0}
001fh cmp rcx,rax                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b c8}
0022h setbe al                                ; SETBE r/m8 || 0F 96 /r || encoded[3]{0f 96 c0}
0025h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0028h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit within(short a, short b, short tolerance), hex://math/math?within#within_(16i,16i,16i)
; within_(16i,16i,16i)[45] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbf,0xc1,0x48,0x0f,0xbf,0xd2,0x3b,0xc2,0x7d,0x07,0x2b,0xd0,0x48,0x63,0xca,0xeb,0x05,0x2b,0xc2,0x48,0x63,0xc8,0x49,0x0f,0xbf,0xc0,0x8b,0xc0,0x48,0x3b,0xc8,0x0f,0x96,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
000dh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000fh jge short 0018h                         ; JGE rel8 || 7D cb || encoded[2]{7d 07}
0011h sub edx,eax                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d0}
0013h movsxd rcx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 ca}
0016h jmp short 001dh                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
0018h sub eax,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c2}
001ah movsxd rcx,eax                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c8}
001dh movsx rax,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf c0}
0021h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
0023h cmp rcx,rax                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b c8}
0026h setbe al                                ; SETBE r/m8 || 0F 96 /r || encoded[3]{0f 96 c0}
0029h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
002ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit within(ushort a, ushort b, ushort tolerance), hex://math/math?within#within_(16u,16u,16u)
; within_(16u,16u,16u)[41] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x0f,0xb7,0xd2,0x3b,0xc2,0x7d,0x07,0x2b,0xd0,0x48,0x63,0xca,0xeb,0x05,0x2b,0xc2,0x48,0x63,0xc8,0x41,0x0f,0xb7,0xc0,0x48,0x3b,0xc8,0x0f,0x96,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000dh jge short 0016h                         ; JGE rel8 || 7D cb || encoded[2]{7d 07}
000fh sub edx,eax                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d0}
0011h movsxd rcx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 ca}
0014h jmp short 001bh                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
0016h sub eax,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c2}
0018h movsxd rcx,eax                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c8}
001bh movzx eax,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 c0}
001fh cmp rcx,rax                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b c8}
0022h setbe al                                ; SETBE r/m8 || 0F 96 /r || encoded[3]{0f 96 c0}
0025h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0028h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit within(int a, int b, int tolerance), hex://math/math?within#within_(32i,32i,32i)
; within_(32i,32i,32i)[34] = {0x0f,0x1f,0x44,0x00,0x00,0x3b,0xca,0x7d,0x07,0x2b,0xd1,0x48,0x63,0xc2,0xeb,0x05,0x2b,0xca,0x48,0x63,0xc1,0x41,0x8b,0xd0,0x48,0x3b,0xc2,0x0f,0x96,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp ecx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b ca}
0007h jge short 0010h                         ; JGE rel8 || 7D cb || encoded[2]{7d 07}
0009h sub edx,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d1}
000bh movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
000eh jmp short 0015h                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
0010h sub ecx,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b ca}
0012h movsxd rax,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c1}
0015h mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
0018h cmp rax,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b c2}
001bh setbe al                                ; SETBE r/m8 || 0F 96 /r || encoded[3]{0f 96 c0}
001eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0021h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit within(uint a, uint b, uint tolerance), hex://math/math?within#within_(32u,32u,32u)
; within_(32u,32u,32u)[32] = {0x0f,0x1f,0x44,0x00,0x00,0x3b,0xca,0x73,0x06,0x2b,0xd1,0x8b,0xc2,0xeb,0x04,0x2b,0xca,0x8b,0xc1,0x41,0x8b,0xd0,0x48,0x3b,0xc2,0x0f,0x96,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp ecx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b ca}
0007h jae short 000fh                         ; JAE rel8 || 73 cb || encoded[2]{73 06}
0009h sub edx,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d1}
000bh mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
000dh jmp short 0013h                         ; JMP rel8 || EB cb || encoded[2]{eb 04}
000fh sub ecx,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b ca}
0011h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0013h mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
0016h cmp rax,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b c2}
0019h setbe al                                ; SETBE r/m8 || 0F 96 /r || encoded[3]{0f 96 c0}
001ch movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit within(long a, long b, long tolerance), hex://math/math?within#within_(64i,64i,64i)
; within_(64i,64i,64i)[31] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x3b,0xca,0x7d,0x05,0x48,0x2b,0xd1,0xeb,0x06,0x48,0x2b,0xca,0x48,0x8b,0xd1,0x49,0x3b,0xd0,0x0f,0x96,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp rcx,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b ca}
0008h jge short 000fh                         ; JGE rel8 || 7D cb || encoded[2]{7d 05}
000ah sub rdx,rcx                             ; SUB r64, r/m64 || REX.W 2B /r || encoded[3]{48 2b d1}
000dh jmp short 0015h                         ; JMP rel8 || EB cb || encoded[2]{eb 06}
000fh sub rcx,rdx                             ; SUB r64, r/m64 || REX.W 2B /r || encoded[3]{48 2b ca}
0012h mov rdx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d1}
0015h cmp rdx,r8                              ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{49 3b d0}
0018h setbe al                                ; SETBE r/m8 || 0F 96 /r || encoded[3]{0f 96 c0}
001bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit within(ulong a, ulong b, ulong tolerance), hex://math/math?within#within_(64u,64u,64u)
; within_(64u,64u,64u)[31] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x3b,0xca,0x73,0x05,0x48,0x2b,0xd1,0xeb,0x06,0x48,0x2b,0xca,0x48,0x8b,0xd1,0x49,0x3b,0xd0,0x0f,0x96,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp rcx,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b ca}
0008h jae short 000fh                         ; JAE rel8 || 73 cb || encoded[2]{73 05}
000ah sub rdx,rcx                             ; SUB r64, r/m64 || REX.W 2B /r || encoded[3]{48 2b d1}
000dh jmp short 0015h                         ; JMP rel8 || EB cb || encoded[2]{eb 06}
000fh sub rcx,rdx                             ; SUB r64, r/m64 || REX.W 2B /r || encoded[3]{48 2b ca}
0012h mov rdx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d1}
0015h cmp rdx,r8                              ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{49 3b d0}
0018h setbe al                                ; SETBE r/m8 || 0F 96 /r || encoded[3]{0f 96 c0}
001bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint or(uint a, uint b, uint c), hex://math/math?or#or_(32u,32u,32u)
; or_(32u,32u,32u)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0x0b,0xc2,0x41,0x0b,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0009h or eax,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c0}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long or(long a, long b, long c), hex://math/math?or#or_(64i,64i,64i)
; or_(64i,64i,64i)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0x48,0x0b,0xc2,0x49,0x0b,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
000bh or rax,r8                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{49 0b c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong or(ulong a, ulong b, ulong c), hex://math/math?or#or_(64u,64u,64u)
; or_(64u,64u,64u)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0x48,0x0b,0xc2,0x49,0x0b,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
000bh or rax,r8                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{49 0b c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte select(sbyte a, sbyte b, sbyte c), hex://math/math?select#select_(8i,8i,8i)
; select_(8i,8i,8i)[31] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbe,0xc1,0x48,0x0f,0xbe,0xd2,0x23,0xd0,0x49,0x0f,0xbe,0xc8,0xc4,0xe2,0x78,0xf2,0xc1,0x0b,0xc2,0x48,0x0f,0xbe,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
000dh and edx,eax                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 d0}
000fh movsx rcx,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be c8}
0013h andn eax,eax,ecx                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 78 f2 c1}
0018h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
001ah movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte select(byte a, byte b, byte c), hex://math/math?select#select_(8u,8u,8u)
; select_(8u,8u,8u)[28] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x0f,0xb6,0xd2,0x23,0xd0,0x41,0x0f,0xb6,0xc8,0xc4,0xe2,0x78,0xf2,0xc1,0x0b,0xc2,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh and edx,eax                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 d0}
000dh movzx ecx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c8}
0011h andn eax,eax,ecx                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 78 f2 c1}
0016h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0018h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short select(short a, short b, short c), hex://math/math?select#select_(16i,16i,16i)
; select_(16i,16i,16i)[31] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbf,0xc1,0x48,0x0f,0xbf,0xd2,0x23,0xd0,0x49,0x0f,0xbf,0xc8,0xc4,0xe2,0x78,0xf2,0xc1,0x0b,0xc2,0x48,0x0f,0xbf,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
000dh and edx,eax                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 d0}
000fh movsx rcx,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf c8}
0013h andn eax,eax,ecx                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 78 f2 c1}
0018h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
001ah movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort select(ushort a, ushort b, ushort c), hex://math/math?select#select_(16u,16u,16u)
; select_(16u,16u,16u)[28] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x0f,0xb7,0xd2,0x23,0xd0,0x41,0x0f,0xb7,0xc8,0xc4,0xe2,0x78,0xf2,0xc1,0x0b,0xc2,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh and edx,eax                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 d0}
000dh movzx ecx,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 c8}
0011h andn eax,eax,ecx                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 78 f2 c1}
0016h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0018h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int select(int a, int b, int c), hex://math/math?select#select_(32i,32i,32i)
; select_(32i,32i,32i)[17] = {0x0f,0x1f,0x44,0x00,0x00,0x23,0xd1,0x8b,0xc2,0xc4,0xc2,0x70,0xf2,0xd0,0x0b,0xc2,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h and edx,ecx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 d1}
0007h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0009h andn edx,ecx,r8d                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 c2 70 f2 d0}
000eh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint select(uint a, uint b, uint c), hex://math/math?select#select_(32u,32u,32u)
; select_(32u,32u,32u)[17] = {0x0f,0x1f,0x44,0x00,0x00,0x23,0xd1,0x8b,0xc2,0xc4,0xc2,0x70,0xf2,0xd0,0x0b,0xc2,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h and edx,ecx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 d1}
0007h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0009h andn edx,ecx,r8d                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 c2 70 f2 d0}
000eh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long select(long a, long b, long c), hex://math/math?select#select_(64i,64i,64i)
; select_(64i,64i,64i)[20] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x23,0xd1,0x48,0x8b,0xc2,0xc4,0xc2,0xf0,0xf2,0xd0,0x48,0x0b,0xc2,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h and rdx,rcx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 d1}
0008h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
000bh andn rdx,rcx,r8                         ; ANDN r64a, r64b, r/m64 || VEX.LZ.0F38.W1 F2 /r || encoded[5]{c4 c2 f0 f2 d0}
0010h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong select(ulong a, ulong b, ulong c), hex://math/math?select#select_(64u,64u,64u)
; select_(64u,64u,64u)[20] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x23,0xd1,0x48,0x8b,0xc2,0xc4,0xc2,0xf0,0xf2,0xd0,0x48,0x0b,0xc2,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h and rdx,rcx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 d1}
0008h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
000bh andn rdx,rcx,r8                         ; ANDN r64a, r64b, r/m64 || VEX.LZ.0F38.W1 F2 /r || encoded[5]{c4 c2 f0 f2 d0}
0010h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte blend(sbyte a, sbyte b, sbyte mask), hex://math/math?blend#blend_(8i,8i,8i)
; blend_(8i,8i,8i)[36] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbe,0xc1,0x48,0x0f,0xbe,0xd2,0x33,0xd0,0x48,0x0f,0xbe,0xd2,0x49,0x0f,0xbe,0xc8,0x23,0xd1,0x48,0x0f,0xbe,0xd2,0x33,0xc2,0x48,0x0f,0xbe,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
000dh xor edx,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d0}
000fh movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
0013h movsx rcx,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be c8}
0017h and edx,ecx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 d1}
0019h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
001dh xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
001fh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0023h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte blend(byte a, byte b, byte mask), hex://math/math?blend#blend_(8u,8u,8u)
; blend_(8u,8u,8u)[31] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x0f,0xb6,0xd2,0x33,0xd0,0x0f,0xb6,0xd2,0x41,0x0f,0xb6,0xc8,0x23,0xd1,0x0f,0xb6,0xd2,0x33,0xc2,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh xor edx,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d0}
000dh movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0010h movzx ecx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c8}
0014h and edx,ecx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 d1}
0016h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0019h xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
001bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short blend(short a, short b, short mask), hex://math/math?blend#blend_(16i,16i,16i)
; blend_(16i,16i,16i)[36] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbf,0xc1,0x48,0x0f,0xbf,0xd2,0x33,0xd0,0x48,0x0f,0xbf,0xd2,0x49,0x0f,0xbf,0xc8,0x23,0xd1,0x48,0x0f,0xbf,0xd2,0x33,0xc2,0x48,0x0f,0xbf,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
000dh xor edx,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d0}
000fh movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
0013h movsx rcx,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf c8}
0017h and edx,ecx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 d1}
0019h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
001dh xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
001fh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0023h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort blend(ushort a, ushort b, ushort mask), hex://math/math?blend#blend_(16u,16u,16u)
; blend_(16u,16u,16u)[31] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x0f,0xb7,0xd2,0x33,0xd0,0x0f,0xb7,0xd2,0x41,0x0f,0xb7,0xc8,0x23,0xd1,0x0f,0xb7,0xd2,0x33,0xc2,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh xor edx,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d0}
000dh movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0010h movzx ecx,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 c8}
0014h and edx,ecx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 d1}
0016h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0019h xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
001bh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int blend(int a, int b, int mask), hex://math/math?blend#blend_(32i,32i,32i)
; blend_(32i,32i,32i)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x33,0xd1,0x8b,0xc2,0x41,0x23,0xc0,0x33,0xc1,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor edx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d1}
0007h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0009h and eax,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 c0}
000ch xor eax,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c1}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint blend(uint a, uint b, uint mask), hex://math/math?blend#blend_(32u,32u,32u)
; blend_(32u,32u,32u)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x33,0xd1,0x8b,0xc2,0x41,0x23,0xc0,0x33,0xc1,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor edx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d1}
0007h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0009h and eax,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 c0}
000ch xor eax,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c1}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long blend(long a, long b, long mask), hex://math/math?blend#blend_(64i,64i,64i)
; blend_(64i,64i,64i)[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x33,0xd1,0x48,0x8b,0xc2,0x49,0x23,0xc0,0x48,0x33,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor rdx,rcx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 d1}
0008h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
000bh and rax,r8                              ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{49 23 c0}
000eh xor rax,rcx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 c1}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong blend(ulong a, ulong b, ulong mask), hex://math/math?blend#blend_(64u,64u,64u)
; blend_(64u,64u,64u)[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x33,0xd1,0x48,0x8b,0xc2,0x49,0x23,0xc0,0x48,0x33,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor rdx,rcx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 d1}
0008h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
000bh and rax,r8                              ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{49 23 c0}
000eh xor rax,rcx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 c1}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte xnor(sbyte a, sbyte b), hex://math/math?xnor#xnor_(8i,8i)
; xnor_(8i,8i)[26] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbe,0xc1,0x48,0x0f,0xbe,0xd2,0x33,0xc2,0x48,0x0f,0xbe,0xc0,0xf7,0xd0,0x48,0x0f,0xbe,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
000dh xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
000fh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0013h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0015h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte xnor(byte a, byte b), hex://math/math?xnor#xnor_(8u,8u)
; xnor_(8u,8u)[22] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x0f,0xb6,0xd2,0x33,0xc2,0x0f,0xb6,0xc0,0xf7,0xd0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
000dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0010h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0012h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short xnor(short a, short b), hex://math/math?xnor#xnor_(16i,16i)
; xnor_(16i,16i)[26] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbf,0xc1,0x48,0x0f,0xbf,0xd2,0x33,0xc2,0x48,0x0f,0xbf,0xc0,0xf7,0xd0,0x48,0x0f,0xbf,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
000dh xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
000fh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0013h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0015h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort xnor(ushort a, ushort b), hex://math/math?xnor#xnor_(16u,16u)
; xnor_(16u,16u)[22] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x0f,0xb7,0xd2,0x33,0xc2,0x0f,0xb7,0xc0,0xf7,0xd0,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
000dh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0010h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0012h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int xnor(int a, int b), hex://math/math?xnor#xnor_(32i,32i)
; xnor_(32i,32i)[12] = {0x0f,0x1f,0x44,0x00,0x00,0x33,0xd1,0x8b,0xc2,0xf7,0xd0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor edx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d1}
0007h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0009h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint xnor(uint a, uint b), hex://math/math?xnor#xnor_(32u,32u)
; xnor_(32u,32u)[12] = {0x0f,0x1f,0x44,0x00,0x00,0x33,0xd1,0x8b,0xc2,0xf7,0xd0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor edx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d1}
0007h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0009h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long xnor(long a, long b), hex://math/math?xnor#xnor_(64i,64i)
; xnor_(64i,64i)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x33,0xd1,0x48,0x8b,0xc2,0x48,0xf7,0xd0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor rdx,rcx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 d1}
0008h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
000bh not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong xnor(ulong a, ulong b), hex://math/math?xnor#xnor_(64u,64u)
; xnor_(64u,64u)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x33,0xd1,0x48,0x8b,0xc2,0x48,0xf7,0xd0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor rdx,rcx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 d1}
0008h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
000bh not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte xor(sbyte a, sbyte b), hex://math/math?xor#xor_(8i,8i)
; xor_(8i,8i)[20] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbe,0xc1,0x48,0x0f,0xbe,0xd2,0x33,0xc2,0x48,0x0f,0xbe,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
000dh xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
000fh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte xor(byte a, byte b), hex://math/math?xor#xor_(8u,8u)
; xor_(8u,8u)[17] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x0f,0xb6,0xd2,0x33,0xc2,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
000dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short xor(short a, short b), hex://math/math?xor#xor_(16i,16i)
; xor_(16i,16i)[20] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbf,0xc1,0x48,0x0f,0xbf,0xd2,0x33,0xc2,0x48,0x0f,0xbf,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
000dh xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
000fh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort xor(ushort a, ushort b), hex://math/math?xor#xor_(16u,16u)
; xor_(16u,16u)[17] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x0f,0xb7,0xd2,0x33,0xc2,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
000dh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int xor(int a, int b), hex://math/math?xor#xor_(32i,32i)
; xor_(32i,32i)[10] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0x33,0xc2,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint xor(uint a, uint b), hex://math/math?xor#xor_(32u,32u)
; xor_(32u,32u)[10] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0x33,0xc2,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long xor(long a, long b), hex://math/math?xor#xor_(64i,64i)
; xor_(64i,64i)[12] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0x48,0x33,0xc2,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h xor rax,rdx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 c2}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong xor(ulong a, ulong b), hex://math/math?xor#xor_(64u,64u)
; xor_(64u,64u)[12] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0x48,0x33,0xc2,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h xor rax,rdx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 c2}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte sal(sbyte src, byte offset), hex://math/math?sal#sal_(8i,8u)
; sal_(8i,8u)[19] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbe,0xc1,0x0f,0xb6,0xca,0xd3,0xe0,0x48,0x0f,0xbe,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000ch shl eax,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e0}
000eh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte sal(byte src, byte offset), hex://math/math?sal#sal_(8u,8u)
; sal_(8u,8u)[17] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x0f,0xb6,0xca,0xd3,0xe0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000bh shl eax,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e0}
000dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short sal(short src, byte offset), hex://math/math?sal#sal_(16i,8u)
; sal_(16i,8u)[19] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbf,0xc1,0x0f,0xb6,0xca,0xd3,0xe0,0x48,0x0f,0xbf,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000ch shl eax,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e0}
000eh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort sal(ushort src, byte offset), hex://math/math?sal#sal_(16u,8u)
; sal_(16u,8u)[17] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x0f,0xb6,0xca,0xd3,0xe0,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000bh shl eax,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e0}
000dh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int sal(int src, byte offset), hex://math/math?sal#sal_(32i,8u)
; sal_(32i,8u)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0x0f,0xb6,0xca,0xd3,0xe0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000ah shl eax,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e0}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint sal(uint src, byte offset), hex://math/math?sal#sal_(32u,8u)
; sal_(32u,8u)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0x0f,0xb6,0xca,0xd3,0xe0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000ah shl eax,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e0}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long sal(long src, byte offset), hex://math/math?sal#sal_(64i,8u)
; sal_(64i,8u)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0x0f,0xb6,0xca,0x48,0xd3,0xe0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000bh shl rax,cl                              ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{48 d3 e0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong sal(ulong src, byte offset), hex://math/math?sal#sal_(64u,8u)
; sal_(64u,8u)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0x0f,0xb6,0xca,0x48,0xd3,0xe0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000bh shl rax,cl                              ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{48 d3 e0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte sar(sbyte src, byte offset), hex://math/math?sar#sar_(8i,8u)
; sar_(8i,8u)[19] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbe,0xc1,0x0f,0xb6,0xca,0xd3,0xf8,0x48,0x0f,0xbe,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000ch sar eax,cl                              ; SAR r/m32, CL || o32 D3 /7 || encoded[2]{d3 f8}
000eh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte sar(byte src, byte offset), hex://math/math?sar#sar_(8u,8u)
; sar_(8u,8u)[17] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x0f,0xb6,0xca,0xd3,0xf8,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000bh sar eax,cl                              ; SAR r/m32, CL || o32 D3 /7 || encoded[2]{d3 f8}
000dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short sar(short src, byte offset), hex://math/math?sar#sar_(16i,8u)
; sar_(16i,8u)[19] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbf,0xc1,0x0f,0xb6,0xca,0xd3,0xf8,0x48,0x0f,0xbf,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000ch sar eax,cl                              ; SAR r/m32, CL || o32 D3 /7 || encoded[2]{d3 f8}
000eh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort sar(ushort src, byte offset), hex://math/math?sar#sar_(16u,8u)
; sar_(16u,8u)[17] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x0f,0xb6,0xca,0xd3,0xf8,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000bh sar eax,cl                              ; SAR r/m32, CL || o32 D3 /7 || encoded[2]{d3 f8}
000dh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int sar(int src, byte offset), hex://math/math?sar#sar_(32i,8u)
; sar_(32i,8u)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0x0f,0xb6,0xca,0xd3,0xf8,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000ah sar eax,cl                              ; SAR r/m32, CL || o32 D3 /7 || encoded[2]{d3 f8}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint sar(uint src, byte offset), hex://math/math?sar#sar_(32u,8u)
; sar_(32u,8u)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0x0f,0xb6,0xca,0xd3,0xe8,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000ah shr eax,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 e8}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long sar(long src, byte offset), hex://math/math?sar#sar_(64i,8u)
; sar_(64i,8u)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0x0f,0xb6,0xca,0x48,0xd3,0xf8,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000bh sar rax,cl                              ; SAR r/m64, CL || REX.W D3 /7 || encoded[3]{48 d3 f8}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong sar(ulong src, byte offset), hex://math/math?sar#sar_(64u,8u)
; sar_(64u,8u)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0x0f,0xb6,0xca,0x48,0xd3,0xe8,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000bh shr rax,cl                              ; SHR r/m64, CL || REX.W D3 /5 || encoded[3]{48 d3 e8}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte sll(sbyte src, byte offset), hex://math/math?sll#sll_(8i,8u)
; sll_(8i,8u)[19] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbe,0xc1,0x0f,0xb6,0xca,0xd3,0xe0,0x48,0x0f,0xbe,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000ch shl eax,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e0}
000eh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte sll(byte src, byte offset), hex://math/math?sll#sll_(8u,8u)
; sll_(8u,8u)[17] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x0f,0xb6,0xca,0xd3,0xe0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000bh shl eax,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e0}
000dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short sll(short src, byte offset), hex://math/math?sll#sll_(16i,8u)
; sll_(16i,8u)[19] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbf,0xc1,0x0f,0xb6,0xca,0xd3,0xe0,0x48,0x0f,0xbf,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000ch shl eax,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e0}
000eh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort sll(ushort src, byte offset), hex://math/math?sll#sll_(16u,8u)
; sll_(16u,8u)[17] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x0f,0xb6,0xca,0xd3,0xe0,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000bh shl eax,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e0}
000dh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int sll(int src, byte offset), hex://math/math?sll#sll_(32i,8u)
; sll_(32i,8u)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0x0f,0xb6,0xca,0xd3,0xe0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000ah shl eax,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e0}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint sll(uint src, byte offset), hex://math/math?sll#sll_(32u,8u)
; sll_(32u,8u)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0x0f,0xb6,0xca,0xd3,0xe0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000ah shl eax,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e0}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long sll(long src, byte offset), hex://math/math?sll#sll_(64i,8u)
; sll_(64i,8u)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0x0f,0xb6,0xca,0x48,0xd3,0xe0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000bh shl rax,cl                              ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{48 d3 e0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong sll(ulong src, byte offset), hex://math/math?sll#sll_(64u,8u)
; sll_(64u,8u)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0x0f,0xb6,0xca,0x48,0xd3,0xe0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000bh shl rax,cl                              ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{48 d3 e0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte srl(sbyte src, byte offset), hex://math/math?srl#srl_(8i,8u)
; srl_(8i,8u)[19] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbe,0xc1,0x0f,0xb6,0xca,0xd3,0xe8,0x48,0x0f,0xbe,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000ch shr eax,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 e8}
000eh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte srl(byte src, byte offset), hex://math/math?srl#srl_(8u,8u)
; srl_(8u,8u)[17] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x0f,0xb6,0xca,0xd3,0xe8,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000bh shr eax,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 e8}
000dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short srl(short src, byte offset), hex://math/math?srl#srl_(16i,8u)
; srl_(16i,8u)[19] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbf,0xc1,0x0f,0xb6,0xca,0xd3,0xe8,0x48,0x0f,0xbf,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000ch shr eax,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 e8}
000eh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort srl(ushort src, byte offset), hex://math/math?srl#srl_(16u,8u)
; srl_(16u,8u)[17] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x0f,0xb6,0xca,0xd3,0xe8,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000bh shr eax,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 e8}
000dh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int srl(int src, byte offset), hex://math/math?srl#srl_(32i,8u)
; srl_(32i,8u)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0x0f,0xb6,0xca,0xd3,0xe8,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000ah shr eax,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 e8}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint srl(uint src, byte offset), hex://math/math?srl#srl_(32u,8u)
; srl_(32u,8u)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0x0f,0xb6,0xca,0xd3,0xe8,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000ah shr eax,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 e8}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long srl(long src, byte offset), hex://math/math?srl#srl_(64i,8u)
; srl_(64i,8u)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0x0f,0xb6,0xca,0x48,0xd3,0xe8,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000bh shr rax,cl                              ; SHR r/m64, CL || REX.W D3 /5 || encoded[3]{48 d3 e8}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong srl(ulong src, byte offset), hex://math/math?srl#srl_(64u,8u)
; srl_(64u,8u)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0x0f,0xb6,0xca,0x48,0xd3,0xe8,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000bh shr rax,cl                              ; SHR r/m64, CL || REX.W D3 /5 || encoded[3]{48 d3 e8}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int srl32i(int src, byte offset), hex://math/math?srl32i#srl32i_(32i,8u)
; srl32i_(32i,8u)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0x0f,0xb6,0xca,0xd3,0xe8,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000ah shr eax,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 e8}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint srl32u(uint src, byte offset), hex://math/math?srl32u#srl32u_(32u,8u)
; srl32u_(32u,8u)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0x0f,0xb6,0xca,0xd3,0xe8,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000ah shr eax,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 e8}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long srl64i(long src, byte offset), hex://math/math?srl64i#srl64i_(64i,8u)
; srl64i_(64i,8u)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0x0f,0xb6,0xca,0x48,0xd3,0xe8,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000bh shr rax,cl                              ; SHR r/m64, CL || REX.W D3 /5 || encoded[3]{48 d3 e8}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong srl64u(ulong src, byte offset), hex://math/math?srl64u#srl64u_(64u,8u)
; srl64u_(64u,8u)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0x0f,0xb6,0xca,0x48,0xd3,0xe8,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000bh shr rax,cl                              ; SHR r/m64, CL || REX.W D3 /5 || encoded[3]{48 d3 e8}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte xors(byte a, byte offset), hex://math/math?xors#xors_(8u,8u)
; xors_(8u,8u)[40] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x0f,0xb6,0xd2,0x83,0xe2,0x1f,0x8b,0xca,0x44,0x8b,0xc0,0x41,0xd3,0xe8,0x8b,0xca,0x44,0x8b,0xc8,0x41,0xd3,0xe1,0x41,0x33,0xc1,0x41,0x33,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh and edx,1fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 1f}
000eh mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0010h mov r8d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c0}
0013h shr r8d,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[3]{41 d3 e8}
0016h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0018h mov r9d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c8}
001bh shl r9d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e1}
001eh xor eax,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{41 33 c1}
0021h xor eax,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{41 33 c0}
0024h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0027h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte xors(sbyte a, byte offset), hex://math/math?xors#xors_(8i,8u)
; xors_(8i,8u)[48] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbe,0xc9,0x0f,0xb6,0xc1,0x0f,0xb6,0xd2,0x83,0xe2,0x1f,0x8b,0xca,0x44,0x8b,0xc0,0x41,0xd3,0xe8,0x8b,0xca,0x44,0x8b,0xc8,0x41,0xd3,0xe1,0x41,0x33,0xc1,0x41,0x33,0xc0,0x0f,0xb6,0xc0,0x48,0x0f,0xbe,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rcx,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c9}
0009h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
000ch movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000fh and edx,1fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 1f}
0012h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0014h mov r8d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c0}
0017h shr r8d,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[3]{41 d3 e8}
001ah mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
001ch mov r9d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c8}
001fh shl r9d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e1}
0022h xor eax,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{41 33 c1}
0025h xor eax,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{41 33 c0}
0028h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
002bh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
002fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort xors(ushort a, byte offset), hex://math/math?xors#xors_(16u,8u)
; xors_(16u,8u)[40] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x0f,0xb6,0xd2,0x83,0xe2,0x1f,0x8b,0xca,0x44,0x8b,0xc0,0x41,0xd3,0xe8,0x8b,0xca,0x44,0x8b,0xc8,0x41,0xd3,0xe1,0x41,0x33,0xc1,0x41,0x33,0xc0,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh and edx,1fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 1f}
000eh mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0010h mov r8d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c0}
0013h shr r8d,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[3]{41 d3 e8}
0016h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0018h mov r9d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c8}
001bh shl r9d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e1}
001eh xor eax,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{41 33 c1}
0021h xor eax,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{41 33 c0}
0024h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0027h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short xors(short a, byte offset), hex://math/math?xors#xors_(16i,8u)
; xors_(16i,8u)[48] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbf,0xc9,0x0f,0xb7,0xc1,0x0f,0xb6,0xd2,0x83,0xe2,0x1f,0x8b,0xca,0x44,0x8b,0xc0,0x41,0xd3,0xe8,0x8b,0xca,0x44,0x8b,0xc8,0x41,0xd3,0xe1,0x41,0x33,0xc1,0x41,0x33,0xc0,0x0f,0xb7,0xc0,0x48,0x0f,0xbf,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rcx,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c9}
0009h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
000ch movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000fh and edx,1fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 1f}
0012h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0014h mov r8d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c0}
0017h shr r8d,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[3]{41 d3 e8}
001ah mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
001ch mov r9d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c8}
001fh shl r9d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e1}
0022h xor eax,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{41 33 c1}
0025h xor eax,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{41 33 c0}
0028h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
002bh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
002fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint xors(uint a, byte offset), hex://math/math?xors#xors_(32u,8u)
; xors_(32u,8u)[36] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0x0f,0xb6,0xd2,0x83,0xe2,0x1f,0x8b,0xca,0x44,0x8b,0xc0,0x41,0xd3,0xe8,0x8b,0xca,0x44,0x8b,0xc8,0x41,0xd3,0xe1,0x41,0x33,0xc1,0x41,0x33,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000ah and edx,1fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 1f}
000dh mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
000fh mov r8d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c0}
0012h shr r8d,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[3]{41 d3 e8}
0015h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0017h mov r9d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c8}
001ah shl r9d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e1}
001dh xor eax,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{41 33 c1}
0020h xor eax,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{41 33 c0}
0023h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int xors(int a, byte offset), hex://math/math?xors#xors_(32i,8u)
; xors_(32i,8u)[36] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0x0f,0xb6,0xd2,0x83,0xe2,0x1f,0x8b,0xca,0x44,0x8b,0xc0,0x41,0xd3,0xf8,0x8b,0xca,0x44,0x8b,0xc8,0x41,0xd3,0xe1,0x41,0x33,0xc1,0x41,0x33,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000ah and edx,1fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 1f}
000dh mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
000fh mov r8d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c0}
0012h sar r8d,cl                              ; SAR r/m32, CL || o32 D3 /7 || encoded[3]{41 d3 f8}
0015h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0017h mov r9d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c8}
001ah shl r9d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e1}
001dh xor eax,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{41 33 c1}
0020h xor eax,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{41 33 c0}
0023h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long xors(long src, byte offset), hex://math/math?xors#xors_(64i,8u)
; xors_(64i,8u)[37] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0x0f,0xb6,0xd2,0x83,0xe2,0x3f,0x8b,0xca,0x4c,0x8b,0xc0,0x49,0xd3,0xf8,0x8b,0xca,0x4c,0x8b,0xc8,0x49,0xd3,0xe1,0x49,0x33,0xc1,0x49,0x33,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh and edx,3fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 3f}
000eh mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0010h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0013h sar r8,cl                               ; SAR r/m64, CL || REX.W D3 /7 || encoded[3]{49 d3 f8}
0016h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0018h mov r9,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c8}
001bh shl r9,cl                               ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e1}
001eh xor rax,r9                              ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{49 33 c1}
0021h xor rax,r8                              ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{49 33 c0}
0024h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong xors(ulong src, byte offset), hex://math/math?xors#xors_(64u,8u)
; xors_(64u,8u)[37] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0x0f,0xb6,0xd2,0x83,0xe2,0x3f,0x8b,0xca,0x4c,0x8b,0xc0,0x49,0xd3,0xe8,0x8b,0xca,0x4c,0x8b,0xc8,0x49,0xd3,0xe1,0x49,0x33,0xc1,0x49,0x33,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh and edx,3fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 3f}
000eh mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0010h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0013h shr r8,cl                               ; SHR r/m64, CL || REX.W D3 /5 || encoded[3]{49 d3 e8}
0016h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0018h mov r9,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c8}
001bh shl r9,cl                               ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e1}
001eh xor rax,r9                              ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{49 33 c1}
0021h xor rax,r8                              ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{49 33 c0}
0024h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte xorsl(byte a, byte offset), hex://math/math?xorsl#xorsl_(8u,8u)
; xorsl_(8u,8u)[21] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x0f,0xb6,0xca,0x8b,0xd0,0xd3,0xe2,0x33,0xc2,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000bh mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
000dh shl edx,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e2}
000fh xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
0011h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte xorsl(sbyte a, byte offset), hex://math/math?xorsl#xorsl_(8i,8u)
; xorsl_(8i,8u)[23] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbe,0xc1,0x0f,0xb6,0xca,0x8b,0xd0,0xd3,0xe2,0x33,0xc2,0x48,0x0f,0xbe,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000ch mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
000eh shl edx,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e2}
0010h xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
0012h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort xorsl(ushort a, byte offset), hex://math/math?xorsl#xorsl_(16u,8u)
; xorsl_(16u,8u)[21] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x0f,0xb6,0xca,0x8b,0xd0,0xd3,0xe2,0x33,0xc2,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000bh mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
000dh shl edx,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e2}
000fh xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
0011h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short xorsl(short a, byte offset), hex://math/math?xorsl#xorsl_(16i,8u)
; xorsl_(16i,8u)[23] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbf,0xc1,0x0f,0xb6,0xca,0x8b,0xd0,0xd3,0xe2,0x33,0xc2,0x48,0x0f,0xbf,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000ch mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
000eh shl edx,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e2}
0010h xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
0012h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int xorsl(int a, byte offset), hex://math/math?xorsl#xorsl_(32i,8u)
; xorsl_(32i,8u)[17] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0x0f,0xb6,0xca,0x8b,0xd0,0xd3,0xe2,0x33,0xc2,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000ah mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
000ch shl edx,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e2}
000eh xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint xorsl(uint a, byte offset), hex://math/math?xorsl#xorsl_(32u,8u)
; xorsl_(32u,8u)[17] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0x0f,0xb6,0xca,0x8b,0xd0,0xd3,0xe2,0x33,0xc2,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000ah mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
000ch shl edx,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e2}
000eh xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long xorsl(long a, byte offset), hex://math/math?xorsl#xorsl_(64i,8u)
; xorsl_(64i,8u)[21] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0x0f,0xb6,0xca,0x48,0x8b,0xd0,0x48,0xd3,0xe2,0x48,0x33,0xc2,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000bh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
000eh shl rdx,cl                              ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{48 d3 e2}
0011h xor rax,rdx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 c2}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong xorsl(ulong a, byte offset), hex://math/math?xorsl#xorsl_(64u,8u)
; xorsl_(64u,8u)[21] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0x0f,0xb6,0xca,0x48,0x8b,0xd0,0x48,0xd3,0xe2,0x48,0x33,0xc2,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000bh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
000eh shl rdx,cl                              ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{48 d3 e2}
0011h xor rax,rdx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 c2}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte xorsr(byte a, byte offset), hex://math/math?xorsr#xorsr_(8u,8u)
; xorsr_(8u,8u)[21] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x0f,0xb6,0xca,0x8b,0xd0,0xd3,0xea,0x33,0xc2,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000bh mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
000dh shr edx,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 ea}
000fh xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
0011h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte xorsr(sbyte a, byte offset), hex://math/math?xorsr#xorsr_(8i,8u)
; xorsr_(8i,8u)[23] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbe,0xc1,0x0f,0xb6,0xca,0x8b,0xd0,0xd3,0xfa,0x33,0xc2,0x48,0x0f,0xbe,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000ch mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
000eh sar edx,cl                              ; SAR r/m32, CL || o32 D3 /7 || encoded[2]{d3 fa}
0010h xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
0012h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short xorsr(short a, byte offset), hex://math/math?xorsr#xorsr_(16i,8u)
; xorsr_(16i,8u)[23] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbf,0xc1,0x0f,0xb6,0xca,0x8b,0xd0,0xd3,0xfa,0x33,0xc2,0x48,0x0f,0xbf,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000ch mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
000eh sar edx,cl                              ; SAR r/m32, CL || o32 D3 /7 || encoded[2]{d3 fa}
0010h xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
0012h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort xorsr(ushort a, byte offset), hex://math/math?xorsr#xorsr_(16u,8u)
; xorsr_(16u,8u)[21] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x0f,0xb6,0xca,0x8b,0xd0,0xd3,0xea,0x33,0xc2,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000bh mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
000dh shr edx,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 ea}
000fh xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
0011h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int xorsr(int a, byte offset), hex://math/math?xorsr#xorsr_(32i,8u)
; xorsr_(32i,8u)[17] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0x0f,0xb6,0xca,0x8b,0xd0,0xd3,0xfa,0x33,0xc2,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000ah mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
000ch sar edx,cl                              ; SAR r/m32, CL || o32 D3 /7 || encoded[2]{d3 fa}
000eh xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint xorsr(uint a, byte offset), hex://math/math?xorsr#xorsr_(32u,8u)
; xorsr_(32u,8u)[17] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0x0f,0xb6,0xca,0x8b,0xd0,0xd3,0xea,0x33,0xc2,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000ah mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
000ch shr edx,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 ea}
000eh xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long xorsr(long a, byte offset), hex://math/math?xorsr#xorsr_(64i,8u)
; xorsr_(64i,8u)[21] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0x0f,0xb6,0xca,0x48,0x8b,0xd0,0x48,0xd3,0xfa,0x48,0x33,0xc2,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000bh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
000eh sar rdx,cl                              ; SAR r/m64, CL || REX.W D3 /7 || encoded[3]{48 d3 fa}
0011h xor rax,rdx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 c2}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong xorsr(ulong a, byte offset), hex://math/math?xorsr#xorsr_(64u,8u)
; xorsr_(64u,8u)[21] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0x0f,0xb6,0xca,0x48,0x8b,0xd0,0x48,0xd3,0xea,0x48,0x33,0xc2,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000bh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
000eh shr rdx,cl                              ; SHR r/m64, CL || REX.W D3 /5 || encoded[3]{48 d3 ea}
0011h xor rax,rdx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 c2}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit between(byte t, byte min, byte max), hex://math/math?between#between_(8u,8u,8u)
; between_(8u,8u,8u)[38] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x0f,0xb6,0xd2,0x3b,0xc2,0x7c,0x11,0x0f,0xb6,0xc1,0x41,0x0f,0xb6,0xd0,0x3b,0xc2,0x0f,0x9e,0xc0,0x0f,0xb6,0xc0,0xeb,0x02,0x33,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000dh jl short 0020h                          ; JL rel8 || 7C cb || encoded[2]{7c 11}
000fh movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0012h movzx edx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d0}
0016h cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
0018h setle al                                ; SETLE r/m8 || 0F 9E /r || encoded[3]{0f 9e c0}
001bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001eh jmp short 0022h                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
0020h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0022h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0025h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit between(sbyte t, sbyte min, sbyte max), hex://math/math?between#between_(8i,8i,8i)
; between_(8i,8i,8i)[41] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbe,0xc1,0x48,0x0f,0xbe,0xd2,0x3b,0xc2,0x7c,0x12,0x48,0x0f,0xbe,0xc1,0x49,0x0f,0xbe,0xd0,0x3b,0xc2,0x0f,0x9e,0xc0,0x0f,0xb6,0xc0,0xeb,0x02,0x33,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
000dh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000fh jl short 0023h                          ; JL rel8 || 7C cb || encoded[2]{7c 12}
0011h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0015h movsx rdx,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be d0}
0019h cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
001bh setle al                                ; SETLE r/m8 || 0F 9E /r || encoded[3]{0f 9e c0}
001eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0021h jmp short 0025h                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
0023h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0025h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0028h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit between(short t, short min, short max), hex://math/math?between#between_(16i,16i,16i)
; between_(16i,16i,16i)[41] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbf,0xc1,0x48,0x0f,0xbf,0xd2,0x3b,0xc2,0x7c,0x12,0x48,0x0f,0xbf,0xc1,0x49,0x0f,0xbf,0xd0,0x3b,0xc2,0x0f,0x9e,0xc0,0x0f,0xb6,0xc0,0xeb,0x02,0x33,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
000dh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000fh jl short 0023h                          ; JL rel8 || 7C cb || encoded[2]{7c 12}
0011h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0015h movsx rdx,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf d0}
0019h cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
001bh setle al                                ; SETLE r/m8 || 0F 9E /r || encoded[3]{0f 9e c0}
001eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0021h jmp short 0025h                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
0023h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0025h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0028h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit between(ushort t, ushort min, ushort max), hex://math/math?between#between_(16u,16u,16u)
; between_(16u,16u,16u)[38] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x0f,0xb7,0xd2,0x3b,0xc2,0x7c,0x11,0x0f,0xb7,0xc1,0x41,0x0f,0xb7,0xd0,0x3b,0xc2,0x0f,0x9e,0xc0,0x0f,0xb6,0xc0,0xeb,0x02,0x33,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000dh jl short 0020h                          ; JL rel8 || 7C cb || encoded[2]{7c 11}
000fh movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0012h movzx edx,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 d0}
0016h cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
0018h setle al                                ; SETLE r/m8 || 0F 9E /r || encoded[3]{0f 9e c0}
001bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001eh jmp short 0022h                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
0020h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0022h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0025h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit between(int t, int min, int max), hex://math/math?between#between_(32i,32i,32i)
; between_(32i,32i,32i)[26] = {0x0f,0x1f,0x44,0x00,0x00,0x3b,0xca,0x7c,0x0b,0x41,0x3b,0xc8,0x0f,0x9e,0xc0,0x0f,0xb6,0xc0,0xeb,0x02,0x33,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp ecx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b ca}
0007h jl short 0014h                          ; JL rel8 || 7C cb || encoded[2]{7c 0b}
0009h cmp ecx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b c8}
000ch setle al                                ; SETLE r/m8 || 0F 9E /r || encoded[3]{0f 9e c0}
000fh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0012h jmp short 0016h                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
0014h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0016h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit between(uint t, uint min, uint max), hex://math/math?between#between_(32u,32u,32u)
; between_(32u,32u,32u)[26] = {0x0f,0x1f,0x44,0x00,0x00,0x3b,0xca,0x72,0x0b,0x41,0x3b,0xc8,0x0f,0x96,0xc0,0x0f,0xb6,0xc0,0xeb,0x02,0x33,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp ecx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b ca}
0007h jb short 0014h                          ; JB rel8 || 72 cb || encoded[2]{72 0b}
0009h cmp ecx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b c8}
000ch setbe al                                ; SETBE r/m8 || 0F 96 /r || encoded[3]{0f 96 c0}
000fh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0012h jmp short 0016h                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
0014h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0016h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit between(long t, long min, long max), hex://math/math?between#between_(64i,64i,64i)
; between_(64i,64i,64i)[27] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x3b,0xca,0x7c,0x0b,0x49,0x3b,0xc8,0x0f,0x9e,0xc0,0x0f,0xb6,0xc0,0xeb,0x02,0x33,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp rcx,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b ca}
0008h jl short 0015h                          ; JL rel8 || 7C cb || encoded[2]{7c 0b}
000ah cmp rcx,r8                              ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{49 3b c8}
000dh setle al                                ; SETLE r/m8 || 0F 9E /r || encoded[3]{0f 9e c0}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h jmp short 0017h                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
0015h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0017h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit between(ulong t, ulong min, ulong max), hex://math/math?between#between_(64u,64u,64u)
; between_(64u,64u,64u)[27] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x3b,0xca,0x72,0x0b,0x49,0x3b,0xc8,0x0f,0x96,0xc0,0x0f,0xb6,0xc0,0xeb,0x02,0x33,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp rcx,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b ca}
0008h jb short 0015h                          ; JB rel8 || 72 cb || encoded[2]{72 0b}
000ah cmp rcx,r8                              ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{49 3b c8}
000dh setbe al                                ; SETBE r/m8 || 0F 96 /r || encoded[3]{0f 96 c0}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h jmp short 0017h                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
0015h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0017h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit eq(sbyte a, sbyte b), hex://math/math?eq#eq_(8i,8i)
; eq_(8i,8i)[22] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbe,0xc1,0x48,0x0f,0xbe,0xd2,0x3b,0xc2,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
000dh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000fh sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0012h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit eq(byte a, byte b), hex://math/math?eq#eq_(8u,8u)
; eq_(8u,8u)[20] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x0f,0xb6,0xd2,0x3b,0xc2,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000dh sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit eq(short a, short b), hex://math/math?eq#eq_(16i,16i)
; eq_(16i,16i)[22] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbf,0xc1,0x48,0x0f,0xbf,0xd2,0x3b,0xc2,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
000dh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000fh sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0012h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit eq(ushort a, ushort b), hex://math/math?eq#eq_(16u,16u)
; eq_(16u,16u)[20] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x0f,0xb7,0xd2,0x3b,0xc2,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000dh sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit eq(int a, int b), hex://math/math?eq#eq_(32i,32i)
; eq_(32i,32i)[14] = {0x0f,0x1f,0x44,0x00,0x00,0x3b,0xca,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp ecx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b ca}
0007h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit eq(uint a, uint b), hex://math/math?eq#eq_(32u,32u)
; eq_(32u,32u)[14] = {0x0f,0x1f,0x44,0x00,0x00,0x3b,0xca,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp ecx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b ca}
0007h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit eq(long a, long b), hex://math/math?eq#eq_(64i,64i)
; eq_(64i,64i)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x3b,0xca,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp rcx,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b ca}
0008h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit eq(ulong a, ulong b), hex://math/math?eq#eq_(64u,64u)
; eq_(64u,64u)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x3b,0xca,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp rcx,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b ca}
0008h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit neq(sbyte a, sbyte b), hex://math/math?neq#neq_(8i,8i)
; neq_(8i,8i)[22] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbe,0xc1,0x48,0x0f,0xbe,0xd2,0x3b,0xc2,0x0f,0x95,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
000dh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000fh setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0012h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit neq(byte a, byte b), hex://math/math?neq#neq_(8u,8u)
; neq_(8u,8u)[20] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x0f,0xb6,0xd2,0x3b,0xc2,0x0f,0x95,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000dh setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit neq(short a, short b), hex://math/math?neq#neq_(16i,16i)
; neq_(16i,16i)[22] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbf,0xc1,0x48,0x0f,0xbf,0xd2,0x3b,0xc2,0x0f,0x95,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
000dh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000fh setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0012h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit neq(ushort a, ushort b), hex://math/math?neq#neq_(16u,16u)
; neq_(16u,16u)[20] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x0f,0xb7,0xd2,0x3b,0xc2,0x0f,0x95,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000dh setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit neq(int a, int b), hex://math/math?neq#neq_(32i,32i)
; neq_(32i,32i)[14] = {0x0f,0x1f,0x44,0x00,0x00,0x3b,0xca,0x0f,0x95,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp ecx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b ca}
0007h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit neq(uint a, uint b), hex://math/math?neq#neq_(32u,32u)
; neq_(32u,32u)[14] = {0x0f,0x1f,0x44,0x00,0x00,0x3b,0xca,0x0f,0x95,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp ecx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b ca}
0007h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit neq(long a, long b), hex://math/math?neq#neq_(64i,64i)
; neq_(64i,64i)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x3b,0xca,0x0f,0x95,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp rcx,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b ca}
0008h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit neq(ulong a, ulong b), hex://math/math?neq#neq_(64u,64u)
; neq_(64u,64u)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x3b,0xca,0x0f,0x95,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp rcx,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b ca}
0008h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit gt(sbyte a, sbyte b), hex://math/math?gt#gt_(8i,8i)
; gt_(8i,8i)[22] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbe,0xc1,0x48,0x0f,0xbe,0xd2,0x3b,0xc2,0x0f,0x9f,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
000dh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000fh setg al                                 ; SETG r/m8 || 0F 9F /r || encoded[3]{0f 9f c0}
0012h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit gt(byte a, byte b), hex://math/math?gt#gt_(8u,8u)
; gt_(8u,8u)[20] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x0f,0xb6,0xd2,0x3b,0xc2,0x0f,0x9f,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000dh setg al                                 ; SETG r/m8 || 0F 9F /r || encoded[3]{0f 9f c0}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit gt(short a, short b), hex://math/math?gt#gt_(16i,16i)
; gt_(16i,16i)[22] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbf,0xc1,0x48,0x0f,0xbf,0xd2,0x3b,0xc2,0x0f,0x9f,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
000dh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000fh setg al                                 ; SETG r/m8 || 0F 9F /r || encoded[3]{0f 9f c0}
0012h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit gt(ushort a, ushort b), hex://math/math?gt#gt_(16u,16u)
; gt_(16u,16u)[20] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x0f,0xb7,0xd2,0x3b,0xc2,0x0f,0x9f,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000dh setg al                                 ; SETG r/m8 || 0F 9F /r || encoded[3]{0f 9f c0}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit gt(int a, int b), hex://math/math?gt#gt_(32i,32i)
; gt_(32i,32i)[14] = {0x0f,0x1f,0x44,0x00,0x00,0x3b,0xca,0x0f,0x9f,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp ecx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b ca}
0007h setg al                                 ; SETG r/m8 || 0F 9F /r || encoded[3]{0f 9f c0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit gt(uint a, uint b), hex://math/math?gt#gt_(32u,32u)
; gt_(32u,32u)[14] = {0x0f,0x1f,0x44,0x00,0x00,0x3b,0xca,0x0f,0x97,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp ecx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b ca}
0007h seta al                                 ; SETA r/m8 || 0F 97 /r || encoded[3]{0f 97 c0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit gt(long a, long b), hex://math/math?gt#gt_(64i,64i)
; gt_(64i,64i)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x3b,0xca,0x0f,0x9f,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp rcx,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b ca}
0008h setg al                                 ; SETG r/m8 || 0F 9F /r || encoded[3]{0f 9f c0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit gt(ulong a, ulong b), hex://math/math?gt#gt_(64u,64u)
; gt_(64u,64u)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x3b,0xca,0x0f,0x97,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp rcx,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b ca}
0008h seta al                                 ; SETA r/m8 || 0F 97 /r || encoded[3]{0f 97 c0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit gteq(sbyte a, sbyte b), hex://math/math?gteq#gteq_(8i,8i)
; gteq_(8i,8i)[22] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbe,0xc1,0x48,0x0f,0xbe,0xd2,0x3b,0xc2,0x0f,0x9d,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
000dh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000fh setge al                                ; SETGE r/m8 || 0F 9D /r || encoded[3]{0f 9d c0}
0012h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte negate(sbyte src), hex://math/math?negate#negate_(8i)
; negate_(8i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbe,0xc1,0xf7,0xd8,0x48,0x0f,0xbe,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
000bh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte negate(byte src), hex://math/math?negate#negate_(8u)
; negate_(8u)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0xf7,0xd0,0xff,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000ah inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
000ch movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short negate(short src), hex://math/math?negate#negate_(16i)
; negate_(16i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbf,0xc1,0xf7,0xd8,0x48,0x0f,0xbf,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
000bh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort negate(ushort src), hex://math/math?negate#negate_(16u)
; negate_(16u)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0xf7,0xd0,0xff,0xc0,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000ah inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
000ch movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int negate(int src), hex://math/math?negate#negate_(32i)
; negate_(32i)[10] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0xf7,0xd8,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint negate(uint src), hex://math/math?negate#negate_(32u)
; negate_(32u)[12] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0xf7,0xd0,0xff,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0009h inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long negate(long src), hex://math/math?negate#negate_(64i)
; negate_(64i)[12] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0x48,0xf7,0xd8,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h neg rax                                 ; NEG r/m64 || REX.W F7 /3 || encoded[3]{48 f7 d8}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong negate(ulong src), hex://math/math?negate#negate_(64u)
; negate_(64u)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0x48,0xf7,0xd0,0x48,0xff,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
000bh inc rax                                 ; INC r/m64 || REX.W FF /0 || encoded[3]{48 ff c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; float negate(float src), hex://math/math?negate#negate_(32f)
; negate_(32f)[18] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfa,0x10,0x0d,0x0b,0x00,0x00,0x00,0xc5,0xf8,0x57,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovss xmm1,dword ptr [rip+0bh]         ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[8]{c5 fa 10 0d 0b 00 00 00}
000dh vxorps xmm0,xmm0,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c1}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double negate(double src), hex://math/math?negate#negate_(64f)
; negate_(64f)[18] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfb,0x10,0x0d,0x0b,0x00,0x00,0x00,0xc5,0xf8,0x57,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovsd xmm1,qword ptr [rip+0bh]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[8]{c5 fb 10 0d 0b 00 00 00}
000dh vxorps xmm0,xmm0,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c1}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte pow(sbyte b, uint exp), hex://math/math?pow#pow_(8i,32u)
; pow_(8i,32u)[61] = {0x0f,0x1f,0x44,0x00,0x00,0x85,0xd2,0x75,0x06,0xb8,0x01,0x00,0x00,0x00,0xc3,0xb8,0x01,0x00,0x00,0x00,0xf6,0xc2,0x01,0x74,0x0c,0x4c,0x0f,0xbe,0xc1,0x41,0x0f,0xaf,0xc0,0x48,0x0f,0xbe,0xc0,0xd1,0xea,0x85,0xd2,0x74,0x11,0x4c,0x0f,0xbe,0xc1,0x41,0x8b,0xc8,0x41,0x0f,0xaf,0xc8,0x48,0x0f,0xbe,0xc9,0xeb,0xd8,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0007h jne short 000fh                         ; JNE rel8 || 75 cb || encoded[2]{75 06}
0009h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
000fh mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
0014h test dl,1                               ; TEST r/m8, imm8 || F6 /0 ib || encoded[3]{f6 c2 01}
0017h je short 0025h                          ; JE rel8 || 74 cb || encoded[2]{74 0c}
0019h movsx r8,cl                             ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c1}
001dh imul eax,r8d                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{41 0f af c0}
0021h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0025h shr edx,1                               ; SHR r/m32, 1 || o32 D1 /5 || encoded[2]{d1 ea}
0027h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0029h je short 003ch                          ; JE rel8 || 74 cb || encoded[2]{74 11}
002bh movsx r8,cl                             ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c1}
002fh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0032h imul ecx,r8d                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{41 0f af c8}
0036h movsx rcx,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c9}
003ah jmp short 0014h                         ; JMP rel8 || EB cb || encoded[2]{eb d8}
003ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte pow(byte b, uint exp), hex://math/math?pow#pow_(8u,32u)
; pow_(8u,32u)[59] = {0x0f,0x1f,0x44,0x00,0x00,0x85,0xd2,0x75,0x06,0xb8,0x01,0x00,0x00,0x00,0xc3,0xb8,0x01,0x00,0x00,0x00,0xf6,0xc2,0x01,0x74,0x0b,0x44,0x0f,0xb6,0xc1,0x41,0x0f,0xaf,0xc0,0x0f,0xb6,0xc0,0xd1,0xea,0x85,0xd2,0x74,0x10,0x44,0x0f,0xb6,0xc1,0x41,0x8b,0xc8,0x41,0x0f,0xaf,0xc8,0x0f,0xb6,0xc9,0xeb,0xda,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0007h jne short 000fh                         ; JNE rel8 || 75 cb || encoded[2]{75 06}
0009h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
000fh mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
0014h test dl,1                               ; TEST r/m8, imm8 || F6 /0 ib || encoded[3]{f6 c2 01}
0017h je short 0024h                          ; JE rel8 || 74 cb || encoded[2]{74 0b}
0019h movzx r8d,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{44 0f b6 c1}
001dh imul eax,r8d                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{41 0f af c0}
0021h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0024h shr edx,1                               ; SHR r/m32, 1 || o32 D1 /5 || encoded[2]{d1 ea}
0026h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0028h je short 003ah                          ; JE rel8 || 74 cb || encoded[2]{74 10}
002ah movzx r8d,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{44 0f b6 c1}
002eh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0031h imul ecx,r8d                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{41 0f af c8}
0035h movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
0038h jmp short 0014h                         ; JMP rel8 || EB cb || encoded[2]{eb da}
003ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short pow(short b, uint exp), hex://math/math?pow#pow_(16i,32u)
; pow_(16i,32u)[61] = {0x0f,0x1f,0x44,0x00,0x00,0x85,0xd2,0x75,0x06,0xb8,0x01,0x00,0x00,0x00,0xc3,0xb8,0x01,0x00,0x00,0x00,0xf6,0xc2,0x01,0x74,0x0c,0x4c,0x0f,0xbf,0xc1,0x41,0x0f,0xaf,0xc0,0x48,0x0f,0xbf,0xc0,0xd1,0xea,0x85,0xd2,0x74,0x11,0x4c,0x0f,0xbf,0xc1,0x41,0x8b,0xc8,0x41,0x0f,0xaf,0xc8,0x48,0x0f,0xbf,0xc9,0xeb,0xd8,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0007h jne short 000fh                         ; JNE rel8 || 75 cb || encoded[2]{75 06}
0009h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
000fh mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
0014h test dl,1                               ; TEST r/m8, imm8 || F6 /0 ib || encoded[3]{f6 c2 01}
0017h je short 0025h                          ; JE rel8 || 74 cb || encoded[2]{74 0c}
0019h movsx r8,cx                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c1}
001dh imul eax,r8d                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{41 0f af c0}
0021h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0025h shr edx,1                               ; SHR r/m32, 1 || o32 D1 /5 || encoded[2]{d1 ea}
0027h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0029h je short 003ch                          ; JE rel8 || 74 cb || encoded[2]{74 11}
002bh movsx r8,cx                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c1}
002fh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0032h imul ecx,r8d                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{41 0f af c8}
0036h movsx rcx,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c9}
003ah jmp short 0014h                         ; JMP rel8 || EB cb || encoded[2]{eb d8}
003ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort pow(ushort b, uint exp), hex://math/math?pow#pow_(16u,32u)
; pow_(16u,32u)[59] = {0x0f,0x1f,0x44,0x00,0x00,0x85,0xd2,0x75,0x06,0xb8,0x01,0x00,0x00,0x00,0xc3,0xb8,0x01,0x00,0x00,0x00,0xf6,0xc2,0x01,0x74,0x0b,0x44,0x0f,0xb7,0xc1,0x41,0x0f,0xaf,0xc0,0x0f,0xb7,0xc0,0xd1,0xea,0x85,0xd2,0x74,0x10,0x44,0x0f,0xb7,0xc1,0x41,0x8b,0xc8,0x41,0x0f,0xaf,0xc8,0x0f,0xb7,0xc9,0xeb,0xda,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0007h jne short 000fh                         ; JNE rel8 || 75 cb || encoded[2]{75 06}
0009h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
000fh mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
0014h test dl,1                               ; TEST r/m8, imm8 || F6 /0 ib || encoded[3]{f6 c2 01}
0017h je short 0024h                          ; JE rel8 || 74 cb || encoded[2]{74 0b}
0019h movzx r8d,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c1}
001dh imul eax,r8d                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{41 0f af c0}
0021h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0024h shr edx,1                               ; SHR r/m32, 1 || o32 D1 /5 || encoded[2]{d1 ea}
0026h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0028h je short 003ah                          ; JE rel8 || 74 cb || encoded[2]{74 10}
002ah movzx r8d,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c1}
002eh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0031h imul ecx,r8d                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{41 0f af c8}
0035h movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
0038h jmp short 0014h                         ; JMP rel8 || EB cb || encoded[2]{eb da}
003ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int pow(int b, uint exp), hex://math/math?pow#pow_(32i,32u)
; pow_(32i,32u)[40] = {0x0f,0x1f,0x44,0x00,0x00,0x85,0xd2,0x75,0x06,0xb8,0x01,0x00,0x00,0x00,0xc3,0xb8,0x01,0x00,0x00,0x00,0xf6,0xc2,0x01,0x74,0x03,0x0f,0xaf,0xc1,0xd1,0xea,0x85,0xd2,0x74,0x05,0x0f,0xaf,0xc9,0xeb,0xed,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0007h jne short 000fh                         ; JNE rel8 || 75 cb || encoded[2]{75 06}
0009h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
000fh mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
0014h test dl,1                               ; TEST r/m8, imm8 || F6 /0 ib || encoded[3]{f6 c2 01}
0017h je short 001ch                          ; JE rel8 || 74 cb || encoded[2]{74 03}
0019h imul eax,ecx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c1}
001ch shr edx,1                               ; SHR r/m32, 1 || o32 D1 /5 || encoded[2]{d1 ea}
001eh test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0020h je short 0027h                          ; JE rel8 || 74 cb || encoded[2]{74 05}
0022h imul ecx,ecx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c9}
0025h jmp short 0014h                         ; JMP rel8 || EB cb || encoded[2]{eb ed}
0027h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint pow(uint b, uint exp), hex://math/math?pow#pow_(32u,32u)
; pow_(32u,32u)[40] = {0x0f,0x1f,0x44,0x00,0x00,0x85,0xd2,0x75,0x06,0xb8,0x01,0x00,0x00,0x00,0xc3,0xb8,0x01,0x00,0x00,0x00,0xf6,0xc2,0x01,0x74,0x03,0x0f,0xaf,0xc1,0xd1,0xea,0x85,0xd2,0x74,0x05,0x0f,0xaf,0xc9,0xeb,0xed,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0007h jne short 000fh                         ; JNE rel8 || 75 cb || encoded[2]{75 06}
0009h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
000fh mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
0014h test dl,1                               ; TEST r/m8, imm8 || F6 /0 ib || encoded[3]{f6 c2 01}
0017h je short 001ch                          ; JE rel8 || 74 cb || encoded[2]{74 03}
0019h imul eax,ecx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c1}
001ch shr edx,1                               ; SHR r/m32, 1 || o32 D1 /5 || encoded[2]{d1 ea}
001eh test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0020h je short 0027h                          ; JE rel8 || 74 cb || encoded[2]{74 05}
0022h imul ecx,ecx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c9}
0025h jmp short 0014h                         ; JMP rel8 || EB cb || encoded[2]{eb ed}
0027h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long pow(long b, uint exp), hex://math/math?pow#pow_(64i,32u)
; pow_(64i,32u)[42] = {0x0f,0x1f,0x44,0x00,0x00,0x85,0xd2,0x75,0x06,0xb8,0x01,0x00,0x00,0x00,0xc3,0xb8,0x01,0x00,0x00,0x00,0xf6,0xc2,0x01,0x74,0x04,0x48,0x0f,0xaf,0xc1,0xd1,0xea,0x85,0xd2,0x74,0x06,0x48,0x0f,0xaf,0xc9,0xeb,0xeb,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0007h jne short 000fh                         ; JNE rel8 || 75 cb || encoded[2]{75 06}
0009h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
000fh mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
0014h test dl,1                               ; TEST r/m8, imm8 || F6 /0 ib || encoded[3]{f6 c2 01}
0017h je short 001dh                          ; JE rel8 || 74 cb || encoded[2]{74 04}
0019h imul rax,rcx                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af c1}
001dh shr edx,1                               ; SHR r/m32, 1 || o32 D1 /5 || encoded[2]{d1 ea}
001fh test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0021h je short 0029h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0023h imul rcx,rcx                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af c9}
0027h jmp short 0014h                         ; JMP rel8 || EB cb || encoded[2]{eb eb}
0029h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong pow(ulong b, uint exp), hex://math/math?pow#pow_(64u,32u)
; pow_(64u,32u)[42] = {0x0f,0x1f,0x44,0x00,0x00,0x85,0xd2,0x75,0x06,0xb8,0x01,0x00,0x00,0x00,0xc3,0xb8,0x01,0x00,0x00,0x00,0xf6,0xc2,0x01,0x74,0x04,0x48,0x0f,0xaf,0xc1,0xd1,0xea,0x85,0xd2,0x74,0x06,0x48,0x0f,0xaf,0xc9,0xeb,0xeb,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0007h jne short 000fh                         ; JNE rel8 || 75 cb || encoded[2]{75 06}
0009h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
000fh mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
0014h test dl,1                               ; TEST r/m8, imm8 || F6 /0 ib || encoded[3]{f6 c2 01}
0017h je short 001dh                          ; JE rel8 || 74 cb || encoded[2]{74 04}
0019h imul rax,rcx                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af c1}
001dh shr edx,1                               ; SHR r/m32, 1 || o32 D1 /5 || encoded[2]{d1 ea}
001fh test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0021h je short 0029h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0023h imul rcx,rcx                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af c9}
0027h jmp short 0014h                         ; JMP rel8 || EB cb || encoded[2]{eb eb}
0029h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong pow2(int exp), hex://math/math?pow2#pow2_(32i)
; pow2_(32i)[14] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x01,0x00,0x00,0x00,0x48,0xd3,0xe0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000ah shl rax,cl                              ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{48 d3 e0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong pow2m1(int exp), hex://math/math?pow2m1#pow2m1_(32i)
; pow2m1_(32i)[17] = {0x0f,0x1f,0x44,0x00,0x00,0xb8,0x01,0x00,0x00,0x00,0x48,0xd3,0xe0,0x48,0xff,0xc8,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000ah shl rax,cl                              ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{48 d3 e0}
000dh dec rax                                 ; DEC r/m64 || REX.W FF /1 || encoded[3]{48 ff c8}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Sign:int signum(sbyte src), hex://math/math?signum#signum_(8i)
; signum_(8i)[24] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbe,0xc1,0x8b,0xd0,0xf7,0xd2,0xff,0xc2,0xc1,0xea,0x1f,0xc1,0xf8,0x1f,0x0b,0xc2,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
000bh not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
000dh inc edx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c2}
000fh shr edx,1fh                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 ea 1f}
0012h sar eax,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 1f}
0015h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Sign:int signum(byte src), hex://math/math?signum#signum_(8u)
; signum_(8u)[21] = {0x0f,0x1f,0x44,0x00,0x00,0x84,0xc9,0x75,0x06,0xb8,0xff,0xff,0xff,0xff,0xc3,0xb8,0x01,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test cl,cl                              ; TEST r/m8, r8 || 84 /r || encoded[2]{84 c9}
0007h jne short 000fh                         ; JNE rel8 || 75 cb || encoded[2]{75 06}
0009h mov eax,0ffffffffh                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff ff ff}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
000fh mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Sign:int signum(short src), hex://math/math?signum#signum_(16i)
; signum_(16i)[24] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbf,0xc1,0x8b,0xd0,0xf7,0xd2,0xff,0xc2,0xc1,0xea,0x1f,0xc1,0xf8,0x1f,0x0b,0xc2,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
000bh not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
000dh inc edx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c2}
000fh shr edx,1fh                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 ea 1f}
0012h sar eax,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 1f}
0015h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Sign:int signum(ushort src), hex://math/math?signum#signum_(16u)
; signum_(16u)[24] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x85,0xc0,0x75,0x06,0xb8,0xff,0xff,0xff,0xff,0xc3,0xb8,0x01,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
000ah jne short 0012h                         ; JNE rel8 || 75 cb || encoded[2]{75 06}
000ch mov eax,0ffffffffh                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff ff ff}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
0012h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Sign:int signum(int src), hex://math/math?signum#signum_(32i)
; signum_(32i)[20] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0xf7,0xd0,0xff,0xc0,0xc1,0xe8,0x1f,0xc1,0xf9,0x1f,0x0b,0xc1,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0009h inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
000bh shr eax,1fh                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e8 1f}
000eh sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
0011h or eax,ecx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c1}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Sign:int signum(uint src), hex://math/math?signum#signum_(32u)
; signum_(32u)[21] = {0x0f,0x1f,0x44,0x00,0x00,0x85,0xc9,0x75,0x06,0xb8,0xff,0xff,0xff,0xff,0xc3,0xb8,0x01,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test ecx,ecx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c9}
0007h jne short 000fh                         ; JNE rel8 || 75 cb || encoded[2]{75 06}
0009h mov eax,0ffffffffh                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff ff ff}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
000fh mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Sign:int signum(long src), hex://math/math?signum#signum_(64i)
; signum_(64i)[27] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0x48,0xf7,0xd0,0x48,0xff,0xc0,0x48,0xc1,0xe8,0x3f,0x48,0xc1,0xf9,0x3f,0x8b,0xd1,0x0b,0xc2,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
000bh inc rax                                 ; INC r/m64 || REX.W FF /0 || encoded[3]{48 ff c0}
000eh shr rax,3fh                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 3f}
0012h sar rcx,3fh                             ; SAR r/m64, imm8 || REX.W C1 /7 ib || encoded[4]{48 c1 f9 3f}
0016h mov edx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d1}
0018h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Sign:int signum(ulong src), hex://math/math?signum#signum_(64u)
; signum_(64u)[22] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x85,0xc9,0x75,0x06,0xb8,0xff,0xff,0xff,0xff,0xc3,0xb8,0x01,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test rcx,rcx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c9}
0008h jne short 0010h                         ; JNE rel8 || 75 cb || encoded[2]{75 06}
000ah mov eax,0ffffffffh                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff ff ff}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
0010h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte square(sbyte src), hex://math/math?square#square_(8i)
; square_(8i)[17] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbe,0xc1,0x0f,0xaf,0xc0,0x48,0x0f,0xbe,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h imul eax,eax                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c0}
000ch movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte square(byte src), hex://math/math?square#square_(8u)
; square_(8u)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x0f,0xaf,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h imul eax,eax                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short square(short src), hex://math/math?square#square_(16i)
; square_(16i)[17] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbf,0xc1,0x0f,0xaf,0xc0,0x48,0x0f,0xbf,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h imul eax,eax                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c0}
000ch movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort square(ushort src), hex://math/math?square#square_(16u)
; square_(16u)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x0f,0xaf,0xc0,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h imul eax,eax                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c0}
000bh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int square(int src), hex://math/math?square#square_(32i)
; square_(32i)[11] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0x0f,0xaf,0xc1,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h imul eax,ecx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c1}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint square(uint src), hex://math/math?square#square_(32u)
; square_(32u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0x0f,0xaf,0xc1,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h imul eax,ecx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c1}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long square(long src), hex://math/math?square#square_(64i)
; square_(64i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0x48,0x0f,0xaf,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h imul rax,rcx                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af c1}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong square(ulong src), hex://math/math?square#square_(64u)
; square_(64u)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0x48,0x0f,0xaf,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h imul rax,rcx                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af c1}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte sub(sbyte a, sbyte b), hex://math/math?sub#sub_(8i,8i)
; sub_(8i,8i)[20] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbe,0xc1,0x48,0x0f,0xbe,0xd2,0x2b,0xc2,0x48,0x0f,0xbe,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
000dh sub eax,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c2}
000fh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte sub(byte a, byte b), hex://math/math?sub#sub_(8u,8u)
; sub_(8u,8u)[17] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x0f,0xb6,0xd2,0x2b,0xc2,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh sub eax,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c2}
000dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short sub(short a, short b), hex://math/math?sub#sub_(16i,16i)
; sub_(16i,16i)[20] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbf,0xc1,0x48,0x0f,0xbf,0xd2,0x2b,0xc2,0x48,0x0f,0xbf,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
000dh sub eax,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c2}
000fh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort sub(ushort a, ushort b), hex://math/math?sub#sub_(16u,16u)
; sub_(16u,16u)[17] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x0f,0xb7,0xd2,0x2b,0xc2,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh sub eax,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c2}
000dh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int sub(int a, int b), hex://math/math?sub#sub_(32i,32i)
; sub_(32i,32i)[10] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0x2b,0xc2,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h sub eax,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c2}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint sub(uint a, uint b), hex://math/math?sub#sub_(32u,32u)
; sub_(32u,32u)[10] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0x2b,0xc2,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h sub eax,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c2}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long sub(long a, long b), hex://math/math?sub#sub_(64i,64i)
; sub_(64i,64i)[12] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0x48,0x2b,0xc2,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h sub rax,rdx                             ; SUB r64, r/m64 || REX.W 2B /r || encoded[3]{48 2b c2}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong sub(ulong a, ulong b), hex://math/math?sub#sub_(64u,64u)
; sub_(64u,64u)[12] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0x48,0x2b,0xc2,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h sub rax,rdx                             ; SUB r64, r/m64 || REX.W 2B /r || encoded[3]{48 2b c2}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte and(sbyte a, sbyte b), hex://math/math?and#and_(8i,8i)
; and_(8i,8i)[20] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbe,0xc1,0x48,0x0f,0xbe,0xd2,0x23,0xc2,0x48,0x0f,0xbe,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
000dh and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
000fh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte and(byte a, byte b), hex://math/math?and#and_(8u,8u)
; and_(8u,8u)[17] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x0f,0xb6,0xd2,0x23,0xc2,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
000dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short and(short a, short b), hex://math/math?and#and_(16i,16i)
; and_(16i,16i)[20] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbf,0xc1,0x48,0x0f,0xbf,0xd2,0x23,0xc2,0x48,0x0f,0xbf,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
000dh and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
000fh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort and(ushort a, ushort b), hex://math/math?and#and_(16u,16u)
; and_(16u,16u)[17] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x0f,0xb7,0xd2,0x23,0xc2,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
000dh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int and(int a, int b), hex://math/math?and#and_(32i,32i)
; and_(32i,32i)[10] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0x23,0xc2,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint and(uint a, uint b), hex://math/math?and#and_(32u,32u)
; and_(32u,32u)[10] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0x23,0xc2,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long and(long a, long b), hex://math/math?and#and_(64i,64i)
; and_(64i,64i)[12] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0x48,0x23,0xc2,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong and(ulong a, ulong b), hex://math/math?and#and_(64u,64u)
; and_(64u,64u)[12] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0x48,0x23,0xc2,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte cimpl(sbyte a, sbyte b), hex://math/math?cimpl#cimpl_(8i,8i)
; cimpl_(8i,8i)[26] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbe,0xc1,0xf7,0xd0,0x48,0x0f,0xbe,0xc0,0x48,0x0f,0xbe,0xd2,0x0b,0xc2,0x48,0x0f,0xbe,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000bh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
000fh movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
0013h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0015h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte cimpl(byte a, byte b), hex://math/math?cimpl#cimpl_(8u,8u)
; cimpl_(8u,8u)[19] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0xf7,0xd0,0x0f,0xb6,0xd2,0x0b,0xc2,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000ah movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000dh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
000fh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short cimpl(short a, short b), hex://math/math?cimpl#cimpl_(16i,16i)
; cimpl_(16i,16i)[26] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbf,0xc1,0xf7,0xd0,0x48,0x0f,0xbf,0xc0,0x48,0x0f,0xbf,0xd2,0x0b,0xc2,0x48,0x0f,0xbf,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000bh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
000fh movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
0013h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0015h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort cimpl(ushort a, ushort b), hex://math/math?cimpl#cimpl_(16u,16u)
; cimpl_(16u,16u)[19] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0xf7,0xd0,0x0f,0xb7,0xd2,0x0b,0xc2,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000ah movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000dh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
000fh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int cimpl(int a, int b), hex://math/math?cimpl#cimpl_(32i,32i)
; cimpl_(32i,32i)[12] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0xf7,0xd0,0x0b,0xc2,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0009h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint cimpl(uint a, uint b), hex://math/math?cimpl#cimpl_(32u,32u)
; cimpl_(32u,32u)[12] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0xf7,0xd0,0x0b,0xc2,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0009h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long cimpl(long a, long b), hex://math/math?cimpl#cimpl_(64i,64i)
; cimpl_(64i,64i)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0x48,0xf7,0xd0,0x48,0x0b,0xc2,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
000bh or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong cimpl(ulong a, ulong b), hex://math/math?cimpl#cimpl_(64u,64u)
; cimpl_(64u,64u)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0x48,0xf7,0xd0,0x48,0x0b,0xc2,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
000bh or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte cnonimpl(sbyte a, sbyte b), hex://math/math?cnonimpl#cnonimpl_(8i,8i)
; cnonimpl_(8i,8i)[23] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbe,0xc2,0x48,0x0f,0xbe,0xd1,0xc4,0xe2,0x78,0xf2,0xc2,0x48,0x0f,0xbe,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
0009h movsx rdx,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d1}
000dh andn eax,eax,edx                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 78 f2 c2}
0012h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte cnonimpl(byte a, byte b), hex://math/math?cnonimpl#cnonimpl_(8u,8u)
; cnonimpl_(8u,8u)[20] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc2,0x0f,0xb6,0xd1,0xc4,0xe2,0x78,0xf2,0xc2,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0008h movzx edx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d1}
000bh andn eax,eax,edx                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 78 f2 c2}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short cnonimpl(short a, short b), hex://math/math?cnonimpl#cnonimpl_(16i,16i)
; cnonimpl_(16i,16i)[23] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbf,0xc2,0x48,0x0f,0xbf,0xd1,0xc4,0xe2,0x78,0xf2,0xc2,0x48,0x0f,0xbf,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c2}
0009h movsx rdx,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d1}
000dh andn eax,eax,edx                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 78 f2 c2}
0012h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort cnonimpl(ushort a, ushort b), hex://math/math?cnonimpl#cnonimpl_(16u,16u)
; cnonimpl_(16u,16u)[20] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc2,0x0f,0xb7,0xd1,0xc4,0xe2,0x78,0xf2,0xc2,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
0008h movzx edx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d1}
000bh andn eax,eax,edx                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 78 f2 c2}
0010h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int cnonimpl(int a, int b), hex://math/math?cnonimpl#cnonimpl_(32i,32i)
; cnonimpl_(32i,32i)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xc4,0xe2,0x68,0xf2,0xc1,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h andn eax,edx,ecx                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 68 f2 c1}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint cnonimpl(uint a, uint b), hex://math/math?cnonimpl#cnonimpl_(32u,32u)
; cnonimpl_(32u,32u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xc4,0xe2,0x68,0xf2,0xc1,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h andn eax,edx,ecx                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 68 f2 c1}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long cnonimpl(long a, long b), hex://math/math?cnonimpl#cnonimpl_(64i,64i)
; cnonimpl_(64i,64i)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xc4,0xe2,0xe8,0xf2,0xc1,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h andn rax,rdx,rcx                        ; ANDN r64a, r64b, r/m64 || VEX.LZ.0F38.W1 F2 /r || encoded[5]{c4 e2 e8 f2 c1}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong cnonimpl(ulong a, ulong b), hex://math/math?cnonimpl#cnonimpl_(64u,64u)
; cnonimpl_(64u,64u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xc4,0xe2,0xe8,0xf2,0xc1,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h andn rax,rdx,rcx                        ; ANDN r64a, r64b, r/m64 || VEX.LZ.0F38.W1 F2 /r || encoded[5]{c4 e2 e8 f2 c1}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte impl(sbyte a, sbyte b), hex://math/math?impl#impl_(8i,8i)
; impl_(8i,8i)[22] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbe,0xc2,0xf7,0xd0,0x48,0x0f,0xbe,0xd1,0x0b,0xc2,0x48,0x0f,0xbe,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
0009h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000bh movsx rdx,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d1}
000fh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0011h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte impl(byte a, byte b), hex://math/math?impl#impl_(8u,8u)
; impl_(8u,8u)[19] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc2,0xf7,0xd0,0x0f,0xb6,0xd1,0x0b,0xc2,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0008h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000ah movzx edx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d1}
000dh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
000fh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short impl(short a, short b), hex://math/math?impl#impl_(16i,16i)
; impl_(16i,16i)[22] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbf,0xc2,0xf7,0xd0,0x48,0x0f,0xbf,0xd1,0x0b,0xc2,0x48,0x0f,0xbf,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c2}
0009h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000bh movsx rdx,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d1}
000fh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0011h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort impl(ushort a, ushort b), hex://math/math?impl#impl_(16u,16u)
; impl_(16u,16u)[19] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc2,0xf7,0xd0,0x0f,0xb7,0xd1,0x0b,0xc2,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
0008h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000ah movzx edx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d1}
000dh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
000fh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int impl(int a, int b), hex://math/math?impl#impl_(32i,32i)
; impl_(32i,32i)[12] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc2,0xf7,0xd0,0x0b,0xc1,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0009h or eax,ecx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c1}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint impl(uint a, uint b), hex://math/math?impl#impl_(32u,32u)
; impl_(32u,32u)[12] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc2,0xf7,0xd0,0x0b,0xc1,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0009h or eax,ecx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c1}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long impl(long a, long b), hex://math/math?impl#impl_(64i,64i)
; impl_(64i,64i)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc2,0x48,0xf7,0xd0,0x48,0x0b,0xc1,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0008h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
000bh or rax,rcx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c1}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong impl(ulong a, ulong b), hex://math/math?impl#impl_(64u,64u)
; impl_(64u,64u)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc2,0x48,0xf7,0xd0,0x48,0x0b,0xc1,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0008h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
000bh or rax,rcx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c1}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte nand(sbyte a, sbyte b), hex://math/math?nand#nand_(8i,8i)
; nand_(8i,8i)[26] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbe,0xc1,0x48,0x0f,0xbe,0xd2,0x23,0xc2,0x48,0x0f,0xbe,0xc0,0xf7,0xd0,0x48,0x0f,0xbe,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
000dh and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
000fh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0013h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0015h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte nand(byte a, byte b), hex://math/math?nand#nand_(8u,8u)
; nand_(8u,8u)[22] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x0f,0xb6,0xd2,0x23,0xc2,0x0f,0xb6,0xc0,0xf7,0xd0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
000dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0010h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0012h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short nand(short a, short b), hex://math/math?nand#nand_(16i,16i)
; nand_(16i,16i)[26] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbf,0xc1,0x48,0x0f,0xbf,0xd2,0x23,0xc2,0x48,0x0f,0xbf,0xc0,0xf7,0xd0,0x48,0x0f,0xbf,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
000dh and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
000fh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0013h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0015h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort nand(ushort a, ushort b), hex://math/math?nand#nand_(16u,16u)
; nand_(16u,16u)[22] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x0f,0xb7,0xd2,0x23,0xc2,0x0f,0xb7,0xc0,0xf7,0xd0,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
000dh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0010h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0012h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int nand(int a, int b), hex://math/math?nand#nand_(32i,32i)
; nand_(32i,32i)[12] = {0x0f,0x1f,0x44,0x00,0x00,0x23,0xd1,0x8b,0xc2,0xf7,0xd0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h and edx,ecx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 d1}
0007h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0009h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint nand(uint a, uint b), hex://math/math?nand#nand_(32u,32u)
; nand_(32u,32u)[12] = {0x0f,0x1f,0x44,0x00,0x00,0x23,0xd1,0x8b,0xc2,0xf7,0xd0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h and edx,ecx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 d1}
0007h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0009h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long nand(long a, long b), hex://math/math?nand#nand_(64i,64i)
; nand_(64i,64i)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x23,0xd1,0x48,0x8b,0xc2,0x48,0xf7,0xd0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h and rdx,rcx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 d1}
0008h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
000bh not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong nand(ulong a, ulong b), hex://math/math?nand#nand_(64u,64u)
; nand_(64u,64u)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x23,0xd1,0x48,0x8b,0xc2,0x48,0xf7,0xd0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h and rdx,rcx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 d1}
0008h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
000bh not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte nonimpl(sbyte a, sbyte b), hex://math/math?nonimpl#nonimpl_(8i,8i)
; nonimpl_(8i,8i)[23] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbe,0xc1,0x48,0x0f,0xbe,0xd2,0xc4,0xe2,0x78,0xf2,0xc2,0x48,0x0f,0xbe,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
000dh andn eax,eax,edx                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 78 f2 c2}
0012h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte nonimpl(byte a, byte b), hex://math/math?nonimpl#nonimpl_(8u,8u)
; nonimpl_(8u,8u)[20] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x0f,0xb6,0xd2,0xc4,0xe2,0x78,0xf2,0xc2,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh andn eax,eax,edx                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 78 f2 c2}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short nonimpl(short a, short b), hex://math/math?nonimpl#nonimpl_(16i,16i)
; nonimpl_(16i,16i)[23] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbf,0xc1,0x48,0x0f,0xbf,0xd2,0xc4,0xe2,0x78,0xf2,0xc2,0x48,0x0f,0xbf,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
000dh andn eax,eax,edx                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 78 f2 c2}
0012h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort nonimpl(ushort a, ushort b), hex://math/math?nonimpl#nonimpl_(16u,16u)
; nonimpl_(16u,16u)[20] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x0f,0xb7,0xd2,0xc4,0xe2,0x78,0xf2,0xc2,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh andn eax,eax,edx                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 78 f2 c2}
0010h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int nonimpl(int a, int b), hex://math/math?nonimpl#nonimpl_(32i,32i)
; nonimpl_(32i,32i)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xc4,0xe2,0x70,0xf2,0xc2,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h andn eax,ecx,edx                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 70 f2 c2}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint nonimpl(uint a, uint b), hex://math/math?nonimpl#nonimpl_(32u,32u)
; nonimpl_(32u,32u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xc4,0xe2,0x70,0xf2,0xc2,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h andn eax,ecx,edx                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 70 f2 c2}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long nonimpl(long a, long b), hex://math/math?nonimpl#nonimpl_(64i,64i)
; nonimpl_(64i,64i)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xc4,0xe2,0xf0,0xf2,0xc2,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h andn rax,rcx,rdx                        ; ANDN r64a, r64b, r/m64 || VEX.LZ.0F38.W1 F2 /r || encoded[5]{c4 e2 f0 f2 c2}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong nonimpl(ulong a, ulong b), hex://math/math?nonimpl#nonimpl_(64u,64u)
; nonimpl_(64u,64u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0xc4,0xe2,0xf0,0xf2,0xc2,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h andn rax,rcx,rdx                        ; ANDN r64a, r64b, r/m64 || VEX.LZ.0F38.W1 F2 /r || encoded[5]{c4 e2 f0 f2 c2}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte nor(sbyte a, sbyte b), hex://math/math?nor#nor_(8i,8i)
; nor_(8i,8i)[26] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbe,0xc1,0x48,0x0f,0xbe,0xd2,0x0b,0xc2,0x48,0x0f,0xbe,0xc0,0xf7,0xd0,0x48,0x0f,0xbe,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
000dh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
000fh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0013h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0015h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte nor(byte a, byte b), hex://math/math?nor#nor_(8u,8u)
; nor_(8u,8u)[22] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x0f,0xb6,0xd2,0x0b,0xc2,0x0f,0xb6,0xc0,0xf7,0xd0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
000dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0010h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0012h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short nor(short a, short b), hex://math/math?nor#nor_(16i,16i)
; nor_(16i,16i)[26] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbf,0xc1,0x48,0x0f,0xbf,0xd2,0x0b,0xc2,0x48,0x0f,0xbf,0xc0,0xf7,0xd0,0x48,0x0f,0xbf,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
000dh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
000fh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0013h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0015h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort nor(ushort a, ushort b), hex://math/math?nor#nor_(16u,16u)
; nor_(16u,16u)[22] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x0f,0xb7,0xd2,0x0b,0xc2,0x0f,0xb7,0xc0,0xf7,0xd0,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
000dh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0010h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0012h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int nor(int a, int b), hex://math/math?nor#nor_(32i,32i)
; nor_(32i,32i)[12] = {0x0f,0x1f,0x44,0x00,0x00,0x0b,0xd1,0x8b,0xc2,0xf7,0xd0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h or edx,ecx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b d1}
0007h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0009h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint nor(uint a, uint b), hex://math/math?nor#nor_(32u,32u)
; nor_(32u,32u)[12] = {0x0f,0x1f,0x44,0x00,0x00,0x0b,0xd1,0x8b,0xc2,0xf7,0xd0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h or edx,ecx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b d1}
0007h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0009h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long nor(long a, long b), hex://math/math?nor#nor_(64i,64i)
; nor_(64i,64i)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0b,0xd1,0x48,0x8b,0xc2,0x48,0xf7,0xd0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h or rdx,rcx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b d1}
0008h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
000bh not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong nor(ulong a, ulong b), hex://math/math?nor#nor_(64u,64u)
; nor_(64u,64u)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0b,0xd1,0x48,0x8b,0xc2,0x48,0xf7,0xd0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h or rdx,rcx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b d1}
0008h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
000bh not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte not(sbyte src), hex://math/math?not#not_(8i)
; not_(8i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbe,0xc1,0xf7,0xd0,0x48,0x0f,0xbe,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000bh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte not(byte src), hex://math/math?not#not_(8u)
; not_(8u)[14] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0xf7,0xd0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short not(short src), hex://math/math?not#not_(16i)
; not_(16i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbf,0xc1,0xf7,0xd0,0x48,0x0f,0xbf,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000bh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort not(ushort src), hex://math/math?not#not_(16u)
; not_(16u)[14] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0xf7,0xd0,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000ah movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int not(int src), hex://math/math?not#not_(32i)
; not_(32i)[10] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0xf7,0xd0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint not(uint src), hex://math/math?not#not_(32u)
; not_(32u)[10] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0xf7,0xd0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long not(long src), hex://math/math?not#not_(64i)
; not_(64i)[12] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0x48,0xf7,0xd0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong not(ulong src), hex://math/math?not#not_(64u)
; not_(64u)[12] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0x48,0xf7,0xd0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte or(sbyte a, sbyte b), hex://math/math?or#or_(8i,8i)
; or_(8i,8i)[20] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbe,0xc1,0x48,0x0f,0xbe,0xd2,0x0b,0xc2,0x48,0x0f,0xbe,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
000dh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
000fh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte or(byte a, byte b), hex://math/math?or#or_(8u,8u)
; or_(8u,8u)[17] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x0f,0xb6,0xd2,0x0b,0xc2,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
000dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short or(short a, short b), hex://math/math?or#or_(16i,16i)
; or_(16i,16i)[20] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbf,0xc1,0x48,0x0f,0xbf,0xd2,0x0b,0xc2,0x48,0x0f,0xbf,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
000dh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
000fh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort or(ushort a, ushort b), hex://math/math?or#or_(16u,16u)
; or_(16u,16u)[17] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x0f,0xb7,0xd2,0x0b,0xc2,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
000dh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int or(int a, int b), hex://math/math?or#or_(32i,32i)
; or_(32i,32i)[10] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0x0b,0xc2,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint or(uint a, uint b), hex://math/math?or#or_(32u,32u)
; or_(32u,32u)[10] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0x0b,0xc2,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long or(long a, long b), hex://math/math?or#or_(64i,64i)
; or_(64i,64i)[12] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0x48,0x0b,0xc2,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong or(ulong a, ulong b), hex://math/math?or#or_(64u,64u)
; or_(64u,64u)[12] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0x48,0x0b,0xc2,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte or(sbyte a, sbyte b, sbyte c), hex://math/math?or#or_(8i,8i,8i)
; or_(8i,8i,8i)[26] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbe,0xc1,0x48,0x0f,0xbe,0xd2,0x0b,0xc2,0x49,0x0f,0xbe,0xd0,0x0b,0xc2,0x48,0x0f,0xbe,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
000dh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
000fh movsx rdx,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be d0}
0013h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0015h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte or(byte a, byte b, byte c), hex://math/math?or#or_(8u,8u,8u)
; or_(8u,8u,8u)[23] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x0f,0xb6,0xd2,0x0b,0xc2,0x41,0x0f,0xb6,0xd0,0x0b,0xc2,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
000dh movzx edx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d0}
0011h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0013h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short or(short a, short b, short c), hex://math/math?or#or_(16i,16i,16i)
; or_(16i,16i,16i)[26] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbf,0xc1,0x48,0x0f,0xbf,0xd2,0x0b,0xc2,0x49,0x0f,0xbf,0xd0,0x0b,0xc2,0x48,0x0f,0xbf,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
000dh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
000fh movsx rdx,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf d0}
0013h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0015h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort or(ushort a, ushort b, ushort c), hex://math/math?or#or_(16u,16u,16u)
; or_(16u,16u,16u)[23] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x0f,0xb7,0xd2,0x0b,0xc2,0x41,0x0f,0xb7,0xd0,0x0b,0xc2,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
000dh movzx edx,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 d0}
0011h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0013h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int or(int a, int b, int c), hex://math/math?or#or_(32i,32i,32i)
; or_(32i,32i,32i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0x0b,0xc2,0x41,0x0b,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0009h or eax,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c0}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte abs(sbyte a), hex://math/math?abs#abs_(8i)
; abs_(8i)[23] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbe,0xc1,0x8b,0xd0,0xc1,0xfa,0x07,0x03,0xc2,0x33,0xc2,0x48,0x0f,0xbe,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
000bh sar edx,7                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 07}
000eh add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
0010h xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
0012h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short abs(short a), hex://math/math?abs#abs_(16i)
; abs_(16i)[23] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbf,0xc1,0x8b,0xd0,0xc1,0xfa,0x0f,0x03,0xc2,0x33,0xc2,0x48,0x0f,0xbf,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
000bh sar edx,0fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 0f}
000eh add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
0010h xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
0012h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int abs(int a), hex://math/math?abs#abs_(32i)
; abs_(32i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0xc1,0xf8,0x1f,0x8d,0x14,0x01,0x33,0xc2,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h sar eax,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 1f}
000ah lea edx,[rcx+rax]                       ; LEA r32, m || o32 8D /r || encoded[3]{8d 14 01}
000dh xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long abs(long a), hex://math/math?abs#abs_(64i)
; abs_(64i)[20] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0x48,0xc1,0xf8,0x3f,0x48,0x8d,0x14,0x01,0x48,0x33,0xc2,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h sar rax,3fh                             ; SAR r/m64, imm8 || REX.W C1 /7 ib || encoded[4]{48 c1 f8 3f}
000ch lea rdx,[rcx+rax]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 14 01}
0010h xor rax,rdx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 c2}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte add(sbyte a, sbyte b), hex://math/math?add#add_(8i,8i)
; add_(8i,8i)[20] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbe,0xc1,0x48,0x0f,0xbe,0xd2,0x03,0xc2,0x48,0x0f,0xbe,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
000dh add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
000fh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte add(byte a, byte b), hex://math/math?add#add_(8u,8u)
; add_(8u,8u)[17] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x0f,0xb6,0xd2,0x03,0xc2,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
000dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short add(short a, short b), hex://math/math?add#add_(16i,16i)
; add_(16i,16i)[20] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbf,0xc1,0x48,0x0f,0xbf,0xd2,0x03,0xc2,0x48,0x0f,0xbf,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
000dh add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
000fh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort add(ushort a, ushort b), hex://math/math?add#add_(16u,16u)
; add_(16u,16u)[17] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x0f,0xb7,0xd2,0x03,0xc2,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
000dh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int add(int a, int b), hex://math/math?add#add_(32i,32i)
; add_(32i,32i)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x8d,0x04,0x11,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h lea eax,[rcx+rdx]                       ; LEA r32, m || o32 8D /r || encoded[3]{8d 04 11}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint add(uint a, uint b), hex://math/math?add#add_(32u,32u)
; add_(32u,32u)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x8d,0x04,0x11,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h lea eax,[rcx+rdx]                       ; LEA r32, m || o32 8D /r || encoded[3]{8d 04 11}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long add(long a, long b), hex://math/math?add#add_(64i,64i)
; add_(64i,64i)[10] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8d,0x04,0x11,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h lea rax,[rcx+rdx]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 11}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong add(ulong a, ulong b), hex://math/math?add#add_(64u,64u)
; add_(64u,64u)[10] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8d,0x04,0x11,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h lea rax,[rcx+rdx]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 11}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte avgz(byte a, byte b), hex://math/math?avgz#avgz_(8u,8u)
; avgz_(8u,8u)[25] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x0f,0xb6,0xd2,0x8b,0xc8,0x23,0xca,0x33,0xc2,0xd1,0xf8,0x03,0xc1,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
000dh and ecx,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 ca}
000fh xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
0011h sar eax,1                               ; SAR r/m32, 1 || o32 D1 /7 || encoded[2]{d1 f8}
0013h add eax,ecx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c1}
0015h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort avgz(ushort a, ushort b), hex://math/math?avgz#avgz_(16u,16u)
; avgz_(16u,16u)[25] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x0f,0xb7,0xd2,0x8b,0xc8,0x23,0xca,0x33,0xc2,0xd1,0xf8,0x03,0xc1,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
000dh and ecx,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 ca}
000fh xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
0011h sar eax,1                               ; SAR r/m32, 1 || o32 D1 /7 || encoded[2]{d1 f8}
0013h add eax,ecx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c1}
0015h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint avgz(uint a, uint b), hex://math/math?avgz#avgz_(32u,32u)
; avgz_(32u,32u)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0x23,0xc2,0x33,0xd1,0xd1,0xea,0x03,0xc2,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0009h xor edx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d1}
000bh shr edx,1                               ; SHR r/m32, 1 || o32 D1 /5 || encoded[2]{d1 ea}
000dh add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong avgz(ulong a, ulong b), hex://math/math?avgz#avgz_(64u,64u)
; avgz_(64u,64u)[21] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0x48,0x23,0xc2,0x48,0x33,0xd1,0x48,0xd1,0xea,0x48,0x03,0xc2,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
000bh xor rdx,rcx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 d1}
000eh shr rdx,1                               ; SHR r/m64, 1 || REX.W D1 /5 || encoded[3]{48 d1 ea}
0011h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte avgi(byte a, byte b), hex://math/math?avgi#avgi_(8u,8u)
; avgi_(8u,8u)[25] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x0f,0xb6,0xd2,0x8b,0xc8,0x0b,0xca,0x33,0xc2,0xd1,0xf8,0x2b,0xc8,0x0f,0xb6,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
000dh or ecx,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b ca}
000fh xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
0011h sar eax,1                               ; SAR r/m32, 1 || o32 D1 /7 || encoded[2]{d1 f8}
0013h sub ecx,eax                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c8}
0015h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort avgi(ushort a, ushort b), hex://math/math?avgi#avgi_(16u,16u)
; avgi_(16u,16u)[25] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x0f,0xb7,0xd2,0x8b,0xc8,0x0b,0xca,0x33,0xc2,0xd1,0xf8,0x2b,0xc8,0x0f,0xb7,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
000dh or ecx,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b ca}
000fh xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
0011h sar eax,1                               ; SAR r/m32, 1 || o32 D1 /7 || encoded[2]{d1 f8}
0013h sub ecx,eax                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c8}
0015h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint avgi(uint a, uint b), hex://math/math?avgi#avgi_(32u,32u)
; avgi_(32u,32u)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0x0b,0xc2,0x33,0xd1,0xd1,0xea,0x2b,0xc2,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0009h xor edx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d1}
000bh shr edx,1                               ; SHR r/m32, 1 || o32 D1 /5 || encoded[2]{d1 ea}
000dh sub eax,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c2}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong avgi(ulong a, ulong b), hex://math/math?avgi#avgi_(64u,64u)
; avgi_(64u,64u)[21] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0x48,0x0b,0xc2,0x48,0x33,0xd1,0x48,0xd1,0xea,0x48,0x2b,0xc2,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
000bh xor rdx,rcx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 d1}
000eh shr rdx,1                               ; SHR r/m64, 1 || REX.W D1 /5 || encoded[3]{48 d1 ea}
0011h sub rax,rdx                             ; SUB r64, r/m64 || REX.W 2B /r || encoded[3]{48 2b c2}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte clamp(sbyte src, sbyte max), hex://math/math?clamp#clamp_(8i,8i)
; clamp_(8i,8i)[21] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbe,0xc1,0x48,0x0f,0xbe,0xd2,0x3b,0xc2,0x7f,0x01,0xc3,0x8b,0xc2,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
000dh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000fh jg short 0012h                          ; JG rel8 || 7F cb || encoded[2]{7f 01}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
0012h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte clamp(byte src, byte max), hex://math/math?clamp#clamp_(8u,8u)
; clamp_(8u,8u)[19] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x0f,0xb6,0xd2,0x3b,0xc2,0x7f,0x01,0xc3,0x8b,0xc2,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000dh jg short 0010h                          ; JG rel8 || 7F cb || encoded[2]{7f 01}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
0010h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short clamp(short src, short max), hex://math/math?clamp#clamp_(16i,16i)
; clamp_(16i,16i)[21] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbf,0xc1,0x48,0x0f,0xbf,0xd2,0x3b,0xc2,0x7f,0x01,0xc3,0x8b,0xc2,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
000dh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000fh jg short 0012h                          ; JG rel8 || 7F cb || encoded[2]{7f 01}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
0012h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort clamp(ushort src, ushort max), hex://math/math?clamp#clamp_(16u,16u)
; clamp_(16u,16u)[19] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x0f,0xb7,0xd2,0x3b,0xc2,0x7f,0x01,0xc3,0x8b,0xc2,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000dh jg short 0010h                          ; JG rel8 || 7F cb || encoded[2]{7f 01}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
0010h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int clamp(int src, int max), hex://math/math?clamp#clamp_(32i,32i)
; clamp_(32i,32i)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x3b,0xca,0x7f,0x03,0x8b,0xc1,0xc3,0x8b,0xc2,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp ecx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b ca}
0007h jg short 000ch                          ; JG rel8 || 7F cb || encoded[2]{7f 03}
0009h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
000ch mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint clamp(uint src, uint max), hex://math/math?clamp#clamp_(32u,32u)
; clamp_(32u,32u)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x3b,0xca,0x77,0x03,0x8b,0xc1,0xc3,0x8b,0xc2,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp ecx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b ca}
0007h ja short 000ch                          ; JA rel8 || 77 cb || encoded[2]{77 03}
0009h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
000ch mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long clamp(long src, long max), hex://math/math?clamp#clamp_(64i,64i)
; clamp_(64i,64i)[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x3b,0xca,0x7f,0x04,0x48,0x8b,0xc1,0xc3,0x48,0x8b,0xc2,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp rcx,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b ca}
0008h jg short 000eh                          ; JG rel8 || 7F cb || encoded[2]{7f 04}
000ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
000eh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong clamp(ulong src, ulong max), hex://math/math?clamp#clamp_(64u,64u)
; clamp_(64u,64u)[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x3b,0xca,0x77,0x04,0x48,0x8b,0xc1,0xc3,0x48,0x8b,0xc2,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp rcx,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b ca}
0008h ja short 000eh                          ; JA rel8 || 77 cb || encoded[2]{77 04}
000ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
000eh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte dec(sbyte src), hex://math/math?dec#dec_(8i)
; dec_(8i)[20] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbe,0xc1,0xff,0xc8,0x48,0x0f,0xbe,0xc0,0x48,0x0f,0xbe,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
000bh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
000fh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte dec(byte src), hex://math/math?dec#dec_(8u)
; dec_(8u)[17] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0xff,0xc8,0x0f,0xb6,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short dec(short src), hex://math/math?dec#dec_(16i)
; dec_(16i)[20] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbf,0xc1,0xff,0xc8,0x48,0x0f,0xbf,0xc0,0x48,0x0f,0xbf,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
000bh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
000fh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort dec(ushort src), hex://math/math?dec#dec_(16u)
; dec_(16u)[17] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0xff,0xc8,0x0f,0xb7,0xc0,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
000ah movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
000dh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int dec(int src), hex://math/math?dec#dec_(32i)
; dec_(32i)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x8d,0x41,0xff,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h lea eax,[rcx-1]                         ; LEA r32, m || o32 8D /r || encoded[3]{8d 41 ff}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint dec(uint src), hex://math/math?dec#dec_(32u)
; dec_(32u)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x8d,0x41,0xff,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h lea eax,[rcx-1]                         ; LEA r32, m || o32 8D /r || encoded[3]{8d 41 ff}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long dec(long src), hex://math/math?dec#dec_(64i)
; dec_(64i)[10] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8d,0x41,0xff,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h lea rax,[rcx-1]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 41 ff}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong dec(ulong src), hex://math/math?dec#dec_(64u)
; dec_(64u)[10] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8d,0x41,0xff,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h lea rax,[rcx-1]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 41 ff}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong dist(byte a, byte b), hex://math/math?dist#dist_(8u,8u)
; dist_(8u,8u)[27] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc9,0x0f,0xb6,0xd2,0x3b,0xca,0x7d,0x06,0x2b,0xd1,0x48,0x63,0xc2,0xc3,0x2b,0xca,0x48,0x63,0xc1,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh cmp ecx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b ca}
000dh jge short 0015h                         ; JGE rel8 || 7D cb || encoded[2]{7d 06}
000fh sub edx,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d1}
0011h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
0015h sub ecx,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b ca}
0017h movsxd rax,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c1}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong dist(sbyte a, sbyte b), hex://math/math?dist#dist_(8i,8i)
; dist_(8i,8i)[29] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbe,0xc9,0x48,0x0f,0xbe,0xd2,0x3b,0xca,0x7d,0x06,0x2b,0xd1,0x48,0x63,0xc2,0xc3,0x2b,0xca,0x48,0x63,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rcx,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c9}
0009h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
000dh cmp ecx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b ca}
000fh jge short 0017h                         ; JGE rel8 || 7D cb || encoded[2]{7d 06}
0011h sub edx,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d1}
0013h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
0017h sub ecx,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b ca}
0019h movsxd rax,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c1}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong dist(short a, short b), hex://math/math?dist#dist_(16i,16i)
; dist_(16i,16i)[29] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbf,0xc9,0x48,0x0f,0xbf,0xd2,0x3b,0xca,0x7d,0x06,0x2b,0xd1,0x48,0x63,0xc2,0xc3,0x2b,0xca,0x48,0x63,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rcx,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c9}
0009h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
000dh cmp ecx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b ca}
000fh jge short 0017h                         ; JGE rel8 || 7D cb || encoded[2]{7d 06}
0011h sub edx,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d1}
0013h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
0017h sub ecx,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b ca}
0019h movsxd rax,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c1}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong dist(ushort a, ushort b), hex://math/math?dist#dist_(16u,16u)
; dist_(16u,16u)[27] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc9,0x0f,0xb7,0xd2,0x3b,0xca,0x7d,0x06,0x2b,0xd1,0x48,0x63,0xc2,0xc3,0x2b,0xca,0x48,0x63,0xc1,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh cmp ecx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b ca}
000dh jge short 0015h                         ; JGE rel8 || 7D cb || encoded[2]{7d 06}
000fh sub edx,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d1}
0011h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
0015h sub ecx,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b ca}
0017h movsxd rax,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c1}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong dist(int a, int b), hex://math/math?dist#dist_(32i,32i)
; dist_(32i,32i)[21] = {0x0f,0x1f,0x44,0x00,0x00,0x3b,0xca,0x7d,0x06,0x2b,0xd1,0x48,0x63,0xc2,0xc3,0x2b,0xca,0x48,0x63,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp ecx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b ca}
0007h jge short 000fh                         ; JGE rel8 || 7D cb || encoded[2]{7d 06}
0009h sub edx,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d1}
000bh movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
000fh sub ecx,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b ca}
0011h movsxd rax,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c1}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong dist(uint a, uint b), hex://math/math?dist#dist_(32u,32u)
; dist_(32u,32u)[19] = {0x0f,0x1f,0x44,0x00,0x00,0x3b,0xca,0x73,0x05,0x2b,0xd1,0x8b,0xc2,0xc3,0x2b,0xca,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp ecx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b ca}
0007h jae short 000eh                         ; JAE rel8 || 73 cb || encoded[2]{73 05}
0009h sub edx,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d1}
000bh mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
000eh sub ecx,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b ca}
0010h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong dist(long a, long b), hex://math/math?dist#dist_(64i,64i)
; dist_(64i,64i)[24] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x3b,0xca,0x7d,0x07,0x48,0x8b,0xc2,0x48,0x2b,0xc1,0xc3,0x48,0x2b,0xca,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp rcx,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b ca}
0008h jge short 0011h                         ; JGE rel8 || 7D cb || encoded[2]{7d 07}
000ah mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
000dh sub rax,rcx                             ; SUB r64, r/m64 || REX.W 2B /r || encoded[3]{48 2b c1}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
0011h sub rcx,rdx                             ; SUB r64, r/m64 || REX.W 2B /r || encoded[3]{48 2b ca}
0014h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong dist(ulong a, ulong b), hex://math/math?dist#dist_(64u,64u)
; dist_(64u,64u)[24] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x3b,0xca,0x73,0x07,0x48,0x8b,0xc2,0x48,0x2b,0xc1,0xc3,0x48,0x2b,0xca,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp rcx,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b ca}
0008h jae short 0011h                         ; JAE rel8 || 73 cb || encoded[2]{73 07}
000ah mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
000dh sub rax,rcx                             ; SUB r64, r/m64 || REX.W 2B /r || encoded[3]{48 2b c1}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
0011h sub rcx,rdx                             ; SUB r64, r/m64 || REX.W 2B /r || encoded[3]{48 2b ca}
0014h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte div(sbyte a, sbyte b), hex://math/math?div#div_(8i,8i)
; div_(8i,8i)[21] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbe,0xc1,0x48,0x0f,0xbe,0xca,0x99,0xf7,0xf9,0x48,0x0f,0xbe,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
000dh cdq                                     ; CDQ || o32 99 || encoded[1]{99}
000eh idiv ecx                                ; IDIV r/m32 || o32 F7 /7 || encoded[2]{f7 f9}
0010h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte div(byte a, byte b), hex://math/math?div#div_(8u,8u)
; div_(8u,8u)[18] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x0f,0xb6,0xca,0x99,0xf7,0xf9,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000bh cdq                                     ; CDQ || o32 99 || encoded[1]{99}
000ch idiv ecx                                ; IDIV r/m32 || o32 F7 /7 || encoded[2]{f7 f9}
000eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short div(short a, short b), hex://math/math?div#div_(16i,16i)
; div_(16i,16i)[21] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbf,0xc1,0x48,0x0f,0xbf,0xca,0x99,0xf7,0xf9,0x48,0x0f,0xbf,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
000dh cdq                                     ; CDQ || o32 99 || encoded[1]{99}
000eh idiv ecx                                ; IDIV r/m32 || o32 F7 /7 || encoded[2]{f7 f9}
0010h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort div(ushort a, ushort b), hex://math/math?div#div_(16u,16u)
; div_(16u,16u)[18] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x0f,0xb7,0xca,0x99,0xf7,0xf9,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
000bh cdq                                     ; CDQ || o32 99 || encoded[1]{99}
000ch idiv ecx                                ; IDIV r/m32 || o32 F7 /7 || encoded[2]{f7 f9}
000eh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int div(int a, int b), hex://math/math?div#div_(32i,32i)
; div_(32i,32i)[15] = {0x0f,0x1f,0x44,0x00,0x00,0x44,0x8b,0xc2,0x8b,0xc1,0x99,0x41,0xf7,0xf8,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov r8d,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c2}
0008h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
000ah cdq                                     ; CDQ || o32 99 || encoded[1]{99}
000bh idiv r8d                                ; IDIV r/m32 || o32 F7 /7 || encoded[3]{41 f7 f8}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint div(uint a, uint b), hex://math/math?div#div_(32u,32u)
; div_(32u,32u)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x44,0x8b,0xc2,0x8b,0xc1,0x33,0xd2,0x41,0xf7,0xf0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov r8d,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c2}
0008h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
000ah xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
000ch div r8d                                 ; DIV r/m32 || o32 F7 /6 || encoded[3]{41 f7 f0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long div(long a, long b), hex://math/math?div#div_(64i,64i)
; div_(64i,64i)[17] = {0x0f,0x1f,0x44,0x00,0x00,0x4c,0x8b,0xc2,0x48,0x8b,0xc1,0x48,0x99,0x49,0xf7,0xf8,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov r8,rdx                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c2}
0008h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000bh cqo                                     ; CQO || REX.W 99 || encoded[2]{48 99}
000dh idiv r8                                 ; IDIV r/m64 || REX.W F7 /7 || encoded[3]{49 f7 f8}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong div(ulong a, ulong b), hex://math/math?div#div_(64u,64u)
; div_(64u,64u)[17] = {0x0f,0x1f,0x44,0x00,0x00,0x4c,0x8b,0xc2,0x48,0x8b,0xc1,0x33,0xd2,0x49,0xf7,0xf0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov r8,rdx                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c2}
0008h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000bh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
000dh div r8                                  ; DIV r/m64 || REX.W F7 /6 || encoded[3]{49 f7 f0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit divides(sbyte a, sbyte b), hex://math/math?divides#divides_(8i,8i)
; divides_(8i,8i)[25] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbe,0xc2,0x48,0x0f,0xbe,0xc9,0x99,0xf7,0xf9,0x85,0xd2,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
0009h movsx rcx,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c9}
000dh cdq                                     ; CDQ || o32 99 || encoded[1]{99}
000eh idiv ecx                                ; IDIV r/m32 || o32 F7 /7 || encoded[2]{f7 f9}
0010h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0012h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0015h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit divides(byte a, byte b), hex://math/math?divides#divides_(8u,8u)
; divides_(8u,8u)[23] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc2,0x0f,0xb6,0xc9,0x99,0xf7,0xf9,0x85,0xd2,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0008h movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
000bh cdq                                     ; CDQ || o32 99 || encoded[1]{99}
000ch idiv ecx                                ; IDIV r/m32 || o32 F7 /7 || encoded[2]{f7 f9}
000eh test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0010h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0013h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit divides(short a, short b), hex://math/math?divides#divides_(16i,16i)
; divides_(16i,16i)[25] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbf,0xc2,0x48,0x0f,0xbf,0xc9,0x99,0xf7,0xf9,0x85,0xd2,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c2}
0009h movsx rcx,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c9}
000dh cdq                                     ; CDQ || o32 99 || encoded[1]{99}
000eh idiv ecx                                ; IDIV r/m32 || o32 F7 /7 || encoded[2]{f7 f9}
0010h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0012h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0015h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit divides(ushort a, ushort b), hex://math/math?divides#divides_(16u,16u)
; divides_(16u,16u)[23] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc2,0x0f,0xb7,0xc9,0x99,0xf7,0xf9,0x85,0xd2,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
0008h movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
000bh cdq                                     ; CDQ || o32 99 || encoded[1]{99}
000ch idiv ecx                                ; IDIV r/m32 || o32 F7 /7 || encoded[2]{f7 f9}
000eh test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0010h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0013h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit divides(int a, int b), hex://math/math?divides#divides_(32i,32i)
; divides_(32i,32i)[19] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc2,0x99,0xf7,0xf9,0x85,0xd2,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h cdq                                     ; CDQ || o32 99 || encoded[1]{99}
0008h idiv ecx                                ; IDIV r/m32 || o32 F7 /7 || encoded[2]{f7 f9}
000ah test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
000ch sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
000fh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit divides(uint a, uint b), hex://math/math?divides#divides_(32u,32u)
; divides_(32u,32u)[20] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc2,0x33,0xd2,0xf7,0xf1,0x85,0xd2,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0009h div ecx                                 ; DIV r/m32 || o32 F7 /6 || encoded[2]{f7 f1}
000bh test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
000dh sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit divides(long a, long b), hex://math/math?divides#divides_(64i,64i)
; divides_(64i,64i)[23] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc2,0x48,0x99,0x48,0xf7,0xf9,0x48,0x85,0xd2,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0008h cqo                                     ; CQO || REX.W 99 || encoded[2]{48 99}
000ah idiv rcx                                ; IDIV r/m64 || REX.W F7 /7 || encoded[3]{48 f7 f9}
000dh test rdx,rdx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 d2}
0010h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0013h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit divides(ulong a, ulong b), hex://math/math?divides#divides_(64u,64u)
; divides_(64u,64u)[23] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc2,0x33,0xd2,0x48,0xf7,0xf1,0x48,0x85,0xd2,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0008h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
000ah div rcx                                 ; DIV r/m64 || REX.W F7 /6 || encoded[3]{48 f7 f1}
000dh test rdx,rdx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 d2}
0010h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0013h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte fma(sbyte x, sbyte y, sbyte z), hex://math/math?fma#fma_(8i,8i,8i)
; fma_(8i,8i,8i)[27] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbe,0xc1,0x48,0x0f,0xbe,0xd2,0x0f,0xaf,0xc2,0x49,0x0f,0xbe,0xd0,0x03,0xc2,0x48,0x0f,0xbe,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
000dh imul eax,edx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c2}
0010h movsx rdx,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be d0}
0014h add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
0016h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte fma(byte x, byte y, byte z), hex://math/math?fma#fma_(8u,8u,8u)
; fma_(8u,8u,8u)[24] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x0f,0xb6,0xd2,0x0f,0xaf,0xc2,0x41,0x0f,0xb6,0xd0,0x03,0xc2,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh imul eax,edx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c2}
000eh movzx edx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d0}
0012h add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
0014h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short fma(short x, short y, short z), hex://math/math?fma#fma_(16i,16i,16i)
; fma_(16i,16i,16i)[27] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbf,0xc1,0x48,0x0f,0xbf,0xd2,0x0f,0xaf,0xc2,0x49,0x0f,0xbf,0xd0,0x03,0xc2,0x48,0x0f,0xbf,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
000dh imul eax,edx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c2}
0010h movsx rdx,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf d0}
0014h add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
0016h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort fma(ushort x, ushort y, ushort z), hex://math/math?fma#fma_(16u,16u,16u)
; fma_(16u,16u,16u)[24] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x0f,0xb7,0xd2,0x0f,0xaf,0xc2,0x41,0x0f,0xb7,0xd0,0x03,0xc2,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh imul eax,edx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c2}
000eh movzx edx,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 d0}
0012h add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
0014h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int fma(int x, int y, int z), hex://math/math?fma#fma_(32i,32i,32i)
; fma_(32i,32i,32i)[14] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0x0f,0xaf,0xc2,0x41,0x03,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h imul eax,edx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c2}
000ah add eax,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint fma(uint x, uint y, uint z), hex://math/math?fma#fma_(32u,32u,32u)
; fma_(32u,32u,32u)[14] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0x0f,0xaf,0xc2,0x41,0x03,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h imul eax,edx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c2}
000ah add eax,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long fma(long x, long y, long z), hex://math/math?fma#fma_(64i,64i,64i)
; fma_(64i,64i,64i)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0x48,0x0f,0xaf,0xc2,0x49,0x03,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h imul rax,rdx                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af c2}
000ch add rax,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong fma(ulong x, ulong y, ulong z), hex://math/math?fma#fma_(64u,64u,64u)
; fma_(64u,64u,64u)[16] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0x48,0x0f,0xaf,0xc2,0x49,0x03,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h imul rax,rdx                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af c2}
000ch add rax,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte inc(sbyte src), hex://math/math?inc#inc_(8i)
; inc_(8i)[20] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbe,0xc1,0xff,0xc0,0x48,0x0f,0xbe,0xc0,0x48,0x0f,0xbe,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
000bh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
000fh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte inc(byte src), hex://math/math?inc#inc_(8u)
; inc_(8u)[17] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0xff,0xc0,0x0f,0xb6,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short inc(short src), hex://math/math?inc#inc_(16i)
; inc_(16i)[20] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbf,0xc1,0xff,0xc0,0x48,0x0f,0xbf,0xc0,0x48,0x0f,0xbf,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
000bh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
000fh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort inc(ushort src), hex://math/math?inc#inc_(16u)
; inc_(16u)[17] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0xff,0xc0,0x0f,0xb7,0xc0,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
000ah movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
000dh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int inc(int src), hex://math/math?inc#inc_(32i)
; inc_(32i)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x8d,0x41,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h lea eax,[rcx+1]                         ; LEA r32, m || o32 8D /r || encoded[3]{8d 41 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint inc(uint src), hex://math/math?inc#inc_(32u)
; inc_(32u)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x8d,0x41,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h lea eax,[rcx+1]                         ; LEA r32, m || o32 8D /r || encoded[3]{8d 41 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long inc(long src), hex://math/math?inc#inc_(64i)
; inc_(64i)[10] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8d,0x41,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h lea rax,[rcx+1]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 41 01}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong inc(ulong src), hex://math/math?inc#inc_(64u)
; inc_(64u)[10] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8d,0x41,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h lea rax,[rcx+1]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 41 01}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit ispow2(sbyte x), hex://math/math?ispow2#ispow2_(8i)
; ispow2_(8i)[21] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbe,0xc1,0x8d,0x50,0xff,0x85,0xc2,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h lea edx,[rax-1]                         ; LEA r32, m || o32 8D /r || encoded[3]{8d 50 ff}
000ch test eax,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c2}
000eh sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0011h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit ispow2(byte x), hex://math/math?ispow2#ispow2_(8u)
; ispow2_(8u)[20] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x8d,0x50,0xff,0x85,0xc2,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h lea edx,[rax-1]                         ; LEA r32, m || o32 8D /r || encoded[3]{8d 50 ff}
000bh test eax,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c2}
000dh sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit ispow2(short x), hex://math/math?ispow2#ispow2_(16i)
; ispow2_(16i)[21] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbf,0xc1,0x8d,0x50,0xff,0x85,0xc2,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h lea edx,[rax-1]                         ; LEA r32, m || o32 8D /r || encoded[3]{8d 50 ff}
000ch test eax,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c2}
000eh sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0011h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit ispow2(ushort x), hex://math/math?ispow2#ispow2_(16u)
; ispow2_(16u)[20] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x8d,0x50,0xff,0x85,0xc2,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h lea edx,[rax-1]                         ; LEA r32, m || o32 8D /r || encoded[3]{8d 50 ff}
000bh test eax,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c2}
000dh sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit ispow2(int x), hex://math/math?ispow2#ispow2_(32i)
; ispow2_(32i)[17] = {0x0f,0x1f,0x44,0x00,0x00,0x8d,0x41,0xff,0x85,0xc8,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h lea eax,[rcx-1]                         ; LEA r32, m || o32 8D /r || encoded[3]{8d 41 ff}
0008h test ecx,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c8}
000ah sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
000dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit ispow2(uint x), hex://math/math?ispow2#ispow2_(32u)
; ispow2_(32u)[17] = {0x0f,0x1f,0x44,0x00,0x00,0x8d,0x41,0xff,0x85,0xc8,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h lea eax,[rcx-1]                         ; LEA r32, m || o32 8D /r || encoded[3]{8d 41 ff}
0008h test ecx,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c8}
000ah sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
000dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit ispow2(long x), hex://math/math?ispow2#ispow2_(64i)
; ispow2_(64i)[19] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8d,0x41,0xff,0x48,0x85,0xc8,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h lea rax,[rcx-1]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 41 ff}
0009h test rcx,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c8}
000ch sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
000fh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit ispow2(ulong x), hex://math/math?ispow2#ispow2_(64u)
; ispow2_(64u)[19] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8d,0x41,0xff,0x48,0x85,0xc8,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h lea rax,[rcx-1]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 41 ff}
0009h test rcx,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c8}
000ch sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
000fh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong log2(ulong src), hex://math/math?log2#log2_(64u)
; log2_(64u)[165] = {0x50,0x33,0xc0,0x48,0x89,0x04,0x24,0x33,0xc0,0x48,0x89,0x04,0x24,0x48,0xb8,0x00,0x00,0x00,0x00,0x01,0x00,0x00,0x00,0x48,0x3b,0xc8,0x72,0x10,0x48,0xc1,0xe9,0x20,0x48,0x8b,0x04,0x24,0x48,0x83,0xc8,0x20,0x48,0x89,0x04,0x24,0x48,0x81,0xf9,0x00,0x00,0x01,0x00,0x72,0x10,0x48,0xc1,0xe9,0x10,0x48,0x8b,0x04,0x24,0x48,0x83,0xc8,0x10,0x48,0x89,0x04,0x24,0x48,0x81,0xf9,0x00,0x01,0x00,0x00,0x72,0x10,0x48,0xc1,0xe9,0x08,0x48,0x8b,0x04,0x24,0x48,0x83,0xc8,0x08,0x48,0x89,0x04,0x24,0x48,0x83,0xf9,0x10,0x72,0x10,0x48,0xc1,0xe9,0x04,0x48,0x8b,0x04,0x24,0x48,0x83,0xc8,0x04,0x48,0x89,0x04,0x24,0x48,0x83,0xf9,0x04,0x72,0x10,0x48,0xc1,0xe9,0x02,0x48,0x8b,0x04,0x24,0x48,0x83,0xc8,0x02,0x48,0x89,0x04,0x24,0x48,0x83,0xf9,0x02,0x72,0x0c,0x48,0x8b,0x04,0x24,0x48,0x83,0xc8,0x01,0x48,0x89,0x04,0x24,0x48,0x8b,0x04,0x24,0x48,0x83,0xc4,0x08,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0003h mov [rsp],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 04 24}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 04 24}
000dh mov rax,100000000h                      ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 00 00 00 01 00 00 00}
0017h cmp rcx,rax                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b c8}
001ah jb short 002ch                          ; JB rel8 || 72 cb || encoded[2]{72 10}
001ch shr rcx,20h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e9 20}
0020h mov rax,[rsp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 04 24}
0024h or rax,20h                              ; OR r/m64, imm8 || REX.W 83 /1 ib || encoded[4]{48 83 c8 20}
0028h mov [rsp],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 04 24}
002ch cmp rcx,10000h                          ; CMP r/m64, imm32 || REX.W 81 /7 id || encoded[7]{48 81 f9 00 00 01 00}
0033h jb short 0045h                          ; JB rel8 || 72 cb || encoded[2]{72 10}
0035h shr rcx,10h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e9 10}
0039h mov rax,[rsp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 04 24}
003dh or rax,10h                              ; OR r/m64, imm8 || REX.W 83 /1 ib || encoded[4]{48 83 c8 10}
0041h mov [rsp],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 04 24}
0045h cmp rcx,100h                            ; CMP r/m64, imm32 || REX.W 81 /7 id || encoded[7]{48 81 f9 00 01 00 00}
004ch jb short 005eh                          ; JB rel8 || 72 cb || encoded[2]{72 10}
004eh shr rcx,8                               ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e9 08}
0052h mov rax,[rsp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 04 24}
0056h or rax,8                                ; OR r/m64, imm8 || REX.W 83 /1 ib || encoded[4]{48 83 c8 08}
005ah mov [rsp],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 04 24}
005eh cmp rcx,10h                             ; CMP r/m64, imm8 || REX.W 83 /7 ib || encoded[4]{48 83 f9 10}
0062h jb short 0074h                          ; JB rel8 || 72 cb || encoded[2]{72 10}
0064h shr rcx,4                               ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e9 04}
0068h mov rax,[rsp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 04 24}
006ch or rax,4                                ; OR r/m64, imm8 || REX.W 83 /1 ib || encoded[4]{48 83 c8 04}
0070h mov [rsp],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 04 24}
0074h cmp rcx,4                               ; CMP r/m64, imm8 || REX.W 83 /7 ib || encoded[4]{48 83 f9 04}
0078h jb short 008ah                          ; JB rel8 || 72 cb || encoded[2]{72 10}
007ah shr rcx,2                               ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e9 02}
007eh mov rax,[rsp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 04 24}
0082h or rax,2                                ; OR r/m64, imm8 || REX.W 83 /1 ib || encoded[4]{48 83 c8 02}
0086h mov [rsp],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 04 24}
008ah cmp rcx,2                               ; CMP r/m64, imm8 || REX.W 83 /7 ib || encoded[4]{48 83 f9 02}
008eh jb short 009ch                          ; JB rel8 || 72 cb || encoded[2]{72 0c}
0090h mov rax,[rsp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 04 24}
0094h or rax,1                                ; OR r/m64, imm8 || REX.W 83 /1 ib || encoded[4]{48 83 c8 01}
0098h mov [rsp],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 04 24}
009ch mov rax,[rsp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 04 24}
00a0h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
00a4h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong log2(int src), hex://math/math?log2#log2_(32i)
; log2_(32i)[168] = {0x50,0x0f,0x1f,0x40,0x00,0x33,0xc0,0x48,0x89,0x04,0x24,0x48,0x89,0x04,0x24,0x48,0x63,0xc1,0x48,0xba,0x00,0x00,0x00,0x00,0x01,0x00,0x00,0x00,0x48,0x3b,0xc2,0x72,0x10,0x48,0xc1,0xe8,0x20,0x48,0x8b,0x14,0x24,0x48,0x83,0xca,0x20,0x48,0x89,0x14,0x24,0x48,0x3d,0x00,0x00,0x01,0x00,0x72,0x10,0x48,0xc1,0xe8,0x10,0x48,0x8b,0x14,0x24,0x48,0x83,0xca,0x10,0x48,0x89,0x14,0x24,0x48,0x3d,0x00,0x01,0x00,0x00,0x72,0x10,0x48,0xc1,0xe8,0x08,0x48,0x8b,0x14,0x24,0x48,0x83,0xca,0x08,0x48,0x89,0x14,0x24,0x48,0x83,0xf8,0x10,0x72,0x10,0x48,0xc1,0xe8,0x04,0x48,0x8b,0x14,0x24,0x48,0x83,0xca,0x04,0x48,0x89,0x14,0x24,0x48,0x83,0xf8,0x04,0x72,0x10,0x48,0xc1,0xe8,0x02,0x48,0x8b,0x14,0x24,0x48,0x83,0xca,0x02,0x48,0x89,0x14,0x24,0x48,0x83,0xf8,0x02,0x72,0x0c,0x48,0x8b,0x04,0x24,0x48,0x83,0xc8,0x01,0x48,0x89,0x04,0x24,0x48,0x8b,0x04,0x24,0x48,0x83,0xc4,0x08,0xc3}
; TermCode = CTC_RET_SBB
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h mov [rsp],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 04 24}
000bh mov [rsp],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 04 24}
000fh movsxd rax,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c1}
0012h mov rdx,100000000h                      ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 00 00 00 00 01 00 00 00}
001ch cmp rax,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b c2}
001fh jb short 0031h                          ; JB rel8 || 72 cb || encoded[2]{72 10}
0021h shr rax,20h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 20}
0025h mov rdx,[rsp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 14 24}
0029h or rdx,20h                              ; OR r/m64, imm8 || REX.W 83 /1 ib || encoded[4]{48 83 ca 20}
002dh mov [rsp],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 14 24}
0031h cmp rax,10000h                          ; CMP RAX, imm32 || REX.W 3D id || encoded[6]{48 3d 00 00 01 00}
0037h jb short 0049h                          ; JB rel8 || 72 cb || encoded[2]{72 10}
0039h shr rax,10h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 10}
003dh mov rdx,[rsp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 14 24}
0041h or rdx,10h                              ; OR r/m64, imm8 || REX.W 83 /1 ib || encoded[4]{48 83 ca 10}
0045h mov [rsp],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 14 24}
0049h cmp rax,100h                            ; CMP RAX, imm32 || REX.W 3D id || encoded[6]{48 3d 00 01 00 00}
004fh jb short 0061h                          ; JB rel8 || 72 cb || encoded[2]{72 10}
0051h shr rax,8                               ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 08}
0055h mov rdx,[rsp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 14 24}
0059h or rdx,8                                ; OR r/m64, imm8 || REX.W 83 /1 ib || encoded[4]{48 83 ca 08}
005dh mov [rsp],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 14 24}
0061h cmp rax,10h                             ; CMP r/m64, imm8 || REX.W 83 /7 ib || encoded[4]{48 83 f8 10}
0065h jb short 0077h                          ; JB rel8 || 72 cb || encoded[2]{72 10}
0067h shr rax,4                               ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 04}
006bh mov rdx,[rsp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 14 24}
006fh or rdx,4                                ; OR r/m64, imm8 || REX.W 83 /1 ib || encoded[4]{48 83 ca 04}
0073h mov [rsp],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 14 24}
0077h cmp rax,4                               ; CMP r/m64, imm8 || REX.W 83 /7 ib || encoded[4]{48 83 f8 04}
007bh jb short 008dh                          ; JB rel8 || 72 cb || encoded[2]{72 10}
007dh shr rax,2                               ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 02}
0081h mov rdx,[rsp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 14 24}
0085h or rdx,2                                ; OR r/m64, imm8 || REX.W 83 /1 ib || encoded[4]{48 83 ca 02}
0089h mov [rsp],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 14 24}
008dh cmp rax,2                               ; CMP r/m64, imm8 || REX.W 83 /7 ib || encoded[4]{48 83 f8 02}
0091h jb short 009fh                          ; JB rel8 || 72 cb || encoded[2]{72 0c}
0093h mov rax,[rsp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 04 24}
0097h or rax,1                                ; OR r/m64, imm8 || REX.W 83 /1 ib || encoded[4]{48 83 c8 01}
009bh mov [rsp],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 04 24}
009fh mov rax,[rsp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 04 24}
00a3h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
00a7h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint log2(uint src), hex://math/math?log2#log2_(32u)
; log2_(32u)[166] = {0x50,0x0f,0x1f,0x40,0x00,0x33,0xc0,0x48,0x89,0x04,0x24,0x48,0x89,0x04,0x24,0x8b,0xc1,0x48,0xba,0x00,0x00,0x00,0x00,0x01,0x00,0x00,0x00,0x48,0x3b,0xc2,0x72,0x10,0x48,0xc1,0xe8,0x20,0x48,0x8b,0x14,0x24,0x48,0x83,0xca,0x20,0x48,0x89,0x14,0x24,0x48,0x3d,0x00,0x00,0x01,0x00,0x72,0x10,0x48,0xc1,0xe8,0x10,0x48,0x8b,0x14,0x24,0x48,0x83,0xca,0x10,0x48,0x89,0x14,0x24,0x48,0x3d,0x00,0x01,0x00,0x00,0x72,0x10,0x48,0xc1,0xe8,0x08,0x48,0x8b,0x14,0x24,0x48,0x83,0xca,0x08,0x48,0x89,0x14,0x24,0x48,0x83,0xf8,0x10,0x72,0x10,0x48,0xc1,0xe8,0x04,0x48,0x8b,0x14,0x24,0x48,0x83,0xca,0x04,0x48,0x89,0x14,0x24,0x48,0x83,0xf8,0x04,0x72,0x10,0x48,0xc1,0xe8,0x02,0x48,0x8b,0x14,0x24,0x48,0x83,0xca,0x02,0x48,0x89,0x14,0x24,0x48,0x83,0xf8,0x02,0x72,0x0c,0x48,0x8b,0x04,0x24,0x48,0x83,0xc8,0x01,0x48,0x89,0x04,0x24,0x8b,0x04,0x24,0x48,0x83,0xc4,0x08,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h mov [rsp],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 04 24}
000bh mov [rsp],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 04 24}
000fh mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0011h mov rdx,100000000h                      ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 00 00 00 00 01 00 00 00}
001bh cmp rax,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b c2}
001eh jb short 0030h                          ; JB rel8 || 72 cb || encoded[2]{72 10}
0020h shr rax,20h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 20}
0024h mov rdx,[rsp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 14 24}
0028h or rdx,20h                              ; OR r/m64, imm8 || REX.W 83 /1 ib || encoded[4]{48 83 ca 20}
002ch mov [rsp],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 14 24}
0030h cmp rax,10000h                          ; CMP RAX, imm32 || REX.W 3D id || encoded[6]{48 3d 00 00 01 00}
0036h jb short 0048h                          ; JB rel8 || 72 cb || encoded[2]{72 10}
0038h shr rax,10h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 10}
003ch mov rdx,[rsp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 14 24}
0040h or rdx,10h                              ; OR r/m64, imm8 || REX.W 83 /1 ib || encoded[4]{48 83 ca 10}
0044h mov [rsp],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 14 24}
0048h cmp rax,100h                            ; CMP RAX, imm32 || REX.W 3D id || encoded[6]{48 3d 00 01 00 00}
004eh jb short 0060h                          ; JB rel8 || 72 cb || encoded[2]{72 10}
0050h shr rax,8                               ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 08}
0054h mov rdx,[rsp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 14 24}
0058h or rdx,8                                ; OR r/m64, imm8 || REX.W 83 /1 ib || encoded[4]{48 83 ca 08}
005ch mov [rsp],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 14 24}
0060h cmp rax,10h                             ; CMP r/m64, imm8 || REX.W 83 /7 ib || encoded[4]{48 83 f8 10}
0064h jb short 0076h                          ; JB rel8 || 72 cb || encoded[2]{72 10}
0066h shr rax,4                               ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 04}
006ah mov rdx,[rsp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 14 24}
006eh or rdx,4                                ; OR r/m64, imm8 || REX.W 83 /1 ib || encoded[4]{48 83 ca 04}
0072h mov [rsp],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 14 24}
0076h cmp rax,4                               ; CMP r/m64, imm8 || REX.W 83 /7 ib || encoded[4]{48 83 f8 04}
007ah jb short 008ch                          ; JB rel8 || 72 cb || encoded[2]{72 10}
007ch shr rax,2                               ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 02}
0080h mov rdx,[rsp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 14 24}
0084h or rdx,2                                ; OR r/m64, imm8 || REX.W 83 /1 ib || encoded[4]{48 83 ca 02}
0088h mov [rsp],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 14 24}
008ch cmp rax,2                               ; CMP r/m64, imm8 || REX.W 83 /7 ib || encoded[4]{48 83 f8 02}
0090h jb short 009eh                          ; JB rel8 || 72 cb || encoded[2]{72 0c}
0092h mov rax,[rsp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 04 24}
0096h or rax,1                                ; OR r/m64, imm8 || REX.W 83 /1 ib || encoded[4]{48 83 c8 01}
009ah mov [rsp],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 04 24}
009eh mov eax,[rsp]                           ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 24}
00a1h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
00a5h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte log2(byte src), hex://math/math?log2#log2_(8u)
; log2_(8u)[171] = {0x50,0x0f,0x1f,0x40,0x00,0x33,0xc0,0x48,0x89,0x04,0x24,0x48,0x89,0x04,0x24,0x0f,0xb6,0xc1,0x48,0xba,0x00,0x00,0x00,0x00,0x01,0x00,0x00,0x00,0x48,0x3b,0xc2,0x72,0x10,0x48,0xc1,0xe8,0x20,0x48,0x8b,0x14,0x24,0x48,0x83,0xca,0x20,0x48,0x89,0x14,0x24,0x48,0x3d,0x00,0x00,0x01,0x00,0x72,0x10,0x48,0xc1,0xe8,0x10,0x48,0x8b,0x14,0x24,0x48,0x83,0xca,0x10,0x48,0x89,0x14,0x24,0x48,0x3d,0x00,0x01,0x00,0x00,0x72,0x10,0x48,0xc1,0xe8,0x08,0x48,0x8b,0x14,0x24,0x48,0x83,0xca,0x08,0x48,0x89,0x14,0x24,0x48,0x83,0xf8,0x10,0x72,0x10,0x48,0xc1,0xe8,0x04,0x48,0x8b,0x14,0x24,0x48,0x83,0xca,0x04,0x48,0x89,0x14,0x24,0x48,0x83,0xf8,0x04,0x72,0x10,0x48,0xc1,0xe8,0x02,0x48,0x8b,0x14,0x24,0x48,0x83,0xca,0x02,0x48,0x89,0x14,0x24,0x48,0x83,0xf8,0x02,0x72,0x0c,0x48,0x8b,0x04,0x24,0x48,0x83,0xc8,0x01,0x48,0x89,0x04,0x24,0x48,0x8b,0x04,0x24,0x0f,0xb6,0xc0,0x48,0x83,0xc4,0x08,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h mov [rsp],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 04 24}
000bh mov [rsp],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 04 24}
000fh movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0012h mov rdx,100000000h                      ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 00 00 00 00 01 00 00 00}
001ch cmp rax,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b c2}
001fh jb short 0031h                          ; JB rel8 || 72 cb || encoded[2]{72 10}
0021h shr rax,20h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 20}
0025h mov rdx,[rsp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 14 24}
0029h or rdx,20h                              ; OR r/m64, imm8 || REX.W 83 /1 ib || encoded[4]{48 83 ca 20}
002dh mov [rsp],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 14 24}
0031h cmp rax,10000h                          ; CMP RAX, imm32 || REX.W 3D id || encoded[6]{48 3d 00 00 01 00}
0037h jb short 0049h                          ; JB rel8 || 72 cb || encoded[2]{72 10}
0039h shr rax,10h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 10}
003dh mov rdx,[rsp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 14 24}
0041h or rdx,10h                              ; OR r/m64, imm8 || REX.W 83 /1 ib || encoded[4]{48 83 ca 10}
0045h mov [rsp],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 14 24}
0049h cmp rax,100h                            ; CMP RAX, imm32 || REX.W 3D id || encoded[6]{48 3d 00 01 00 00}
004fh jb short 0061h                          ; JB rel8 || 72 cb || encoded[2]{72 10}
0051h shr rax,8                               ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 08}
0055h mov rdx,[rsp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 14 24}
0059h or rdx,8                                ; OR r/m64, imm8 || REX.W 83 /1 ib || encoded[4]{48 83 ca 08}
005dh mov [rsp],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 14 24}
0061h cmp rax,10h                             ; CMP r/m64, imm8 || REX.W 83 /7 ib || encoded[4]{48 83 f8 10}
0065h jb short 0077h                          ; JB rel8 || 72 cb || encoded[2]{72 10}
0067h shr rax,4                               ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 04}
006bh mov rdx,[rsp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 14 24}
006fh or rdx,4                                ; OR r/m64, imm8 || REX.W 83 /1 ib || encoded[4]{48 83 ca 04}
0073h mov [rsp],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 14 24}
0077h cmp rax,4                               ; CMP r/m64, imm8 || REX.W 83 /7 ib || encoded[4]{48 83 f8 04}
007bh jb short 008dh                          ; JB rel8 || 72 cb || encoded[2]{72 10}
007dh shr rax,2                               ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 02}
0081h mov rdx,[rsp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 14 24}
0085h or rdx,2                                ; OR r/m64, imm8 || REX.W 83 /1 ib || encoded[4]{48 83 ca 02}
0089h mov [rsp],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 14 24}
008dh cmp rax,2                               ; CMP r/m64, imm8 || REX.W 83 /7 ib || encoded[4]{48 83 f8 02}
0091h jb short 009fh                          ; JB rel8 || 72 cb || encoded[2]{72 0c}
0093h mov rax,[rsp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 04 24}
0097h or rax,1                                ; OR r/m64, imm8 || REX.W 83 /1 ib || encoded[4]{48 83 c8 01}
009bh mov [rsp],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 04 24}
009fh mov rax,[rsp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 04 24}
00a3h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
00a6h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
00aah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort log2(ushort src), hex://math/math?log2#log2_(16u)
; log2_(16u)[171] = {0x50,0x0f,0x1f,0x40,0x00,0x33,0xc0,0x48,0x89,0x04,0x24,0x48,0x89,0x04,0x24,0x0f,0xb7,0xc1,0x48,0xba,0x00,0x00,0x00,0x00,0x01,0x00,0x00,0x00,0x48,0x3b,0xc2,0x72,0x10,0x48,0xc1,0xe8,0x20,0x48,0x8b,0x14,0x24,0x48,0x83,0xca,0x20,0x48,0x89,0x14,0x24,0x48,0x3d,0x00,0x00,0x01,0x00,0x72,0x10,0x48,0xc1,0xe8,0x10,0x48,0x8b,0x14,0x24,0x48,0x83,0xca,0x10,0x48,0x89,0x14,0x24,0x48,0x3d,0x00,0x01,0x00,0x00,0x72,0x10,0x48,0xc1,0xe8,0x08,0x48,0x8b,0x14,0x24,0x48,0x83,0xca,0x08,0x48,0x89,0x14,0x24,0x48,0x83,0xf8,0x10,0x72,0x10,0x48,0xc1,0xe8,0x04,0x48,0x8b,0x14,0x24,0x48,0x83,0xca,0x04,0x48,0x89,0x14,0x24,0x48,0x83,0xf8,0x04,0x72,0x10,0x48,0xc1,0xe8,0x02,0x48,0x8b,0x14,0x24,0x48,0x83,0xca,0x02,0x48,0x89,0x14,0x24,0x48,0x83,0xf8,0x02,0x72,0x0c,0x48,0x8b,0x04,0x24,0x48,0x83,0xc8,0x01,0x48,0x89,0x04,0x24,0x48,0x8b,0x04,0x24,0x0f,0xb7,0xc0,0x48,0x83,0xc4,0x08,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h mov [rsp],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 04 24}
000bh mov [rsp],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 04 24}
000fh movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0012h mov rdx,100000000h                      ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 00 00 00 00 01 00 00 00}
001ch cmp rax,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b c2}
001fh jb short 0031h                          ; JB rel8 || 72 cb || encoded[2]{72 10}
0021h shr rax,20h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 20}
0025h mov rdx,[rsp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 14 24}
0029h or rdx,20h                              ; OR r/m64, imm8 || REX.W 83 /1 ib || encoded[4]{48 83 ca 20}
002dh mov [rsp],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 14 24}
0031h cmp rax,10000h                          ; CMP RAX, imm32 || REX.W 3D id || encoded[6]{48 3d 00 00 01 00}
0037h jb short 0049h                          ; JB rel8 || 72 cb || encoded[2]{72 10}
0039h shr rax,10h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 10}
003dh mov rdx,[rsp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 14 24}
0041h or rdx,10h                              ; OR r/m64, imm8 || REX.W 83 /1 ib || encoded[4]{48 83 ca 10}
0045h mov [rsp],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 14 24}
0049h cmp rax,100h                            ; CMP RAX, imm32 || REX.W 3D id || encoded[6]{48 3d 00 01 00 00}
004fh jb short 0061h                          ; JB rel8 || 72 cb || encoded[2]{72 10}
0051h shr rax,8                               ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 08}
0055h mov rdx,[rsp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 14 24}
0059h or rdx,8                                ; OR r/m64, imm8 || REX.W 83 /1 ib || encoded[4]{48 83 ca 08}
005dh mov [rsp],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 14 24}
0061h cmp rax,10h                             ; CMP r/m64, imm8 || REX.W 83 /7 ib || encoded[4]{48 83 f8 10}
0065h jb short 0077h                          ; JB rel8 || 72 cb || encoded[2]{72 10}
0067h shr rax,4                               ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 04}
006bh mov rdx,[rsp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 14 24}
006fh or rdx,4                                ; OR r/m64, imm8 || REX.W 83 /1 ib || encoded[4]{48 83 ca 04}
0073h mov [rsp],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 14 24}
0077h cmp rax,4                               ; CMP r/m64, imm8 || REX.W 83 /7 ib || encoded[4]{48 83 f8 04}
007bh jb short 008dh                          ; JB rel8 || 72 cb || encoded[2]{72 10}
007dh shr rax,2                               ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 02}
0081h mov rdx,[rsp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 14 24}
0085h or rdx,2                                ; OR r/m64, imm8 || REX.W 83 /1 ib || encoded[4]{48 83 ca 02}
0089h mov [rsp],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 14 24}
008dh cmp rax,2                               ; CMP r/m64, imm8 || REX.W 83 /7 ib || encoded[4]{48 83 f8 02}
0091h jb short 009fh                          ; JB rel8 || 72 cb || encoded[2]{72 0c}
0093h mov rax,[rsp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 04 24}
0097h or rax,1                                ; OR r/m64, imm8 || REX.W 83 /1 ib || encoded[4]{48 83 c8 01}
009bh mov [rsp],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 04 24}
009fh mov rax,[rsp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 04 24}
00a3h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
00a6h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
00aah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte mod(sbyte a, sbyte m), hex://math/math?mod#mod_(8i,8i)
; mod_(8i,8i)[21] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbe,0xc1,0x48,0x0f,0xbe,0xca,0x99,0xf7,0xf9,0x48,0x0f,0xbe,0xc2,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
000dh cdq                                     ; CDQ || o32 99 || encoded[1]{99}
000eh idiv ecx                                ; IDIV r/m32 || o32 F7 /7 || encoded[2]{f7 f9}
0010h movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte mod(byte a, byte m), hex://math/math?mod#mod_(8u,8u)
; mod_(8u,8u)[18] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x0f,0xb6,0xca,0x99,0xf7,0xf9,0x0f,0xb6,0xc2,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000bh cdq                                     ; CDQ || o32 99 || encoded[1]{99}
000ch idiv ecx                                ; IDIV r/m32 || o32 F7 /7 || encoded[2]{f7 f9}
000eh movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short mod(short a, short m), hex://math/math?mod#mod_(16i,16i)
; mod_(16i,16i)[21] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbf,0xc1,0x48,0x0f,0xbf,0xca,0x99,0xf7,0xf9,0x48,0x0f,0xbf,0xc2,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
000dh cdq                                     ; CDQ || o32 99 || encoded[1]{99}
000eh idiv ecx                                ; IDIV r/m32 || o32 F7 /7 || encoded[2]{f7 f9}
0010h movsx rax,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c2}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort mod(ushort a, ushort m), hex://math/math?mod#mod_(16u,16u)
; mod_(16u,16u)[18] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x0f,0xb7,0xca,0x99,0xf7,0xf9,0x0f,0xb7,0xc2,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
000bh cdq                                     ; CDQ || o32 99 || encoded[1]{99}
000ch idiv ecx                                ; IDIV r/m32 || o32 F7 /7 || encoded[2]{f7 f9}
000eh movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int mod(int a, int m), hex://math/math?mod#mod_(32i,32i)
; mod_(32i,32i)[17] = {0x0f,0x1f,0x44,0x00,0x00,0x44,0x8b,0xc2,0x8b,0xc1,0x99,0x41,0xf7,0xf8,0x8b,0xc2,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov r8d,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c2}
0008h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
000ah cdq                                     ; CDQ || o32 99 || encoded[1]{99}
000bh idiv r8d                                ; IDIV r/m32 || o32 F7 /7 || encoded[3]{41 f7 f8}
000eh mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint mod(uint a, uint m), hex://math/math?mod#mod_(32u,32u)
; mod_(32u,32u)[18] = {0x0f,0x1f,0x44,0x00,0x00,0x44,0x8b,0xc2,0x8b,0xc1,0x33,0xd2,0x41,0xf7,0xf0,0x8b,0xc2,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov r8d,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c2}
0008h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
000ah xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
000ch div r8d                                 ; DIV r/m32 || o32 F7 /6 || encoded[3]{41 f7 f0}
000fh mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long mod(long a, long m), hex://math/math?mod#mod_(64i,64i)
; mod_(64i,64i)[20] = {0x0f,0x1f,0x44,0x00,0x00,0x4c,0x8b,0xc2,0x48,0x8b,0xc1,0x48,0x99,0x49,0xf7,0xf8,0x48,0x8b,0xc2,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov r8,rdx                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c2}
0008h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000bh cqo                                     ; CQO || REX.W 99 || encoded[2]{48 99}
000dh idiv r8                                 ; IDIV r/m64 || REX.W F7 /7 || encoded[3]{49 f7 f8}
0010h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong mod(ulong a, ulong m), hex://math/math?mod#mod_(64u,64u)
; mod_(64u,64u)[20] = {0x0f,0x1f,0x44,0x00,0x00,0x4c,0x8b,0xc2,0x48,0x8b,0xc1,0x33,0xd2,0x49,0xf7,0xf0,0x48,0x8b,0xc2,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov r8,rdx                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c2}
0008h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000bh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
000dh div r8                                  ; DIV r/m64 || REX.W F7 /6 || encoded[3]{49 f7 f0}
0010h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte modmul(sbyte a, sbyte b, sbyte m), hex://math/math?modmul#modmul_(8i,8i,8i)
; modmul_(8i,8i,8i)[40] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbe,0xc1,0x48,0x63,0xc0,0x48,0x0f,0xbe,0xd2,0x48,0x63,0xd2,0x48,0x0f,0xaf,0xc2,0x49,0x0f,0xbe,0xd0,0x48,0x63,0xca,0x48,0x99,0x48,0xf7,0xf9,0x48,0x0f,0xbe,0xc2,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsxd rax,eax                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c0}
000ch movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
0010h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
0013h imul rax,rdx                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af c2}
0017h movsx rdx,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be d0}
001bh movsxd rcx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 ca}
001eh cqo                                     ; CQO || REX.W 99 || encoded[2]{48 99}
0020h idiv rcx                                ; IDIV r/m64 || REX.W F7 /7 || encoded[3]{48 f7 f9}
0023h movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
0027h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte modmul(byte a, byte b, byte m), hex://math/math?modmul#modmul_(8u,8u,8u)
; modmul_(8u,8u,8u)[30] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x0f,0xb6,0xd2,0x48,0x0f,0xaf,0xc2,0x41,0x0f,0xb6,0xd0,0x8b,0xca,0x33,0xd2,0x48,0xf7,0xf1,0x0f,0xb6,0xc2,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh imul rax,rdx                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af c2}
000fh movzx edx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d0}
0013h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0015h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0017h div rcx                                 ; DIV r/m64 || REX.W F7 /6 || encoded[3]{48 f7 f1}
001ah movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short modmul(short a, short b, short m), hex://math/math?modmul#modmul_(16i,16i,16i)
; modmul_(16i,16i,16i)[40] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbf,0xc1,0x48,0x63,0xc0,0x48,0x0f,0xbf,0xd2,0x48,0x63,0xd2,0x48,0x0f,0xaf,0xc2,0x49,0x0f,0xbf,0xd0,0x48,0x63,0xca,0x48,0x99,0x48,0xf7,0xf9,0x48,0x0f,0xbf,0xc2,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsxd rax,eax                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c0}
000ch movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
0010h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
0013h imul rax,rdx                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af c2}
0017h movsx rdx,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf d0}
001bh movsxd rcx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 ca}
001eh cqo                                     ; CQO || REX.W 99 || encoded[2]{48 99}
0020h idiv rcx                                ; IDIV r/m64 || REX.W F7 /7 || encoded[3]{48 f7 f9}
0023h movsx rax,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c2}
0027h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort modmul(ushort a, ushort b, ushort m), hex://math/math?modmul#modmul_(16u,16u,16u)
; modmul_(16u,16u,16u)[30] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x0f,0xb7,0xd2,0x48,0x0f,0xaf,0xc2,0x41,0x0f,0xb7,0xd0,0x8b,0xca,0x33,0xd2,0x48,0xf7,0xf1,0x0f,0xb7,0xc2,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh imul rax,rdx                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af c2}
000fh movzx edx,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 d0}
0013h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0015h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0017h div rcx                                 ; DIV r/m64 || REX.W F7 /6 || encoded[3]{48 f7 f1}
001ah movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int modmul(int a, int b, int m), hex://math/math?modmul#modmul_(32i,32i,32i)
; modmul_(32i,32i,32i)[26] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x63,0xc1,0x48,0x63,0xd2,0x48,0x0f,0xaf,0xc2,0x49,0x63,0xc8,0x48,0x99,0x48,0xf7,0xf9,0x8b,0xc2,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c1}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh imul rax,rdx                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af c2}
000fh movsxd rcx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 c8}
0012h cqo                                     ; CQO || REX.W 99 || encoded[2]{48 99}
0014h idiv rcx                                ; IDIV r/m64 || REX.W F7 /7 || encoded[3]{48 f7 f9}
0017h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint modmul(uint a, uint b, uint m), hex://math/math?modmul#modmul_(32u,32u,32u)
; modmul_(32u,32u,32u)[24] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0x8b,0xd2,0x48,0x0f,0xaf,0xc2,0x41,0x8b,0xc8,0x33,0xd2,0x48,0xf7,0xf1,0x8b,0xc2,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h mov edx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d2}
0009h imul rax,rdx                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af c2}
000dh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0010h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0012h div rcx                                 ; DIV r/m64 || REX.W F7 /6 || encoded[3]{48 f7 f1}
0015h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long modmul(long a, long b, long m), hex://math/math?modmul#modmul_(64i,64i,64i)
; modmul_(64i,64i,64i)[21] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0x48,0x0f,0xaf,0xc2,0x48,0x99,0x49,0xf7,0xf8,0x48,0x8b,0xc2,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h imul rax,rdx                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af c2}
000ch cqo                                     ; CQO || REX.W 99 || encoded[2]{48 99}
000eh idiv r8                                 ; IDIV r/m64 || REX.W F7 /7 || encoded[3]{49 f7 f8}
0011h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong modmul(ulong a, ulong b, ulong m), hex://math/math?modmul#modmul_(64u,64u,64u)
; modmul_(64u,64u,64u)[21] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0x48,0x0f,0xaf,0xc2,0x33,0xd2,0x49,0xf7,0xf0,0x48,0x8b,0xc2,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h imul rax,rdx                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af c2}
000ch xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
000eh div r8                                  ; DIV r/m64 || REX.W F7 /6 || encoded[3]{49 f7 f0}
0011h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; float modmul(float a, float b, float m), hex://math/math?modmul#modmul_(32f,32f,32f)
; modmul_(32f,32f,32f)[26] = {0x48,0x83,0xec,0x28,0xc5,0xf8,0x77,0xc5,0xfa,0x59,0xc1,0xc5,0xf8,0x28,0xca,0xe8,0xbc,0x2b,0x33,0x5f,0x90,0x48,0x83,0xc4,0x28,0xc3}
; TermCode = CTC_RET_INTR
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h vmulss xmm0,xmm0,xmm1                   ; VMULSS xmm1, xmm2, xmm3/m32 || VEX.LIG.F3.0F.WIG 59 /r || encoded[4]{c5 fa 59 c1}
000bh vmovaps xmm1,xmm2                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 ca}
000fh call 7ff827391660h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc 2b 33 5f}
0014h nop                                     ; NOP || o32 90 || encoded[1]{90}
0015h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double modmul(double a, double b, double m), hex://math/math?modmul#modmul_(64f,64f,64f)
; modmul_(64f,64f,64f)[26] = {0x48,0x83,0xec,0x28,0xc5,0xf8,0x77,0xc5,0xfb,0x59,0xc1,0xc5,0xf8,0x28,0xca,0xe8,0xfc,0x2a,0x33,0x5f,0x90,0x48,0x83,0xc4,0x28,0xc3}
; TermCode = CTC_RET_INTR
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h vmulsd xmm0,xmm0,xmm1                   ; VMULSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 59 /r || encoded[4]{c5 fb 59 c1}
000bh vmovaps xmm1,xmm2                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 ca}
000fh call 7ff8273915d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc 2a 33 5f}
0014h nop                                     ; NOP || o32 90 || encoded[1]{90}
0015h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte mul(sbyte a, sbyte rhs), hex://math/math?mul#mul_(8i,8i)
; mul_(8i,8i)[21] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbe,0xc1,0x48,0x0f,0xbe,0xd2,0x0f,0xaf,0xc2,0x48,0x0f,0xbe,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
000dh imul eax,edx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c2}
0010h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte mul(byte a, byte b), hex://math/math?mul#mul_(8u,8u)
; mul_(8u,8u)[18] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x0f,0xb6,0xd2,0x0f,0xaf,0xc2,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh imul eax,edx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c2}
000eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short mul(short a, short b), hex://math/math?mul#mul_(16i,16i)
; mul_(16i,16i)[21] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbf,0xc1,0x48,0x0f,0xbf,0xd2,0x0f,0xaf,0xc2,0x48,0x0f,0xbf,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
000dh imul eax,edx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c2}
0010h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort mul(ushort a, ushort b), hex://math/math?mul#mul_(16u,16u)
; mul_(16u,16u)[18] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x0f,0xb7,0xd2,0x0f,0xaf,0xc2,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh imul eax,edx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c2}
000eh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int mul(int a, int b), hex://math/math?mul#mul_(32i,32i)
; mul_(32i,32i)[11] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0x0f,0xaf,0xc2,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h imul eax,edx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c2}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint mul(uint a, uint b), hex://math/math?mul#mul_(32u,32u)
; mul_(32u,32u)[11] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0x0f,0xaf,0xc2,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h imul eax,edx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c2}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long mul(long a, long b), hex://math/math?mul#mul_(64i,64i)
; mul_(64i,64i)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0x48,0x0f,0xaf,0xc2,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h imul rax,rdx                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af c2}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong mul(ulong a, ulong b), hex://math/math?mul#mul_(64u,64u)
; mul_(64u,64u)[13] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0xc1,0x48,0x0f,0xaf,0xc2,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h imul rax,rdx                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af c2}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
