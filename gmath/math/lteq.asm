------------------------------------------------------------------------------------------------------------------------
; bit lteq(sbyte a, sbyte b)
; lteq_8i[22] = {0f 1f 44 00 00 48 0f be c1 48 0f be d2 3b c2 0f 9e c0 0f b6 c0 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
000dh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000fh setle al                                ; SETLE r/m8 || 0F 9E /r || encoded[3]{0f 9e c0}
0012h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit lteq(byte a, byte b)
; lteq_8u[20] = {0f 1f 44 00 00 0f b6 c1 0f b6 d2 3b c2 0f 9e c0 0f b6 c0 c3}
; Capture completion code = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000dh setle al                                ; SETLE r/m8 || 0F 9E /r || encoded[3]{0f 9e c0}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit lteq(short a, short b)
; lteq_16i[22] = {0f 1f 44 00 00 48 0f bf c1 48 0f bf d2 3b c2 0f 9e c0 0f b6 c0 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
000dh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000fh setle al                                ; SETLE r/m8 || 0F 9E /r || encoded[3]{0f 9e c0}
0012h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit lteq(ushort a, ushort b)
; lteq_16u[20] = {0f 1f 44 00 00 0f b7 c1 0f b7 d2 3b c2 0f 9e c0 0f b6 c0 c3}
; Capture completion code = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000dh setle al                                ; SETLE r/m8 || 0F 9E /r || encoded[3]{0f 9e c0}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit lteq(int a, int b)
; lteq_32i[14] = {0f 1f 44 00 00 3b ca 0f 9e c0 0f b6 c0 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp ecx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b ca}
0007h setle al                                ; SETLE r/m8 || 0F 9E /r || encoded[3]{0f 9e c0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit lteq(uint a, uint b)
; lteq_32u[14] = {0f 1f 44 00 00 3b ca 0f 96 c0 0f b6 c0 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp ecx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b ca}
0007h setbe al                                ; SETBE r/m8 || 0F 96 /r || encoded[3]{0f 96 c0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit lteq(long a, long b)
; lteq_64i[15] = {0f 1f 44 00 00 48 3b ca 0f 9e c0 0f b6 c0 c3}
; Capture completion code = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp rcx,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b ca}
0008h setle al                                ; SETLE r/m8 || 0F 9E /r || encoded[3]{0f 9e c0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit lteq(ulong a, ulong b)
; lteq_64u[15] = {0f 1f 44 00 00 48 3b ca 0f 96 c0 0f b6 c0 c3}
; Capture completion code = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp rcx,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b ca}
0008h setbe al                                ; SETBE r/m8 || 0F 96 /r || encoded[3]{0f 96 c0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}