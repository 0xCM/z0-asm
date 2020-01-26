------------------------------------------------------------------------------------------------------------------------
; sbyte mul(sbyte a, sbyte rhs)
; mul_8i[21] = {0f 1f 44 00 00 48 0f be c1 48 0f be d2 0f af c2 48 0f be c0 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
000dh imul eax,edx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c2}
0010h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte mul(byte a, byte b)
; mul_8u[18] = {0f 1f 44 00 00 0f b6 c1 0f b6 d2 0f af c2 0f b6 c0 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh imul eax,edx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c2}
000eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Int16 mul(Int16 a, Int16 b)
; mul_16i[21] = {0f 1f 44 00 00 48 0f bf c1 48 0f bf d2 0f af c2 48 0f bf c0 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
000dh imul eax,edx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c2}
0010h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort mul(ushort a, ushort b)
; mul_16u[18] = {0f 1f 44 00 00 0f b7 c1 0f b7 d2 0f af c2 0f b7 c0 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh imul eax,edx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c2}
000eh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int mul(int a, int b)
; mul_32i[11] = {0f 1f 44 00 00 8b c1 0f af c2 c3}
; Capture completion code = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h imul eax,edx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c2}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint mul(uint a, uint b)
; mul_32u[11] = {0f 1f 44 00 00 8b c1 0f af c2 c3}
; Capture completion code = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h imul eax,edx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c2}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long mul(long a, long b)
; mul_64i[13] = {0f 1f 44 00 00 48 8b c1 48 0f af c2 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h imul rax,rdx                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af c2}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong mul(ulong a, ulong b)
; mul_64u[13] = {0f 1f 44 00 00 48 8b c1 48 0f af c2 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h imul rax,rdx                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af c2}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
