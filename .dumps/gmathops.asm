; 2020-01-24 20:46:47:892
; long srl_d64i(long lhs, byte offset)
; srl_d64i_64i[7ff7c68b2c30h, 7ff7c68b2c3fh][15] = {0f 1f 44 00 00 48 8b c1 0f b6 ca 48 d3 e8 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000bh shr rax,cl                              ; SHR r/m64, CL || REX.W D3 /5 || encoded[3]{48 d3 e8}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; long srl_g64i(long lhs, byte offset)
; srl_g64i_64i[7ff7c68b2c50h, 7ff7c68b2c5fh][15] = {0f 1f 44 00 00 48 8b c1 0f b6 ca 48 d3 e8 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000bh shr rax,cl                              ; SHR r/m64, CL || REX.W D3 /5 || encoded[3]{48 d3 e8}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ulong srl_d64u(ulong lhs, byte offset)
; srl_d64u_64u[7ff7c68b2c70h, 7ff7c68b2c7fh][15] = {0f 1f 44 00 00 48 8b c1 0f b6 ca 48 d3 e8 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000bh shr rax,cl                              ; SHR r/m64, CL || REX.W D3 /5 || encoded[3]{48 d3 e8}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ulong srl_g64u(ulong lhs, byte offset)
; srl_g64u_64u[7ff7c68b2c90h, 7ff7c68b2c9fh][15] = {0f 1f 44 00 00 48 8b c1 0f b6 ca 48 d3 e8 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000bh shr rax,cl                              ; SHR r/m64, CL || REX.W D3 /5 || encoded[3]{48 d3 e8}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; sbyte sub_d8i(sbyte lhs, sbyte rhs)
; sub_d8i_8i[7ff7c68b2cb0h, 7ff7c68b2cc4h][20] = {0f 1f 44 00 00 48 0f be c1 48 0f be d2 2b c2 48 0f be c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
000dh sub eax,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c2}
000fh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; sbyte sub_g8i(sbyte lhs, sbyte rhs)
; sub_g8i_8i[7ff7c68b2ce0h, 7ff7c68b2cf4h][20] = {0f 1f 44 00 00 48 0f be c1 48 0f be d2 2b c2 48 0f be c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
000dh sub eax,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c2}
000fh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; byte sub_d8u(byte lhs, byte rhs)
; sub_d8u_8u[7ff7c68b2d10h, 7ff7c68b2d21h][17] = {0f 1f 44 00 00 0f b6 c1 0f b6 d2 2b c2 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh sub eax,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c2}
000dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; byte sub_g8u(byte lhs, byte rhs)
; sub_g8u_8u[7ff7c68b2d40h, 7ff7c68b2d51h][17] = {0f 1f 44 00 00 0f b6 c1 0f b6 d2 2b c2 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh sub eax,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c2}
000dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; Int16 sub_d16i(Int16 lhs, Int16 rhs)
; sub_d16i_16i[7ff7c68b2d70h, 7ff7c68b2d84h][20] = {0f 1f 44 00 00 48 0f bf c1 48 0f bf d2 2b c2 48 0f bf c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
000dh sub eax,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c2}
000fh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; Int16 sub_g16i(Int16 lhs, Int16 rhs)
; sub_g16i_16i[7ff7c68b31a0h, 7ff7c68b31b4h][20] = {0f 1f 44 00 00 48 0f bf c1 48 0f bf d2 2b c2 48 0f bf c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
000dh sub eax,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c2}
000fh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ushort sub_d16u(ushort lhs, ushort rhs)
; sub_d16u_16u[7ff7c68b31d0h, 7ff7c68b31e1h][17] = {0f 1f 44 00 00 0f b7 c1 0f b7 d2 2b c2 0f b7 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh sub eax,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c2}
000dh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ushort sub_g16u(ushort lhs, ushort rhs)
; sub_g16u_16u[7ff7c68b3200h, 7ff7c68b3211h][17] = {0f 1f 44 00 00 0f b7 c1 0f b7 d2 2b c2 0f b7 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh sub eax,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c2}
000dh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; int sub_d32i(int lhs, int rhs)
; sub_d32i_32i[7ff7c68b3230h, 7ff7c68b323ah][10] = {0f 1f 44 00 00 8b c1 2b c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h sub eax,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c2}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; int sub_g32i(int lhs, int rhs)
; sub_g32i_32i[7ff7c68b3250h, 7ff7c68b325ah][10] = {0f 1f 44 00 00 2b ca 8b c1 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h sub ecx,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b ca}
0007h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; uint sub_d32u(uint lhs, uint rhs)
; sub_d32u_32u[7ff7c68b3270h, 7ff7c68b327ah][10] = {0f 1f 44 00 00 8b c1 2b c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h sub eax,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c2}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; uint sub_g32u(uint lhs, uint rhs)
; sub_g32u_32u[7ff7c68b3290h, 7ff7c68b329ah][10] = {0f 1f 44 00 00 2b ca 8b c1 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h sub ecx,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b ca}
0007h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; long sub_d64i(long lhs, long rhs)
; sub_d64i_64i[7ff7c68b32b0h, 7ff7c68b32bch][12] = {0f 1f 44 00 00 48 8b c1 48 2b c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h sub rax,rdx                             ; SUB r64, r/m64 || REX.W 2B /r || encoded[3]{48 2b c2}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; long sub_g64i(long lhs, long rhs)
; sub_g64i_64i[7ff7c68b32d0h, 7ff7c68b32dch][12] = {0f 1f 44 00 00 48 2b ca 48 8b c1 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h sub rcx,rdx                             ; SUB r64, r/m64 || REX.W 2B /r || encoded[3]{48 2b ca}
0008h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ulong sub_d64u(ulong lhs, ulong rhs)
; sub_d64u_64u[7ff7c68b32f0h, 7ff7c68b32fch][12] = {0f 1f 44 00 00 48 8b c1 48 2b c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h sub rax,rdx                             ; SUB r64, r/m64 || REX.W 2B /r || encoded[3]{48 2b c2}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ulong sub_g64u(ulong lhs, ulong rhs)
; sub_g64u_64u[7ff7c68b3310h, 7ff7c68b331ch][12] = {0f 1f 44 00 00 48 2b ca 48 8b c1 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h sub rcx,rdx                             ; SUB r64, r/m64 || REX.W 2B /r || encoded[3]{48 2b ca}
0008h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; float sub_d32f(float lhs, float rhs)
; sub_d32f_32f[7ff7c68b36d0h, 7ff7c68b36dah][10] = {c5 f8 77 66 90 c5 fa 5c c1 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vsubss xmm0,xmm0,xmm1                   ; VSUBSS xmm1, xmm2, xmm3/m32 || VEX.LIG.F3.0F.WIG 5C /r || encoded[4]{c5 fa 5c c1}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; float sub_g32f(float lhs, float rhs)
; sub_g32f_32f[7ff7c68b3840h, 7ff7c68b384ah][10] = {c5 f8 77 66 90 c5 fa 5c c1 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vsubss xmm0,xmm0,xmm1                   ; VSUBSS xmm1, xmm2, xmm3/m32 || VEX.LIG.F3.0F.WIG 5C /r || encoded[4]{c5 fa 5c c1}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; double sub_d64f(double lhs, double rhs)
; sub_d64f_64f[7ff7c68b3860h, 7ff7c68b386ah][10] = {c5 f8 77 66 90 c5 fb 5c c1 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vsubsd xmm0,xmm0,xmm1                   ; VSUBSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 5C /r || encoded[4]{c5 fb 5c c1}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; double sub_g64f(double lhs, double rhs)
; sub_g64f_64f[7ff7c68b3c90h, 7ff7c68b3c9ah][10] = {c5 f8 77 66 90 c5 fb 5c c1 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vsubsd xmm0,xmm0,xmm1                   ; VSUBSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 5C /r || encoded[4]{c5 fb 5c c1}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; sbyte xor_d8i(sbyte lhs, sbyte rhs)
; xor_d8i_8i[7ff7c68b3cb0h, 7ff7c68b3cc4h][20] = {0f 1f 44 00 00 48 0f be c1 48 0f be d2 33 c2 48 0f be c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
000dh xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
000fh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; sbyte xor_g8i(sbyte lhs, sbyte rhs)
; xor_g8i_8i[7ff7c68b3ce0h, 7ff7c68b3cf4h][20] = {0f 1f 44 00 00 48 0f be c1 48 0f be d2 33 c2 48 0f be c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
000dh xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
000fh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; byte xor_d8u(byte lhs, byte rhs)
; xor_d8u_8u[7ff7c68b3d10h, 7ff7c68b3d21h][17] = {0f 1f 44 00 00 0f b6 c1 0f b6 d2 33 c2 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
000dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; byte xor_g8u(byte lhs, byte rhs)
; xor_g8u_8u[7ff7c68b3d40h, 7ff7c68b3d51h][17] = {0f 1f 44 00 00 0f b6 c1 0f b6 d2 33 c2 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
000dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; Int16 xor_d16i(Int16 lhs, Int16 rhs)
; xor_d16i_16i[7ff7c68b3d70h, 7ff7c68b3d84h][20] = {0f 1f 44 00 00 48 0f bf c1 48 0f bf d2 33 c2 48 0f bf c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
000dh xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
000fh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; Int16 xor_g16i(Int16 lhs, Int16 rhs)
; xor_g16i_16i[7ff7c68b3da0h, 7ff7c68b3db4h][20] = {0f 1f 44 00 00 48 0f bf c1 48 0f bf d2 33 c2 48 0f bf c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
000dh xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
000fh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ushort xor_d16u(ushort lhs, ushort rhs)
; xor_d16u_16u[7ff7c68b3dd0h, 7ff7c68b3de1h][17] = {0f 1f 44 00 00 0f b7 c1 0f b7 d2 33 c2 0f b7 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
000dh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ushort xor_g16u(ushort lhs, ushort rhs)
; xor_g16u_16u[7ff7c68b3e00h, 7ff7c68b3e11h][17] = {0f 1f 44 00 00 0f b7 c1 0f b7 d2 33 c2 0f b7 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
000dh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; int xor_d32i(int lhs, int rhs)
; xor_d32i_32i[7ff7c68b3e30h, 7ff7c68b3e3ah][10] = {0f 1f 44 00 00 8b c1 33 c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; int xor_g32i(int lhs, int rhs)
; xor_g32i_32i[7ff7c68b3e50h, 7ff7c68b3e5ah][10] = {0f 1f 44 00 00 33 d1 8b c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor edx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d1}
0007h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; uint xor_d32u(uint lhs, uint rhs)
; xor_d32u_32u[7ff7c68b3e70h, 7ff7c68b3e7ah][10] = {0f 1f 44 00 00 8b c1 33 c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; uint xor_g32u(uint lhs, uint rhs)
; xor_g32u_32u[7ff7c68b3e90h, 7ff7c68b3e9ah][10] = {0f 1f 44 00 00 33 d1 8b c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor edx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d1}
0007h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; long xor_d64i(long lhs, long rhs)
; xor_d64i_64i[7ff7c68b3eb0h, 7ff7c68b3ebch][12] = {0f 1f 44 00 00 48 8b c1 48 33 c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h xor rax,rdx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 c2}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; long xor_g64i(long lhs, long rhs)
; xor_g64i_64i[7ff7c68b3ed0h, 7ff7c68b3edch][12] = {0f 1f 44 00 00 48 33 d1 48 8b c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor rdx,rcx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 d1}
0008h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ulong xor_d64u(ulong lhs, ulong rhs)
; xor_d64u_64u[7ff7c68b3ef0h, 7ff7c68b3efch][12] = {0f 1f 44 00 00 48 8b c1 48 33 c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h xor rax,rdx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 c2}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ulong xor_g64u(ulong lhs, ulong rhs)
; xor_g64u_64u[7ff7c68b3f10h, 7ff7c68b3f1ch][12] = {0f 1f 44 00 00 48 33 d1 48 8b c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor rdx,rcx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 d1}
0008h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; float xor_d32f(float lhs, float rhs)
; xor_d32f_32f[7ff7c68b3f30h, 7ff7c68b3f5ah][42] = {48 83 ec 18 c5 f8 77 c5 fa 11 44 24 14 8b 44 24 14 c5 fa 11 4c 24 10 33 44 24 10 89 44 24 0c c5 fa 10 44 24 0c 48 83 c4 18 c3}
; Capture completion code, MSDIAG
0000h sub rsp,18h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 18}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h vmovss dword ptr [rsp+14h],xmm0         ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[6]{c5 fa 11 44 24 14}
000dh mov eax,[rsp+14h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 14}
0011h vmovss dword ptr [rsp+10h],xmm1         ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[6]{c5 fa 11 4c 24 10}
0017h xor eax,[rsp+10h]                       ; XOR r32, r/m32 || o32 33 /r || encoded[4]{33 44 24 10}
001bh mov [rsp+0ch],eax                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 0c}
001fh vmovss xmm0,dword ptr [rsp+0ch]         ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c5 fa 10 44 24 0c}
0025h add rsp,18h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 18}
0029h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; float xor_g32f(float lhs, float rhs)
; xor_g32f_32f[7ff7c68b4380h, 7ff7c68b43aah][42] = {48 83 ec 18 c5 f8 77 c5 fa 11 44 24 14 8b 44 24 14 c5 fa 11 4c 24 10 33 44 24 10 89 44 24 0c c5 fa 10 44 24 0c 48 83 c4 18 c3}
; Capture completion code, MSDIAG
0000h sub rsp,18h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 18}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h vmovss dword ptr [rsp+14h],xmm0         ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[6]{c5 fa 11 44 24 14}
000dh mov eax,[rsp+14h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 14}
0011h vmovss dword ptr [rsp+10h],xmm1         ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[6]{c5 fa 11 4c 24 10}
0017h xor eax,[rsp+10h]                       ; XOR r32, r/m32 || o32 33 /r || encoded[4]{33 44 24 10}
001bh mov [rsp+0ch],eax                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 0c}
001fh vmovss xmm0,dword ptr [rsp+0ch]         ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c5 fa 10 44 24 0c}
0025h add rsp,18h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 18}
0029h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; double xor_d64f(double lhs, double rhs)
; xor_d64f_64f[7ff7c68b43d0h, 7ff7c68b43fbh][43] = {48 83 ec 18 c5 f8 77 c5 fb 11 44 24 10 48 8b 44 24 10 c5 fb 11 4c 24 08 48 33 44 24 08 48 89 04 24 c5 fb 10 04 24 48 83 c4 18 c3}
; Capture completion code, MSDIAG
0000h sub rsp,18h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 18}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h vmovsd qword ptr [rsp+10h],xmm0         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[6]{c5 fb 11 44 24 10}
000dh mov rax,[rsp+10h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 44 24 10}
0012h vmovsd qword ptr [rsp+8],xmm1           ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[6]{c5 fb 11 4c 24 08}
0018h xor rax,[rsp+8]                         ; XOR r64, r/m64 || REX.W 33 /r || encoded[5]{48 33 44 24 08}
001dh mov [rsp],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 04 24}
0021h vmovsd xmm0,qword ptr [rsp]             ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 04 24}
0026h add rsp,18h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 18}
002ah ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; double xor_g64f(double lhs, double rhs)
; xor_g64f_64f[7ff7c68b4420h, 7ff7c68b444bh][43] = {48 83 ec 18 c5 f8 77 c5 fb 11 44 24 10 48 8b 44 24 10 c5 fb 11 4c 24 08 48 33 44 24 08 48 89 04 24 c5 fb 10 04 24 48 83 c4 18 c3}
; Capture completion code, MSDIAG
0000h sub rsp,18h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 18}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h vmovsd qword ptr [rsp+10h],xmm0         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[6]{c5 fb 11 44 24 10}
000dh mov rax,[rsp+10h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 44 24 10}
0012h vmovsd qword ptr [rsp+8],xmm1           ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[6]{c5 fb 11 4c 24 08}
0018h xor rax,[rsp+8]                         ; XOR r64, r/m64 || REX.W 33 /r || encoded[5]{48 33 44 24 08}
001dh mov [rsp],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 04 24}
0021h vmovsd xmm0,qword ptr [rsp]             ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 04 24}
0026h add rsp,18h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 18}
002ah ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ushort or_d16u(ushort lhs, ushort rhs)
; or_d16u_16u[7ff7c68b4470h, 7ff7c68b4481h][17] = {0f 1f 44 00 00 0f b7 c1 0f b7 d2 0b c2 0f b7 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
000dh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ushort or_g16u(ushort lhs, ushort rhs)
; or_g16u_16u[7ff7c68b44a0h, 7ff7c68b44b1h][17] = {0f 1f 44 00 00 0f b7 c1 0f b7 d2 0b c2 0f b7 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
000dh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; int or_d32i(int lhs, int rhs)
; or_d32i_32i[7ff7c68b44d0h, 7ff7c68b44dah][10] = {0f 1f 44 00 00 8b c1 0b c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; int or_g32i(int lhs, int rhs)
; or_g32i_32i[7ff7c68b44f0h, 7ff7c68b44fah][10] = {0f 1f 44 00 00 0b d1 8b c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h or edx,ecx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b d1}
0007h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; uint or_d32u(uint lhs, uint rhs)
; or_d32u_32u[7ff7c68b4510h, 7ff7c68b451ah][10] = {0f 1f 44 00 00 8b c1 0b c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; uint or_g32u(uint lhs, uint rhs)
; or_g32u_32u[7ff7c68b4530h, 7ff7c68b453ah][10] = {0f 1f 44 00 00 0b d1 8b c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h or edx,ecx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b d1}
0007h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; long or_d64i(long lhs, long rhs)
; or_d64i_64i[7ff7c68b4550h, 7ff7c68b455ch][12] = {0f 1f 44 00 00 48 8b c1 48 0b c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; long or_g64i(long lhs, long rhs)
; or_g64i_64i[7ff7c68b4570h, 7ff7c68b457ch][12] = {0f 1f 44 00 00 48 0b d1 48 8b c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h or rdx,rcx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b d1}
0008h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ulong or_d64u(ulong lhs, ulong rhs)
; or_d64u_64u[7ff7c68b4590h, 7ff7c68b459ch][12] = {0f 1f 44 00 00 48 8b c1 48 0b c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ulong or_g64u(ulong lhs, ulong rhs)
; or_g64u_64u[7ff7c68b45b0h, 7ff7c68b45bch][12] = {0f 1f 44 00 00 48 0b d1 48 8b c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h or rdx,rcx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b d1}
0008h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; float or_d32f(float lhs, float rhs)
; or_d32f_32f[7ff7c68b45d0h, 7ff7c68b45fah][42] = {48 83 ec 18 c5 f8 77 c5 fa 11 44 24 14 8b 44 24 14 c5 fa 11 4c 24 10 0b 44 24 10 89 44 24 0c c5 fa 10 44 24 0c 48 83 c4 18 c3}
; Capture completion code, MSDIAG
0000h sub rsp,18h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 18}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h vmovss dword ptr [rsp+14h],xmm0         ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[6]{c5 fa 11 44 24 14}
000dh mov eax,[rsp+14h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 14}
0011h vmovss dword ptr [rsp+10h],xmm1         ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[6]{c5 fa 11 4c 24 10}
0017h or eax,[rsp+10h]                        ; OR r32, r/m32 || o32 0B /r || encoded[4]{0b 44 24 10}
001bh mov [rsp+0ch],eax                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 0c}
001fh vmovss xmm0,dword ptr [rsp+0ch]         ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c5 fa 10 44 24 0c}
0025h add rsp,18h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 18}
0029h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; float or_g32f(float lhs, float rhs)
; or_g32f_32f[7ff7c68b4620h, 7ff7c68b464ah][42] = {48 83 ec 18 c5 f8 77 c5 fa 11 44 24 14 8b 44 24 14 c5 fa 11 4c 24 10 0b 44 24 10 89 44 24 0c c5 fa 10 44 24 0c 48 83 c4 18 c3}
; Capture completion code, MSDIAG
0000h sub rsp,18h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 18}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h vmovss dword ptr [rsp+14h],xmm0         ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[6]{c5 fa 11 44 24 14}
000dh mov eax,[rsp+14h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 14}
0011h vmovss dword ptr [rsp+10h],xmm1         ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[6]{c5 fa 11 4c 24 10}
0017h or eax,[rsp+10h]                        ; OR r32, r/m32 || o32 0B /r || encoded[4]{0b 44 24 10}
001bh mov [rsp+0ch],eax                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 0c}
001fh vmovss xmm0,dword ptr [rsp+0ch]         ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c5 fa 10 44 24 0c}
0025h add rsp,18h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 18}
0029h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; double or_d64f(double lhs, double rhs)
; or_d64f_64f[7ff7c68b4670h, 7ff7c68b469bh][43] = {48 83 ec 18 c5 f8 77 c5 fb 11 44 24 10 48 8b 44 24 10 c5 fb 11 4c 24 08 48 0b 44 24 08 48 89 04 24 c5 fb 10 04 24 48 83 c4 18 c3}
; Capture completion code, MSDIAG
0000h sub rsp,18h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 18}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h vmovsd qword ptr [rsp+10h],xmm0         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[6]{c5 fb 11 44 24 10}
000dh mov rax,[rsp+10h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 44 24 10}
0012h vmovsd qword ptr [rsp+8],xmm1           ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[6]{c5 fb 11 4c 24 08}
0018h or rax,[rsp+8]                          ; OR r64, r/m64 || REX.W 0B /r || encoded[5]{48 0b 44 24 08}
001dh mov [rsp],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 04 24}
0021h vmovsd xmm0,qword ptr [rsp]             ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 04 24}
0026h add rsp,18h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 18}
002ah ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; double or_g64f(double lhs, double rhs)
; or_g64f_64f[7ff7c68b46c0h, 7ff7c68b46d2h][18] = {c5 f8 77 66 90 48 b8 a8 41 8b c6 f7 7f 00 00 48 ff e0}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,7ff7c68b41a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 41 8b c6 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; Perm4L:byte perm4_assemble_id()
; perm4_assemble_id__0o[7ff7c68b48e0h, 7ff7c68b48ebh][11] = {0f 1f 44 00 00 b8 e4 00 00 00 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,0e4h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 e4 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; Perm4L:byte perm4_assemble_rid()
; perm4_assemble_rid__0o[7ff7c68b4900h, 7ff7c68b490bh][11] = {0f 1f 44 00 00 b8 1b 00 00 00 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,1bh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 1b 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bool positive_n8i(sbyte x)
; positive_n8i_8i[7ff7c68b4920h, 7ff7c68b4932h][18] = {0f 1f 44 00 00 48 0f be c1 85 c0 0f 9f c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
000bh setg al                                 ; SETG r/m8 || 0F 9F /r || encoded[3]{0f 9f c0}
000eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bool positive_g8i(sbyte x)
; positive_g8i_8i[7ff7c68b4950h, 7ff7c68b496ah][26] = {0f 1f 44 00 00 48 0f be c1 85 c0 0f 9f c0 0f b6 c0 85 c0 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
000bh setg al                                 ; SETG r/m8 || 0F 9F /r || encoded[3]{0f 9f c0}
000eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0011h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0013h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0016h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bool positive_n8u(byte x)
; positive_n8u_8u[7ff7c68b4980h, 7ff7c68b498eh][14] = {0f 1f 44 00 00 84 c9 0f 97 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test cl,cl                              ; TEST r/m8, r8 || 84 /r || encoded[2]{84 c9}
0007h seta al                                 ; SETA r/m8 || 0F 97 /r || encoded[3]{0f 97 c0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bool positive_g8u(byte x)
; positive_g8u_8u[7ff7c68b49a0h, 7ff7c68b49b9h][25] = {0f 1f 44 00 00 0f b6 c1 85 c0 0f 9f c0 0f b6 c0 85 c0 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
000ah setg al                                 ; SETG r/m8 || 0F 9F /r || encoded[3]{0f 9f c0}
000dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0010h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0012h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0015h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bool positive_n16i(Int16 x)
; positive_n16i_16i[7ff7c68b49d0h, 7ff7c68b49e2h][18] = {0f 1f 44 00 00 48 0f bf c1 85 c0 0f 9f c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
000bh setg al                                 ; SETG r/m8 || 0F 9F /r || encoded[3]{0f 9f c0}
000eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bool positive_g16i(Int16 x)
; positive_g16i_16i[7ff7c68b4a00h, 7ff7c68b4a1ah][26] = {0f 1f 44 00 00 48 0f bf c1 85 c0 0f 9f c0 0f b6 c0 85 c0 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
000bh setg al                                 ; SETG r/m8 || 0F 9F /r || encoded[3]{0f 9f c0}
000eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0011h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0013h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0016h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bool positive_n16u(ushort x)
; positive_n16u_16u[7ff7c68b4a30h, 7ff7c68b4a41h][17] = {0f 1f 44 00 00 0f b7 c1 85 c0 0f 9f c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
000ah setg al                                 ; SETG r/m8 || 0F 9F /r || encoded[3]{0f 9f c0}
000dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bool positive_g16u(ushort x)
; positive_g16u_16u[7ff7c68b4a60h, 7ff7c68b4a79h][25] = {0f 1f 44 00 00 0f b7 c1 85 c0 0f 9f c0 0f b6 c0 85 c0 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
000ah setg al                                 ; SETG r/m8 || 0F 9F /r || encoded[3]{0f 9f c0}
000dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0010h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0012h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0015h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bool positive_n32i(int x)
; positive_n32i_32i[7ff7c68b4a90h, 7ff7c68b4a9eh][14] = {0f 1f 44 00 00 85 c9 0f 9f c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test ecx,ecx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c9}
0007h setg al                                 ; SETG r/m8 || 0F 9F /r || encoded[3]{0f 9f c0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bool positive_g32i(int x)
; positive_g32i_32i[7ff7c68b4ab0h, 7ff7c68b4ac6h][22] = {0f 1f 44 00 00 85 c9 0f 9f c0 0f b6 c0 85 c0 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test ecx,ecx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c9}
0007h setg al                                 ; SETG r/m8 || 0F 9F /r || encoded[3]{0f 9f c0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
000fh setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0012h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bool positive_n32u(uint x)
; positive_n32u_32u[7ff7c68b4ae0h, 7ff7c68b4aeeh][14] = {0f 1f 44 00 00 85 c9 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test ecx,ecx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c9}
0007h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bool positive_g32u(uint x)
; positive_g32u_32u[7ff7c68b4b00h, 7ff7c68b4b16h][22] = {0f 1f 44 00 00 85 c9 0f 95 c0 0f b6 c0 85 c0 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test ecx,ecx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c9}
0007h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
000fh setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0012h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bool positive_n64i(long x)
; positive_n64i_64i[7ff7c68b4b30h, 7ff7c68b4b3fh][15] = {0f 1f 44 00 00 48 85 c9 0f 9f c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test rcx,rcx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c9}
0008h setg al                                 ; SETG r/m8 || 0F 9F /r || encoded[3]{0f 9f c0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bool positive_g64i(long x)
; positive_g64i_64i[7ff7c68b4b50h, 7ff7c68b4b67h][23] = {0f 1f 44 00 00 48 85 c9 0f 9f c0 0f b6 c0 85 c0 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test rcx,rcx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c9}
0008h setg al                                 ; SETG r/m8 || 0F 9F /r || encoded[3]{0f 9f c0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0010h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0013h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bool positive_n64u(ulong x)
; positive_n64u_64u[7ff7c68b4b80h, 7ff7c68b4b8fh][15] = {0f 1f 44 00 00 48 85 c9 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test rcx,rcx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c9}
0008h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bool positive_g64u(ulong x)
; positive_g64u_64u[7ff7c68b4fb0h, 7ff7c68b4fc7h][23] = {0f 1f 44 00 00 48 85 c9 0f 95 c0 0f b6 c0 85 c0 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test rcx,rcx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c9}
0008h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0010h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0013h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bool positive_n32f(float x)
; positive_n32f_32f[7ff7c68b4fe0h, 7ff7c68b4ff4h][20] = {c5 f8 77 66 90 c5 f0 57 c9 c5 f8 2e c1 0f 97 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
0009h vucomiss xmm0,xmm1                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e c1}
000dh seta al                                 ; SETA r/m8 || 0F 97 /r || encoded[3]{0f 97 c0}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bool positive_g32f(float x)
; positive_g32f_32f[7ff7c68b5010h, 7ff7c68b502ch][28] = {c5 f8 77 66 90 c5 f0 57 c9 c5 f8 2e c1 0f 97 c0 0f b6 c0 85 c0 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
0009h vucomiss xmm0,xmm1                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e c1}
000dh seta al                                 ; SETA r/m8 || 0F 97 /r || encoded[3]{0f 97 c0}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0015h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0018h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bool positive_n64f(double x)
; positive_n64f_64f[7ff7c68b5040h, 7ff7c68b5054h][20] = {c5 f8 77 66 90 c5 f0 57 c9 c5 f9 2e c1 0f 97 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
0009h vucomisd xmm0,xmm1                      ; VUCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2E /r || encoded[4]{c5 f9 2e c1}
000dh seta al                                 ; SETA r/m8 || 0F 97 /r || encoded[3]{0f 97 c0}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bool positive_g64f(double x)
; positive_g64f_64f[7ff7c68b5070h, 7ff7c68b508ch][28] = {c5 f8 77 66 90 c5 f0 57 c9 c5 f9 2e c1 0f 97 c0 0f b6 c0 85 c0 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
0009h vucomisd xmm0,xmm1                      ; VUCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2E /r || encoded[4]{c5 f9 2e c1}
000dh seta al                                 ; SETA r/m8 || 0F 97 /r || encoded[3]{0f 97 c0}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0015h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0018h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit ispow2_g16u(ushort a)
; ispow2_g16u_16u[7ff7c68b50a0h, 7ff7c68b50b6h][22] = {0f 1f 44 00 00 0f b7 c1 48 8d 50 ff 48 85 c2 0f 94 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h lea rdx,[rax-1]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 ff}
000ch test rax,rdx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c2}
000fh sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0012h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit ispow2_16u(ushort a)
; ispow2_16u_16u[7ff7c68b50d0h, 7ff7c68b50e4h][20] = {0f 1f 44 00 00 0f b7 c1 8d 50 ff 85 c2 0f 94 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h lea edx,[rax-1]                         ; LEA r32, m || o32 8D /r || encoded[3]{8d 50 ff}
000bh test eax,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c2}
000dh sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; sbyte pow_b8i(sbyte b, uint exp)
; pow_b8i_8i[7ff7c68b5100h, 7ff7c68b5137h][55] = {0f 1f 44 00 00 48 0f be c1 85 d2 75 07 b8 01 00 00 00 eb 22 b9 01 00 00 00 f6 c2 01 74 07 0f af c8 48 0f be c9 d1 ea 85 d2 74 09 0f af c0 48 0f be c0 eb e5 8b c1 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
000bh jne short 0014h                         ; JNE rel8 || 75 cb || encoded[2]{75 07}
000dh mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
0012h jmp short 0036h                         ; JMP rel8 || EB cb || encoded[2]{eb 22}
0014h mov ecx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 01 00 00 00}
0019h test dl,1                               ; TEST r/m8, imm8 || F6 /0 ib || encoded[3]{f6 c2 01}
001ch je short 0025h                          ; JE rel8 || 74 cb || encoded[2]{74 07}
001eh imul ecx,eax                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c8}
0021h movsx rcx,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c9}
0025h shr edx,1                               ; SHR r/m32, 1 || o32 D1 /5 || encoded[2]{d1 ea}
0027h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0029h je short 0034h                          ; JE rel8 || 74 cb || encoded[2]{74 09}
002bh imul eax,eax                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c0}
002eh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0032h jmp short 0019h                         ; JMP rel8 || EB cb || encoded[2]{eb e5}
0034h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0036h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; sbyte pow_g8i(sbyte b, uint exp)
; pow_g8i_8i[7ff7c68b5150h, 7ff7c68b5187h][55] = {0f 1f 44 00 00 48 0f be c1 85 d2 75 07 b9 01 00 00 00 eb 20 b9 01 00 00 00 f6 c2 01 74 07 0f af c8 48 0f be c9 d1 ea 85 d2 74 09 0f af c0 48 0f be c0 eb e5 8b c1 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
000bh jne short 0014h                         ; JNE rel8 || 75 cb || encoded[2]{75 07}
000dh mov ecx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 01 00 00 00}
0012h jmp short 0034h                         ; JMP rel8 || EB cb || encoded[2]{eb 20}
0014h mov ecx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 01 00 00 00}
0019h test dl,1                               ; TEST r/m8, imm8 || F6 /0 ib || encoded[3]{f6 c2 01}
001ch je short 0025h                          ; JE rel8 || 74 cb || encoded[2]{74 07}
001eh imul ecx,eax                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c8}
0021h movsx rcx,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c9}
0025h shr edx,1                               ; SHR r/m32, 1 || o32 D1 /5 || encoded[2]{d1 ea}
0027h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0029h je short 0034h                          ; JE rel8 || 74 cb || encoded[2]{74 09}
002bh imul eax,eax                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c0}
002eh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0032h jmp short 0019h                         ; JMP rel8 || EB cb || encoded[2]{eb e5}
0034h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0036h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; byte pow_b8u(byte b, uint exp)
; pow_b8u_8u[7ff7c68b51a0h, 7ff7c68b51d4h][52] = {0f 1f 44 00 00 0f b6 c1 85 d2 75 07 b8 01 00 00 00 eb 20 b9 01 00 00 00 f6 c2 01 74 06 0f af c8 0f b6 c9 d1 ea 85 d2 74 08 0f af c0 0f b6 c0 eb e7 8b c1 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
000ah jne short 0013h                         ; JNE rel8 || 75 cb || encoded[2]{75 07}
000ch mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
0011h jmp short 0033h                         ; JMP rel8 || EB cb || encoded[2]{eb 20}
0013h mov ecx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 01 00 00 00}
0018h test dl,1                               ; TEST r/m8, imm8 || F6 /0 ib || encoded[3]{f6 c2 01}
001bh je short 0023h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
001dh imul ecx,eax                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c8}
0020h movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
0023h shr edx,1                               ; SHR r/m32, 1 || o32 D1 /5 || encoded[2]{d1 ea}
0025h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0027h je short 0031h                          ; JE rel8 || 74 cb || encoded[2]{74 08}
0029h imul eax,eax                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c0}
002ch movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
002fh jmp short 0018h                         ; JMP rel8 || EB cb || encoded[2]{eb e7}
0031h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0033h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; byte pow_g8u(byte b, uint exp)
; pow_g8u_8u[7ff7c68b51f0h, 7ff7c68b5224h][52] = {0f 1f 44 00 00 0f b6 c1 85 d2 75 07 b9 01 00 00 00 eb 1e b9 01 00 00 00 f6 c2 01 74 06 0f af c8 0f b6 c9 d1 ea 85 d2 74 08 0f af c0 0f b6 c0 eb e7 8b c1 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
000ah jne short 0013h                         ; JNE rel8 || 75 cb || encoded[2]{75 07}
000ch mov ecx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 01 00 00 00}
0011h jmp short 0031h                         ; JMP rel8 || EB cb || encoded[2]{eb 1e}
0013h mov ecx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 01 00 00 00}
0018h test dl,1                               ; TEST r/m8, imm8 || F6 /0 ib || encoded[3]{f6 c2 01}
001bh je short 0023h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
001dh imul ecx,eax                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c8}
0020h movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
0023h shr edx,1                               ; SHR r/m32, 1 || o32 D1 /5 || encoded[2]{d1 ea}
0025h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0027h je short 0031h                          ; JE rel8 || 74 cb || encoded[2]{74 08}
0029h imul eax,eax                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c0}
002ch movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
002fh jmp short 0018h                         ; JMP rel8 || EB cb || encoded[2]{eb e7}
0031h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0033h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; Int16 pow_b16i(Int16 b, uint exp)
; pow_b16i_16i[7ff7c68b5240h, 7ff7c68b5277h][55] = {0f 1f 44 00 00 48 0f bf c1 85 d2 75 07 b8 01 00 00 00 eb 22 b9 01 00 00 00 f6 c2 01 74 07 0f af c8 48 0f bf c9 d1 ea 85 d2 74 09 0f af c0 48 0f bf c0 eb e5 8b c1 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
000bh jne short 0014h                         ; JNE rel8 || 75 cb || encoded[2]{75 07}
000dh mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
0012h jmp short 0036h                         ; JMP rel8 || EB cb || encoded[2]{eb 22}
0014h mov ecx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 01 00 00 00}
0019h test dl,1                               ; TEST r/m8, imm8 || F6 /0 ib || encoded[3]{f6 c2 01}
001ch je short 0025h                          ; JE rel8 || 74 cb || encoded[2]{74 07}
001eh imul ecx,eax                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c8}
0021h movsx rcx,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c9}
0025h shr edx,1                               ; SHR r/m32, 1 || o32 D1 /5 || encoded[2]{d1 ea}
0027h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0029h je short 0034h                          ; JE rel8 || 74 cb || encoded[2]{74 09}
002bh imul eax,eax                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c0}
002eh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0032h jmp short 0019h                         ; JMP rel8 || EB cb || encoded[2]{eb e5}
0034h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0036h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; Int16 pow_g16i(Int16 b, uint exp)
; pow_g16i_16i[7ff7c68b5290h, 7ff7c68b52c7h][55] = {0f 1f 44 00 00 48 0f bf c1 85 d2 75 07 b9 01 00 00 00 eb 20 b9 01 00 00 00 f6 c2 01 74 07 0f af c8 48 0f bf c9 d1 ea 85 d2 74 09 0f af c0 48 0f bf c0 eb e5 8b c1 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
000bh jne short 0014h                         ; JNE rel8 || 75 cb || encoded[2]{75 07}
000dh mov ecx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 01 00 00 00}
0012h jmp short 0034h                         ; JMP rel8 || EB cb || encoded[2]{eb 20}
0014h mov ecx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 01 00 00 00}
0019h test dl,1                               ; TEST r/m8, imm8 || F6 /0 ib || encoded[3]{f6 c2 01}
001ch je short 0025h                          ; JE rel8 || 74 cb || encoded[2]{74 07}
001eh imul ecx,eax                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c8}
0021h movsx rcx,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c9}
0025h shr edx,1                               ; SHR r/m32, 1 || o32 D1 /5 || encoded[2]{d1 ea}
0027h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0029h je short 0034h                          ; JE rel8 || 74 cb || encoded[2]{74 09}
002bh imul eax,eax                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c0}
002eh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0032h jmp short 0019h                         ; JMP rel8 || EB cb || encoded[2]{eb e5}
0034h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0036h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ushort pow_b16u(ushort b, uint exp)
; pow_b16u_16u[7ff7c68b52e0h, 7ff7c68b5314h][52] = {0f 1f 44 00 00 0f b7 c1 85 d2 75 07 b8 01 00 00 00 eb 20 b9 01 00 00 00 f6 c2 01 74 06 0f af c8 0f b7 c9 d1 ea 85 d2 74 08 0f af c0 0f b7 c0 eb e7 8b c1 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
000ah jne short 0013h                         ; JNE rel8 || 75 cb || encoded[2]{75 07}
000ch mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
0011h jmp short 0033h                         ; JMP rel8 || EB cb || encoded[2]{eb 20}
0013h mov ecx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 01 00 00 00}
0018h test dl,1                               ; TEST r/m8, imm8 || F6 /0 ib || encoded[3]{f6 c2 01}
001bh je short 0023h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
001dh imul ecx,eax                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c8}
0020h movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
0023h shr edx,1                               ; SHR r/m32, 1 || o32 D1 /5 || encoded[2]{d1 ea}
0025h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0027h je short 0031h                          ; JE rel8 || 74 cb || encoded[2]{74 08}
0029h imul eax,eax                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c0}
002ch movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
002fh jmp short 0018h                         ; JMP rel8 || EB cb || encoded[2]{eb e7}
0031h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0033h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ushort pow_g16u(ushort b, uint exp)
; pow_g16u_16u[7ff7c68b5330h, 7ff7c68b5364h][52] = {0f 1f 44 00 00 0f b7 c1 85 d2 75 07 b9 01 00 00 00 eb 1e b9 01 00 00 00 f6 c2 01 74 06 0f af c8 0f b7 c9 d1 ea 85 d2 74 08 0f af c0 0f b7 c0 eb e7 8b c1 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
000ah jne short 0013h                         ; JNE rel8 || 75 cb || encoded[2]{75 07}
000ch mov ecx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 01 00 00 00}
0011h jmp short 0031h                         ; JMP rel8 || EB cb || encoded[2]{eb 1e}
0013h mov ecx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 01 00 00 00}
0018h test dl,1                               ; TEST r/m8, imm8 || F6 /0 ib || encoded[3]{f6 c2 01}
001bh je short 0023h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
001dh imul ecx,eax                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c8}
0020h movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
0023h shr edx,1                               ; SHR r/m32, 1 || o32 D1 /5 || encoded[2]{d1 ea}
0025h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0027h je short 0031h                          ; JE rel8 || 74 cb || encoded[2]{74 08}
0029h imul eax,eax                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c0}
002ch movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
002fh jmp short 0018h                         ; JMP rel8 || EB cb || encoded[2]{eb e7}
0031h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0033h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; int pow_b32i(int b, uint exp)
; pow_b32i_32i[7ff7c68b5380h, 7ff7c68b53a9h][41] = {0f 1f 44 00 00 85 d2 75 07 b8 01 00 00 00 eb 18 b8 01 00 00 00 f6 c2 01 74 03 0f af c1 d1 ea 85 d2 74 05 0f af c9 eb ed c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0007h jne short 0010h                         ; JNE rel8 || 75 cb || encoded[2]{75 07}
0009h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000eh jmp short 0028h                         ; JMP rel8 || EB cb || encoded[2]{eb 18}
0010h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
0015h test dl,1                               ; TEST r/m8, imm8 || F6 /0 ib || encoded[3]{f6 c2 01}
0018h je short 001dh                          ; JE rel8 || 74 cb || encoded[2]{74 03}
001ah imul eax,ecx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c1}
001dh shr edx,1                               ; SHR r/m32, 1 || o32 D1 /5 || encoded[2]{d1 ea}
001fh test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0021h je short 0028h                          ; JE rel8 || 74 cb || encoded[2]{74 05}
0023h imul ecx,ecx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c9}
0026h jmp short 0015h                         ; JMP rel8 || EB cb || encoded[2]{eb ed}
0028h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; int pow_g32i(int b, uint exp)
; pow_g32i_32i[7ff7c68b53c0h, 7ff7c68b53e9h][41] = {0f 1f 44 00 00 85 d2 75 07 b8 01 00 00 00 eb 18 b8 01 00 00 00 f6 c2 01 74 03 0f af c1 d1 ea 85 d2 74 05 0f af c9 eb ed c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0007h jne short 0010h                         ; JNE rel8 || 75 cb || encoded[2]{75 07}
0009h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000eh jmp short 0028h                         ; JMP rel8 || EB cb || encoded[2]{eb 18}
0010h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
0015h test dl,1                               ; TEST r/m8, imm8 || F6 /0 ib || encoded[3]{f6 c2 01}
0018h je short 001dh                          ; JE rel8 || 74 cb || encoded[2]{74 03}
001ah imul eax,ecx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c1}
001dh shr edx,1                               ; SHR r/m32, 1 || o32 D1 /5 || encoded[2]{d1 ea}
001fh test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0021h je short 0028h                          ; JE rel8 || 74 cb || encoded[2]{74 05}
0023h imul ecx,ecx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c9}
0026h jmp short 0015h                         ; JMP rel8 || EB cb || encoded[2]{eb ed}
0028h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; uint pow_b32u(uint b, uint exp)
; pow_b32u_32u[7ff7c68b5400h, 7ff7c68b5429h][41] = {0f 1f 44 00 00 85 d2 75 07 b8 01 00 00 00 eb 18 b8 01 00 00 00 f6 c2 01 74 03 0f af c1 d1 ea 85 d2 74 05 0f af c9 eb ed c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0007h jne short 0010h                         ; JNE rel8 || 75 cb || encoded[2]{75 07}
0009h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000eh jmp short 0028h                         ; JMP rel8 || EB cb || encoded[2]{eb 18}
0010h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
0015h test dl,1                               ; TEST r/m8, imm8 || F6 /0 ib || encoded[3]{f6 c2 01}
0018h je short 001dh                          ; JE rel8 || 74 cb || encoded[2]{74 03}
001ah imul eax,ecx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c1}
001dh shr edx,1                               ; SHR r/m32, 1 || o32 D1 /5 || encoded[2]{d1 ea}
001fh test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0021h je short 0028h                          ; JE rel8 || 74 cb || encoded[2]{74 05}
0023h imul ecx,ecx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c9}
0026h jmp short 0015h                         ; JMP rel8 || EB cb || encoded[2]{eb ed}
0028h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; uint pow_g32u(uint b, uint exp)
; pow_g32u_32u[7ff7c68b5440h, 7ff7c68b5469h][41] = {0f 1f 44 00 00 85 d2 75 07 b8 01 00 00 00 eb 18 b8 01 00 00 00 f6 c2 01 74 03 0f af c1 d1 ea 85 d2 74 05 0f af c9 eb ed c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0007h jne short 0010h                         ; JNE rel8 || 75 cb || encoded[2]{75 07}
0009h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000eh jmp short 0028h                         ; JMP rel8 || EB cb || encoded[2]{eb 18}
0010h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
0015h test dl,1                               ; TEST r/m8, imm8 || F6 /0 ib || encoded[3]{f6 c2 01}
0018h je short 001dh                          ; JE rel8 || 74 cb || encoded[2]{74 03}
001ah imul eax,ecx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c1}
001dh shr edx,1                               ; SHR r/m32, 1 || o32 D1 /5 || encoded[2]{d1 ea}
001fh test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0021h je short 0028h                          ; JE rel8 || 74 cb || encoded[2]{74 05}
0023h imul ecx,ecx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c9}
0026h jmp short 0015h                         ; JMP rel8 || EB cb || encoded[2]{eb ed}
0028h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; long pow_b64i(long b, uint exp)
; pow_b64i_64i[7ff7c68b5480h, 7ff7c68b54abh][43] = {0f 1f 44 00 00 85 d2 75 07 b8 01 00 00 00 eb 1a b8 01 00 00 00 f6 c2 01 74 04 48 0f af c1 d1 ea 85 d2 74 06 48 0f af c9 eb eb c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0007h jne short 0010h                         ; JNE rel8 || 75 cb || encoded[2]{75 07}
0009h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000eh jmp short 002ah                         ; JMP rel8 || EB cb || encoded[2]{eb 1a}
0010h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
0015h test dl,1                               ; TEST r/m8, imm8 || F6 /0 ib || encoded[3]{f6 c2 01}
0018h je short 001eh                          ; JE rel8 || 74 cb || encoded[2]{74 04}
001ah imul rax,rcx                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af c1}
001eh shr edx,1                               ; SHR r/m32, 1 || o32 D1 /5 || encoded[2]{d1 ea}
0020h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0022h je short 002ah                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0024h imul rcx,rcx                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af c9}
0028h jmp short 0015h                         ; JMP rel8 || EB cb || encoded[2]{eb eb}
002ah ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; long pow_g64i(long b, uint exp)
; pow_g64i_64i[7ff7c68b54c0h, 7ff7c68b54ebh][43] = {0f 1f 44 00 00 85 d2 75 07 b8 01 00 00 00 eb 1a b8 01 00 00 00 f6 c2 01 74 04 48 0f af c1 d1 ea 85 d2 74 06 48 0f af c9 eb eb c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0007h jne short 0010h                         ; JNE rel8 || 75 cb || encoded[2]{75 07}
0009h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000eh jmp short 002ah                         ; JMP rel8 || EB cb || encoded[2]{eb 1a}
0010h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
0015h test dl,1                               ; TEST r/m8, imm8 || F6 /0 ib || encoded[3]{f6 c2 01}
0018h je short 001eh                          ; JE rel8 || 74 cb || encoded[2]{74 04}
001ah imul rax,rcx                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af c1}
001eh shr edx,1                               ; SHR r/m32, 1 || o32 D1 /5 || encoded[2]{d1 ea}
0020h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0022h je short 002ah                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0024h imul rcx,rcx                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af c9}
0028h jmp short 0015h                         ; JMP rel8 || EB cb || encoded[2]{eb eb}
002ah ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ulong pow_b64u(ulong b, uint exp)
; pow_b64u_64u[7ff7c68b5500h, 7ff7c68b552bh][43] = {0f 1f 44 00 00 85 d2 75 07 b8 01 00 00 00 eb 1a b8 01 00 00 00 f6 c2 01 74 04 48 0f af c1 d1 ea 85 d2 74 06 48 0f af c9 eb eb c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0007h jne short 0010h                         ; JNE rel8 || 75 cb || encoded[2]{75 07}
0009h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000eh jmp short 002ah                         ; JMP rel8 || EB cb || encoded[2]{eb 1a}
0010h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
0015h test dl,1                               ; TEST r/m8, imm8 || F6 /0 ib || encoded[3]{f6 c2 01}
0018h je short 001eh                          ; JE rel8 || 74 cb || encoded[2]{74 04}
001ah imul rax,rcx                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af c1}
001eh shr edx,1                               ; SHR r/m32, 1 || o32 D1 /5 || encoded[2]{d1 ea}
0020h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0022h je short 002ah                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0024h imul rcx,rcx                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af c9}
0028h jmp short 0015h                         ; JMP rel8 || EB cb || encoded[2]{eb eb}
002ah ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ulong pow_g64u(ulong b, uint exp)
; pow_g64u_64u[7ff7c68b5540h, 7ff7c68b556bh][43] = {0f 1f 44 00 00 85 d2 75 07 b8 01 00 00 00 eb 1a b8 01 00 00 00 f6 c2 01 74 04 48 0f af c1 d1 ea 85 d2 74 06 48 0f af c9 eb eb c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0007h jne short 0010h                         ; JNE rel8 || 75 cb || encoded[2]{75 07}
0009h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000eh jmp short 002ah                         ; JMP rel8 || EB cb || encoded[2]{eb 1a}
0010h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
0015h test dl,1                               ; TEST r/m8, imm8 || F6 /0 ib || encoded[3]{f6 c2 01}
0018h je short 001eh                          ; JE rel8 || 74 cb || encoded[2]{74 04}
001ah imul rax,rcx                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af c1}
001eh shr edx,1                               ; SHR r/m32, 1 || o32 D1 /5 || encoded[2]{d1 ea}
0020h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0022h je short 002ah                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0024h imul rcx,rcx                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af c9}
0028h jmp short 0015h                         ; JMP rel8 || EB cb || encoded[2]{eb eb}
002ah ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; float pow_d32f(float b, uint exp)
; pow_d32f_32f[7ff7c68b56f0h, 7ff7c68b5711h][33] = {c5 f8 77 66 90 8b c2 c5 f0 57 c9 c4 e1 f3 2a c8 c5 f3 5a c9 48 b8 20 8d 0f 26 f8 7f 00 00 48 ff e0}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
000bh vcvtsi2sd xmm1,xmm1,rax                 ; VCVTSI2SD xmm1, xmm2, r/m64 || VEX.LIG.F2.0F.W1 2A /r || encoded[5]{c4 e1 f3 2a c8}
0010h vcvtsd2ss xmm1,xmm1,xmm1                ; VCVTSD2SS xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 5A /r || encoded[4]{c5 f3 5a c9}
0014h mov rax,7ff8260f8d20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 8d 0f 26 f8 7f 00 00}
001eh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; float pow_g32f(float b, uint exp)
; pow_g32f_32f[7ff7c68b5730h, 7ff7c68b5751h][33] = {48 83 ec 28 c5 f8 77 8b c2 c5 f0 57 c9 c4 e1 f3 2a c8 c5 f3 5a c9 e8 d5 35 84 5f 90 48 83 c4 28 c3}
; Capture completion code, MSDIAG
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0009h vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
000dh vcvtsi2sd xmm1,xmm1,rax                 ; VCVTSI2SD xmm1, xmm2, r/m64 || VEX.LIG.F2.0F.W1 2A /r || encoded[5]{c4 e1 f3 2a c8}
0012h vcvtsd2ss xmm1,xmm1,xmm1                ; VCVTSD2SS xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 5A /r || encoded[4]{c5 f3 5a c9}
0016h call 7ff8260f8d20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 35 84 5f}
001bh nop                                     ; NOP || o32 90 || encoded[1]{90}
001ch add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; double pow_d64f(double b, uint exp)
; pow_d64f_64f[7ff7c68b5770h, 7ff7c68b578dh][29] = {c5 f8 77 66 90 8b c2 c5 f0 57 c9 c4 e1 f3 2a c8 48 b8 e0 8e 0f 26 f8 7f 00 00 48 ff e0}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
000bh vcvtsi2sd xmm1,xmm1,rax                 ; VCVTSI2SD xmm1, xmm2, r/m64 || VEX.LIG.F2.0F.W1 2A /r || encoded[5]{c4 e1 f3 2a c8}
0010h mov rax,7ff8260f8ee0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 8e 0f 26 f8 7f 00 00}
001ah jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; double pow_g64f(double b, uint exp)
; pow_g64f_64f[7ff7c68b5bb0h, 7ff7c68b5bcdh][29] = {48 83 ec 28 c5 f8 77 8b c2 c5 f0 57 c9 c4 e1 f3 2a c8 e8 19 33 84 5f 90 48 83 c4 28 c3}
; Capture completion code, MSDIAG
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0009h vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
000dh vcvtsi2sd xmm1,xmm1,rax                 ; VCVTSI2SD xmm1, xmm2, r/m64 || VEX.LIG.F2.0F.W1 2A /r || encoded[5]{c4 e1 f3 2a c8}
0012h call 7ff8260f8ee0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 33 84 5f}
0017h nop                                     ; NOP || o32 90 || encoded[1]{90}
0018h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; sbyte sar_d8i(sbyte lhs, byte offset)
; sar_d8i_8i[7ff7c68b5bf0h, 7ff7c68b5c03h][19] = {0f 1f 44 00 00 48 0f be c1 0f b6 ca d3 f8 48 0f be c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000ch sar eax,cl                              ; SAR r/m32, CL || o32 D3 /7 || encoded[2]{d3 f8}
000eh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; sbyte sar_g8i(sbyte lhs, byte offset)
; sar_g8i_8i[7ff7c68b5c20h, 7ff7c68b5c33h][19] = {0f 1f 44 00 00 48 0f be c1 0f b6 ca d3 f8 48 0f be c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000ch sar eax,cl                              ; SAR r/m32, CL || o32 D3 /7 || encoded[2]{d3 f8}
000eh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; byte sar_d8u(byte lhs, byte offset)
; sar_d8u_8u[7ff7c68b5c50h, 7ff7c68b5c61h][17] = {0f 1f 44 00 00 0f b6 c1 0f b6 ca d3 f8 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000bh sar eax,cl                              ; SAR r/m32, CL || o32 D3 /7 || encoded[2]{d3 f8}
000dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; byte sar_g8u(byte lhs, byte offset)
; sar_g8u_8u[7ff7c68b5c80h, 7ff7c68b5c91h][17] = {0f 1f 44 00 00 0f b6 c1 0f b6 ca d3 f8 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000bh sar eax,cl                              ; SAR r/m32, CL || o32 D3 /7 || encoded[2]{d3 f8}
000dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; Int16 sar_d16i(Int16 lhs, byte offset)
; sar_d16i_16i[7ff7c68b5cb0h, 7ff7c68b5cc3h][19] = {0f 1f 44 00 00 48 0f bf c1 0f b6 ca d3 f8 48 0f bf c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000ch sar eax,cl                              ; SAR r/m32, CL || o32 D3 /7 || encoded[2]{d3 f8}
000eh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; Int16 sar_g16i(Int16 lhs, byte offset)
; sar_g16i_16i[7ff7c68b5ce0h, 7ff7c68b5cf3h][19] = {0f 1f 44 00 00 48 0f bf c1 0f b6 ca d3 f8 48 0f bf c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000ch sar eax,cl                              ; SAR r/m32, CL || o32 D3 /7 || encoded[2]{d3 f8}
000eh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ushort sar_d16u(ushort lhs, byte offset)
; sar_d16u_16u[7ff7c68b5d10h, 7ff7c68b5d21h][17] = {0f 1f 44 00 00 0f b7 c1 0f b6 ca d3 f8 0f b7 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000bh sar eax,cl                              ; SAR r/m32, CL || o32 D3 /7 || encoded[2]{d3 f8}
000dh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ushort sar_g16u(ushort lhs, byte offset)
; sar_g16u_16u[7ff7c68b5d40h, 7ff7c68b5d51h][17] = {0f 1f 44 00 00 0f b7 c1 0f b6 ca d3 f8 0f b7 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000bh sar eax,cl                              ; SAR r/m32, CL || o32 D3 /7 || encoded[2]{d3 f8}
000dh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; int sar_d32i(int lhs, byte offset)
; sar_d32i_32i[7ff7c68b5d70h, 7ff7c68b5d7dh][13] = {0f 1f 44 00 00 8b c1 0f b6 ca d3 f8 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000ah sar eax,cl                              ; SAR r/m32, CL || o32 D3 /7 || encoded[2]{d3 f8}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; int sar_g32i(int lhs, byte offset)
; sar_g32i_32i[7ff7c68b5d90h, 7ff7c68b5d9dh][13] = {0f 1f 44 00 00 8b c1 0f b6 ca d3 f8 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000ah sar eax,cl                              ; SAR r/m32, CL || o32 D3 /7 || encoded[2]{d3 f8}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; uint sar_d32u(uint lhs, byte offset)
; sar_d32u_32u[7ff7c68b5db0h, 7ff7c68b5dbdh][13] = {0f 1f 44 00 00 8b c1 0f b6 ca d3 e8 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000ah shr eax,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 e8}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; uint sar_g32u(uint lhs, byte offset)
; sar_g32u_32u[7ff7c68b5dd0h, 7ff7c68b5dddh][13] = {0f 1f 44 00 00 8b c1 0f b6 ca d3 e8 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000ah shr eax,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 e8}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; long sar_d64i(long lhs, byte offset)
; sar_d64i_64i[7ff7c68b5df0h, 7ff7c68b5dffh][15] = {0f 1f 44 00 00 48 8b c1 0f b6 ca 48 d3 f8 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000bh sar rax,cl                              ; SAR r/m64, CL || REX.W D3 /7 || encoded[3]{48 d3 f8}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; long sar_g64i(long lhs, byte offset)
; sar_g64i_64i[7ff7c68b5e10h, 7ff7c68b5e1fh][15] = {0f 1f 44 00 00 48 8b c1 0f b6 ca 48 d3 f8 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000bh sar rax,cl                              ; SAR r/m64, CL || REX.W D3 /7 || encoded[3]{48 d3 f8}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ulong sar_d64u(ulong lhs, byte offset)
; sar_d64u_64u[7ff7c68b5e30h, 7ff7c68b5e3fh][15] = {0f 1f 44 00 00 48 8b c1 0f b6 ca 48 d3 e8 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000bh shr rax,cl                              ; SHR r/m64, CL || REX.W D3 /5 || encoded[3]{48 d3 e8}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ulong sar_g64u(ulong lhs, byte offset)
; sar_g64u_64u[7ff7c68b5e50h, 7ff7c68b5e5fh][15] = {0f 1f 44 00 00 48 8b c1 0f b6 ca 48 d3 e8 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000bh shr rax,cl                              ; SHR r/m64, CL || REX.W D3 /5 || encoded[3]{48 d3 e8}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ulong select_1(ulong a, ulong b, ulong c)
; select_1_64u[7ff7c68b5e70h, 7ff7c68b5e81h][17] = {0f 1f 44 00 00 48 23 d1 c4 c2 f0 f2 c0 48 0b c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h and rdx,rcx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 d1}
0008h andn rax,rcx,r8                         ; ANDN r64a, r64b, r/m64 || VEX.LZ.0F38.W1 F2 /r || encoded[5]{c4 c2 f0 f2 c0}
000dh or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ulong select_2(ulong a, ulong b, ulong c)
; select_2_64u[7ff7c68b5ea0h, 7ff7c68b5eb2h][18] = {0f 1f 44 00 00 48 33 d1 49 23 d0 48 33 d1 48 8b c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor rdx,rcx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 d1}
0008h and rdx,r8                              ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{49 23 d0}
000bh xor rdx,rcx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 d1}
000eh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; Sign:int signum_d8i(sbyte x)
; signum_d8i_8i[7ff7c68b5ed0h, 7ff7c68b5ee8h][24] = {0f 1f 44 00 00 48 0f be c1 8b d0 f7 d2 ff c2 c1 ea 1f c1 f8 1f 0b c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
000bh not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
000dh inc edx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c2}
000fh shr edx,1fh                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 ea 1f}
0012h sar eax,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 1f}
0015h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; Sign:int signum_g8i(sbyte x)
; signum_g8i_8i[7ff7c68b5f00h, 7ff7c68b5f18h][24] = {0f 1f 44 00 00 48 0f be c1 8b d0 f7 d2 ff c2 c1 ea 1f c1 f8 1f 0b c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
000bh not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
000dh inc edx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c2}
000fh shr edx,1fh                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 ea 1f}
0012h sar eax,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 1f}
0015h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; Sign:int signum_d8u(byte x)
; signum_d8u_8u[7ff7c68b5f30h, 7ff7c68b5f46h][22] = {0f 1f 44 00 00 84 c9 75 07 b8 ff ff ff ff eb 05 b8 01 00 00 00 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test cl,cl                              ; TEST r/m8, r8 || 84 /r || encoded[2]{84 c9}
0007h jne short 0010h                         ; JNE rel8 || 75 cb || encoded[2]{75 07}
0009h mov eax,0ffffffffh                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff ff ff}
000eh jmp short 0015h                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
0010h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; Sign:int signum_g8u(byte x)
; signum_g8u_8u[7ff7c68b5f60h, 7ff7c68b5f79h][25] = {0f 1f 44 00 00 0f b6 c1 85 c0 75 07 b8 ff ff ff ff eb 05 b8 01 00 00 00 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
000ah jne short 0013h                         ; JNE rel8 || 75 cb || encoded[2]{75 07}
000ch mov eax,0ffffffffh                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff ff ff}
0011h jmp short 0018h                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
0013h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; Sign:int signum_d16i(Int16 x)
; signum_d16i_16i[7ff7c68b5f90h, 7ff7c68b5fa8h][24] = {0f 1f 44 00 00 48 0f bf c1 8b d0 f7 d2 ff c2 c1 ea 1f c1 f8 1f 0b c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
000bh not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
000dh inc edx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c2}
000fh shr edx,1fh                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 ea 1f}
0012h sar eax,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 1f}
0015h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; Sign:int signum_g16i(Int16 x)
; signum_g16i_16i[7ff7c68b5fc0h, 7ff7c68b5fd8h][24] = {0f 1f 44 00 00 48 0f bf c1 8b d0 f7 d2 ff c2 c1 ea 1f c1 f8 1f 0b c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
000bh not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
000dh inc edx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c2}
000fh shr edx,1fh                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 ea 1f}
0012h sar eax,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 1f}
0015h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; Sign:int signum_d16u(ushort x)
; signum_d16u_16u[7ff7c68b5ff0h, 7ff7c68b6009h][25] = {0f 1f 44 00 00 0f b7 c1 85 c0 75 07 b8 ff ff ff ff eb 05 b8 01 00 00 00 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
000ah jne short 0013h                         ; JNE rel8 || 75 cb || encoded[2]{75 07}
000ch mov eax,0ffffffffh                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff ff ff}
0011h jmp short 0018h                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
0013h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; Sign:int signum_g16u(ushort x)
; signum_g16u_16u[7ff7c68b6430h, 7ff7c68b6449h][25] = {0f 1f 44 00 00 0f b7 c1 85 c0 75 07 b8 ff ff ff ff eb 05 b8 01 00 00 00 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
000ah jne short 0013h                         ; JNE rel8 || 75 cb || encoded[2]{75 07}
000ch mov eax,0ffffffffh                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff ff ff}
0011h jmp short 0018h                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
0013h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; Sign:int signum_d32i(int x)
; signum_d32i_32i[7ff7c68b6460h, 7ff7c68b6474h][20] = {0f 1f 44 00 00 8b c1 f7 d0 ff c0 c1 e8 1f c1 f9 1f 0b c1 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0009h inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
000bh shr eax,1fh                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e8 1f}
000eh sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
0011h or eax,ecx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c1}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; Sign:int signum_g32i(int x)
; signum_g32i_32i[7ff7c68b6490h, 7ff7c68b64a4h][20] = {0f 1f 44 00 00 8b c1 f7 d0 ff c0 c1 e8 1f c1 f9 1f 0b c1 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0009h inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
000bh shr eax,1fh                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e8 1f}
000eh sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
0011h or eax,ecx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c1}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; Sign:int signum_d32u(uint x)
; signum_d32u_32u[7ff7c68b64c0h, 7ff7c68b64d6h][22] = {0f 1f 44 00 00 85 c9 75 07 b8 ff ff ff ff eb 05 b8 01 00 00 00 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test ecx,ecx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c9}
0007h jne short 0010h                         ; JNE rel8 || 75 cb || encoded[2]{75 07}
0009h mov eax,0ffffffffh                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff ff ff}
000eh jmp short 0015h                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
0010h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; Sign:int signum_g32u(uint x)
; signum_g32u_32u[7ff7c68b64f0h, 7ff7c68b6506h][22] = {0f 1f 44 00 00 85 c9 75 07 b8 ff ff ff ff eb 05 b8 01 00 00 00 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test ecx,ecx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c9}
0007h jne short 0010h                         ; JNE rel8 || 75 cb || encoded[2]{75 07}
0009h mov eax,0ffffffffh                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff ff ff}
000eh jmp short 0015h                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
0010h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; Sign:int signum_d64i(long x)
; signum_d64i_64i[7ff7c68b6520h, 7ff7c68b653bh][27] = {0f 1f 44 00 00 48 8b c1 48 f7 d0 48 ff c0 48 c1 e8 3f 48 c1 f9 3f 8b d1 0b c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
000bh inc rax                                 ; INC r/m64 || REX.W FF /0 || encoded[3]{48 ff c0}
000eh shr rax,3fh                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 3f}
0012h sar rcx,3fh                             ; SAR r/m64, imm8 || REX.W C1 /7 ib || encoded[4]{48 c1 f9 3f}
0016h mov edx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d1}
0018h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; Sign:int signum_g64i(long x)
; signum_g64i_64i[7ff7c68b6550h, 7ff7c68b656bh][27] = {0f 1f 44 00 00 48 8b c1 48 f7 d0 48 ff c0 48 c1 e8 3f 48 c1 f9 3f 8b d1 0b c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
000bh inc rax                                 ; INC r/m64 || REX.W FF /0 || encoded[3]{48 ff c0}
000eh shr rax,3fh                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 3f}
0012h sar rcx,3fh                             ; SAR r/m64, imm8 || REX.W C1 /7 ib || encoded[4]{48 c1 f9 3f}
0016h mov edx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d1}
0018h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; Sign:int signum_d64u(ulong x)
; signum_d64u_64u[7ff7c68b6580h, 7ff7c68b6597h][23] = {0f 1f 44 00 00 48 85 c9 75 07 b8 ff ff ff ff eb 05 b8 01 00 00 00 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test rcx,rcx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c9}
0008h jne short 0011h                         ; JNE rel8 || 75 cb || encoded[2]{75 07}
000ah mov eax,0ffffffffh                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff ff ff}
000fh jmp short 0016h                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
0011h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; Sign:int signum_g64u(ulong x)
; signum_g64u_64u[7ff7c68b65b0h, 7ff7c68b65c7h][23] = {0f 1f 44 00 00 48 85 c9 75 07 b8 ff ff ff ff eb 05 b8 01 00 00 00 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test rcx,rcx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c9}
0008h jne short 0011h                         ; JNE rel8 || 75 cb || encoded[2]{75 07}
000ah mov eax,0ffffffffh                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff ff ff}
000fh jmp short 0016h                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
0011h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; Sign:int signum_g32f(float x)
; signum_g32f_32f[7ff7c68b65e0h, 7ff7c68b65f2h][18] = {48 83 ec 28 c5 f8 77 e8 ec 9f dd ff 90 48 83 c4 28 c3}
; Capture completion code, MSDIAG
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h call 7ff7c66905d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec 9f dd ff}
000ch nop                                     ; NOP || o32 90 || encoded[1]{90}
000dh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; Sign:int signum_d32f(float x)
; signum_d32f_32f[7ff7c68b6610h, 7ff7c68b6622h][18] = {c5 f8 77 66 90 48 b8 d8 05 69 c6 f7 7f 00 00 48 ff e0}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,7ff7c66905d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 05 69 c6 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; Sign:int signum_d64f(double x)
; signum_d64f_64f[7ff7c68b6640h, 7ff7c68b6652h][18] = {c5 f8 77 66 90 48 b8 b0 05 69 c6 f7 7f 00 00 48 ff e0}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,7ff7c66905b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 05 69 c6 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; Sign:int signum_g64f(double x)
; signum_g64f_64f[7ff7c68b6670h, 7ff7c68b6682h][18] = {48 83 ec 28 c5 f8 77 e8 34 9f dd ff 90 48 83 c4 28 c3}
; Capture completion code, MSDIAG
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h call 7ff7c66905b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 9f dd ff}
000ch nop                                     ; NOP || o32 90 || encoded[1]{90}
000dh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; sbyte square_d8i(sbyte x)
; square_d8i_8i[7ff7c68b66a0h, 7ff7c68b66b1h][17] = {0f 1f 44 00 00 48 0f be c1 0f af c0 48 0f be c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h imul eax,eax                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c0}
000ch movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; sbyte square_g8i(sbyte x)
; square_g8i_8i[7ff7c68b66d0h, 7ff7c68b66e1h][17] = {0f 1f 44 00 00 48 0f be c1 0f af c0 48 0f be c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h imul eax,eax                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c0}
000ch movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; byte square_d8u(byte x)
; square_d8u_8u[7ff7c68b6700h, 7ff7c68b670fh][15] = {0f 1f 44 00 00 0f b6 c1 0f af c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h imul eax,eax                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; byte square_g8u(byte x)
; square_g8u_8u[7ff7c68b6720h, 7ff7c68b672fh][15] = {0f 1f 44 00 00 0f b6 c1 0f af c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h imul eax,eax                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; Int16 square_d16i(Int16 x)
; square_d16i_16i[7ff7c68b6740h, 7ff7c68b6751h][17] = {0f 1f 44 00 00 48 0f bf c1 0f af c0 48 0f bf c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h imul eax,eax                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c0}
000ch movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; Int16 square_g16i(Int16 x)
; square_g16i_16i[7ff7c68b6770h, 7ff7c68b6781h][17] = {0f 1f 44 00 00 48 0f bf c1 0f af c0 48 0f bf c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h imul eax,eax                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c0}
000ch movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ushort square_d16u(ushort x)
; square_d16u_16u[7ff7c68b67a0h, 7ff7c68b67afh][15] = {0f 1f 44 00 00 0f b7 c1 0f af c0 0f b7 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h imul eax,eax                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c0}
000bh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ushort square_g16u(ushort x)
; square_g16u_16u[7ff7c68b67c0h, 7ff7c68b67cfh][15] = {0f 1f 44 00 00 0f b7 c1 0f af c0 0f b7 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h imul eax,eax                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c0}
000bh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; int square_d32i(int x)
; square_d32i_32i[7ff7c68b67e0h, 7ff7c68b67ebh][11] = {0f 1f 44 00 00 8b c1 0f af c1 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h imul eax,ecx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c1}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; int square_g32i(int x)
; square_g32i_32i[7ff7c68b6800h, 7ff7c68b680bh][11] = {0f 1f 44 00 00 0f af c9 8b c1 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h imul ecx,ecx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c9}
0008h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; uint square_d32u(uint x)
; square_d32u_32u[7ff7c68b6820h, 7ff7c68b682bh][11] = {0f 1f 44 00 00 8b c1 0f af c1 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h imul eax,ecx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c1}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; uint square_g32u(uint x)
; square_g32u_32u[7ff7c68b6840h, 7ff7c68b684bh][11] = {0f 1f 44 00 00 0f af c9 8b c1 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h imul ecx,ecx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c9}
0008h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; long square_d64i(long x)
; square_d64i_64i[7ff7c68b6860h, 7ff7c68b686dh][13] = {0f 1f 44 00 00 48 8b c1 48 0f af c1 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h imul rax,rcx                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af c1}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; long square_g64i(long x)
; square_g64i_64i[7ff7c68b6880h, 7ff7c68b688dh][13] = {0f 1f 44 00 00 48 0f af c9 48 8b c1 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h imul rcx,rcx                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af c9}
0009h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ulong square_d64u(ulong x)
; square_d64u_64u[7ff7c68b68a0h, 7ff7c68b68adh][13] = {0f 1f 44 00 00 48 8b c1 48 0f af c1 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h imul rax,rcx                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af c1}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ulong square_g64u(ulong x)
; square_g64u_64u[7ff7c68b68c0h, 7ff7c68b68cdh][13] = {0f 1f 44 00 00 48 0f af c9 48 8b c1 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h imul rcx,rcx                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af c9}
0009h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; float square_d32f(float x)
; square_d32f_32f[7ff7c68b68e0h, 7ff7c68b68eah][10] = {c5 f8 77 66 90 c5 fa 59 c0 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmulss xmm0,xmm0,xmm0                   ; VMULSS xmm1, xmm2, xmm3/m32 || VEX.LIG.F3.0F.WIG 59 /r || encoded[4]{c5 fa 59 c0}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; float square_g32f(float x)
; square_g32f_32f[7ff7c68b6900h, 7ff7c68b690ah][10] = {c5 f8 77 66 90 c5 fa 59 c0 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmulss xmm0,xmm0,xmm0                   ; VMULSS xmm1, xmm2, xmm3/m32 || VEX.LIG.F3.0F.WIG 59 /r || encoded[4]{c5 fa 59 c0}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; double square_d64f(double x)
; square_d64f_64f[7ff7c68b6920h, 7ff7c68b692ah][10] = {c5 f8 77 66 90 c5 fb 59 c0 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmulsd xmm0,xmm0,xmm0                   ; VMULSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 59 /r || encoded[4]{c5 fb 59 c0}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; double square_g64f(double x)
; square_g64f_64f[7ff7c68b6940h, 7ff7c68b694ah][10] = {c5 f8 77 66 90 c5 fb 59 c0 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmulsd xmm0,xmm0,xmm0                   ; VMULSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 59 /r || encoded[4]{c5 fb 59 c0}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; sbyte srl_d8i(sbyte lhs, byte offset)
; srl_d8i_8i[7ff7c68b6960h, 7ff7c68b6973h][19] = {0f 1f 44 00 00 48 0f be c1 0f b6 ca d3 e8 48 0f be c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000ch shr eax,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 e8}
000eh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; sbyte srl_g8i(sbyte lhs, byte offset)
; srl_g8i_8i[7ff7c68b6d90h, 7ff7c68b6da3h][19] = {0f 1f 44 00 00 48 0f be c1 0f b6 ca d3 e8 48 0f be c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000ch shr eax,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 e8}
000eh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; byte srl_d8u(byte lhs, byte offset)
; srl_d8u_8u[7ff7c68b6dc0h, 7ff7c68b6dd1h][17] = {0f 1f 44 00 00 0f b6 c1 0f b6 ca d3 e8 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000bh shr eax,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 e8}
000dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; byte srl_g8u(byte lhs, byte offset)
; srl_g8u_8u[7ff7c68b6df0h, 7ff7c68b6e01h][17] = {0f 1f 44 00 00 0f b6 c1 0f b6 ca d3 e8 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000bh shr eax,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 e8}
000dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; Int16 srl_d16i(Int16 lhs, byte offset)
; srl_d16i_16i[7ff7c68b6e20h, 7ff7c68b6e33h][19] = {0f 1f 44 00 00 48 0f bf c1 0f b6 ca d3 e8 48 0f bf c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000ch shr eax,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 e8}
000eh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; Int16 srl_g16i(Int16 lhs, byte offset)
; srl_g16i_16i[7ff7c68b6e50h, 7ff7c68b6e63h][19] = {0f 1f 44 00 00 48 0f bf c1 0f b6 ca d3 e8 48 0f bf c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000ch shr eax,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 e8}
000eh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ushort srl_d16u(ushort lhs, byte offset)
; srl_d16u_16u[7ff7c68b6e80h, 7ff7c68b6e91h][17] = {0f 1f 44 00 00 0f b7 c1 0f b6 ca d3 e8 0f b7 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000bh shr eax,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 e8}
000dh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ushort srl_g16u(ushort lhs, byte offset)
; srl_g16u_16u[7ff7c68b6eb0h, 7ff7c68b6ec1h][17] = {0f 1f 44 00 00 0f b7 c1 0f b6 ca d3 e8 0f b7 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000bh shr eax,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 e8}
000dh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; int srl_d32i(int lhs, byte offset)
; srl_d32i_32i[7ff7c68b6ee0h, 7ff7c68b6eedh][13] = {0f 1f 44 00 00 8b c1 0f b6 ca d3 e8 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000ah shr eax,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 e8}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; int srl_g32i(int lhs, byte offset)
; srl_g32i_32i[7ff7c68b6f00h, 7ff7c68b6f0dh][13] = {0f 1f 44 00 00 8b c1 0f b6 ca d3 e8 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000ah shr eax,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 e8}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; uint srl_d32u(uint lhs, byte offset)
; srl_d32u_32u[7ff7c68b6f20h, 7ff7c68b6f2dh][13] = {0f 1f 44 00 00 8b c1 0f b6 ca d3 e8 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000ah shr eax,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 e8}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; uint srl_g32u(uint lhs, byte offset)
; srl_g32u_32u[7ff7c68b6f40h, 7ff7c68b6f4dh][13] = {0f 1f 44 00 00 8b c1 0f b6 ca d3 e8 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000ah shr eax,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 e8}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; uint min_g32u(uint lhs, uint rhs)
; min_g32u_32u[7ff7c68b6f60h, 7ff7c68b6f70h][16] = {0f 1f 44 00 00 3b ca 72 02 eb 02 8b d1 8b c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp ecx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b ca}
0007h jb short 000bh                          ; JB rel8 || 72 cb || encoded[2]{72 02}
0009h jmp short 000dh                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
000bh mov edx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d1}
000dh mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; long min_d64i(long lhs, long rhs)
; min_d64i_64i[7ff7c68b6f80h, 7ff7c68b6f93h][19] = {0f 1f 44 00 00 48 3b ca 7c 02 eb 03 48 8b d1 48 8b c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp rcx,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b ca}
0008h jl short 000ch                          ; JL rel8 || 7C cb || encoded[2]{7c 02}
000ah jmp short 000fh                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
000ch mov rdx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d1}
000fh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; long min_g64i(long lhs, long rhs)
; min_g64i_64i[7ff7c68b6fb0h, 7ff7c68b6fc3h][19] = {0f 1f 44 00 00 48 3b ca 7c 02 eb 03 48 8b d1 48 8b c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp rcx,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b ca}
0008h jl short 000ch                          ; JL rel8 || 7C cb || encoded[2]{7c 02}
000ah jmp short 000fh                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
000ch mov rdx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d1}
000fh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ulong min_d64u(ulong lhs, ulong rhs)
; min_d64u_64u[7ff7c68b6fe0h, 7ff7c68b6ff3h][19] = {0f 1f 44 00 00 48 3b ca 72 02 eb 03 48 8b d1 48 8b c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp rcx,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b ca}
0008h jb short 000ch                          ; JB rel8 || 72 cb || encoded[2]{72 02}
000ah jmp short 000fh                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
000ch mov rdx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d1}
000fh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ulong min_g64u(ulong lhs, ulong rhs)
; min_g64u_64u[7ff7c68b7010h, 7ff7c68b7023h][19] = {0f 1f 44 00 00 48 3b ca 72 02 eb 03 48 8b d1 48 8b c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp rcx,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b ca}
0008h jb short 000ch                          ; JB rel8 || 72 cb || encoded[2]{72 02}
000ah jmp short 000fh                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
000ch mov rdx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d1}
000fh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; float min_d32f(float lhs, float rhs)
; min_d32f_32f[7ff7c68b7040h, 7ff7c68b7056h][22] = {c5 f8 77 66 90 c5 f8 2e c8 77 02 eb 04 c5 f8 28 c8 c5 f8 28 c1 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vucomiss xmm1,xmm0                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e c8}
0009h ja short 000dh                          ; JA rel8 || 77 cb || encoded[2]{77 02}
000bh jmp short 0011h                         ; JMP rel8 || EB cb || encoded[2]{eb 04}
000dh vmovaps xmm1,xmm0                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 c8}
0011h vmovaps xmm0,xmm1                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 c1}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; float min_g32f(float lhs, float rhs)
; min_g32f_32f[7ff7c68b7070h, 7ff7c68b7086h][22] = {c5 f8 77 66 90 c5 f8 2e c8 77 02 eb 04 c5 f8 28 c8 c5 f8 28 c1 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vucomiss xmm1,xmm0                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e c8}
0009h ja short 000dh                          ; JA rel8 || 77 cb || encoded[2]{77 02}
000bh jmp short 0011h                         ; JMP rel8 || EB cb || encoded[2]{eb 04}
000dh vmovaps xmm1,xmm0                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 c8}
0011h vmovaps xmm0,xmm1                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 c1}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; double min_d64f(double lhs, double rhs)
; min_d64f_64f[7ff7c68b70a0h, 7ff7c68b70b6h][22] = {c5 f8 77 66 90 c5 f9 2e c8 77 02 eb 04 c5 f8 28 c8 c5 f8 28 c1 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vucomisd xmm1,xmm0                      ; VUCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2E /r || encoded[4]{c5 f9 2e c8}
0009h ja short 000dh                          ; JA rel8 || 77 cb || encoded[2]{77 02}
000bh jmp short 0011h                         ; JMP rel8 || EB cb || encoded[2]{eb 04}
000dh vmovaps xmm1,xmm0                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 c8}
0011h vmovaps xmm0,xmm1                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 c1}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; double min_g64f(double lhs, double rhs)
; min_g64f_64f[7ff7c68b70d0h, 7ff7c68b70e6h][22] = {c5 f8 77 66 90 c5 f9 2e c8 77 02 eb 04 c5 f8 28 c8 c5 f8 28 c1 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vucomisd xmm1,xmm0                      ; VUCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2E /r || encoded[4]{c5 f9 2e c8}
0009h ja short 000dh                          ; JA rel8 || 77 cb || encoded[2]{77 02}
000bh jmp short 0011h                         ; JMP rel8 || EB cb || encoded[2]{eb 04}
000dh vmovaps xmm1,xmm0                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 c8}
0011h vmovaps xmm0,xmm1                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 c1}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; sbyte mod_n8i(sbyte lhs, sbyte rhs)
; mod_n8i_8i[7ff7c68b7100h, 7ff7c68b7115h][21] = {0f 1f 44 00 00 48 0f be c1 48 0f be ca 99 f7 f9 48 0f be c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
000dh cdq                                     ; CDQ || o32 99 || encoded[1]{99}
000eh idiv ecx                                ; IDIV r/m32 || o32 F7 /7 || encoded[2]{f7 f9}
0010h movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; sbyte mod_d8i(sbyte lhs, sbyte rhs)
; mod_d8i_8i[7ff7c68b7130h, 7ff7c68b7145h][21] = {0f 1f 44 00 00 48 0f be c1 48 0f be ca 99 f7 f9 48 0f be c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
000dh cdq                                     ; CDQ || o32 99 || encoded[1]{99}
000eh idiv ecx                                ; IDIV r/m32 || o32 F7 /7 || encoded[2]{f7 f9}
0010h movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; sbyte mod_g8i(sbyte lhs, sbyte rhs)
; mod_g8i_8i[7ff7c68b7160h, 7ff7c68b7175h][21] = {0f 1f 44 00 00 48 0f be c1 48 0f be ca 99 f7 f9 48 0f be c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
000dh cdq                                     ; CDQ || o32 99 || encoded[1]{99}
000eh idiv ecx                                ; IDIV r/m32 || o32 F7 /7 || encoded[2]{f7 f9}
0010h movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; byte mod_n8u(byte lhs, byte rhs)
; mod_n8u_8u[7ff7c68b7190h, 7ff7c68b71a2h][18] = {0f 1f 44 00 00 0f b6 c1 0f b6 ca 99 f7 f9 0f b6 c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000bh cdq                                     ; CDQ || o32 99 || encoded[1]{99}
000ch idiv ecx                                ; IDIV r/m32 || o32 F7 /7 || encoded[2]{f7 f9}
000eh movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; byte mod_d8u(byte lhs, byte rhs)
; mod_d8u_8u[7ff7c68b71c0h, 7ff7c68b71d2h][18] = {0f 1f 44 00 00 0f b6 c1 0f b6 ca 99 f7 f9 0f b6 c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000bh cdq                                     ; CDQ || o32 99 || encoded[1]{99}
000ch idiv ecx                                ; IDIV r/m32 || o32 F7 /7 || encoded[2]{f7 f9}
000eh movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; byte mod_g8u(byte lhs, byte rhs)
; mod_g8u_8u[7ff7c68b71f0h, 7ff7c68b7203h][19] = {0f 1f 44 00 00 0f b6 c1 0f b6 ca 33 d2 f7 f1 0f b6 c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000bh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
000dh div ecx                                 ; DIV r/m32 || o32 F7 /6 || encoded[2]{f7 f1}
000fh movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; Int16 mod_d16i(Int16 lhs, Int16 rhs)
; mod_d16i_16i[7ff7c68b7220h, 7ff7c68b7235h][21] = {0f 1f 44 00 00 48 0f bf c1 48 0f bf ca 99 f7 f9 48 0f bf c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
000dh cdq                                     ; CDQ || o32 99 || encoded[1]{99}
000eh idiv ecx                                ; IDIV r/m32 || o32 F7 /7 || encoded[2]{f7 f9}
0010h movsx rax,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c2}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; Int16 mod_g16i(Int16 lhs, Int16 rhs)
; mod_g16i_16i[7ff7c68b7250h, 7ff7c68b7265h][21] = {0f 1f 44 00 00 48 0f bf c1 48 0f bf ca 99 f7 f9 48 0f bf c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
000dh cdq                                     ; CDQ || o32 99 || encoded[1]{99}
000eh idiv ecx                                ; IDIV r/m32 || o32 F7 /7 || encoded[2]{f7 f9}
0010h movsx rax,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c2}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ushort mod_d16u(ushort lhs, ushort rhs)
; mod_d16u_16u[7ff7c68b7280h, 7ff7c68b7292h][18] = {0f 1f 44 00 00 0f b7 c1 0f b7 ca 99 f7 f9 0f b7 c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
000bh cdq                                     ; CDQ || o32 99 || encoded[1]{99}
000ch idiv ecx                                ; IDIV r/m32 || o32 F7 /7 || encoded[2]{f7 f9}
000eh movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ushort mod_g16u(ushort lhs, ushort rhs)
; mod_g16u_16u[7ff7c68b72b0h, 7ff7c68b72c3h][19] = {0f 1f 44 00 00 0f b7 c1 0f b7 ca 33 d2 f7 f1 0f b7 c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
000bh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
000dh div ecx                                 ; DIV r/m32 || o32 F7 /6 || encoded[2]{f7 f1}
000fh movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; int mod_d32i(int lhs, int rhs)
; mod_d32i_32i[7ff7c68b72e0h, 7ff7c68b72f1h][17] = {0f 1f 44 00 00 44 8b c2 8b c1 99 41 f7 f8 8b c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov r8d,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c2}
0008h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
000ah cdq                                     ; CDQ || o32 99 || encoded[1]{99}
000bh idiv r8d                                ; IDIV r/m32 || o32 F7 /7 || encoded[3]{41 f7 f8}
000eh mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; int mod_g32i(int lhs, int rhs)
; mod_g32i_32i[7ff7c68b7310h, 7ff7c68b7321h][17] = {0f 1f 44 00 00 44 8b c2 8b c1 99 41 f7 f8 8b c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov r8d,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c2}
0008h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
000ah cdq                                     ; CDQ || o32 99 || encoded[1]{99}
000bh idiv r8d                                ; IDIV r/m32 || o32 F7 /7 || encoded[3]{41 f7 f8}
000eh mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; uint mod_d32u(uint lhs, uint rhs)
; mod_d32u_32u[7ff7c68b7340h, 7ff7c68b7352h][18] = {0f 1f 44 00 00 44 8b c2 8b c1 33 d2 41 f7 f0 8b c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov r8d,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c2}
0008h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
000ah xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
000ch div r8d                                 ; DIV r/m32 || o32 F7 /6 || encoded[3]{41 f7 f0}
000fh mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; uint mod_g32u(uint lhs, uint rhs)
; mod_g32u_32u[7ff7c68b7370h, 7ff7c68b7382h][18] = {0f 1f 44 00 00 44 8b c2 8b c1 33 d2 41 f7 f0 8b c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov r8d,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c2}
0008h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
000ah xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
000ch div r8d                                 ; DIV r/m32 || o32 F7 /6 || encoded[3]{41 f7 f0}
000fh mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; long mod_d64i(long lhs, long rhs)
; mod_d64i_64i[7ff7c68b73a0h, 7ff7c68b73b4h][20] = {0f 1f 44 00 00 4c 8b c2 48 8b c1 48 99 49 f7 f8 48 8b c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov r8,rdx                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c2}
0008h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000bh cqo                                     ; CQO || REX.W 99 || encoded[2]{48 99}
000dh idiv r8                                 ; IDIV r/m64 || REX.W F7 /7 || encoded[3]{49 f7 f8}
0010h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; long mod_g64i(long lhs, long rhs)
; mod_g64i_64i[7ff7c68b73d0h, 7ff7c68b73e4h][20] = {0f 1f 44 00 00 4c 8b c2 48 8b c1 48 99 49 f7 f8 48 8b c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov r8,rdx                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c2}
0008h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000bh cqo                                     ; CQO || REX.W 99 || encoded[2]{48 99}
000dh idiv r8                                 ; IDIV r/m64 || REX.W F7 /7 || encoded[3]{49 f7 f8}
0010h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ulong mod_d64u(ulong lhs, ulong rhs)
; mod_d64u_64u[7ff7c68b7400h, 7ff7c68b7414h][20] = {0f 1f 44 00 00 4c 8b c2 48 8b c1 33 d2 49 f7 f0 48 8b c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov r8,rdx                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c2}
0008h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000bh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
000dh div r8                                  ; DIV r/m64 || REX.W F7 /6 || encoded[3]{49 f7 f0}
0010h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ulong mod_g64u(ulong lhs, ulong rhs)
; mod_g64u_64u[7ff7c68b7430h, 7ff7c68b7444h][20] = {0f 1f 44 00 00 4c 8b c2 48 8b c1 33 d2 49 f7 f0 48 8b c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov r8,rdx                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c2}
0008h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000bh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
000dh div r8                                  ; DIV r/m64 || REX.W F7 /6 || encoded[3]{49 f7 f0}
0010h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; float mod_d32f(float lhs, float rhs)
; mod_d32f_32f[7ff7c68b7460h, 7ff7c68b7472h][18] = {48 83 ec 28 c5 f8 77 e8 f4 a1 71 5f 90 48 83 c4 28 c3}
; Capture completion code, MSDIAG
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h call 7ff825fd1660h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 a1 71 5f}
000ch nop                                     ; NOP || o32 90 || encoded[1]{90}
000dh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; float mod_g32f(float lhs, float rhs)
; mod_g32f_32f[7ff7c68b7490h, 7ff7c68b74a2h][18] = {48 83 ec 28 c5 f8 77 e8 c4 a1 71 5f 90 48 83 c4 28 c3}
; Capture completion code, MSDIAG
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h call 7ff825fd1660h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 a1 71 5f}
000ch nop                                     ; NOP || o32 90 || encoded[1]{90}
000dh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; double mod_d64f(double lhs, double rhs)
; mod_d64f_64f[7ff7c68b74c0h, 7ff7c68b74d2h][18] = {48 83 ec 28 c5 f8 77 e8 04 a1 71 5f 90 48 83 c4 28 c3}
; Capture completion code, MSDIAG
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h call 7ff825fd15d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 a1 71 5f}
000ch nop                                     ; NOP || o32 90 || encoded[1]{90}
000dh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; double mod_g64f(double lhs, double rhs)
; mod_g64f_64f[7ff7c68b78f0h, 7ff7c68b7902h][18] = {48 83 ec 28 c5 f8 77 e8 d4 9c 71 5f 90 48 83 c4 28 c3}
; Capture completion code, MSDIAG
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h call 7ff825fd15d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 9c 71 5f}
000ch nop                                     ; NOP || o32 90 || encoded[1]{90}
000dh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; void mul_u128(ReadOnlySpan<ulong> lhs, ReadOnlySpan<ulong> rhs, Span<Pair<ulong>> dst)
; mul_u128_64uPair`1Void[7ff7c68b8130h, 7ff7c68b819ch][108] = {57 56 53 66 90 48 8b 01 8b 49 08 4c 8b 0a 44 8b 52 08 4d 8b 18 45 8b 40 08 41 3b ca 7c 02 eb 03 44 8b d1 45 3b d0 7c 02 eb 03 45 8b c2 33 c9 45 85 c0 7e 34 48 63 d1 48 8d 14 d0 4c 63 d1 4f 8d 14 d1 48 63 f1 48 c1 e6 04 49 03 f3 48 8b 12 4d 8b 12 48 8b fe c4 c2 e3 f6 d2 48 89 1f 48 89 56 08 ff c1 41 3b c8 7c cc 5b 5e 5f c3}
; Capture completion code, MSDIAG
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov ecx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 49 08}
000bh mov r9,[rdx]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 0a}
000eh mov r10d,[rdx+8]                        ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 52 08}
0012h mov r11,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 18}
0015h mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
0019h cmp ecx,r10d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b ca}
001ch jl short 0020h                          ; JL rel8 || 7C cb || encoded[2]{7c 02}
001eh jmp short 0023h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0020h mov r10d,ecx                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b d1}
0023h cmp r10d,r8d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d0}
0026h jl short 002ah                          ; JL rel8 || 7C cb || encoded[2]{7c 02}
0028h jmp short 002dh                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
002ah mov r8d,r10d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b c2}
002dh xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
002fh test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0032h jle short 0068h                         ; JLE rel8 || 7E cb || encoded[2]{7e 34}
0034h movsxd rdx,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d1}
0037h lea rdx,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 14 d0}
003bh movsxd r10,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4c 63 d1}
003eh lea r10,[r9+r10*8]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 14 d1}
0042h movsxd rsi,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 f1}
0045h shl rsi,4                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e6 04}
0049h add rsi,r11                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 f3}
004ch mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
004fh mov r10,[r10]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 12}
0052h mov rdi,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fe}
0055h mulx rdx,rbx,r10                        ; MULX r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F6 /r || encoded[5]{c4 c2 e3 f6 d2}
005ah mov [rdi],rbx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 1f}
005dh mov [rsi+8],rdx                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 56 08}
0061h inc ecx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c1}
0063h cmp ecx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b c8}
0066h jl short 0034h                          ; JL rel8 || 7C cb || encoded[2]{7c cc}
0068h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0069h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
006bh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; sbyte mul_d8i(sbyte lhs, sbyte rhs)
; mul_d8i_8i[7ff7c68b81c0h, 7ff7c68b81d5h][21] = {0f 1f 44 00 00 48 0f be c1 48 0f be d2 0f af c2 48 0f be c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
000dh imul eax,edx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c2}
0010h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; sbyte mul_g8i(sbyte lhs, sbyte rhs)
; mul_g8i_8i[7ff7c68b81f0h, 7ff7c68b8205h][21] = {0f 1f 44 00 00 48 0f be c1 48 0f be d2 0f af c2 48 0f be c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
000dh imul eax,edx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c2}
0010h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; byte mul_d8u(byte lhs, byte rhs)
; mul_d8u_8u[7ff7c68b8220h, 7ff7c68b8232h][18] = {0f 1f 44 00 00 0f b6 c1 0f b6 d2 0f af c2 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh imul eax,edx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c2}
000eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; byte mul_g8u(byte lhs, byte rhs)
; mul_g8u_8u[7ff7c68b8250h, 7ff7c68b8262h][18] = {0f 1f 44 00 00 0f b6 c1 0f b6 d2 0f af c2 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh imul eax,edx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c2}
000eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; Int16 mul_d16i(Int16 lhs, Int16 rhs)
; mul_d16i_16i[7ff7c68b8280h, 7ff7c68b8295h][21] = {0f 1f 44 00 00 48 0f bf c1 48 0f bf d2 0f af c2 48 0f bf c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
000dh imul eax,edx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c2}
0010h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; Int16 mul_g16i(Int16 lhs, Int16 rhs)
; mul_g16i_16i[7ff7c68b82b0h, 7ff7c68b82c5h][21] = {0f 1f 44 00 00 48 0f bf c1 48 0f bf d2 0f af c2 48 0f bf c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
000dh imul eax,edx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c2}
0010h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ushort mul_d16u(ushort lhs, ushort rhs)
; mul_d16u_16u[7ff7c68b82e0h, 7ff7c68b82f2h][18] = {0f 1f 44 00 00 0f b7 c1 0f b7 d2 0f af c2 0f b7 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh imul eax,edx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c2}
000eh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ushort mul_g16u(ushort lhs, ushort rhs)
; mul_g16u_16u[7ff7c68b8310h, 7ff7c68b8322h][18] = {0f 1f 44 00 00 0f b7 c1 0f b7 d2 0f af c2 0f b7 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh imul eax,edx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c2}
000eh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; int mul_d32i(int lhs, int rhs)
; mul_d32i_32i[7ff7c68b8340h, 7ff7c68b834bh][11] = {0f 1f 44 00 00 8b c1 0f af c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h imul eax,edx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c2}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; int mul_g32i(int lhs, int rhs)
; mul_g32i_32i[7ff7c68b8360h, 7ff7c68b836bh][11] = {0f 1f 44 00 00 0f af d1 8b c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h imul edx,ecx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af d1}
0008h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; uint mul_d32u(uint lhs, uint rhs)
; mul_d32u_32u[7ff7c68b8380h, 7ff7c68b838bh][11] = {0f 1f 44 00 00 8b c1 0f af c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h imul eax,edx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c2}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; uint mul_g32u(uint lhs, uint rhs)
; mul_g32u_32u[7ff7c68b83a0h, 7ff7c68b83abh][11] = {0f 1f 44 00 00 0f af d1 8b c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h imul edx,ecx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af d1}
0008h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; long mul_d64i(long lhs, long rhs)
; mul_d64i_64i[7ff7c68b83c0h, 7ff7c68b83cdh][13] = {0f 1f 44 00 00 48 8b c1 48 0f af c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h imul rax,rdx                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af c2}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; long mul_g64i(long lhs, long rhs)
; mul_g64i_64i[7ff7c68b83e0h, 7ff7c68b83edh][13] = {0f 1f 44 00 00 48 0f af d1 48 8b c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h imul rdx,rcx                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af d1}
0009h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ulong mul_d64u(ulong lhs, ulong rhs)
; mul_d64u_64u[7ff7c68b8400h, 7ff7c68b840dh][13] = {0f 1f 44 00 00 48 8b c1 48 0f af c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h imul rax,rdx                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af c2}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ulong mul_g64u(ulong lhs, ulong rhs)
; mul_g64u_64u[7ff7c68b8420h, 7ff7c68b842dh][13] = {0f 1f 44 00 00 48 0f af d1 48 8b c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h imul rdx,rcx                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af d1}
0009h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; float mul_d32f(float lhs, float rhs)
; mul_d32f_32f[7ff7c68b8440h, 7ff7c68b844ah][10] = {c5 f8 77 66 90 c5 fa 59 c1 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmulss xmm0,xmm0,xmm1                   ; VMULSS xmm1, xmm2, xmm3/m32 || VEX.LIG.F3.0F.WIG 59 /r || encoded[4]{c5 fa 59 c1}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; float mul_g32f(float lhs, float rhs)
; mul_g32f_32f[7ff7c68b8460h, 7ff7c68b846ah][10] = {c5 f8 77 66 90 c5 fa 59 c1 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmulss xmm0,xmm0,xmm1                   ; VMULSS xmm1, xmm2, xmm3/m32 || VEX.LIG.F3.0F.WIG 59 /r || encoded[4]{c5 fa 59 c1}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; double mul_d64f(double lhs, double rhs)
; mul_d64f_64f[7ff7c68b8480h, 7ff7c68b848ah][10] = {c5 f8 77 66 90 c5 fb 59 c1 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmulsd xmm0,xmm0,xmm1                   ; VMULSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 59 /r || encoded[4]{c5 fb 59 c1}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; double mul_g64f(double lhs, double rhs)
; mul_g64f_64f[7ff7c68b84a0h, 7ff7c68b84aah][10] = {c5 f8 77 66 90 c5 fb 59 c1 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmulsd xmm0,xmm0,xmm1                   ; VMULSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 59 /r || encoded[4]{c5 fb 59 c1}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; sbyte negate_d8i(sbyte x)
; negate_d8i_8i[7ff7c68b84c0h, 7ff7c68b84d0h][16] = {0f 1f 44 00 00 48 0f be c1 f7 d8 48 0f be c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
000bh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; sbyte negate_g8i(sbyte x)
; negate_g8i_8i[7ff7c68b84e0h, 7ff7c68b84f0h][16] = {0f 1f 44 00 00 48 0f be c1 f7 d8 48 0f be c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
000bh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; byte negate_d8u(byte x)
; negate_d8u_8u[7ff7c68b8500h, 7ff7c68b8510h][16] = {0f 1f 44 00 00 0f b6 c1 f7 d0 ff c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000ah inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
000ch movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; byte negate_g8u(byte x)
; negate_g8u_8u[7ff7c68b8520h, 7ff7c68b8530h][16] = {0f 1f 44 00 00 0f b6 c1 f7 d0 ff c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000ah inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
000ch movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; Int16 negate_d16i(Int16 x)
; negate_d16i_16i[7ff7c68b8540h, 7ff7c68b8550h][16] = {0f 1f 44 00 00 48 0f bf c1 f7 d8 48 0f bf c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
000bh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; Int16 negate_g16i(Int16 x)
; negate_g16i_16i[7ff7c68b8560h, 7ff7c68b8570h][16] = {0f 1f 44 00 00 48 0f bf c1 f7 d8 48 0f bf c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
000bh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ushort negate_d16u(ushort x)
; negate_d16u_16u[7ff7c68b8580h, 7ff7c68b8590h][16] = {0f 1f 44 00 00 0f b7 c1 f7 d0 ff c0 0f b7 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000ah inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
000ch movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ushort negate_g16u(ushort x)
; negate_g16u_16u[7ff7c68b85a0h, 7ff7c68b85b0h][16] = {0f 1f 44 00 00 0f b7 c1 f7 d0 ff c0 0f b7 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000ah inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
000ch movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; int negate_d32i(int x)
; negate_d32i_32i[7ff7c68b85c0h, 7ff7c68b85cah][10] = {0f 1f 44 00 00 8b c1 f7 d8 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; int negate_g32i(int x)
; negate_g32i_32i[7ff7c68b85e0h, 7ff7c68b85eah][10] = {0f 1f 44 00 00 8b c1 f7 d8 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; uint negate_d32u(uint x)
; negate_d32u_32u[7ff7c68b8600h, 7ff7c68b860ch][12] = {0f 1f 44 00 00 8b c1 f7 d0 ff c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0009h inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; uint negate_g32u(uint x)
; negate_g32u_32u[7ff7c68b8620h, 7ff7c68b862ch][12] = {0f 1f 44 00 00 8b c1 f7 d0 ff c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0009h inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; long negate_d64i(long x)
; negate_d64i_64i[7ff7c68b8640h, 7ff7c68b864ch][12] = {0f 1f 44 00 00 48 8b c1 48 f7 d8 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h neg rax                                 ; NEG r/m64 || REX.W F7 /3 || encoded[3]{48 f7 d8}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; long negate_g64i(long x)
; negate_g64i_64i[7ff7c68b8660h, 7ff7c68b866ch][12] = {0f 1f 44 00 00 48 8b c1 48 f7 d8 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h neg rax                                 ; NEG r/m64 || REX.W F7 /3 || encoded[3]{48 f7 d8}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ulong negate_d64u(ulong x)
; negate_d64u_64u[7ff7c68b8680h, 7ff7c68b868fh][15] = {0f 1f 44 00 00 48 8b c1 48 f7 d0 48 ff c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
000bh inc rax                                 ; INC r/m64 || REX.W FF /0 || encoded[3]{48 ff c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ulong negate_g64u(ulong x)
; negate_g64u_64u[7ff7c68b86a0h, 7ff7c68b86afh][15] = {0f 1f 44 00 00 48 8b c1 48 f7 d0 48 ff c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
000bh inc rax                                 ; INC r/m64 || REX.W FF /0 || encoded[3]{48 ff c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; float negate_g32f(float x)
; negate_g32f_32f[7ff7c68b86c0h, 7ff7c68b86d2h][18] = {c5 f8 77 66 90 c5 fa 10 0d 0b 00 00 00 c5 f8 57 c1 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovss xmm1,dword ptr [7ff7c68b86d8h]   ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[8]{c5 fa 10 0d 0b 00 00 00}
000dh vxorps xmm0,xmm0,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c1}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; float negate_d32f(float x)
; negate_d32f_32f[7ff7c68b86f0h, 7ff7c68b8702h][18] = {c5 f8 77 66 90 c5 fa 10 0d 0b 00 00 00 c5 f8 57 c1 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovss xmm1,dword ptr [7ff7c68b8708h]   ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[8]{c5 fa 10 0d 0b 00 00 00}
000dh vxorps xmm0,xmm0,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c1}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; double negate_d64f(double x)
; negate_d64f_64f[7ff7c68b8720h, 7ff7c68b8732h][18] = {c5 f8 77 66 90 c5 fb 10 0d 0b 00 00 00 c5 f8 57 c1 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovsd xmm1,qword ptr [7ff7c68b8738h]   ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[8]{c5 fb 10 0d 0b 00 00 00}
000dh vxorps xmm0,xmm0,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c1}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; double negate_g64f(double x)
; negate_g64f_64f[7ff7c68b8b60h, 7ff7c68b8b72h][18] = {c5 f8 77 66 90 c5 fb 10 0d 0b 00 00 00 c5 f8 57 c1 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovsd xmm1,qword ptr [7ff7c68b8b78h]   ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[8]{c5 fb 10 0d 0b 00 00 00}
000dh vxorps xmm0,xmm0,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c1}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bool negative_d8i(sbyte x)
; negative_d8i_8i[7ff7c68b8b90h, 7ff7c68b8baah][26] = {0f 1f 44 00 00 48 0f be c1 85 c0 0f 9c c0 0f b6 c0 85 c0 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
000bh setl al                                 ; SETL r/m8 || 0F 9C /r || encoded[3]{0f 9c c0}
000eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0011h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0013h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0016h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bool negative_g8i(sbyte x)
; negative_g8i_8i[7ff7c68b8bc0h, 7ff7c68b8bdah][26] = {0f 1f 44 00 00 48 0f be c1 85 c0 0f 9c c0 0f b6 c0 85 c0 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
000bh setl al                                 ; SETL r/m8 || 0F 9C /r || encoded[3]{0f 9c c0}
000eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0011h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0013h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0016h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bool negative_d16i(Int16 x)
; negative_d16i_16i[7ff7c68b8bf0h, 7ff7c68b8c0ah][26] = {0f 1f 44 00 00 48 0f bf c1 85 c0 0f 9c c0 0f b6 c0 85 c0 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
000bh setl al                                 ; SETL r/m8 || 0F 9C /r || encoded[3]{0f 9c c0}
000eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0011h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0013h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0016h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bool negative_g16i(Int16 x)
; negative_g16i_16i[7ff7c68b8c20h, 7ff7c68b8c3ah][26] = {0f 1f 44 00 00 48 0f bf c1 85 c0 0f 9c c0 0f b6 c0 85 c0 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
000bh setl al                                 ; SETL r/m8 || 0F 9C /r || encoded[3]{0f 9c c0}
000eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0011h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0013h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0016h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bool negative_d32i(int x)
; negative_d32i_32i[7ff7c68b8c50h, 7ff7c68b8c66h][22] = {0f 1f 44 00 00 85 c9 0f 9c c0 0f b6 c0 85 c0 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test ecx,ecx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c9}
0007h setl al                                 ; SETL r/m8 || 0F 9C /r || encoded[3]{0f 9c c0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
000fh setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0012h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bool negative_g32i(int x)
; negative_g32i_32i[7ff7c68b8c80h, 7ff7c68b8c96h][22] = {0f 1f 44 00 00 85 c9 0f 9c c0 0f b6 c0 85 c0 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test ecx,ecx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c9}
0007h setl al                                 ; SETL r/m8 || 0F 9C /r || encoded[3]{0f 9c c0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
000fh setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0012h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bool negative_d64i(long x)
; negative_d64i_64i[7ff7c68b8cb0h, 7ff7c68b8cc7h][23] = {0f 1f 44 00 00 48 85 c9 0f 9c c0 0f b6 c0 85 c0 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test rcx,rcx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c9}
0008h setl al                                 ; SETL r/m8 || 0F 9C /r || encoded[3]{0f 9c c0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0010h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0013h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bool negative_g64i(long x)
; negative_g64i_64i[7ff7c68b8ce0h, 7ff7c68b8cf7h][23] = {0f 1f 44 00 00 48 85 c9 0f 9c c0 0f b6 c0 85 c0 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test rcx,rcx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c9}
0008h setl al                                 ; SETL r/m8 || 0F 9C /r || encoded[3]{0f 9c c0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0010h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0013h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bool negative_d32f(float x)
; negative_d32f_32f[7ff7c68b8d10h, 7ff7c68b8d2ch][28] = {c5 f8 77 66 90 c5 f0 57 c9 c5 f8 2e c8 0f 97 c0 0f b6 c0 85 c0 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
0009h vucomiss xmm1,xmm0                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e c8}
000dh seta al                                 ; SETA r/m8 || 0F 97 /r || encoded[3]{0f 97 c0}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0015h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0018h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bool negative_d64f(double x)
; negative_d64f_64f[7ff7c68b8d40h, 7ff7c68b8d5ch][28] = {c5 f8 77 66 90 c5 f0 57 c9 c5 f9 2e c8 0f 97 c0 0f b6 c0 85 c0 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
0009h vucomisd xmm1,xmm0                      ; VUCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2E /r || encoded[4]{c5 f9 2e c8}
000dh seta al                                 ; SETA r/m8 || 0F 97 /r || encoded[3]{0f 97 c0}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0015h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0018h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bool negative_n32f(float x)
; negative_n32f_32f[7ff7c68b8d70h, 7ff7c68b8d84h][20] = {c5 f8 77 66 90 c5 f0 57 c9 c5 f8 2e c8 0f 97 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
0009h vucomiss xmm1,xmm0                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e c8}
000dh seta al                                 ; SETA r/m8 || 0F 97 /r || encoded[3]{0f 97 c0}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bool negative_g32f(float x)
; negative_g32f_32f[7ff7c68b8da0h, 7ff7c68b8dbch][28] = {c5 f8 77 66 90 c5 f0 57 c9 c5 f8 2e c8 0f 97 c0 0f b6 c0 85 c0 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
0009h vucomiss xmm1,xmm0                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e c8}
000dh seta al                                 ; SETA r/m8 || 0F 97 /r || encoded[3]{0f 97 c0}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0015h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0018h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bool negative_n64f(double x)
; negative_n64f_64f[7ff7c68b8dd0h, 7ff7c68b8de4h][20] = {c5 f8 77 66 90 c5 f0 57 c9 c5 f9 2e c8 0f 97 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
0009h vucomisd xmm1,xmm0                      ; VUCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2E /r || encoded[4]{c5 f9 2e c8}
000dh seta al                                 ; SETA r/m8 || 0F 97 /r || encoded[3]{0f 97 c0}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bool negative_g64f(double x)
; negative_g64f_64f[7ff7c68b8e00h, 7ff7c68b8e1ch][28] = {c5 f8 77 66 90 c5 f0 57 c9 c5 f9 2e c8 0f 97 c0 0f b6 c0 85 c0 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
0009h vucomisd xmm1,xmm0                      ; VUCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2E /r || encoded[4]{c5 f9 2e c8}
000dh seta al                                 ; SETA r/m8 || 0F 97 /r || encoded[3]{0f 97 c0}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0015h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0018h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bool nonzero_d8i(sbyte x)
; nonzero_d8i_8i[7ff7c68b8e30h, 7ff7c68b8e45h][21] = {0f 1f 44 00 00 89 4c 24 08 80 7c 24 08 00 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov [rsp+8],ecx                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 4c 24 08}
0009h cmp byte ptr [rsp+8],0                  ; CMP r/m8, imm8 || 80 /7 ib || encoded[5]{80 7c 24 08 00}
000eh setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0011h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit nonzero_g8i(sbyte x)
; nonzero_g8i_8i[7ff7c68b8e60h, 7ff7c68b8e72h][18] = {0f 1f 44 00 00 48 0f be c1 85 c0 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
000bh setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bool nonzero_d8u(byte x)
; nonzero_d8u_8u[7ff7c68b8e90h, 7ff7c68b8ea5h][21] = {0f 1f 44 00 00 89 4c 24 08 80 7c 24 08 00 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov [rsp+8],ecx                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 4c 24 08}
0009h cmp byte ptr [rsp+8],0                  ; CMP r/m8, imm8 || 80 /7 ib || encoded[5]{80 7c 24 08 00}
000eh setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0011h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit nonzero_g8u(byte x)
; nonzero_g8u_8u[7ff7c68b8ec0h, 7ff7c68b8ed1h][17] = {0f 1f 44 00 00 0f b6 c1 85 c0 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
000ah setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bool nonzero_d16i(Int16 x)
; nonzero_d16i_16i[7ff7c68b8ef0h, 7ff7c68b8f06h][22] = {0f 1f 44 00 00 89 4c 24 08 66 83 7c 24 08 00 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov [rsp+8],ecx                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 4c 24 08}
0009h cmp word ptr [rsp+8],0                  ; CMP r/m16, imm8 || o16 83 /7 ib || encoded[6]{66 83 7c 24 08 00}
000fh setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0012h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit nonzero_g16i(Int16 x)
; nonzero_g16i_16i[7ff7c68b8f20h, 7ff7c68b8f32h][18] = {0f 1f 44 00 00 48 0f bf c1 85 c0 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
000bh setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bool nonzero_d16u(ushort x)
; nonzero_d16u_16u[7ff7c68b8f50h, 7ff7c68b8f66h][22] = {0f 1f 44 00 00 89 4c 24 08 66 83 7c 24 08 00 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov [rsp+8],ecx                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 4c 24 08}
0009h cmp word ptr [rsp+8],0                  ; CMP r/m16, imm8 || o16 83 /7 ib || encoded[6]{66 83 7c 24 08 00}
000fh setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0012h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit nonzero_g16u(ushort x)
; nonzero_g16u_16u[7ff7c68b8f80h, 7ff7c68b8f91h][17] = {0f 1f 44 00 00 0f b7 c1 85 c0 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
000ah setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bool nonzero_d32i(int x)
; nonzero_d32i_32i[7ff7c68b8fb0h, 7ff7c68b8fbeh][14] = {0f 1f 44 00 00 85 c9 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test ecx,ecx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c9}
0007h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit nonzero_g32i(int x)
; nonzero_g32i_32i[7ff7c68b8fd0h, 7ff7c68b8fdeh][14] = {0f 1f 44 00 00 85 c9 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test ecx,ecx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c9}
0007h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bool nonzero_d32u(uint x)
; nonzero_d32u_32u[7ff7c68b8ff0h, 7ff7c68b8ffeh][14] = {0f 1f 44 00 00 85 c9 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test ecx,ecx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c9}
0007h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit nonzero_g32u(uint x)
; nonzero_g32u_32u[7ff7c68b9010h, 7ff7c68b901eh][14] = {0f 1f 44 00 00 85 c9 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test ecx,ecx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c9}
0007h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bool nonzero_d64i(long x)
; nonzero_d64i_64i[7ff7c68b9030h, 7ff7c68b903fh][15] = {0f 1f 44 00 00 48 85 c9 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test rcx,rcx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c9}
0008h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit nonzero_g64i(long x)
; nonzero_g64i_64i[7ff7c68b9050h, 7ff7c68b905fh][15] = {0f 1f 44 00 00 48 85 c9 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test rcx,rcx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c9}
0008h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bool nonzero_n64u(ulong x)
; nonzero_n64u_64u[7ff7c68b9070h, 7ff7c68b907fh][15] = {0f 1f 44 00 00 48 85 c9 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test rcx,rcx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c9}
0008h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit nonzero_g64u(ulong x)
; nonzero_g64u_64u[7ff7c68b9090h, 7ff7c68b909fh][15] = {0f 1f 44 00 00 48 85 c9 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test rcx,rcx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c9}
0008h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bool nonzero_n32f(float x)
; nonzero_n32f_32f[7ff7c68b90b0h, 7ff7c68b90c9h][25] = {c5 f8 77 66 90 c5 f0 57 c9 c5 f8 2e c1 0f 9a c0 7a 03 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
0009h vucomiss xmm0,xmm1                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e c1}
000dh setp al                                 ; SETP r/m8 || 0F 9A /r || encoded[3]{0f 9a c0}
0010h jp short 0015h                          ; JP rel8 || 7A cb || encoded[2]{7a 03}
0012h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0015h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bool nonzero_g32f(float x)
; nonzero_g32f_32f[7ff7c68b90e0h, 7ff7c68b9101h][33] = {c5 f8 77 66 90 c5 f0 57 c9 c5 f8 2e c1 0f 9a c0 7a 03 0f 95 c0 0f b6 c0 85 c0 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
0009h vucomiss xmm0,xmm1                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e c1}
000dh setp al                                 ; SETP r/m8 || 0F 9A /r || encoded[3]{0f 9a c0}
0010h jp short 0015h                          ; JP rel8 || 7A cb || encoded[2]{7a 03}
0012h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0015h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0018h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
001ah setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
001dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bool nonzero_n64f(double x)
; nonzero_n64f_64f[7ff7c68b9120h, 7ff7c68b9139h][25] = {c5 f8 77 66 90 c5 f0 57 c9 c5 f9 2e c1 0f 9a c0 7a 03 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
0009h vucomisd xmm0,xmm1                      ; VUCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2E /r || encoded[4]{c5 f9 2e c1}
000dh setp al                                 ; SETP r/m8 || 0F 9A /r || encoded[3]{0f 9a c0}
0010h jp short 0015h                          ; JP rel8 || 7A cb || encoded[2]{7a 03}
0012h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0015h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bool nonzero_g64f(double x)
; nonzero_g64f_64f[7ff7c68b9150h, 7ff7c68b9171h][33] = {c5 f8 77 66 90 c5 f0 57 c9 c5 f9 2e c1 0f 9a c0 7a 03 0f 95 c0 0f b6 c0 85 c0 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
0009h vucomisd xmm0,xmm1                      ; VUCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2E /r || encoded[4]{c5 f9 2e c1}
000dh setp al                                 ; SETP r/m8 || 0F 9A /r || encoded[3]{0f 9a c0}
0010h jp short 0015h                          ; JP rel8 || 7A cb || encoded[2]{7a 03}
0012h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0015h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0018h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
001ah setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
001dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; sbyte not_d8i(sbyte x)
; not_d8i_8i[7ff7c68b9190h, 7ff7c68b91a0h][16] = {0f 1f 44 00 00 48 0f be c1 f7 d0 48 0f be c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000bh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; sbyte not_g8i(sbyte x)
; not_g8i_8i[7ff7c68b91b0h, 7ff7c68b91c0h][16] = {0f 1f 44 00 00 48 0f be c1 f7 d0 48 0f be c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000bh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; byte not_d8u(byte x)
; not_d8u_8u[7ff7c68b91d0h, 7ff7c68b91deh][14] = {0f 1f 44 00 00 0f b6 c1 f7 d0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; byte not_g8u(byte x)
; not_g8u_8u[7ff7c68b91f0h, 7ff7c68b91feh][14] = {0f 1f 44 00 00 0f b6 c1 f7 d0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; Int16 not_d16i(Int16 x)
; not_d16i_16i[7ff7c68b9210h, 7ff7c68b9220h][16] = {0f 1f 44 00 00 48 0f bf c1 f7 d0 48 0f bf c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000bh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; Int16 not_g16i(Int16 x)
; not_g16i_16i[7ff7c68b9640h, 7ff7c68b9650h][16] = {0f 1f 44 00 00 48 0f bf c1 f7 d0 48 0f bf c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000bh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ushort not_d16u(ushort x)
; not_d16u_16u[7ff7c68b9660h, 7ff7c68b966eh][14] = {0f 1f 44 00 00 0f b7 c1 f7 d0 0f b7 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000ah movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ushort not_g16u(ushort x)
; not_g16u_16u[7ff7c68b9680h, 7ff7c68b968eh][14] = {0f 1f 44 00 00 0f b7 c1 f7 d0 0f b7 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000ah movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; int not_d32i(int x)
; not_d32i_32i[7ff7c68b96a0h, 7ff7c68b96aah][10] = {0f 1f 44 00 00 8b c1 f7 d0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; int not_g32i(int x)
; not_g32i_32i[7ff7c68b96c0h, 7ff7c68b96cah][10] = {0f 1f 44 00 00 8b c1 f7 d0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; uint not_d32u(uint x)
; not_d32u_32u[7ff7c68b96e0h, 7ff7c68b96eah][10] = {0f 1f 44 00 00 8b c1 f7 d0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; uint not_g32u(uint x)
; not_g32u_32u[7ff7c68b9700h, 7ff7c68b970ah][10] = {0f 1f 44 00 00 8b c1 f7 d0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; long not_d64i(long x)
; not_d64i_64i[7ff7c68b9720h, 7ff7c68b972ch][12] = {0f 1f 44 00 00 48 8b c1 48 f7 d0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; long not_g64i(long x)
; not_g64i_64i[7ff7c68b9740h, 7ff7c68b974ch][12] = {0f 1f 44 00 00 48 8b c1 48 f7 d0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ulong not_d64u(ulong x)
; not_d64u_64u[7ff7c68b9760h, 7ff7c68b976ch][12] = {0f 1f 44 00 00 48 8b c1 48 f7 d0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ulong not_g64u(ulong x)
; not_g64u_64u[7ff7c68b9780h, 7ff7c68b978ch][12] = {0f 1f 44 00 00 48 8b c1 48 f7 d0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; sbyte or_d8i(sbyte lhs, sbyte rhs)
; or_d8i_8i[7ff7c68b97a0h, 7ff7c68b97b4h][20] = {0f 1f 44 00 00 48 0f be c1 48 0f be d2 0b c2 48 0f be c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
000dh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
000fh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; sbyte or_g8i(sbyte lhs, sbyte rhs)
; or_g8i_8i[7ff7c68b97d0h, 7ff7c68b97e4h][20] = {0f 1f 44 00 00 48 0f be c1 48 0f be d2 0b c2 48 0f be c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
000dh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
000fh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; byte or_d8u(byte lhs, byte rhs)
; or_d8u_8u[7ff7c68b9800h, 7ff7c68b9811h][17] = {0f 1f 44 00 00 0f b6 c1 0f b6 d2 0b c2 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
000dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; byte or_g8u(byte lhs, byte rhs)
; or_g8u_8u[7ff7c68b9830h, 7ff7c68b9841h][17] = {0f 1f 44 00 00 0f b6 c1 0f b6 d2 0b c2 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
000dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; Int16 or_d16i(Int16 lhs, Int16 rhs)
; or_d16i_16i[7ff7c68b9860h, 7ff7c68b9874h][20] = {0f 1f 44 00 00 48 0f bf c1 48 0f bf d2 0b c2 48 0f bf c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
000dh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
000fh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; Int16 or_g16i(Int16 lhs, Int16 rhs)
; or_g16i_16i[7ff7c68b9890h, 7ff7c68b98a4h][20] = {0f 1f 44 00 00 48 0f bf c1 48 0f bf d2 0b c2 48 0f bf c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
000dh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
000fh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit gt_g32u(uint a, uint b)
; gt_g32u_32u[7ff7c68b98c0h, 7ff7c68b98ceh][14] = {0f 1f 44 00 00 3b ca 0f 97 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp ecx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b ca}
0007h seta al                                 ; SETA r/m8 || 0F 97 /r || encoded[3]{0f 97 c0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit gt_d64i(long a, long b)
; gt_d64i_64i[7ff7c68b98e0h, 7ff7c68b98efh][15] = {0f 1f 44 00 00 48 3b ca 0f 9f c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp rcx,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b ca}
0008h setg al                                 ; SETG r/m8 || 0F 9F /r || encoded[3]{0f 9f c0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit gt_g64i(long a, long b)
; gt_g64i_64i[7ff7c68b9900h, 7ff7c68b990fh][15] = {0f 1f 44 00 00 48 3b ca 0f 9f c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp rcx,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b ca}
0008h setg al                                 ; SETG r/m8 || 0F 9F /r || encoded[3]{0f 9f c0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit gt_d64u(ulong a, ulong b)
; gt_d64u_64u[7ff7c68b9920h, 7ff7c68b992fh][15] = {0f 1f 44 00 00 48 3b ca 0f 97 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp rcx,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b ca}
0008h seta al                                 ; SETA r/m8 || 0F 97 /r || encoded[3]{0f 97 c0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit gt_g64u(ulong a, ulong b)
; gt_g64u_64u[7ff7c68b9940h, 7ff7c68b994fh][15] = {0f 1f 44 00 00 48 3b ca 0f 97 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp rcx,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b ca}
0008h seta al                                 ; SETA r/m8 || 0F 97 /r || encoded[3]{0f 97 c0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit gt_d32f(float a, float b)
; gt_d32f_32f[7ff7c68b9960h, 7ff7c68b9970h][16] = {c5 f8 77 66 90 c5 f8 2e c1 0f 97 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vucomiss xmm0,xmm1                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e c1}
0009h seta al                                 ; SETA r/m8 || 0F 97 /r || encoded[3]{0f 97 c0}
000ch movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit gt_g32f(float a, float b)
; gt_g32f_32f[7ff7c68b9990h, 7ff7c68b99a0h][16] = {c5 f8 77 66 90 c5 f8 2e c1 0f 97 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vucomiss xmm0,xmm1                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e c1}
0009h seta al                                 ; SETA r/m8 || 0F 97 /r || encoded[3]{0f 97 c0}
000ch movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit gt_d64f(double a, double b)
; gt_d64f_64f[7ff7c68b99c0h, 7ff7c68b99d0h][16] = {c5 f8 77 66 90 c5 f9 2e c1 0f 97 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vucomisd xmm0,xmm1                      ; VUCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2E /r || encoded[4]{c5 f9 2e c1}
0009h seta al                                 ; SETA r/m8 || 0F 97 /r || encoded[3]{0f 97 c0}
000ch movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit gt_g64f(double a, double b)
; gt_g64f_64f[7ff7c68b99f0h, 7ff7c68b9a00h][16] = {c5 f8 77 66 90 c5 f9 2e c1 0f 97 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vucomisd xmm0,xmm1                      ; VUCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2E /r || encoded[4]{c5 f9 2e c1}
0009h seta al                                 ; SETA r/m8 || 0F 97 /r || encoded[3]{0f 97 c0}
000ch movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit gteq_d8i(sbyte a, sbyte b)
; gteq_d8i_8i[7ff7c68b9a20h, 7ff7c68b9a36h][22] = {0f 1f 44 00 00 48 0f be c1 48 0f be d2 3b c2 0f 9d c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
000dh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000fh setge al                                ; SETGE r/m8 || 0F 9D /r || encoded[3]{0f 9d c0}
0012h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit gteq_g8i(sbyte a, sbyte b)
; gteq_g8i_8i[7ff7c68b9a50h, 7ff7c68b9a66h][22] = {0f 1f 44 00 00 48 0f be c1 48 0f be d2 3b c2 0f 9d c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
000dh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000fh setge al                                ; SETGE r/m8 || 0F 9D /r || encoded[3]{0f 9d c0}
0012h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit gteq_d8u(byte a, byte b)
; gteq_d8u_8u[7ff7c68b9a80h, 7ff7c68b9a94h][20] = {0f 1f 44 00 00 0f b6 c1 0f b6 d2 3b c2 0f 9d c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000dh setge al                                ; SETGE r/m8 || 0F 9D /r || encoded[3]{0f 9d c0}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit gteq_g8u(byte a, byte b)
; gteq_g8u_8u[7ff7c68b9ab0h, 7ff7c68b9ac4h][20] = {0f 1f 44 00 00 0f b6 c1 0f b6 d2 3b c2 0f 93 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000dh setae al                                ; SETAE r/m8 || 0F 93 /r || encoded[3]{0f 93 c0}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit gteq_d16i(Int16 a, Int16 b)
; gteq_d16i_16i[7ff7c68b9ae0h, 7ff7c68b9af6h][22] = {0f 1f 44 00 00 48 0f bf c1 48 0f bf d2 3b c2 0f 9d c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
000dh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000fh setge al                                ; SETGE r/m8 || 0F 9D /r || encoded[3]{0f 9d c0}
0012h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit gteq_g16i(Int16 a, Int16 b)
; gteq_g16i_16i[7ff7c68b9b10h, 7ff7c68b9b26h][22] = {0f 1f 44 00 00 48 0f bf c1 48 0f bf d2 3b c2 0f 9d c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
000dh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000fh setge al                                ; SETGE r/m8 || 0F 9D /r || encoded[3]{0f 9d c0}
0012h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit gteq_d16u(ushort a, ushort b)
; gteq_d16u_16u[7ff7c68b9b40h, 7ff7c68b9b54h][20] = {0f 1f 44 00 00 0f b7 c1 0f b7 d2 3b c2 0f 9d c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000dh setge al                                ; SETGE r/m8 || 0F 9D /r || encoded[3]{0f 9d c0}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit gteq_g16u(ushort a, ushort b)
; gteq_g16u_16u[7ff7c68b9b70h, 7ff7c68b9b84h][20] = {0f 1f 44 00 00 0f b7 c1 0f b7 d2 3b c2 0f 93 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000dh setae al                                ; SETAE r/m8 || 0F 93 /r || encoded[3]{0f 93 c0}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit gteq_d32i(int a, int b)
; gteq_d32i_32i[7ff7c68b9ba0h, 7ff7c68b9baeh][14] = {0f 1f 44 00 00 3b ca 0f 9d c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp ecx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b ca}
0007h setge al                                ; SETGE r/m8 || 0F 9D /r || encoded[3]{0f 9d c0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit gteq_g32i(int a, int b)
; gteq_g32i_32i[7ff7c68b9bc0h, 7ff7c68b9bceh][14] = {0f 1f 44 00 00 3b ca 0f 9d c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp ecx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b ca}
0007h setge al                                ; SETGE r/m8 || 0F 9D /r || encoded[3]{0f 9d c0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit gteq_d32u(uint a, uint b)
; gteq_d32u_32u[7ff7c68b9be0h, 7ff7c68b9beeh][14] = {0f 1f 44 00 00 3b ca 0f 93 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp ecx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b ca}
0007h setae al                                ; SETAE r/m8 || 0F 93 /r || encoded[3]{0f 93 c0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit gteq_g32u(uint a, uint b)
; gteq_g32u_32u[7ff7c68ba010h, 7ff7c68ba01eh][14] = {0f 1f 44 00 00 3b ca 0f 93 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp ecx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b ca}
0007h setae al                                ; SETAE r/m8 || 0F 93 /r || encoded[3]{0f 93 c0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit gteq_d64i(long a, long b)
; gteq_d64i_64i[7ff7c68ba030h, 7ff7c68ba03fh][15] = {0f 1f 44 00 00 48 3b ca 0f 9d c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp rcx,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b ca}
0008h setge al                                ; SETGE r/m8 || 0F 9D /r || encoded[3]{0f 9d c0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit gteq_g64i(long a, long b)
; gteq_g64i_64i[7ff7c68ba050h, 7ff7c68ba05fh][15] = {0f 1f 44 00 00 48 3b ca 0f 9d c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp rcx,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b ca}
0008h setge al                                ; SETGE r/m8 || 0F 9D /r || encoded[3]{0f 9d c0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit gteq_d64u(ulong a, ulong b)
; gteq_d64u_64u[7ff7c68ba070h, 7ff7c68ba07fh][15] = {0f 1f 44 00 00 48 3b ca 0f 93 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp rcx,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b ca}
0008h setae al                                ; SETAE r/m8 || 0F 93 /r || encoded[3]{0f 93 c0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit gteq_g64u(ulong a, ulong b)
; gteq_g64u_64u[7ff7c68ba090h, 7ff7c68ba09fh][15] = {0f 1f 44 00 00 48 3b ca 0f 93 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp rcx,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b ca}
0008h setae al                                ; SETAE r/m8 || 0F 93 /r || encoded[3]{0f 93 c0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit gteq_d32f(float a, float b)
; gteq_d32f_32f[7ff7c68ba0b0h, 7ff7c68ba0c0h][16] = {c5 f8 77 66 90 c5 f8 2e c1 0f 93 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vucomiss xmm0,xmm1                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e c1}
0009h setae al                                ; SETAE r/m8 || 0F 93 /r || encoded[3]{0f 93 c0}
000ch movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit gteq_g32f(float a, float b)
; gteq_g32f_32f[7ff7c68ba0e0h, 7ff7c68ba0f0h][16] = {c5 f8 77 66 90 c5 f8 2e c1 0f 93 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vucomiss xmm0,xmm1                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e c1}
0009h setae al                                ; SETAE r/m8 || 0F 93 /r || encoded[3]{0f 93 c0}
000ch movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit gteq_d64f(double a, double b)
; gteq_d64f_64f[7ff7c68ba110h, 7ff7c68ba120h][16] = {c5 f8 77 66 90 c5 f9 2e c1 0f 93 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vucomisd xmm0,xmm1                      ; VUCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2E /r || encoded[4]{c5 f9 2e c1}
0009h setae al                                ; SETAE r/m8 || 0F 93 /r || encoded[3]{0f 93 c0}
000ch movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit gteq_g64f(double a, double b)
; gteq_g64f_64f[7ff7c68ba140h, 7ff7c68ba150h][16] = {c5 f8 77 66 90 c5 f9 2e c1 0f 93 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vucomisd xmm0,xmm1                      ; VUCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2E /r || encoded[4]{c5 f9 2e c1}
0009h setae al                                ; SETAE r/m8 || 0F 93 /r || encoded[3]{0f 93 c0}
000ch movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; void increments_8u(int count, ref byte dst)
; increments_8u_32i[7ff7c68ba170h, 7ff7c68ba18fh][31] = {0f 1f 44 00 00 33 c0 85 c9 7e 13 4c 63 c0 4c 03 c2 44 0f b6 c8 45 88 08 ff c0 3b c1 7c ed c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h test ecx,ecx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c9}
0009h jle short 001eh                         ; JLE rel8 || 7E cb || encoded[2]{7e 13}
000bh movsxd r8,eax                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4c 63 c0}
000eh add r8,rdx                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 c2}
0011h movzx r9d,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{44 0f b6 c8}
0015h mov [r8],r9b                            ; MOV r/m8, r8 || 88 /r || encoded[3]{45 88 08}
0018h inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
001ah cmp eax,ecx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c1}
001ch jl short 000bh                          ; JL rel8 || 7C cb || encoded[2]{7c ed}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; void increments_32u(int count, ref uint dst)
; increments_32u_32i[7ff7c68ba1a0h, 7ff7c68ba1bfh][31] = {0f 1f 44 00 00 33 c0 85 c9 7e 13 4c 63 c0 4e 8d 04 82 44 8b c8 45 89 08 ff c0 3b c1 7c ed c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h test ecx,ecx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c9}
0009h jle short 001eh                         ; JLE rel8 || 7E cb || encoded[2]{7e 13}
000bh movsxd r8,eax                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4c 63 c0}
000eh lea r8,[rdx+r8*4]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 04 82}
0012h mov r9d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c8}
0015h mov [r8],r9d                            ; MOV r/m32, r32 || o32 89 /r || encoded[3]{45 89 08}
0018h inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
001ah cmp eax,ecx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c1}
001ch jl short 000bh                          ; JL rel8 || 7C cb || encoded[2]{7c ed}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; void decrements_8u(int count, ref byte dst)
; decrements_8u_32i[7ff7c68ba1d0h, 7ff7c68ba1efh][31] = {0f 1f 44 00 00 33 c0 85 c9 7e 13 4c 63 c0 4c 03 c2 44 0f b6 c8 45 88 08 ff c0 3b c1 7c ed c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h test ecx,ecx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c9}
0009h jle short 001eh                         ; JLE rel8 || 7E cb || encoded[2]{7e 13}
000bh movsxd r8,eax                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4c 63 c0}
000eh add r8,rdx                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 c2}
0011h movzx r9d,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{44 0f b6 c8}
0015h mov [r8],r9b                            ; MOV r/m8, r8 || 88 /r || encoded[3]{45 88 08}
0018h inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
001ah cmp eax,ecx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c1}
001ch jl short 000bh                          ; JL rel8 || 7C cb || encoded[2]{7c ed}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; void decrements_32u(int count, ref uint dst)
; decrements_32u_32i[7ff7c68ba200h, 7ff7c68ba21fh][31] = {0f 1f 44 00 00 33 c0 85 c9 7e 13 4c 63 c0 4e 8d 04 82 44 8b c8 45 89 08 ff c0 3b c1 7c ed c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h test ecx,ecx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c9}
0009h jle short 001eh                         ; JLE rel8 || 7E cb || encoded[2]{7e 13}
000bh movsxd r8,eax                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4c 63 c0}
000eh lea r8,[rdx+r8*4]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 04 82}
0012h mov r9d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c8}
0015h mov [r8],r9d                            ; MOV r/m32, r32 || o32 89 /r || encoded[3]{45 89 08}
0018h inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
001ah cmp eax,ecx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c1}
001ch jl short 000bh                          ; JL rel8 || 7C cb || encoded[2]{7c ed}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; void steps_8u(byte first, byte step, int count, ref byte dst)
; steps_8u_8u[7ff7c68ba230h, 7ff7c68ba26bh][59] = {56 0f 1f 40 00 33 c0 45 85 c0 7e 2d 0f b6 d2 0f b6 c9 4c 63 d0 4d 03 d1 44 0f b6 d8 8b f2 44 0f af de 45 0f b6 db 8b f1 44 03 de 45 0f b6 db 45 88 1a ff c0 41 3b c0 7c d9 5e c3}
; Capture completion code, MSDIAG
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
000ah jle short 0039h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2d}
000ch movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000fh movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
0012h movsxd r10,eax                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4c 63 d0}
0015h add r10,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 d1}
0018h movzx r11d,al                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{44 0f b6 d8}
001ch mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
001eh imul r11d,esi                           ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{44 0f af de}
0022h movzx r11d,r11b                         ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 db}
0026h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0028h add r11d,esi                            ; ADD r32, r/m32 || o32 03 /r || encoded[3]{44 03 de}
002bh movzx r11d,r11b                         ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 db}
002fh mov [r10],r11b                          ; MOV r/m8, r8 || 88 /r || encoded[3]{45 88 1a}
0032h inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
0034h cmp eax,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b c0}
0037h jl short 0012h                          ; JL rel8 || 7C cb || encoded[2]{7c d9}
0039h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
003ah ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; void steps_32u(uint first, uint step, int count, ref uint dst)
; steps_32u_32u[7ff7c68ba280h, 7ff7c68ba2a8h][40] = {0f 1f 44 00 00 33 c0 45 85 c0 7e 1b 4c 63 d0 4f 8d 14 91 44 8b d8 44 0f af da 44 03 d9 45 89 1a ff c0 41 3b c0 7c e5 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
000ah jle short 0027h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1b}
000ch movsxd r10,eax                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4c 63 d0}
000fh lea r10,[r9+r10*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 14 91}
0013h mov r11d,eax                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b d8}
0016h imul r11d,edx                           ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{44 0f af da}
001ah add r11d,ecx                            ; ADD r32, r/m32 || o32 03 /r || encoded[3]{44 03 d9}
001dh mov [r10],r11d                          ; MOV r/m32, r32 || o32 89 /r || encoded[3]{45 89 1a}
0020h inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
0022h cmp eax,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b c0}
0025h jl short 000ch                          ; JL rel8 || 7C cb || encoded[2]{7c e5}
0027h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; sbyte inc_d8i(sbyte x)
; inc_d8i_8i[7ff7c68ba2c0h, 7ff7c68ba2d0h][16] = {0f 1f 44 00 00 48 0f be c1 ff c0 48 0f be c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
000bh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; sbyte inc_g8i(sbyte x)
; inc_g8i_8i[7ff7c68ba2e0h, 7ff7c68ba2f0h][16] = {0f 1f 44 00 00 48 0f be c1 ff c0 48 0f be c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
000bh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; byte inc_d8u(byte x)
; inc_d8u_8u[7ff7c68ba300h, 7ff7c68ba30eh][14] = {0f 1f 44 00 00 0f b6 c1 ff c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; byte inc_g8u(byte x)
; inc_g8u_8u[7ff7c68ba320h, 7ff7c68ba32eh][14] = {0f 1f 44 00 00 0f b6 c1 ff c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; Int16 inc_d16i(Int16 x)
; inc_d16i_16i[7ff7c68ba340h, 7ff7c68ba350h][16] = {0f 1f 44 00 00 48 0f bf c1 ff c0 48 0f bf c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
000bh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; Int16 inc_g16i(Int16 x)
; inc_g16i_16i[7ff7c68ba360h, 7ff7c68ba370h][16] = {0f 1f 44 00 00 48 0f bf c1 ff c0 48 0f bf c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
000bh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ushort inc_d16u(ushort x)
; inc_d16u_16u[7ff7c68ba380h, 7ff7c68ba38eh][14] = {0f 1f 44 00 00 0f b7 c1 ff c0 0f b7 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
000ah movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ushort inc_g16u(ushort x)
; inc_g16u_16u[7ff7c68ba3a0h, 7ff7c68ba3aeh][14] = {0f 1f 44 00 00 0f b7 c1 ff c0 0f b7 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
000ah movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; int inc_d32i(int x)
; inc_d32i_32i[7ff7c68ba3c0h, 7ff7c68ba3c9h][9] = {0f 1f 44 00 00 8d 41 01 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h lea eax,[rcx+1]                         ; LEA r32, m || o32 8D /r || encoded[3]{8d 41 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; int inc_g32i(int x)
; inc_g32i_32i[7ff7c68ba3e0h, 7ff7c68ba3eah][10] = {0f 1f 44 00 00 ff c1 8b c1 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h inc ecx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c1}
0007h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; int inc_op32i(int x)
; inc_op32i_32i[7ff7c68ba810h, 7ff7c68ba81ah][10] = {0f 1f 44 00 00 ff c1 8b c1 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h inc ecx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c1}
0007h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; uint inc_d32u(uint x)
; inc_d32u_32u[7ff7c68ba830h, 7ff7c68ba839h][9] = {0f 1f 44 00 00 8d 41 01 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h lea eax,[rcx+1]                         ; LEA r32, m || o32 8D /r || encoded[3]{8d 41 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; uint inc_g32u(uint x)
; inc_g32u_32u[7ff7c68ba850h, 7ff7c68ba85ah][10] = {0f 1f 44 00 00 ff c1 8b c1 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h inc ecx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c1}
0007h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; uint inc_op32u(uint x)
; inc_op32u_32u[7ff7c68ba870h, 7ff7c68ba87ah][10] = {0f 1f 44 00 00 ff c1 8b c1 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h inc ecx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c1}
0007h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; long inc_d64i(long x)
; inc_d64i_64i[7ff7c68ba890h, 7ff7c68ba89ah][10] = {0f 1f 44 00 00 48 8d 41 01 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h lea rax,[rcx+1]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 41 01}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; long inc_g64i(long x)
; inc_g64i_64i[7ff7c68ba8b0h, 7ff7c68ba8bch][12] = {0f 1f 44 00 00 48 ff c1 48 8b c1 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h inc rcx                                 ; INC r/m64 || REX.W FF /0 || encoded[3]{48 ff c1}
0008h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ulong inc_d64u(ulong x)
; inc_d64u_64u[7ff7c68ba8d0h, 7ff7c68ba8dah][10] = {0f 1f 44 00 00 48 8d 41 01 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h lea rax,[rcx+1]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 41 01}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ulong inc_g64u(ulong x)
; inc_g64u_64u[7ff7c68ba8f0h, 7ff7c68ba8fch][12] = {0f 1f 44 00 00 48 ff c1 48 8b c1 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h inc rcx                                 ; INC r/m64 || REX.W FF /0 || encoded[3]{48 ff c1}
0008h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; float inc_g32f(float x)
; inc_g32f_32f[7ff7c68ba910h, 7ff7c68ba91eh][14] = {c5 f8 77 66 90 c5 fa 58 05 03 00 00 00 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vaddss xmm0,xmm0,dword ptr [7ff7c68ba920h]; VADDSS xmm1, xmm2, xmm3/m32 || VEX.LIG.F3.0F.WIG 58 /r || encoded[8]{c5 fa 58 05 03 00 00 00}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; float inc_d32f(float x)
; inc_d32f_32f[7ff7c68ba940h, 7ff7c68ba94eh][14] = {c5 f8 77 66 90 c5 fa 58 05 03 00 00 00 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vaddss xmm0,xmm0,dword ptr [7ff7c68ba950h]; VADDSS xmm1, xmm2, xmm3/m32 || VEX.LIG.F3.0F.WIG 58 /r || encoded[8]{c5 fa 58 05 03 00 00 00}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; double inc_d64f(double x)
; inc_d64f_64f[7ff7c68ba970h, 7ff7c68ba97eh][14] = {c5 f8 77 66 90 c5 fb 58 05 03 00 00 00 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vaddsd xmm0,xmm0,qword ptr [7ff7c68ba980h]; VADDSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 58 /r || encoded[8]{c5 fb 58 05 03 00 00 00}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; double inc_g64f(double x)
; inc_g64f_64f[7ff7c68ba9a0h, 7ff7c68ba9aeh][14] = {c5 f8 77 66 90 c5 fb 58 05 03 00 00 00 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vaddsd xmm0,xmm0,qword ptr [7ff7c68ba9b0h]; VADDSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 58 /r || encoded[8]{c5 fb 58 05 03 00 00 00}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit lt_d8i(sbyte lhs, sbyte rhs)
; lt_d8i_8i[7ff7c68ba9d0h, 7ff7c68ba9e6h][22] = {0f 1f 44 00 00 48 0f be c1 48 0f be d2 3b c2 0f 9c c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
000dh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000fh setl al                                 ; SETL r/m8 || 0F 9C /r || encoded[3]{0f 9c c0}
0012h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit lt_g8i(sbyte lhs, sbyte rhs)
; lt_g8i_8i[7ff7c68baa00h, 7ff7c68baa16h][22] = {0f 1f 44 00 00 48 0f be c1 48 0f be d2 3b c2 0f 9c c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
000dh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000fh setl al                                 ; SETL r/m8 || 0F 9C /r || encoded[3]{0f 9c c0}
0012h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit lt_d8u(byte lhs, byte rhs)
; lt_d8u_8u[7ff7c68baa30h, 7ff7c68baa44h][20] = {0f 1f 44 00 00 0f b6 c1 0f b6 d2 3b c2 0f 9c c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000dh setl al                                 ; SETL r/m8 || 0F 9C /r || encoded[3]{0f 9c c0}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit lt_g8u(byte lhs, byte rhs)
; lt_g8u_8u[7ff7c68baa60h, 7ff7c68baa74h][20] = {0f 1f 44 00 00 0f b6 c1 0f b6 d2 3b c2 0f 92 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000dh setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit lt_d16i(Int16 lhs, Int16 rhs)
; lt_d16i_16i[7ff7c68baa90h, 7ff7c68baaa6h][22] = {0f 1f 44 00 00 48 0f bf c1 48 0f bf d2 3b c2 0f 9c c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
000dh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000fh setl al                                 ; SETL r/m8 || 0F 9C /r || encoded[3]{0f 9c c0}
0012h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit lt_g16i(Int16 lhs, Int16 rhs)
; lt_g16i_16i[7ff7c68baac0h, 7ff7c68baad6h][22] = {0f 1f 44 00 00 48 0f bf c1 48 0f bf d2 3b c2 0f 9c c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
000dh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000fh setl al                                 ; SETL r/m8 || 0F 9C /r || encoded[3]{0f 9c c0}
0012h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit lt_d16u(ushort lhs, ushort rhs)
; lt_d16u_16u[7ff7c68baaf0h, 7ff7c68bab04h][20] = {0f 1f 44 00 00 0f b7 c1 0f b7 d2 3b c2 0f 9c c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000dh setl al                                 ; SETL r/m8 || 0F 9C /r || encoded[3]{0f 9c c0}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit lt_g16u(ushort lhs, ushort rhs)
; lt_g16u_16u[7ff7c68bab20h, 7ff7c68bab34h][20] = {0f 1f 44 00 00 0f b7 c1 0f b7 d2 3b c2 0f 92 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000dh setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit lt_d32i(int lhs, int rhs)
; lt_d32i_32i[7ff7c68bab50h, 7ff7c68bab5eh][14] = {0f 1f 44 00 00 3b ca 0f 9c c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp ecx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b ca}
0007h setl al                                 ; SETL r/m8 || 0F 9C /r || encoded[3]{0f 9c c0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit lt_g32i(int lhs, int rhs)
; lt_g32i_32i[7ff7c68bab70h, 7ff7c68bab7eh][14] = {0f 1f 44 00 00 3b ca 0f 9c c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp ecx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b ca}
0007h setl al                                 ; SETL r/m8 || 0F 9C /r || encoded[3]{0f 9c c0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit lt_d32u(uint lhs, uint rhs)
; lt_d32u_32u[7ff7c68bab90h, 7ff7c68bab9eh][14] = {0f 1f 44 00 00 3b ca 0f 92 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp ecx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b ca}
0007h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit lt_g32u(uint lhs, uint rhs)
; lt_g32u_32u[7ff7c68babb0h, 7ff7c68babbeh][14] = {0f 1f 44 00 00 3b ca 0f 92 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp ecx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b ca}
0007h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit lt_d64i(long lhs, long rhs)
; lt_d64i_64i[7ff7c68babd0h, 7ff7c68babdfh][15] = {0f 1f 44 00 00 48 3b ca 0f 9c c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp rcx,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b ca}
0008h setl al                                 ; SETL r/m8 || 0F 9C /r || encoded[3]{0f 9c c0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit lt_g64i(long lhs, long rhs)
; lt_g64i_64i[7ff7c68bb000h, 7ff7c68bb00fh][15] = {0f 1f 44 00 00 48 3b ca 0f 9c c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp rcx,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b ca}
0008h setl al                                 ; SETL r/m8 || 0F 9C /r || encoded[3]{0f 9c c0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit lt_d64u(ulong lhs, ulong rhs)
; lt_d64u_64u[7ff7c68bb020h, 7ff7c68bb02fh][15] = {0f 1f 44 00 00 48 3b ca 0f 92 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp rcx,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b ca}
0008h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit lt_g64u(ulong lhs, ulong rhs)
; lt_g64u_64u[7ff7c68bb040h, 7ff7c68bb04fh][15] = {0f 1f 44 00 00 48 3b ca 0f 92 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp rcx,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b ca}
0008h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bool lt_d32f(float lhs, float rhs)
; lt_d32f_32f[7ff7c68bb060h, 7ff7c68bb078h][24] = {c5 f8 77 66 90 c5 f8 2e c8 0f 97 c0 0f b6 c0 85 c0 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vucomiss xmm1,xmm0                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e c8}
0009h seta al                                 ; SETA r/m8 || 0F 97 /r || encoded[3]{0f 97 c0}
000ch movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000fh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0011h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0014h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bool lt_g32f(float lhs, float rhs)
; lt_g32f_32f[7ff7c68bb090h, 7ff7c68bb0a8h][24] = {c5 f8 77 66 90 c5 f8 2e c8 0f 97 c0 0f b6 c0 85 c0 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vucomiss xmm1,xmm0                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e c8}
0009h seta al                                 ; SETA r/m8 || 0F 97 /r || encoded[3]{0f 97 c0}
000ch movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000fh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0011h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0014h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bool lt_d64f(double lhs, double rhs)
; lt_d64f_64f[7ff7c68bb0c0h, 7ff7c68bb0d8h][24] = {c5 f8 77 66 90 c5 f9 2e c8 0f 97 c0 0f b6 c0 85 c0 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vucomisd xmm1,xmm0                      ; VUCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2E /r || encoded[4]{c5 f9 2e c8}
0009h seta al                                 ; SETA r/m8 || 0F 97 /r || encoded[3]{0f 97 c0}
000ch movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000fh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0011h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0014h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bool lt_g64f(double lhs, double rhs)
; lt_g64f_64f[7ff7c68bb0f0h, 7ff7c68bb108h][24] = {c5 f8 77 66 90 c5 f9 2e c8 0f 97 c0 0f b6 c0 85 c0 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vucomisd xmm1,xmm0                      ; VUCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2E /r || encoded[4]{c5 f9 2e c8}
0009h seta al                                 ; SETA r/m8 || 0F 97 /r || encoded[3]{0f 97 c0}
000ch movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000fh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0011h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0014h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit lteq_d8i(sbyte lhs, sbyte rhs)
; lteq_d8i_8i[7ff7c68bb120h, 7ff7c68bb136h][22] = {0f 1f 44 00 00 48 0f be c1 48 0f be d2 3b c2 0f 9e c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
000dh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000fh setle al                                ; SETLE r/m8 || 0F 9E /r || encoded[3]{0f 9e c0}
0012h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit lteq_g8i(sbyte lhs, sbyte rhs)
; lteq_g8i_8i[7ff7c68bb150h, 7ff7c68bb166h][22] = {0f 1f 44 00 00 48 0f be c1 48 0f be d2 3b c2 0f 9e c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
000dh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000fh setle al                                ; SETLE r/m8 || 0F 9E /r || encoded[3]{0f 9e c0}
0012h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit lteq_d8u(byte lhs, byte rhs)
; lteq_d8u_8u[7ff7c68bb180h, 7ff7c68bb194h][20] = {0f 1f 44 00 00 0f b6 c1 0f b6 d2 3b c2 0f 9e c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000dh setle al                                ; SETLE r/m8 || 0F 9E /r || encoded[3]{0f 9e c0}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit lteq_g8u(byte lhs, byte rhs)
; lteq_g8u_8u[7ff7c68bb1b0h, 7ff7c68bb1c4h][20] = {0f 1f 44 00 00 0f b6 c1 0f b6 d2 3b c2 0f 96 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000dh setbe al                                ; SETBE r/m8 || 0F 96 /r || encoded[3]{0f 96 c0}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit lteq_d16i(Int16 lhs, Int16 rhs)
; lteq_d16i_16i[7ff7c68bb1e0h, 7ff7c68bb1f6h][22] = {0f 1f 44 00 00 48 0f bf c1 48 0f bf d2 3b c2 0f 9e c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
000dh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000fh setle al                                ; SETLE r/m8 || 0F 9E /r || encoded[3]{0f 9e c0}
0012h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit lteq_g16i(Int16 lhs, Int16 rhs)
; lteq_g16i_16i[7ff7c68bb210h, 7ff7c68bb226h][22] = {0f 1f 44 00 00 48 0f bf c1 48 0f bf d2 3b c2 0f 9e c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
000dh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000fh setle al                                ; SETLE r/m8 || 0F 9E /r || encoded[3]{0f 9e c0}
0012h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit lteq_d16u(ushort lhs, ushort rhs)
; lteq_d16u_16u[7ff7c68bb240h, 7ff7c68bb254h][20] = {0f 1f 44 00 00 0f b7 c1 0f b7 d2 3b c2 0f 9e c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000dh setle al                                ; SETLE r/m8 || 0F 9E /r || encoded[3]{0f 9e c0}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit lteq_g16u(ushort lhs, ushort rhs)
; lteq_g16u_16u[7ff7c68bb270h, 7ff7c68bb284h][20] = {0f 1f 44 00 00 0f b7 c1 0f b7 d2 3b c2 0f 96 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000dh setbe al                                ; SETBE r/m8 || 0F 96 /r || encoded[3]{0f 96 c0}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit lteq_d32i(int lhs, int rhs)
; lteq_d32i_32i[7ff7c68bb2a0h, 7ff7c68bb2aeh][14] = {0f 1f 44 00 00 3b ca 0f 9e c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp ecx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b ca}
0007h setle al                                ; SETLE r/m8 || 0F 9E /r || encoded[3]{0f 9e c0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit lteq_g32i(int lhs, int rhs)
; lteq_g32i_32i[7ff7c68bb2c0h, 7ff7c68bb2ceh][14] = {0f 1f 44 00 00 3b ca 0f 9e c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp ecx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b ca}
0007h setle al                                ; SETLE r/m8 || 0F 9E /r || encoded[3]{0f 9e c0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit lteq_d32u(uint lhs, uint rhs)
; lteq_d32u_32u[7ff7c68bb2e0h, 7ff7c68bb2eeh][14] = {0f 1f 44 00 00 3b ca 0f 96 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp ecx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b ca}
0007h setbe al                                ; SETBE r/m8 || 0F 96 /r || encoded[3]{0f 96 c0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit lteq_g32u(uint lhs, uint rhs)
; lteq_g32u_32u[7ff7c68bb300h, 7ff7c68bb30eh][14] = {0f 1f 44 00 00 3b ca 0f 96 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp ecx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b ca}
0007h setbe al                                ; SETBE r/m8 || 0F 96 /r || encoded[3]{0f 96 c0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit lteq_d64i(long lhs, long rhs)
; lteq_d64i_64i[7ff7c68bb320h, 7ff7c68bb32fh][15] = {0f 1f 44 00 00 48 3b ca 0f 9e c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp rcx,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b ca}
0008h setle al                                ; SETLE r/m8 || 0F 9E /r || encoded[3]{0f 9e c0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit lteq_g64i(long lhs, long rhs)
; lteq_g64i_64i[7ff7c68bb340h, 7ff7c68bb34fh][15] = {0f 1f 44 00 00 48 3b ca 0f 9e c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp rcx,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b ca}
0008h setle al                                ; SETLE r/m8 || 0F 9E /r || encoded[3]{0f 9e c0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit lteq_d64u(ulong lhs, ulong rhs)
; lteq_d64u_64u[7ff7c68bb360h, 7ff7c68bb36fh][15] = {0f 1f 44 00 00 48 3b ca 0f 96 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp rcx,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b ca}
0008h setbe al                                ; SETBE r/m8 || 0F 96 /r || encoded[3]{0f 96 c0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit lteq_g64u(ulong lhs, ulong rhs)
; lteq_g64u_64u[7ff7c68bb380h, 7ff7c68bb38fh][15] = {0f 1f 44 00 00 48 3b ca 0f 96 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp rcx,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b ca}
0008h setbe al                                ; SETBE r/m8 || 0F 96 /r || encoded[3]{0f 96 c0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bool lteq_d32f(float lhs, float rhs)
; lteq_d32f_32f[7ff7c68bb3a0h, 7ff7c68bb3b8h][24] = {c5 f8 77 66 90 c5 f8 2e c8 0f 93 c0 0f b6 c0 85 c0 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vucomiss xmm1,xmm0                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e c8}
0009h setae al                                ; SETAE r/m8 || 0F 93 /r || encoded[3]{0f 93 c0}
000ch movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000fh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0011h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0014h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bool lteq_g32f(float lhs, float rhs)
; lteq_g32f_32f[7ff7c68bb3d0h, 7ff7c68bb3e8h][24] = {c5 f8 77 66 90 c5 f8 2e c8 0f 93 c0 0f b6 c0 85 c0 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vucomiss xmm1,xmm0                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e c8}
0009h setae al                                ; SETAE r/m8 || 0F 93 /r || encoded[3]{0f 93 c0}
000ch movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000fh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0011h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0014h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bool lteq_d64f(double lhs, double rhs)
; lteq_d64f_64f[7ff7c68bb400h, 7ff7c68bb418h][24] = {c5 f8 77 66 90 c5 f9 2e c8 0f 93 c0 0f b6 c0 85 c0 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vucomisd xmm1,xmm0                      ; VUCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2E /r || encoded[4]{c5 f9 2e c8}
0009h setae al                                ; SETAE r/m8 || 0F 93 /r || encoded[3]{0f 93 c0}
000ch movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000fh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0011h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0014h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bool lteq_g64f(double lhs, double rhs)
; lteq_g64f_64f[7ff7c68bb430h, 7ff7c68bb448h][24] = {c5 f8 77 66 90 c5 f9 2e c8 0f 93 c0 0f b6 c0 85 c0 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vucomisd xmm1,xmm0                      ; VUCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2E /r || encoded[4]{c5 f9 2e c8}
0009h setae al                                ; SETAE r/m8 || 0F 93 /r || encoded[3]{0f 93 c0}
000ch movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000fh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0011h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0014h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; sbyte max_d8i(sbyte a, sbyte b)
; max_d8i_8i[7ff7c68bb460h, 7ff7c68bb478h][24] = {0f 1f 44 00 00 48 0f be c1 48 0f be d2 3b c2 7f 02 eb 02 8b d0 8b c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
000dh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000fh jg short 0013h                          ; JG rel8 || 7F cb || encoded[2]{7f 02}
0011h jmp short 0015h                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
0013h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
0015h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; sbyte max_g8i(sbyte a, sbyte b)
; max_g8i_8i[7ff7c68bb490h, 7ff7c68bb4ach][28] = {0f 1f 44 00 00 48 0f be c1 48 0f be d2 48 0f be c0 3b c2 7f 02 eb 02 8b d0 8b c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
000dh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0011h cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
0013h jg short 0017h                          ; JG rel8 || 7F cb || encoded[2]{7f 02}
0015h jmp short 0019h                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
0017h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
0019h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; byte max_d8u(byte a, byte b)
; max_d8u_8u[7ff7c68bb4c0h, 7ff7c68bb4d6h][22] = {0f 1f 44 00 00 0f b6 c1 0f b6 d2 3b c2 7f 02 eb 02 8b d0 8b c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000dh jg short 0011h                          ; JG rel8 || 7F cb || encoded[2]{7f 02}
000fh jmp short 0013h                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
0011h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
0013h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; byte max_g8u(byte a, byte b)
; max_g8u_8u[7ff7c68bb4f0h, 7ff7c68bb509h][25] = {0f 1f 44 00 00 0f b6 c1 0f b6 d2 0f b6 c0 3b c2 7f 02 eb 02 8b d0 8b c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
0010h jg short 0014h                          ; JG rel8 || 7F cb || encoded[2]{7f 02}
0012h jmp short 0016h                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
0014h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
0016h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; Int16 max_d16i(Int16 a, Int16 b)
; max_d16i_16i[7ff7c68bb520h, 7ff7c68bb538h][24] = {0f 1f 44 00 00 48 0f bf c1 48 0f bf d2 3b c2 7f 02 eb 02 8b d0 8b c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
000dh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000fh jg short 0013h                          ; JG rel8 || 7F cb || encoded[2]{7f 02}
0011h jmp short 0015h                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
0013h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
0015h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; Int16 max_g16i(Int16 a, Int16 b)
; max_g16i_16i[7ff7c68bb550h, 7ff7c68bb56ch][28] = {0f 1f 44 00 00 48 0f bf c1 48 0f bf d2 48 0f bf c0 3b c2 7f 02 eb 02 8b d0 8b c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
000dh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0011h cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
0013h jg short 0017h                          ; JG rel8 || 7F cb || encoded[2]{7f 02}
0015h jmp short 0019h                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
0017h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
0019h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ushort max_d16u(ushort a, ushort b)
; max_d16u_16u[7ff7c68bb580h, 7ff7c68bb596h][22] = {0f 1f 44 00 00 0f b7 c1 0f b7 d2 3b c2 7f 02 eb 02 8b d0 8b c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000dh jg short 0011h                          ; JG rel8 || 7F cb || encoded[2]{7f 02}
000fh jmp short 0013h                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
0011h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
0013h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ushort max_g16u(ushort a, ushort b)
; max_g16u_16u[7ff7c68bb5b0h, 7ff7c68bb5c9h][25] = {0f 1f 44 00 00 0f b7 c1 0f b7 d2 0f b7 c0 3b c2 7f 02 eb 02 8b d0 8b c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
000eh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
0010h jg short 0014h                          ; JG rel8 || 7F cb || encoded[2]{7f 02}
0012h jmp short 0016h                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
0014h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
0016h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; int max_d32i(int a, int b)
; max_d32i_32i[7ff7c68bb5e0h, 7ff7c68bb5f0h][16] = {0f 1f 44 00 00 3b ca 7f 02 eb 02 8b d1 8b c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp ecx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b ca}
0007h jg short 000bh                          ; JG rel8 || 7F cb || encoded[2]{7f 02}
0009h jmp short 000dh                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
000bh mov edx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d1}
000dh mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; int max_g32i(int a, int b)
; max_g32i_32i[7ff7c68bba10h, 7ff7c68bba20h][16] = {0f 1f 44 00 00 3b ca 7f 02 eb 02 8b d1 8b c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp ecx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b ca}
0007h jg short 000bh                          ; JG rel8 || 7F cb || encoded[2]{7f 02}
0009h jmp short 000dh                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
000bh mov edx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d1}
000dh mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; uint max_d32u(uint a, uint b)
; max_d32u_32u[7ff7c68bba30h, 7ff7c68bba40h][16] = {0f 1f 44 00 00 3b ca 77 02 eb 02 8b d1 8b c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp ecx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b ca}
0007h ja short 000bh                          ; JA rel8 || 77 cb || encoded[2]{77 02}
0009h jmp short 000dh                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
000bh mov edx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d1}
000dh mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; uint max_g32u(uint a, uint b)
; max_g32u_32u[7ff7c68bba50h, 7ff7c68bba60h][16] = {0f 1f 44 00 00 3b ca 77 02 eb 02 8b d1 8b c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp ecx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b ca}
0007h ja short 000bh                          ; JA rel8 || 77 cb || encoded[2]{77 02}
0009h jmp short 000dh                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
000bh mov edx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d1}
000dh mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; long max_d64i(long a, long b)
; max_d64i_64i[7ff7c68bba70h, 7ff7c68bba83h][19] = {0f 1f 44 00 00 48 3b ca 7f 02 eb 03 48 8b d1 48 8b c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp rcx,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b ca}
0008h jg short 000ch                          ; JG rel8 || 7F cb || encoded[2]{7f 02}
000ah jmp short 000fh                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
000ch mov rdx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d1}
000fh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; long max_g64i(long a, long b)
; max_g64i_64i[7ff7c68bbaa0h, 7ff7c68bbab3h][19] = {0f 1f 44 00 00 48 3b ca 7f 02 eb 03 48 8b d1 48 8b c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp rcx,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b ca}
0008h jg short 000ch                          ; JG rel8 || 7F cb || encoded[2]{7f 02}
000ah jmp short 000fh                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
000ch mov rdx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d1}
000fh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ulong max_d64u(ulong a, ulong b)
; max_d64u_64u[7ff7c68bbad0h, 7ff7c68bbae3h][19] = {0f 1f 44 00 00 48 3b ca 77 02 eb 03 48 8b d1 48 8b c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp rcx,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b ca}
0008h ja short 000ch                          ; JA rel8 || 77 cb || encoded[2]{77 02}
000ah jmp short 000fh                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
000ch mov rdx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d1}
000fh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ulong max_g64u(ulong a, ulong b)
; max_g64u_64u[7ff7c68bbb00h, 7ff7c68bbb13h][19] = {0f 1f 44 00 00 48 3b ca 77 02 eb 03 48 8b d1 48 8b c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp rcx,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b ca}
0008h ja short 000ch                          ; JA rel8 || 77 cb || encoded[2]{77 02}
000ah jmp short 000fh                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
000ch mov rdx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d1}
000fh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; float max_d32f(float lhs, float rhs)
; max_d32f_32f[7ff7c68bbb30h, 7ff7c68bbb46h][22] = {c5 f8 77 66 90 c5 f8 2e c1 77 02 eb 04 c5 f8 28 c8 c5 f8 28 c1 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vucomiss xmm0,xmm1                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e c1}
0009h ja short 000dh                          ; JA rel8 || 77 cb || encoded[2]{77 02}
000bh jmp short 0011h                         ; JMP rel8 || EB cb || encoded[2]{eb 04}
000dh vmovaps xmm1,xmm0                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 c8}
0011h vmovaps xmm0,xmm1                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 c1}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; float max_g32f(float lhs, float rhs)
; max_g32f_32f[7ff7c68bbb60h, 7ff7c68bbb76h][22] = {c5 f8 77 66 90 c5 f8 2e c1 77 02 eb 04 c5 f8 28 c8 c5 f8 28 c1 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vucomiss xmm0,xmm1                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e c1}
0009h ja short 000dh                          ; JA rel8 || 77 cb || encoded[2]{77 02}
000bh jmp short 0011h                         ; JMP rel8 || EB cb || encoded[2]{eb 04}
000dh vmovaps xmm1,xmm0                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 c8}
0011h vmovaps xmm0,xmm1                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 c1}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; double max_d64f(double lhs, double rhs)
; max_d64f_64f[7ff7c68bbb90h, 7ff7c68bbba6h][22] = {c5 f8 77 66 90 c5 f9 2e c1 77 02 eb 04 c5 f8 28 c8 c5 f8 28 c1 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vucomisd xmm0,xmm1                      ; VUCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2E /r || encoded[4]{c5 f9 2e c1}
0009h ja short 000dh                          ; JA rel8 || 77 cb || encoded[2]{77 02}
000bh jmp short 0011h                         ; JMP rel8 || EB cb || encoded[2]{eb 04}
000dh vmovaps xmm1,xmm0                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 c8}
0011h vmovaps xmm0,xmm1                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 c1}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; double max_g64f(double lhs, double rhs)
; max_g64f_64f[7ff7c68bbbc0h, 7ff7c68bbbd6h][22] = {c5 f8 77 66 90 c5 f9 2e c1 77 02 eb 04 c5 f8 28 c8 c5 f8 28 c1 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vucomisd xmm0,xmm1                      ; VUCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2E /r || encoded[4]{c5 f9 2e c1}
0009h ja short 000dh                          ; JA rel8 || 77 cb || encoded[2]{77 02}
000bh jmp short 0011h                         ; JMP rel8 || EB cb || encoded[2]{eb 04}
000dh vmovaps xmm1,xmm0                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 c8}
0011h vmovaps xmm0,xmm1                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 c1}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; sbyte min_d8i(sbyte lhs, sbyte rhs)
; min_d8i_8i[7ff7c68bbbf0h, 7ff7c68bbc08h][24] = {0f 1f 44 00 00 48 0f be c1 48 0f be d2 3b c2 7c 02 eb 02 8b d0 8b c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
000dh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000fh jl short 0013h                          ; JL rel8 || 7C cb || encoded[2]{7c 02}
0011h jmp short 0015h                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
0013h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
0015h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; sbyte min_g8i(sbyte lhs, sbyte rhs)
; min_g8i_8i[7ff7c68bbc20h, 7ff7c68bbc3ch][28] = {0f 1f 44 00 00 48 0f be c1 48 0f be d2 48 0f be c0 3b c2 7c 02 eb 02 8b d0 8b c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
000dh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0011h cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
0013h jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c 02}
0015h jmp short 0019h                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
0017h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
0019h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; byte min_d8u(byte lhs, byte rhs)
; min_d8u_8u[7ff7c68bbc50h, 7ff7c68bbc66h][22] = {0f 1f 44 00 00 0f b6 c1 0f b6 d2 3b c2 7c 02 eb 02 8b d0 8b c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000dh jl short 0011h                          ; JL rel8 || 7C cb || encoded[2]{7c 02}
000fh jmp short 0013h                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
0011h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
0013h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; byte min_g8u(byte lhs, byte rhs)
; min_g8u_8u[7ff7c68bbc80h, 7ff7c68bbc99h][25] = {0f 1f 44 00 00 0f b6 c1 0f b6 d2 0f b6 c0 3b c2 7c 02 eb 02 8b d0 8b c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
0010h jl short 0014h                          ; JL rel8 || 7C cb || encoded[2]{7c 02}
0012h jmp short 0016h                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
0014h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
0016h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; Int16 min_d16i(Int16 lhs, Int16 rhs)
; min_d16i_16i[7ff7c68bbcb0h, 7ff7c68bbcc8h][24] = {0f 1f 44 00 00 48 0f bf c1 48 0f bf d2 3b c2 7c 02 eb 02 8b d0 8b c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
000dh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000fh jl short 0013h                          ; JL rel8 || 7C cb || encoded[2]{7c 02}
0011h jmp short 0015h                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
0013h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
0015h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; Int16 min_g16i(Int16 lhs, Int16 rhs)
; min_g16i_16i[7ff7c68bbce0h, 7ff7c68bbcfch][28] = {0f 1f 44 00 00 48 0f bf c1 48 0f bf d2 48 0f bf c0 3b c2 7c 02 eb 02 8b d0 8b c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
000dh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0011h cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
0013h jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c 02}
0015h jmp short 0019h                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
0017h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
0019h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ushort min_d16u(ushort lhs, ushort rhs)
; min_d16u_16u[7ff7c68bbd10h, 7ff7c68bbd26h][22] = {0f 1f 44 00 00 0f b7 c1 0f b7 d2 3b c2 7c 02 eb 02 8b d0 8b c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000dh jl short 0011h                          ; JL rel8 || 7C cb || encoded[2]{7c 02}
000fh jmp short 0013h                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
0011h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
0013h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ushort min_g16u(ushort lhs, ushort rhs)
; min_g16u_16u[7ff7c68bbd40h, 7ff7c68bbd59h][25] = {0f 1f 44 00 00 0f b7 c1 0f b7 d2 0f b7 c0 3b c2 7c 02 eb 02 8b d0 8b c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
000eh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
0010h jl short 0014h                          ; JL rel8 || 7C cb || encoded[2]{7c 02}
0012h jmp short 0016h                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
0014h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
0016h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; int min_d32i(int lhs, int rhs)
; min_d32i_32i[7ff7c68bbd70h, 7ff7c68bbd80h][16] = {0f 1f 44 00 00 3b ca 7c 02 eb 02 8b d1 8b c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp ecx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b ca}
0007h jl short 000bh                          ; JL rel8 || 7C cb || encoded[2]{7c 02}
0009h jmp short 000dh                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
000bh mov edx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d1}
000dh mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; int min_g32i(int lhs, int rhs)
; min_g32i_32i[7ff7c68bbd90h, 7ff7c68bbda0h][16] = {0f 1f 44 00 00 3b ca 7c 02 eb 02 8b d1 8b c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp ecx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b ca}
0007h jl short 000bh                          ; JL rel8 || 7C cb || encoded[2]{7c 02}
0009h jmp short 000dh                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
000bh mov edx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d1}
000dh mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; uint min_d32u(uint lhs, uint rhs)
; min_d32u_32u[7ff7c68bbdb0h, 7ff7c68bbdc0h][16] = {0f 1f 44 00 00 3b ca 72 02 eb 02 8b d1 8b c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp ecx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b ca}
0007h jb short 000bh                          ; JB rel8 || 72 cb || encoded[2]{72 02}
0009h jmp short 000dh                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
000bh mov edx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d1}
000dh mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ulong dec_g64u(ulong x)
; dec_g64u_64u[7ff7c68bbdd0h, 7ff7c68bbddch][12] = {0f 1f 44 00 00 48 ff c9 48 8b c1 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h dec rcx                                 ; DEC r/m64 || REX.W FF /1 || encoded[3]{48 ff c9}
0008h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; float dec_g32f(float x)
; dec_g32f_32f[7ff7c68bbdf0h, 7ff7c68bbdfeh][14] = {c5 f8 77 66 90 c5 fa 5c 05 03 00 00 00 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vsubss xmm0,xmm0,dword ptr [7ff7c68bbe00h]; VSUBSS xmm1, xmm2, xmm3/m32 || VEX.LIG.F3.0F.WIG 5C /r || encoded[8]{c5 fa 5c 05 03 00 00 00}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; float dec_d32f(float x)
; dec_d32f_32f[7ff7c68bbe20h, 7ff7c68bbe2eh][14] = {c5 f8 77 66 90 c5 fa 5c 05 03 00 00 00 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vsubss xmm0,xmm0,dword ptr [7ff7c68bbe30h]; VSUBSS xmm1, xmm2, xmm3/m32 || VEX.LIG.F3.0F.WIG 5C /r || encoded[8]{c5 fa 5c 05 03 00 00 00}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; double dec_d64f(double x)
; dec_d64f_64f[7ff7c68bbe50h, 7ff7c68bbe5eh][14] = {c5 f8 77 66 90 c5 fb 5c 05 03 00 00 00 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vsubsd xmm0,xmm0,qword ptr [7ff7c68bbe60h]; VSUBSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 5C /r || encoded[8]{c5 fb 5c 05 03 00 00 00}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; double dec_g64f(double x)
; dec_g64f_64f[7ff7c68bbe80h, 7ff7c68bbe8eh][14] = {c5 f8 77 66 90 c5 fb 5c 05 03 00 00 00 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vsubsd xmm0,xmm0,qword ptr [7ff7c68bbe90h]; VSUBSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 5C /r || encoded[8]{c5 fb 5c 05 03 00 00 00}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bool divides_d8i(sbyte lhs, sbyte rhs)
; divides_d8i_8i[7ff7c68bbeb0h, 7ff7c68bbed1h][33] = {0f 1f 44 00 00 48 0f be c2 48 0f be c9 99 f7 f9 85 d2 0f 94 c0 0f b6 c0 85 c0 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
0009h movsx rcx,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c9}
000dh cdq                                     ; CDQ || o32 99 || encoded[1]{99}
000eh idiv ecx                                ; IDIV r/m32 || o32 F7 /7 || encoded[2]{f7 f9}
0010h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0012h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0015h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0018h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
001ah setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
001dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bool divides_g8i(sbyte lhs, sbyte rhs)
; divides_g8i_8i[7ff7c68bbef0h, 7ff7c68bbf17h][39] = {0f 1f 44 00 00 48 0f be c1 48 0f be d2 48 0f be c8 8b c2 99 f7 f9 85 d2 0f 94 c0 0f b6 c0 85 c0 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
000dh movsx rcx,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c8}
0011h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0013h cdq                                     ; CDQ || o32 99 || encoded[1]{99}
0014h idiv ecx                                ; IDIV r/m32 || o32 F7 /7 || encoded[2]{f7 f9}
0016h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0018h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
001bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001eh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0020h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0023h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0026h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bool divides_d8u(byte lhs, byte rhs)
; divides_d8u_8u[7ff7c68bbf30h, 7ff7c68bbf4fh][31] = {0f 1f 44 00 00 0f b6 c2 0f b6 c9 99 f7 f9 85 d2 0f 94 c0 0f b6 c0 85 c0 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0008h movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
000bh cdq                                     ; CDQ || o32 99 || encoded[1]{99}
000ch idiv ecx                                ; IDIV r/m32 || o32 F7 /7 || encoded[2]{f7 f9}
000eh test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0010h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0013h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0016h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0018h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
001bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bool divides_g8u(byte lhs, byte rhs)
; divides_g8u_8u[7ff7c68bbf60h, 7ff7c68bbf84h][36] = {0f 1f 44 00 00 0f b6 c1 0f b6 d2 0f b6 c8 8b c2 99 f7 f9 85 d2 0f 94 c0 0f b6 c0 85 c0 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh movzx ecx,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c8}
000eh mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0010h cdq                                     ; CDQ || o32 99 || encoded[1]{99}
0011h idiv ecx                                ; IDIV r/m32 || o32 F7 /7 || encoded[2]{f7 f9}
0013h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0015h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0018h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001bh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
001dh setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0020h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0023h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bool divides_d16i(Int16 lhs, Int16 rhs)
; divides_d16i_16i[7ff7c68bbfa0h, 7ff7c68bbfc1h][33] = {0f 1f 44 00 00 48 0f bf c2 48 0f bf c9 99 f7 f9 85 d2 0f 94 c0 0f b6 c0 85 c0 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c2}
0009h movsx rcx,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c9}
000dh cdq                                     ; CDQ || o32 99 || encoded[1]{99}
000eh idiv ecx                                ; IDIV r/m32 || o32 F7 /7 || encoded[2]{f7 f9}
0010h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0012h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0015h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0018h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
001ah setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
001dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bool divides_g16i(Int16 lhs, Int16 rhs)
; divides_g16i_16i[7ff7c68bc3e0h, 7ff7c68bc407h][39] = {0f 1f 44 00 00 48 0f bf c1 48 0f bf d2 48 0f bf c8 8b c2 99 f7 f9 85 d2 0f 94 c0 0f b6 c0 85 c0 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
000dh movsx rcx,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c8}
0011h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0013h cdq                                     ; CDQ || o32 99 || encoded[1]{99}
0014h idiv ecx                                ; IDIV r/m32 || o32 F7 /7 || encoded[2]{f7 f9}
0016h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0018h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
001bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001eh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0020h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0023h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0026h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bool divides_d16u(ushort lhs, ushort rhs)
; divides_d16u_16u[7ff7c68bc420h, 7ff7c68bc43fh][31] = {0f 1f 44 00 00 0f b7 c2 0f b7 c9 99 f7 f9 85 d2 0f 94 c0 0f b6 c0 85 c0 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
0008h movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
000bh cdq                                     ; CDQ || o32 99 || encoded[1]{99}
000ch idiv ecx                                ; IDIV r/m32 || o32 F7 /7 || encoded[2]{f7 f9}
000eh test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0010h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0013h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0016h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0018h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
001bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bool divides_g16u(ushort lhs, ushort rhs)
; divides_g16u_16u[7ff7c68bc450h, 7ff7c68bc474h][36] = {0f 1f 44 00 00 0f b7 c1 0f b7 d2 0f b7 c8 8b c2 99 f7 f9 85 d2 0f 94 c0 0f b6 c0 85 c0 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh movzx ecx,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c8}
000eh mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0010h cdq                                     ; CDQ || o32 99 || encoded[1]{99}
0011h idiv ecx                                ; IDIV r/m32 || o32 F7 /7 || encoded[2]{f7 f9}
0013h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0015h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0018h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001bh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
001dh setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0020h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0023h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bool divides_d32i(int lhs, int rhs)
; divides_d32i_32i[7ff7c68bc490h, 7ff7c68bc4abh][27] = {0f 1f 44 00 00 8b c2 99 f7 f9 85 d2 0f 94 c0 0f b6 c0 85 c0 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h cdq                                     ; CDQ || o32 99 || encoded[1]{99}
0008h idiv ecx                                ; IDIV r/m32 || o32 F7 /7 || encoded[2]{f7 f9}
000ah test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
000ch sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
000fh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0012h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0014h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0017h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bool divides_g32i(int lhs, int rhs)
; divides_g32i_32i[7ff7c68bc4c0h, 7ff7c68bc4dbh][27] = {0f 1f 44 00 00 8b c2 99 f7 f9 85 d2 0f 94 c0 0f b6 c0 85 c0 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h cdq                                     ; CDQ || o32 99 || encoded[1]{99}
0008h idiv ecx                                ; IDIV r/m32 || o32 F7 /7 || encoded[2]{f7 f9}
000ah test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
000ch sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
000fh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0012h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0014h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0017h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bool divides_d32u(uint lhs, uint rhs)
; divides_d32u_32u[7ff7c68bc4f0h, 7ff7c68bc50ch][28] = {0f 1f 44 00 00 8b c2 33 d2 f7 f1 85 d2 0f 94 c0 0f b6 c0 85 c0 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0009h div ecx                                 ; DIV r/m32 || o32 F7 /6 || encoded[2]{f7 f1}
000bh test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
000dh sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0015h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0018h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bool divides_g32u(uint lhs, uint rhs)
; divides_g32u_32u[7ff7c68bc520h, 7ff7c68bc53ch][28] = {0f 1f 44 00 00 8b c2 33 d2 f7 f1 85 d2 0f 94 c0 0f b6 c0 85 c0 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0009h div ecx                                 ; DIV r/m32 || o32 F7 /6 || encoded[2]{f7 f1}
000bh test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
000dh sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0015h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0018h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bool divides_d64i(long lhs, long rhs)
; divides_d64i_64i[7ff7c68bc550h, 7ff7c68bc56fh][31] = {0f 1f 44 00 00 48 8b c2 48 99 48 f7 f9 48 85 d2 0f 94 c0 0f b6 c0 85 c0 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0008h cqo                                     ; CQO || REX.W 99 || encoded[2]{48 99}
000ah idiv rcx                                ; IDIV r/m64 || REX.W F7 /7 || encoded[3]{48 f7 f9}
000dh test rdx,rdx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 d2}
0010h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0013h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0016h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0018h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
001bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bool divides_g64i(long lhs, long rhs)
; divides_g64i_64i[7ff7c68bc580h, 7ff7c68bc59fh][31] = {0f 1f 44 00 00 48 8b c2 48 99 48 f7 f9 48 85 d2 0f 94 c0 0f b6 c0 85 c0 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0008h cqo                                     ; CQO || REX.W 99 || encoded[2]{48 99}
000ah idiv rcx                                ; IDIV r/m64 || REX.W F7 /7 || encoded[3]{48 f7 f9}
000dh test rdx,rdx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 d2}
0010h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0013h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0016h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0018h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
001bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bool divides_d64u(ulong lhs, ulong rhs)
; divides_d64u_64u[7ff7c68bc5b0h, 7ff7c68bc5cfh][31] = {0f 1f 44 00 00 48 8b c2 33 d2 48 f7 f1 48 85 d2 0f 94 c0 0f b6 c0 85 c0 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0008h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
000ah div rcx                                 ; DIV r/m64 || REX.W F7 /6 || encoded[3]{48 f7 f1}
000dh test rdx,rdx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 d2}
0010h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0013h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0016h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0018h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
001bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bool divides_g64u(ulong lhs, ulong rhs)
; divides_g64u_64u[7ff7c68bc5e0h, 7ff7c68bc5ffh][31] = {0f 1f 44 00 00 48 8b c2 33 d2 48 f7 f1 48 85 d2 0f 94 c0 0f b6 c0 85 c0 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0008h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
000ah div rcx                                 ; DIV r/m64 || REX.W F7 /6 || encoded[3]{48 f7 f1}
000dh test rdx,rdx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 d2}
0010h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0013h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0016h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0018h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
001bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bool divides_d32f(float lhs, float rhs)
; divides_d32f_32f[7ff7c68bc610h, 7ff7c68bc648h][56] = {48 83 ec 28 c5 f8 77 c5 f8 28 d0 c5 f8 28 c1 c5 f8 28 ca e8 38 50 71 5f c5 f0 57 c9 c5 f8 2e c1 0f 9b c0 7a 03 0f 94 c0 0f b6 c0 85 c0 0f 95 c0 0f b6 c0 48 83 c4 28 c3}
; Capture completion code, MSDIAG
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h vmovaps xmm2,xmm0                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 d0}
000bh vmovaps xmm0,xmm1                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 c1}
000fh vmovaps xmm1,xmm2                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 ca}
0013h call 7ff825fd1660h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 50 71 5f}
0018h vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
001ch vucomiss xmm0,xmm1                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e c1}
0020h setnp al                                ; SETNP r/m8 || 0F 9B /r || encoded[3]{0f 9b c0}
0023h jp short 0028h                          ; JP rel8 || 7A cb || encoded[2]{7a 03}
0025h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0028h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
002bh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
002dh setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0030h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0033h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0037h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bool divides_g32f(float lhs, float rhs)
; divides_g32f_32f[7ff7c68bc670h, 7ff7c68bc6a8h][56] = {48 83 ec 28 c5 f8 77 c5 f8 28 d0 c5 f8 28 c1 c5 f8 28 ca e8 d8 4f 71 5f c5 f0 57 c9 c5 f8 2e c1 0f 9b c0 7a 03 0f 94 c0 0f b6 c0 85 c0 0f 95 c0 0f b6 c0 48 83 c4 28 c3}
; Capture completion code, MSDIAG
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h vmovaps xmm2,xmm0                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 d0}
000bh vmovaps xmm0,xmm1                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 c1}
000fh vmovaps xmm1,xmm2                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 ca}
0013h call 7ff825fd1660h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 4f 71 5f}
0018h vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
001ch vucomiss xmm0,xmm1                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e c1}
0020h setnp al                                ; SETNP r/m8 || 0F 9B /r || encoded[3]{0f 9b c0}
0023h jp short 0028h                          ; JP rel8 || 7A cb || encoded[2]{7a 03}
0025h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0028h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
002bh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
002dh setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0030h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0033h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0037h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bool divides_d64f(double lhs, double rhs)
; divides_d64f_64f[7ff7c68bc6d0h, 7ff7c68bc708h][56] = {48 83 ec 28 c5 f8 77 c5 f8 28 d0 c5 f8 28 c1 c5 f8 28 ca e8 e8 4e 71 5f c5 f0 57 c9 c5 f9 2e c1 0f 9b c0 7a 03 0f 94 c0 0f b6 c0 85 c0 0f 95 c0 0f b6 c0 48 83 c4 28 c3}
; Capture completion code, MSDIAG
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h vmovaps xmm2,xmm0                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 d0}
000bh vmovaps xmm0,xmm1                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 c1}
000fh vmovaps xmm1,xmm2                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 ca}
0013h call 7ff825fd15d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 4e 71 5f}
0018h vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
001ch vucomisd xmm0,xmm1                      ; VUCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2E /r || encoded[4]{c5 f9 2e c1}
0020h setnp al                                ; SETNP r/m8 || 0F 9B /r || encoded[3]{0f 9b c0}
0023h jp short 0028h                          ; JP rel8 || 7A cb || encoded[2]{7a 03}
0025h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0028h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
002bh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
002dh setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0030h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0033h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0037h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bool divides_g64f(double lhs, double rhs)
; divides_g64f_64f[7ff7c68bc730h, 7ff7c68bc768h][56] = {48 83 ec 28 c5 f8 77 c5 f8 28 d0 c5 f8 28 c1 c5 f8 28 ca e8 88 4e 71 5f c5 f0 57 c9 c5 f9 2e c1 0f 9b c0 7a 03 0f 94 c0 0f b6 c0 85 c0 0f 95 c0 0f b6 c0 48 83 c4 28 c3}
; Capture completion code, MSDIAG
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h vmovaps xmm2,xmm0                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 d0}
000bh vmovaps xmm0,xmm1                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 c1}
000fh vmovaps xmm1,xmm2                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 ca}
0013h call 7ff825fd15d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 88 4e 71 5f}
0018h vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
001ch vucomisd xmm0,xmm1                      ; VUCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2E /r || encoded[4]{c5 f9 2e c1}
0020h setnp al                                ; SETNP r/m8 || 0F 9B /r || encoded[3]{0f 9b c0}
0023h jp short 0028h                          ; JP rel8 || 7A cb || encoded[2]{7a 03}
0025h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0028h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
002bh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
002dh setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0030h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0033h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0037h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit eq_d8i(sbyte lhs, sbyte rhs)
; eq_d8i_8i[7ff7c68bc790h, 7ff7c68bc7a6h][22] = {0f 1f 44 00 00 48 0f be c1 48 0f be d2 3b c2 0f 94 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
000dh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000fh sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0012h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit eq_g8i(sbyte lhs, sbyte rhs)
; eq_g8i_8i[7ff7c68bc7c0h, 7ff7c68bc7dah][26] = {0f 1f 44 00 00 48 0f be c1 48 0f be d2 48 0f be c0 3b c2 0f 94 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
000dh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0011h cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
0013h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0016h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit eq_d8u(byte lhs, byte rhs)
; eq_d8u_8u[7ff7c68bc7f0h, 7ff7c68bc804h][20] = {0f 1f 44 00 00 0f b6 c1 0f b6 d2 3b c2 0f 94 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000dh sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit eq_g8u(byte lhs, byte rhs)
; eq_g8u_8u[7ff7c68bc820h, 7ff7c68bc837h][23] = {0f 1f 44 00 00 0f b6 c1 0f b6 d2 0f b6 c0 3b c2 0f 94 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
0010h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0013h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit eq_d16i(Int16 lhs, Int16 rhs)
; eq_d16i_16i[7ff7c68bc850h, 7ff7c68bc866h][22] = {0f 1f 44 00 00 48 0f bf c1 48 0f bf d2 3b c2 0f 94 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
000dh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000fh sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0012h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit eq_g16i(Int16 lhs, Int16 rhs)
; eq_g16i_16i[7ff7c68bc880h, 7ff7c68bc89ah][26] = {0f 1f 44 00 00 48 0f bf c1 48 0f bf d2 48 0f bf c0 3b c2 0f 94 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
000dh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0011h cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
0013h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0016h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit eq_d32i(int lhs, int rhs)
; eq_d32i_32i[7ff7c68bc8b0h, 7ff7c68bc8beh][14] = {0f 1f 44 00 00 3b ca 0f 94 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp ecx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b ca}
0007h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit eq_g32i(int lhs, int rhs)
; eq_g32i_32i[7ff7c68bc8d0h, 7ff7c68bc8deh][14] = {0f 1f 44 00 00 3b ca 0f 94 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp ecx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b ca}
0007h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit eq_d32u(uint lhs, uint rhs)
; eq_d32u_32u[7ff7c68bc8f0h, 7ff7c68bc8feh][14] = {0f 1f 44 00 00 3b ca 0f 94 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp ecx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b ca}
0007h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit eq_g32u(uint lhs, uint rhs)
; eq_g32u_32u[7ff7c68bc910h, 7ff7c68bc91eh][14] = {0f 1f 44 00 00 3b ca 0f 94 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp ecx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b ca}
0007h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit eq_d64i(long lhs, long rhs)
; eq_d64i_64i[7ff7c68bc930h, 7ff7c68bc93fh][15] = {0f 1f 44 00 00 48 3b ca 0f 94 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp rcx,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b ca}
0008h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit eq_g64i(long lhs, long rhs)
; eq_g64i_64i[7ff7c68bc950h, 7ff7c68bc95fh][15] = {0f 1f 44 00 00 48 3b ca 0f 94 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp rcx,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b ca}
0008h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit eq_d64u(ulong lhs, ulong rhs)
; eq_d64u_64u[7ff7c68bc970h, 7ff7c68bc97fh][15] = {0f 1f 44 00 00 48 3b ca 0f 94 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp rcx,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b ca}
0008h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit eq_g64u(ulong lhs, ulong rhs)
; eq_g64u_64u[7ff7c68bc990h, 7ff7c68bc99fh][15] = {0f 1f 44 00 00 48 3b ca 0f 94 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp rcx,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b ca}
0008h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit eq_d32f(float lhs, float rhs)
; eq_d32f_32f[7ff7c68bc9b0h, 7ff7c68bc9c5h][21] = {c5 f8 77 66 90 c5 f8 2e c1 0f 9b c0 7a 03 0f 94 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vucomiss xmm0,xmm1                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e c1}
0009h setnp al                                ; SETNP r/m8 || 0F 9B /r || encoded[3]{0f 9b c0}
000ch jp short 0011h                          ; JP rel8 || 7A cb || encoded[2]{7a 03}
000eh sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0011h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit eq_g32f(float lhs, float rhs)
; eq_g32f_32f[7ff7c68bc9e0h, 7ff7c68bc9f5h][21] = {c5 f8 77 66 90 c5 f8 2e c1 0f 9b c0 7a 03 0f 94 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vucomiss xmm0,xmm1                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e c1}
0009h setnp al                                ; SETNP r/m8 || 0F 9B /r || encoded[3]{0f 9b c0}
000ch jp short 0011h                          ; JP rel8 || 7A cb || encoded[2]{7a 03}
000eh sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0011h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit eq_d64f(double lhs, double rhs)
; eq_d64f_64f[7ff7c68bca10h, 7ff7c68bca25h][21] = {c5 f8 77 66 90 c5 f9 2e c1 0f 9b c0 7a 03 0f 94 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vucomisd xmm0,xmm1                      ; VUCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2E /r || encoded[4]{c5 f9 2e c1}
0009h setnp al                                ; SETNP r/m8 || 0F 9B /r || encoded[3]{0f 9b c0}
000ch jp short 0011h                          ; JP rel8 || 7A cb || encoded[2]{7a 03}
000eh sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0011h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit eq_g64f(double lhs, double rhs)
; eq_g64f_64f[7ff7c68bca40h, 7ff7c68bca55h][21] = {c5 f8 77 66 90 c5 f9 2e c1 0f 9b c0 7a 03 0f 94 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vucomisd xmm0,xmm1                      ; VUCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2E /r || encoded[4]{c5 f9 2e c1}
0009h setnp al                                ; SETNP r/m8 || 0F 9B /r || encoded[3]{0f 9b c0}
000ch jp short 0011h                          ; JP rel8 || 7A cb || encoded[2]{7a 03}
000eh sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0011h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit neq_d8i(sbyte lhs, sbyte rhs)
; neq_d8i_8i[7ff7c68bca70h, 7ff7c68bca86h][22] = {0f 1f 44 00 00 48 0f be c1 48 0f be d2 3b c2 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
000dh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000fh setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0012h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit neq_g8i(sbyte lhs, sbyte rhs)
; neq_g8i_8i[7ff7c68bcaa0h, 7ff7c68bcabah][26] = {0f 1f 44 00 00 48 0f be c1 48 0f be d2 48 0f be c0 3b c2 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
000dh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0011h cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
0013h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0016h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit neq_d8u(byte lhs, byte rhs)
; neq_d8u_8u[7ff7c68bcad0h, 7ff7c68bcae4h][20] = {0f 1f 44 00 00 0f b6 c1 0f b6 d2 3b c2 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000dh setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit neq_g8u(byte lhs, byte rhs)
; neq_g8u_8u[7ff7c68bcb00h, 7ff7c68bcb17h][23] = {0f 1f 44 00 00 0f b6 c1 0f b6 d2 0f b6 c0 3b c2 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
0010h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0013h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit neq_d16i(Int16 lhs, Int16 rhs)
; neq_d16i_16i[7ff7c68bcb30h, 7ff7c68bcb46h][22] = {0f 1f 44 00 00 48 0f bf c1 48 0f bf d2 3b c2 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
000dh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000fh setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0012h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit neq_g16i(Int16 lhs, Int16 rhs)
; neq_g16i_16i[7ff7c68bcb60h, 7ff7c68bcb7ah][26] = {0f 1f 44 00 00 48 0f bf c1 48 0f bf d2 48 0f bf c0 3b c2 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
000dh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0011h cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
0013h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0016h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit neq_d16u(ushort lhs, ushort rhs)
; neq_d16u_16u[7ff7c68bcb90h, 7ff7c68bcba4h][20] = {0f 1f 44 00 00 0f b7 c1 0f b7 d2 3b c2 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000dh setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit neq_g16u(ushort lhs, ushort rhs)
; neq_g16u_16u[7ff7c68bcfc0h, 7ff7c68bcfd7h][23] = {0f 1f 44 00 00 0f b7 c1 0f b7 d2 0f b7 c0 3b c2 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
000eh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
0010h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0013h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit neq_d32i(int lhs, int rhs)
; neq_d32i_32i[7ff7c68bcff0h, 7ff7c68bcffeh][14] = {0f 1f 44 00 00 3b ca 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp ecx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b ca}
0007h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit neq_g32i(int lhs, int rhs)
; neq_g32i_32i[7ff7c68bd010h, 7ff7c68bd01eh][14] = {0f 1f 44 00 00 3b ca 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp ecx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b ca}
0007h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit neq_d32u(uint lhs, uint rhs)
; neq_d32u_32u[7ff7c68bd030h, 7ff7c68bd03eh][14] = {0f 1f 44 00 00 3b ca 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp ecx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b ca}
0007h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit neq_g32u(uint lhs, uint rhs)
; neq_g32u_32u[7ff7c68bd050h, 7ff7c68bd05eh][14] = {0f 1f 44 00 00 3b ca 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp ecx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b ca}
0007h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit neq_d64i(long lhs, long rhs)
; neq_d64i_64i[7ff7c68bd070h, 7ff7c68bd07fh][15] = {0f 1f 44 00 00 48 3b ca 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp rcx,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b ca}
0008h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit neq_g64i(long lhs, long rhs)
; neq_g64i_64i[7ff7c68bd090h, 7ff7c68bd09fh][15] = {0f 1f 44 00 00 48 3b ca 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp rcx,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b ca}
0008h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit neq_d64u(ulong lhs, ulong rhs)
; neq_d64u_64u[7ff7c68bd0b0h, 7ff7c68bd0bfh][15] = {0f 1f 44 00 00 48 3b ca 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp rcx,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b ca}
0008h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit neq_g64u(ulong lhs, ulong rhs)
; neq_g64u_64u[7ff7c68bd0d0h, 7ff7c68bd0dfh][15] = {0f 1f 44 00 00 48 3b ca 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp rcx,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b ca}
0008h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit neq_d32f(float lhs, float rhs)
; neq_d32f_32f[7ff7c68bd0f0h, 7ff7c68bd105h][21] = {c5 f8 77 66 90 c5 f8 2e c1 0f 9a c0 7a 03 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vucomiss xmm0,xmm1                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e c1}
0009h setp al                                 ; SETP r/m8 || 0F 9A /r || encoded[3]{0f 9a c0}
000ch jp short 0011h                          ; JP rel8 || 7A cb || encoded[2]{7a 03}
000eh setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0011h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit neq_g32f(float lhs, float rhs)
; neq_g32f_32f[7ff7c68bd120h, 7ff7c68bd135h][21] = {c5 f8 77 66 90 c5 f8 2e c1 0f 9a c0 7a 03 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vucomiss xmm0,xmm1                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e c1}
0009h setp al                                 ; SETP r/m8 || 0F 9A /r || encoded[3]{0f 9a c0}
000ch jp short 0011h                          ; JP rel8 || 7A cb || encoded[2]{7a 03}
000eh setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0011h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit neq_d64f(double lhs, double rhs)
; neq_d64f_64f[7ff7c68bd150h, 7ff7c68bd165h][21] = {c5 f8 77 66 90 c5 f9 2e c1 0f 9a c0 7a 03 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vucomisd xmm0,xmm1                      ; VUCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2E /r || encoded[4]{c5 f9 2e c1}
0009h setp al                                 ; SETP r/m8 || 0F 9A /r || encoded[3]{0f 9a c0}
000ch jp short 0011h                          ; JP rel8 || 7A cb || encoded[2]{7a 03}
000eh setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0011h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit neq_g64f(double lhs, double rhs)
; neq_g64f_64f[7ff7c68bd180h, 7ff7c68bd195h][21] = {c5 f8 77 66 90 c5 f9 2e c1 0f 9a c0 7a 03 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vucomisd xmm0,xmm1                      ; VUCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2E /r || encoded[4]{c5 f9 2e c1}
0009h setp al                                 ; SETP r/m8 || 0F 9A /r || encoded[3]{0f 9a c0}
000ch jp short 0011h                          ; JP rel8 || 7A cb || encoded[2]{7a 03}
000eh setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0011h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit even_d8i(sbyte x)
; even_d8i_8i[7ff7c68bd1b0h, 7ff7c68bd1c2h][18] = {0f 1f 44 00 00 48 0f be c1 a8 01 0f 94 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h test al,1                               ; TEST AL, imm8 || A8 ib || encoded[2]{a8 01}
000bh sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
000eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit even_g8i(sbyte x)
; even_g8i_8i[7ff7c68bd1e0h, 7ff7c68bd1f7h][23] = {0f 1f 44 00 00 48 0f be c1 a8 01 0f 95 c0 0f b6 c0 f7 d0 83 e0 01 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h test al,1                               ; TEST AL, imm8 || A8 ib || encoded[2]{a8 01}
000bh setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0011h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0013h and eax,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 01}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit even_d8u(byte x)
; even_d8u_8u[7ff7c68bd210h, 7ff7c68bd221h][17] = {0f 1f 44 00 00 0f b6 c1 a8 01 0f 94 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h test al,1                               ; TEST AL, imm8 || A8 ib || encoded[2]{a8 01}
000ah sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
000dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit even_g8u(byte x)
; even_g8u_8u[7ff7c68bd240h, 7ff7c68bd256h][22] = {0f 1f 44 00 00 0f b6 c1 a8 01 0f 95 c0 0f b6 c0 f7 d0 83 e0 01 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h test al,1                               ; TEST AL, imm8 || A8 ib || encoded[2]{a8 01}
000ah setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0010h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0012h and eax,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 01}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit even_d16i(Int16 x)
; even_d16i_16i[7ff7c68bd270h, 7ff7c68bd282h][18] = {0f 1f 44 00 00 48 0f bf c1 a8 01 0f 94 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h test al,1                               ; TEST AL, imm8 || A8 ib || encoded[2]{a8 01}
000bh sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
000eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit even_g16i(Int16 x)
; even_g16i_16i[7ff7c68bd2a0h, 7ff7c68bd2b7h][23] = {0f 1f 44 00 00 48 0f bf c1 a8 01 0f 95 c0 0f b6 c0 f7 d0 83 e0 01 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h test al,1                               ; TEST AL, imm8 || A8 ib || encoded[2]{a8 01}
000bh setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0011h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0013h and eax,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 01}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit even_d16u(ushort x)
; even_d16u_16u[7ff7c68bd2d0h, 7ff7c68bd2e1h][17] = {0f 1f 44 00 00 0f b7 c1 a8 01 0f 94 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h test al,1                               ; TEST AL, imm8 || A8 ib || encoded[2]{a8 01}
000ah sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
000dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit even_g16u(ushort x)
; even_g16u_16u[7ff7c68bd300h, 7ff7c68bd316h][22] = {0f 1f 44 00 00 0f b7 c1 a8 01 0f 95 c0 0f b6 c0 f7 d0 83 e0 01 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h test al,1                               ; TEST AL, imm8 || A8 ib || encoded[2]{a8 01}
000ah setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0010h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0012h and eax,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 01}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit even_d32i(int x)
; even_d32i_32i[7ff7c68bd330h, 7ff7c68bd33fh][15] = {0f 1f 44 00 00 f6 c1 01 0f 94 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test cl,1                               ; TEST r/m8, imm8 || F6 /0 ib || encoded[3]{f6 c1 01}
0008h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit even_g32i(int x)
; even_g32i_32i[7ff7c68bd350h, 7ff7c68bd364h][20] = {0f 1f 44 00 00 f6 c1 01 0f 95 c0 0f b6 c0 f7 d0 83 e0 01 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test cl,1                               ; TEST r/m8, imm8 || F6 /0 ib || encoded[3]{f6 c1 01}
0008h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0010h and eax,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 01}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit even_d32u(uint x)
; even_d32u_32u[7ff7c68bd380h, 7ff7c68bd38fh][15] = {0f 1f 44 00 00 f6 c1 01 0f 94 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test cl,1                               ; TEST r/m8, imm8 || F6 /0 ib || encoded[3]{f6 c1 01}
0008h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit even_g32u(uint x)
; even_g32u_32u[7ff7c68bd3a0h, 7ff7c68bd3b4h][20] = {0f 1f 44 00 00 f6 c1 01 0f 95 c0 0f b6 c0 f7 d0 83 e0 01 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test cl,1                               ; TEST r/m8, imm8 || F6 /0 ib || encoded[3]{f6 c1 01}
0008h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0010h and eax,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 01}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit even_d64i(long x)
; even_d64i_64i[7ff7c68bd3d0h, 7ff7c68bd3e0h][16] = {0f 1f 44 00 00 8b c1 a8 01 0f 94 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h test al,1                               ; TEST AL, imm8 || A8 ib || encoded[2]{a8 01}
0009h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
000ch movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit even_g64i(long x)
; even_g64i_64i[7ff7c68bd3f0h, 7ff7c68bd404h][20] = {0f 1f 44 00 00 f6 c1 01 0f 95 c0 0f b6 c0 f7 d0 83 e0 01 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test cl,1                               ; TEST r/m8, imm8 || F6 /0 ib || encoded[3]{f6 c1 01}
0008h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0010h and eax,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 01}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit even_d64u(ulong x)
; even_d64u_64u[7ff7c68bd420h, 7ff7c68bd430h][16] = {0f 1f 44 00 00 8b c1 a8 01 0f 94 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h test al,1                               ; TEST AL, imm8 || A8 ib || encoded[2]{a8 01}
0009h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
000ch movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit even_g64u(ulong x)
; even_g64u_64u[7ff7c68bd440h, 7ff7c68bd454h][20] = {0f 1f 44 00 00 f6 c1 01 0f 95 c0 0f b6 c0 f7 d0 83 e0 01 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test cl,1                               ; TEST r/m8, imm8 || F6 /0 ib || encoded[3]{f6 c1 01}
0008h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0010h and eax,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 01}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit odd_d8i(sbyte x)
; odd_d8i_8i[7ff7c68bd470h, 7ff7c68bd482h][18] = {0f 1f 44 00 00 48 0f be c1 a8 01 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h test al,1                               ; TEST AL, imm8 || A8 ib || encoded[2]{a8 01}
000bh setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit odd_g8i(sbyte x)
; odd_g8i_8i[7ff7c68bd4a0h, 7ff7c68bd4b2h][18] = {0f 1f 44 00 00 48 0f be c1 a8 01 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h test al,1                               ; TEST AL, imm8 || A8 ib || encoded[2]{a8 01}
000bh setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit odd_d8u(byte x)
; odd_d8u_8u[7ff7c68bd4d0h, 7ff7c68bd4e1h][17] = {0f 1f 44 00 00 0f b6 c1 a8 01 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h test al,1                               ; TEST AL, imm8 || A8 ib || encoded[2]{a8 01}
000ah setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit odd_g8u(byte x)
; odd_g8u_8u[7ff7c68bd500h, 7ff7c68bd511h][17] = {0f 1f 44 00 00 0f b6 c1 a8 01 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h test al,1                               ; TEST AL, imm8 || A8 ib || encoded[2]{a8 01}
000ah setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit odd_d16i(Int16 x)
; odd_d16i_16i[7ff7c68bd530h, 7ff7c68bd542h][18] = {0f 1f 44 00 00 48 0f bf c1 a8 01 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h test al,1                               ; TEST AL, imm8 || A8 ib || encoded[2]{a8 01}
000bh setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit odd_g16i(Int16 x)
; odd_g16i_16i[7ff7c68bd560h, 7ff7c68bd572h][18] = {0f 1f 44 00 00 48 0f bf c1 a8 01 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h test al,1                               ; TEST AL, imm8 || A8 ib || encoded[2]{a8 01}
000bh setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit odd_d16u(ushort x)
; odd_d16u_16u[7ff7c68bd590h, 7ff7c68bd5a1h][17] = {0f 1f 44 00 00 0f b7 c1 a8 01 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h test al,1                               ; TEST AL, imm8 || A8 ib || encoded[2]{a8 01}
000ah setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit odd_g16u(ushort x)
; odd_g16u_16u[7ff7c68bd5c0h, 7ff7c68bd5d1h][17] = {0f 1f 44 00 00 0f b7 c1 a8 01 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h test al,1                               ; TEST AL, imm8 || A8 ib || encoded[2]{a8 01}
000ah setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit odd_d32i(int x)
; odd_d32i_32i[7ff7c68bd5f0h, 7ff7c68bd5ffh][15] = {0f 1f 44 00 00 f6 c1 01 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test cl,1                               ; TEST r/m8, imm8 || F6 /0 ib || encoded[3]{f6 c1 01}
0008h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit odd_g32i(int x)
; odd_g32i_32i[7ff7c68bd610h, 7ff7c68bd61fh][15] = {0f 1f 44 00 00 f6 c1 01 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test cl,1                               ; TEST r/m8, imm8 || F6 /0 ib || encoded[3]{f6 c1 01}
0008h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit odd_d32u(uint x)
; odd_d32u_32u[7ff7c68bd630h, 7ff7c68bd63fh][15] = {0f 1f 44 00 00 f6 c1 01 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test cl,1                               ; TEST r/m8, imm8 || F6 /0 ib || encoded[3]{f6 c1 01}
0008h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit odd_g32u(uint x)
; odd_g32u_32u[7ff7c68bd650h, 7ff7c68bd65fh][15] = {0f 1f 44 00 00 f6 c1 01 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test cl,1                               ; TEST r/m8, imm8 || F6 /0 ib || encoded[3]{f6 c1 01}
0008h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit odd_d64i(long x)
; odd_d64i_64i[7ff7c68bd670h, 7ff7c68bd67fh][15] = {0f 1f 44 00 00 f6 c1 01 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test cl,1                               ; TEST r/m8, imm8 || F6 /0 ib || encoded[3]{f6 c1 01}
0008h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit odd_g64i(long x)
; odd_g64i_64i[7ff7c68bd690h, 7ff7c68bd69fh][15] = {0f 1f 44 00 00 f6 c1 01 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test cl,1                               ; TEST r/m8, imm8 || F6 /0 ib || encoded[3]{f6 c1 01}
0008h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit odd_d64u(ulong x)
; odd_d64u_64u[7ff7c68bd6b0h, 7ff7c68bd6bfh][15] = {0f 1f 44 00 00 f6 c1 01 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test cl,1                               ; TEST r/m8, imm8 || F6 /0 ib || encoded[3]{f6 c1 01}
0008h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit odd_g64u(ulong x)
; odd_g64u_64u[7ff7c68bd6d0h, 7ff7c68bd6dfh][15] = {0f 1f 44 00 00 f6 c1 01 0f 95 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test cl,1                               ; TEST r/m8, imm8 || F6 /0 ib || encoded[3]{f6 c1 01}
0008h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; sbyte fma_d8i(sbyte x, sbyte a, sbyte b)
; fma_d8i_8i[7ff7c68bd6f0h, 7ff7c68bd70bh][27] = {0f 1f 44 00 00 48 0f be c1 48 0f be d2 0f af c2 49 0f be d0 03 c2 48 0f be c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
000dh imul eax,edx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c2}
0010h movsx rdx,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be d0}
0014h add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
0016h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; sbyte fma_g8i(sbyte x, sbyte a, sbyte b)
; fma_g8i_8i[7ff7c68bdb30h, 7ff7c68bdb53h][35] = {0f 1f 44 00 00 48 0f be c1 48 0f be d2 49 0f be c8 48 0f be c0 48 0f be d2 0f af c2 03 c1 48 0f be c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
000dh movsx rcx,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be c8}
0011h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0015h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
0019h imul eax,edx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c2}
001ch add eax,ecx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c1}
001eh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0022h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; byte fma_d8u(byte x, byte a, byte b)
; fma_d8u_8u[7ff7c68bdb70h, 7ff7c68bdb88h][24] = {0f 1f 44 00 00 0f b6 c1 0f b6 d2 0f af c2 41 0f b6 d0 03 c2 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh imul eax,edx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c2}
000eh movzx edx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d0}
0012h add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
0014h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; byte fma_g8u(byte x, byte a, byte b)
; fma_g8u_8u[7ff7c68bdba0h, 7ff7c68bdbbeh][30] = {0f 1f 44 00 00 0f b6 c1 0f b6 d2 41 0f b6 c8 0f b6 c0 0f b6 d2 0f af c2 03 c1 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh movzx ecx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c8}
000fh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0012h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0015h imul eax,edx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c2}
0018h add eax,ecx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c1}
001ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; Int16 fma_d16i(Int16 x, Int16 a, Int16 b)
; fma_d16i_16i[7ff7c68bdbd0h, 7ff7c68bdbebh][27] = {0f 1f 44 00 00 48 0f bf c1 48 0f bf d2 0f af c2 49 0f bf d0 03 c2 48 0f bf c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
000dh imul eax,edx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c2}
0010h movsx rdx,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf d0}
0014h add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
0016h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; Int16 fma_g16i(Int16 x, Int16 a, Int16 b)
; fma_g16i_16i[7ff7c68bdc00h, 7ff7c68bdc23h][35] = {0f 1f 44 00 00 48 0f bf c1 48 0f bf d2 49 0f bf c8 48 0f bf c0 48 0f bf d2 0f af c2 03 c1 48 0f bf c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
000dh movsx rcx,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf c8}
0011h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0015h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
0019h imul eax,edx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c2}
001ch add eax,ecx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c1}
001eh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0022h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ushort fma_d16u(ushort x, ushort a, ushort b)
; fma_d16u_16u[7ff7c68bdc40h, 7ff7c68bdc58h][24] = {0f 1f 44 00 00 0f b7 c1 0f b7 d2 0f af c2 41 0f b7 d0 03 c2 0f b7 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh imul eax,edx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c2}
000eh movzx edx,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 d0}
0012h add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
0014h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ushort fma_g16u(ushort x, ushort a, ushort b)
; fma_g16u_16u[7ff7c68bdc70h, 7ff7c68bdc8eh][30] = {0f 1f 44 00 00 0f b7 c1 0f b7 d2 41 0f b7 c8 0f b7 c0 0f b7 d2 0f af c2 03 c1 0f b7 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh movzx ecx,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 c8}
000fh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0012h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0015h imul eax,edx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c2}
0018h add eax,ecx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c1}
001ah movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; int fma_d32i(int x, int a, int b)
; fma_d32i_32i[7ff7c68bdca0h, 7ff7c68bdcaeh][14] = {0f 1f 44 00 00 8b c1 0f af c2 41 03 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h imul eax,edx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c2}
000ah add eax,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; int fma_g32i(int x, int a, int b)
; fma_g32i_32i[7ff7c68bdcc0h, 7ff7c68bdcceh][14] = {0f 1f 44 00 00 0f af d1 41 03 d0 8b c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h imul edx,ecx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af d1}
0008h add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
000bh mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; uint fma_d32u(uint x, uint a, uint b)
; fma_d32u_32u[7ff7c68bdce0h, 7ff7c68bdceeh][14] = {0f 1f 44 00 00 8b c1 0f af c2 41 03 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h imul eax,edx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c2}
000ah add eax,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; uint fma_g32u(uint x, uint a, uint b)
; fma_g32u_32u[7ff7c68bdd00h, 7ff7c68bdd0eh][14] = {0f 1f 44 00 00 0f af d1 41 03 d0 8b c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h imul edx,ecx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af d1}
0008h add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
000bh mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; long fma_d64i(long x, long a, long b)
; fma_d64i_64i[7ff7c68bdd20h, 7ff7c68bdd30h][16] = {0f 1f 44 00 00 48 8b c1 48 0f af c2 49 03 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h imul rax,rdx                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af c2}
000ch add rax,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; long fma_g64i(long x, long a, long b)
; fma_g64i_64i[7ff7c68bdd40h, 7ff7c68bdd50h][16] = {0f 1f 44 00 00 48 0f af d1 49 03 d0 48 8b c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h imul rdx,rcx                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af d1}
0009h add rdx,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d0}
000ch mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ulong fma_d64u(ulong x, ulong a, ulong b)
; fma_d64u_64u[7ff7c68bdd60h, 7ff7c68bdd70h][16] = {0f 1f 44 00 00 48 8b c1 48 0f af c2 49 03 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h imul rax,rdx                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af c2}
000ch add rax,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ulong fma_g64u(ulong x, ulong a, ulong b)
; fma_g64u_64u[7ff7c68bdd80h, 7ff7c68bdd90h][16] = {0f 1f 44 00 00 48 0f af d1 49 03 d0 48 8b c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h imul rdx,rcx                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af d1}
0009h add rdx,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d0}
000ch mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; float fma_d32f(float x, float a, float b)
; fma_d32f_32f[7ff7c68bdda0h, 7ff7c68bddabh][11] = {c5 f8 77 66 90 c4 e2 71 a9 c2 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vfmadd213ss xmm0,xmm1,xmm2              ; VFMADD213SS xmm1, xmm2, xmm3/m32 || VEX.LIG.66.0F38.W0 A9 /r || encoded[5]{c4 e2 71 a9 c2}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; float fma_g32f(float x, float a, float b)
; fma_g32f_32f[7ff7c68bddc0h, 7ff7c68bddcbh][11] = {c5 f8 77 66 90 c4 e2 71 a9 c2 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vfmadd213ss xmm0,xmm1,xmm2              ; VFMADD213SS xmm1, xmm2, xmm3/m32 || VEX.LIG.66.0F38.W0 A9 /r || encoded[5]{c4 e2 71 a9 c2}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; double fma_d64f(double x, double a, double b)
; fma_d64f_64f[7ff7c68bdde0h, 7ff7c68bddebh][11] = {c5 f8 77 66 90 c4 e2 f1 a9 c2 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vfmadd213sd xmm0,xmm1,xmm2              ; VFMADD213SD xmm1, xmm2, xmm3/m64 || VEX.LIG.66.0F38.W1 A9 /r || encoded[5]{c4 e2 f1 a9 c2}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; double fma_g64f(double x, double a, double b)
; fma_g64f_64f[7ff7c68bde00h, 7ff7c68bde0bh][11] = {c5 f8 77 66 90 c4 e2 f1 a9 c2 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vfmadd213sd xmm0,xmm1,xmm2              ; VFMADD213SD xmm1, xmm2, xmm3/m64 || VEX.LIG.66.0F38.W1 A9 /r || encoded[5]{c4 e2 f1 a9 c2}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; uint gcd_32u(uint a, uint b)
; gcd_32u_32u[7ff7c68bde20h, 7ff7c68bde48h][40] = {0f 1f 44 00 00 44 8b c2 8b d1 45 85 c0 74 14 8b c2 33 d2 41 f7 f0 85 d2 75 04 41 8b c0 c3 49 87 d0 eb ec 44 8b c2 eb f2}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov r8d,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c2}
0008h mov edx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d1}
000ah test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
000dh je short 0023h                          ; JE rel8 || 74 cb || encoded[2]{74 14}
000fh mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0011h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0013h div r8d                                 ; DIV r/m32 || o32 F7 /6 || encoded[3]{41 f7 f0}
0016h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0018h jne short 001eh                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
001ah mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
001eh xchg rdx,r8                             ; XCHG r/m64, r64 || REX.W 87 /r || encoded[3]{49 87 d0}
0021h jmp short 000fh                         ; JMP rel8 || EB cb || encoded[2]{eb ec}
0023h mov r8d,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c2}
0026h jmp short 001ah                         ; JMP rel8 || EB cb || encoded[2]{eb f2}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; int gcd_32i(int a, int b)
; gcd_32i_32i[7ff7c68bde60h, 7ff7c68bde8ah][42] = {0f 1f 44 00 00 8b c1 c1 f8 1f 03 c8 33 c1 8b ca c1 f9 1f 44 8d 04 0a 41 33 c8 85 c9 74 0b 99 f7 f9 8b c1 8b ca 85 c9 75 f5 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h sar eax,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 1f}
000ah add ecx,eax                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c8}
000ch xor eax,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c1}
000eh mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0010h sar ecx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 1f}
0013h lea r8d,[rdx+rcx]                       ; LEA r32, m || o32 8D /r || encoded[4]{44 8d 04 0a}
0017h xor ecx,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{41 33 c8}
001ah test ecx,ecx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c9}
001ch je short 0029h                          ; JE rel8 || 74 cb || encoded[2]{74 0b}
001eh cdq                                     ; CDQ || o32 99 || encoded[1]{99}
001fh idiv ecx                                ; IDIV r/m32 || o32 F7 /7 || encoded[2]{f7 f9}
0021h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0023h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0025h test ecx,ecx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c9}
0027h jne short 001eh                         ; JNE rel8 || 75 cb || encoded[2]{75 f5}
0029h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit gt_d8i(sbyte a, sbyte b)
; gt_d8i_8i[7ff7c68bdea0h, 7ff7c68bdeb6h][22] = {0f 1f 44 00 00 48 0f be c1 48 0f be d2 3b c2 0f 9f c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
000dh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000fh setg al                                 ; SETG r/m8 || 0F 9F /r || encoded[3]{0f 9f c0}
0012h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit gt_g8i(sbyte a, sbyte b)
; gt_g8i_8i[7ff7c68bded0h, 7ff7c68bdee6h][22] = {0f 1f 44 00 00 48 0f be c1 48 0f be d2 3b c2 0f 9f c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
000dh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000fh setg al                                 ; SETG r/m8 || 0F 9F /r || encoded[3]{0f 9f c0}
0012h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit gt_d8u(byte a, byte b)
; gt_d8u_8u[7ff7c68bdf00h, 7ff7c68bdf14h][20] = {0f 1f 44 00 00 0f b6 c1 0f b6 d2 3b c2 0f 9f c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000dh setg al                                 ; SETG r/m8 || 0F 9F /r || encoded[3]{0f 9f c0}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit gt_g8u(byte a, byte b)
; gt_g8u_8u[7ff7c68bdf30h, 7ff7c68bdf44h][20] = {0f 1f 44 00 00 0f b6 c1 0f b6 d2 3b c2 0f 97 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000dh seta al                                 ; SETA r/m8 || 0F 97 /r || encoded[3]{0f 97 c0}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit gt_d16i(Int16 a, Int16 b)
; gt_d16i_16i[7ff7c68bdf60h, 7ff7c68bdf76h][22] = {0f 1f 44 00 00 48 0f bf c1 48 0f bf d2 3b c2 0f 9f c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
000dh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000fh setg al                                 ; SETG r/m8 || 0F 9F /r || encoded[3]{0f 9f c0}
0012h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit gt_g16i(Int16 a, Int16 b)
; gt_g16i_16i[7ff7c6a90480h, 7ff7c6a90496h][22] = {0f 1f 44 00 00 48 0f bf c1 48 0f bf d2 3b c2 0f 9f c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
000dh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000fh setg al                                 ; SETG r/m8 || 0F 9F /r || encoded[3]{0f 9f c0}
0012h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit gt_d16u(ushort a, ushort b)
; gt_d16u_16u[7ff7c6a904b0h, 7ff7c6a904c4h][20] = {0f 1f 44 00 00 0f b7 c1 0f b7 d2 3b c2 0f 9f c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000dh setg al                                 ; SETG r/m8 || 0F 9F /r || encoded[3]{0f 9f c0}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit gt_g16u(ushort a, ushort b)
; gt_g16u_16u[7ff7c6a904e0h, 7ff7c6a904f4h][20] = {0f 1f 44 00 00 0f b7 c1 0f b7 d2 3b c2 0f 97 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000dh seta al                                 ; SETA r/m8 || 0F 97 /r || encoded[3]{0f 97 c0}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit gt_d32i(int a, int b)
; gt_d32i_32i[7ff7c6a90510h, 7ff7c6a9051eh][14] = {0f 1f 44 00 00 3b ca 0f 9f c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp ecx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b ca}
0007h setg al                                 ; SETG r/m8 || 0F 9F /r || encoded[3]{0f 9f c0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit gt_g32i(int a, int b)
; gt_g32i_32i[7ff7c6a90530h, 7ff7c6a9053eh][14] = {0f 1f 44 00 00 3b ca 0f 9f c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp ecx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b ca}
0007h setg al                                 ; SETG r/m8 || 0F 9F /r || encoded[3]{0f 9f c0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit gt_d32u(uint a, uint b)
; gt_d32u_32u[7ff7c6a90550h, 7ff7c6a9055eh][14] = {0f 1f 44 00 00 3b ca 0f 97 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp ecx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b ca}
0007h seta al                                 ; SETA r/m8 || 0F 97 /r || encoded[3]{0f 97 c0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; sbyte abs_d8i(sbyte x)
; abs_d8i_8i[7ff7c6a90570h, 7ff7c6a90587h][23] = {0f 1f 44 00 00 48 0f be c1 8b d0 c1 fa 07 03 c2 33 c2 48 0f be c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
000bh sar edx,7                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 07}
000eh add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
0010h xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
0012h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; sbyte abs_g8i(sbyte x)
; abs_g8i_8i[7ff7c6a905a0h, 7ff7c6a905b7h][23] = {0f 1f 44 00 00 48 0f be c1 8b d0 c1 fa 07 03 c2 33 c2 48 0f be c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
000bh sar edx,7                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 07}
000eh add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
0010h xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
0012h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; Int16 abs_d16i(Int16 x)
; abs_d16i_16i[7ff7c6a905d0h, 7ff7c6a905e7h][23] = {0f 1f 44 00 00 48 0f bf c1 8b d0 c1 fa 0f 03 c2 33 c2 48 0f bf c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
000bh sar edx,0fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 0f}
000eh add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
0010h xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
0012h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; Int16 abs_g16i(Int16 x)
; abs_g16i_16i[7ff7c6a90600h, 7ff7c6a90617h][23] = {0f 1f 44 00 00 48 0f bf c1 8b d0 c1 fa 0f 03 c2 33 c2 48 0f bf c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
000bh sar edx,0fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 0f}
000eh add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
0010h xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
0012h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; int abs_d32i(int x)
; abs_d32i_32i[7ff7c6a90630h, 7ff7c6a90640h][16] = {0f 1f 44 00 00 8b c1 c1 f8 1f 8d 14 01 33 c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h sar eax,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 1f}
000ah lea edx,[rcx+rax]                       ; LEA r32, m || o32 8D /r || encoded[3]{8d 14 01}
000dh xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; int abs_g32i(int x)
; abs_g32i_32i[7ff7c6a90650h, 7ff7c6a90660h][16] = {0f 1f 44 00 00 8b c1 c1 f8 1f 8d 14 01 33 c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h sar eax,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 1f}
000ah lea edx,[rcx+rax]                       ; LEA r32, m || o32 8D /r || encoded[3]{8d 14 01}
000dh xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; long abs_d64i(long x)
; abs_d64i_64i[7ff7c6a90670h, 7ff7c6a90684h][20] = {0f 1f 44 00 00 48 8b c1 48 c1 f8 3f 48 8d 14 01 48 33 c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h sar rax,3fh                             ; SAR r/m64, imm8 || REX.W C1 /7 ib || encoded[4]{48 c1 f8 3f}
000ch lea rdx,[rcx+rax]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 14 01}
0010h xor rax,rdx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 c2}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; long abs_g64i(long x)
; abs_g64i_64i[7ff7c6a906a0h, 7ff7c6a906b4h][20] = {0f 1f 44 00 00 48 8b c1 48 c1 f8 3f 48 8d 14 01 48 33 c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h sar rax,3fh                             ; SAR r/m64, imm8 || REX.W C1 /7 ib || encoded[4]{48 c1 f8 3f}
000ch lea rdx,[rcx+rax]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 14 01}
0010h xor rax,rdx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 c2}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; float abs_g32f(float x)
; abs_g32f_32f[7ff7c6a906d0h, 7ff7c6a90701h][49] = {48 83 ec 18 c5 f8 77 33 c0 89 44 24 10 c5 fa 11 44 24 08 8b 44 24 08 89 44 24 10 48 8d 44 24 10 81 20 ff ff ff 7f c5 fa 10 44 24 10 48 83 c4 18 c3}
; Capture completion code, MSDIAG
0000h sub rsp,18h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 18}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+10h],eax                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 10}
000dh vmovss dword ptr [rsp+8],xmm0           ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[6]{c5 fa 11 44 24 08}
0013h mov eax,[rsp+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 08}
0017h mov [rsp+10h],eax                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 10}
001bh lea rax,[rsp+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 10}
0020h and dword ptr [rax],7fffffffh           ; AND r/m32, imm32 || o32 81 /4 id || encoded[6]{81 20 ff ff ff 7f}
0026h vmovss xmm0,dword ptr [rsp+10h]         ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c5 fa 10 44 24 10}
002ch add rsp,18h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 18}
0030h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; float abs_d32f(float x)
; abs_d32f_32f[7ff7c6a90720h, 7ff7c6a90751h][49] = {48 83 ec 18 c5 f8 77 33 c0 89 44 24 10 c5 fa 11 44 24 08 8b 44 24 08 89 44 24 10 48 8d 44 24 10 81 20 ff ff ff 7f c5 fa 10 44 24 10 48 83 c4 18 c3}
; Capture completion code, MSDIAG
0000h sub rsp,18h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 18}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+10h],eax                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 10}
000dh vmovss dword ptr [rsp+8],xmm0           ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[6]{c5 fa 11 44 24 08}
0013h mov eax,[rsp+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 08}
0017h mov [rsp+10h],eax                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 10}
001bh lea rax,[rsp+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 10}
0020h and dword ptr [rax],7fffffffh           ; AND r/m32, imm32 || o32 81 /4 id || encoded[6]{81 20 ff ff ff 7f}
0026h vmovss xmm0,dword ptr [rsp+10h]         ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c5 fa 10 44 24 10}
002ch add rsp,18h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 18}
0030h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; double abs_d64f(double x)
; abs_d64f_64f[7ff7c6a90770h, 7ff7c6a907abh][59] = {48 83 ec 18 c5 f8 77 33 c0 48 89 44 24 10 c5 fb 11 44 24 08 48 8b 44 24 08 48 89 44 24 10 48 8d 44 24 10 48 ba ff ff ff ff ff ff ff 7f 48 21 10 c5 fb 10 44 24 10 48 83 c4 18 c3}
; Capture completion code, MSDIAG
0000h sub rsp,18h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 18}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 10}
000eh vmovsd qword ptr [rsp+8],xmm0           ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[6]{c5 fb 11 44 24 08}
0014h mov rax,[rsp+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 44 24 08}
0019h mov [rsp+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 10}
001eh lea rax,[rsp+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 10}
0023h mov rdx,7fffffffffffffffh               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba ff ff ff ff ff ff ff 7f}
002dh and [rax],rdx                           ; AND r/m64, r64 || REX.W 21 /r || encoded[3]{48 21 10}
0030h vmovsd xmm0,qword ptr [rsp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[6]{c5 fb 10 44 24 10}
0036h add rsp,18h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 18}
003ah ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; double abs_g64f(double x)
; abs_g64f_64f[7ff7c6a907d0h, 7ff7c6a9080bh][59] = {48 83 ec 18 c5 f8 77 33 c0 48 89 44 24 10 c5 fb 11 44 24 08 48 8b 44 24 08 48 89 44 24 10 48 8d 44 24 10 48 ba ff ff ff ff ff ff ff 7f 48 21 10 c5 fb 10 44 24 10 48 83 c4 18 c3}
; Capture completion code, MSDIAG
0000h sub rsp,18h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 18}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 10}
000eh vmovsd qword ptr [rsp+8],xmm0           ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[6]{c5 fb 11 44 24 08}
0014h mov rax,[rsp+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 44 24 08}
0019h mov [rsp+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 10}
001eh lea rax,[rsp+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 10}
0023h mov rdx,7fffffffffffffffh               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba ff ff ff ff ff ff ff 7f}
002dh and [rax],rdx                           ; AND r/m64, r64 || REX.W 21 /r || encoded[3]{48 21 10}
0030h vmovsd xmm0,qword ptr [rsp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[6]{c5 fb 10 44 24 10}
0036h add rsp,18h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 18}
003ah ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; sbyte add_d8i(sbyte lhs, sbyte rhs)
; add_d8i_8i[7ff7c6a90830h, 7ff7c6a90844h][20] = {0f 1f 44 00 00 48 0f be c1 48 0f be d2 03 c2 48 0f be c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
000dh add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
000fh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; sbyte add_g8i(sbyte lhs, sbyte rhs)
; add_g8i_8i[7ff7c6a90860h, 7ff7c6a90874h][20] = {0f 1f 44 00 00 48 0f be c1 48 0f be d2 03 c2 48 0f be c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
000dh add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
000fh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; byte add_d8u(byte lhs, byte rhs)
; add_d8u_8u[7ff7c6a90890h, 7ff7c6a908a1h][17] = {0f 1f 44 00 00 0f b6 c1 0f b6 d2 03 c2 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
000dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; byte add_g8u(byte lhs, byte rhs)
; add_g8u_8u[7ff7c6a908c0h, 7ff7c6a908d1h][17] = {0f 1f 44 00 00 0f b6 c1 0f b6 d2 03 c2 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
000dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; Int16 add_d16i(Int16 lhs, Int16 rhs)
; add_d16i_16i[7ff7c6a908f0h, 7ff7c6a90904h][20] = {0f 1f 44 00 00 48 0f bf c1 48 0f bf d2 03 c2 48 0f bf c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
000dh add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
000fh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; Int16 add_g16i(Int16 lhs, Int16 rhs)
; add_g16i_16i[7ff7c6a90920h, 7ff7c6a90934h][20] = {0f 1f 44 00 00 48 0f bf c1 48 0f bf d2 03 c2 48 0f bf c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
000dh add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
000fh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ushort add_d16u(ushort lhs, ushort rhs)
; add_d16u_16u[7ff7c6a90950h, 7ff7c6a90961h][17] = {0f 1f 44 00 00 0f b7 c1 0f b7 d2 03 c2 0f b7 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
000dh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ushort add_g16u(ushort lhs, ushort rhs)
; add_g16u_16u[7ff7c6a90980h, 7ff7c6a90991h][17] = {0f 1f 44 00 00 0f b7 c1 0f b7 d2 03 c2 0f b7 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
000dh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; int add_d32i(int lhs, int rhs)
; add_d32i_32i[7ff7c6a909b0h, 7ff7c6a909b9h][9] = {0f 1f 44 00 00 8d 04 11 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h lea eax,[rcx+rdx]                       ; LEA r32, m || o32 8D /r || encoded[3]{8d 04 11}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; int add_g32i(int lhs, int rhs)
; add_g32i_32i[7ff7c6a909d0h, 7ff7c6a909dah][10] = {0f 1f 44 00 00 03 d1 8b c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h add edx,ecx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 d1}
0007h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; uint add_d32u(uint lhs, uint rhs)
; add_d32u_32u[7ff7c6a909f0h, 7ff7c6a909f9h][9] = {0f 1f 44 00 00 8d 04 11 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h lea eax,[rcx+rdx]                       ; LEA r32, m || o32 8D /r || encoded[3]{8d 04 11}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; uint add_g32u(uint lhs, uint rhs)
; add_g32u_32u[7ff7c6a90a10h, 7ff7c6a90a1ah][10] = {0f 1f 44 00 00 03 d1 8b c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h add edx,ecx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 d1}
0007h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; long add_d64i(long lhs, long rhs)
; add_d64i_64i[7ff7c6a90a30h, 7ff7c6a90a3ah][10] = {0f 1f 44 00 00 48 8d 04 11 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h lea rax,[rcx+rdx]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 11}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; long add_g64i(long lhs, long rhs)
; add_g64i_64i[7ff7c6a90a50h, 7ff7c6a90a5ch][12] = {0f 1f 44 00 00 48 03 d1 48 8b c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h add rdx,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d1}
0008h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ulong add_d64u(ulong lhs, ulong rhs)
; add_d64u_64u[7ff7c6a90a70h, 7ff7c6a90a7ah][10] = {0f 1f 44 00 00 48 8d 04 11 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h lea rax,[rcx+rdx]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 11}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ulong add_g64u(ulong lhs, ulong rhs)
; add_g64u_64u[7ff7c6a90a90h, 7ff7c6a90a9ch][12] = {0f 1f 44 00 00 48 03 d1 48 8b c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h add rdx,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d1}
0008h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; float add_d32f(float lhs, float rhs)
; add_d32f_32f[7ff7c6a90ab0h, 7ff7c6a90abah][10] = {c5 f8 77 66 90 c5 fa 58 c1 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vaddss xmm0,xmm0,xmm1                   ; VADDSS xmm1, xmm2, xmm3/m32 || VEX.LIG.F3.0F.WIG 58 /r || encoded[4]{c5 fa 58 c1}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; float add_g32f(float lhs, float rhs)
; add_g32f_32f[7ff7c6a90ad0h, 7ff7c6a90adah][10] = {c5 f8 77 66 90 c5 fa 58 c1 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vaddss xmm0,xmm0,xmm1                   ; VADDSS xmm1, xmm2, xmm3/m32 || VEX.LIG.F3.0F.WIG 58 /r || encoded[4]{c5 fa 58 c1}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; double add_d64f(double lhs, double rhs)
; add_d64f_64f[7ff7c6a90af0h, 7ff7c6a90afah][10] = {c5 f8 77 66 90 c5 fb 58 c1 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vaddsd xmm0,xmm0,xmm1                   ; VADDSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 58 /r || encoded[4]{c5 fb 58 c1}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; double add_g64f(double lhs, double rhs)
; add_g64f_64f[7ff7c6a90b10h, 7ff7c6a90b1ah][10] = {c5 f8 77 66 90 c5 fb 58 c1 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vaddsd xmm0,xmm0,xmm1                   ; VADDSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 58 /r || encoded[4]{c5 fb 58 c1}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit between_d8i(sbyte x, sbyte a, sbyte b)
; between_d8i_8i[7ff7c6a90b30h, 7ff7c6a90b59h][41] = {0f 1f 44 00 00 48 0f be c1 48 0f be d2 3b c2 7c 12 48 0f be c1 49 0f be d0 3b c2 0f 9e c0 0f b6 c0 eb 02 33 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
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
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit between_g8i(sbyte x, sbyte a, sbyte b)
; between_g8i_8i[7ff7c6a90b70h, 7ff7c6a90b95h][37] = {0f 1f 44 00 00 48 0f be c1 48 0f be d2 49 0f be c8 3b c2 7c 0a 3b c1 0f 9e c0 0f b6 c0 eb 02 33 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
000dh movsx rcx,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be c8}
0011h cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
0013h jl short 001fh                          ; JL rel8 || 7C cb || encoded[2]{7c 0a}
0015h cmp eax,ecx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c1}
0017h setle al                                ; SETLE r/m8 || 0F 9E /r || encoded[3]{0f 9e c0}
001ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001dh jmp short 0021h                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
001fh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0021h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0024h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit between_d8u(byte x, byte a, byte b)
; between_d8u_8u[7ff7c6a90bb0h, 7ff7c6a90bd6h][38] = {0f 1f 44 00 00 0f b6 c1 0f b6 d2 3b c2 7c 11 0f b6 c1 41 0f b6 d0 3b c2 0f 9e c0 0f b6 c0 eb 02 33 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
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
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit between_g8u(byte x, byte a, byte b)
; between_g8u_8u[7ff7c6a90bf0h, 7ff7c6a90c13h][35] = {0f 1f 44 00 00 0f b6 c1 0f b6 d2 41 0f b6 c8 3b c2 72 0a 3b c1 0f 96 c0 0f b6 c0 eb 02 33 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh movzx ecx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c8}
000fh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
0011h jb short 001dh                          ; JB rel8 || 72 cb || encoded[2]{72 0a}
0013h cmp eax,ecx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c1}
0015h setbe al                                ; SETBE r/m8 || 0F 96 /r || encoded[3]{0f 96 c0}
0018h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001bh jmp short 001fh                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
001dh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
001fh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0022h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit between_d16i(Int16 x, Int16 a, Int16 b)
; between_d16i_16i[7ff7c6a90c30h, 7ff7c6a90c59h][41] = {0f 1f 44 00 00 48 0f bf c1 48 0f bf d2 3b c2 7c 12 48 0f bf c1 49 0f bf d0 3b c2 0f 9e c0 0f b6 c0 eb 02 33 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
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
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit between_g16i(Int16 x, Int16 a, Int16 b)
; between_g16i_16i[7ff7c6a91080h, 7ff7c6a910a5h][37] = {0f 1f 44 00 00 48 0f bf c1 48 0f bf d2 49 0f bf c8 3b c2 7c 0a 3b c1 0f 9e c0 0f b6 c0 eb 02 33 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
000dh movsx rcx,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf c8}
0011h cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
0013h jl short 001fh                          ; JL rel8 || 7C cb || encoded[2]{7c 0a}
0015h cmp eax,ecx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c1}
0017h setle al                                ; SETLE r/m8 || 0F 9E /r || encoded[3]{0f 9e c0}
001ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001dh jmp short 0021h                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
001fh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0021h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0024h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit between_d16u(ushort x, ushort a, ushort b)
; between_d16u_16u[7ff7c6a910c0h, 7ff7c6a910e6h][38] = {0f 1f 44 00 00 0f b7 c1 0f b7 d2 3b c2 7c 11 0f b7 c1 41 0f b7 d0 3b c2 0f 9e c0 0f b6 c0 eb 02 33 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
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
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit between_g16u(ushort x, ushort a, ushort b)
; between_g16u_16u[7ff7c6a91100h, 7ff7c6a91123h][35] = {0f 1f 44 00 00 0f b7 c1 0f b7 d2 41 0f b7 c8 3b c2 72 0a 3b c1 0f 96 c0 0f b6 c0 eb 02 33 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh movzx ecx,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 c8}
000fh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
0011h jb short 001dh                          ; JB rel8 || 72 cb || encoded[2]{72 0a}
0013h cmp eax,ecx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c1}
0015h setbe al                                ; SETBE r/m8 || 0F 96 /r || encoded[3]{0f 96 c0}
0018h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001bh jmp short 001fh                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
001dh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
001fh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0022h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit between_d32i(int x, int a, int b)
; between_d32i_32i[7ff7c6a91140h, 7ff7c6a9115ah][26] = {0f 1f 44 00 00 3b ca 7c 0b 41 3b c8 0f 9e c0 0f b6 c0 eb 02 33 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
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
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit between_g32i(int x, int a, int b)
; between_g32i_32i[7ff7c6a91170h, 7ff7c6a9118ah][26] = {0f 1f 44 00 00 3b ca 7c 0b 41 3b c8 0f 9e c0 0f b6 c0 eb 02 33 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
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
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit between_d32u(uint x, uint a, uint b)
; between_d32u_32u[7ff7c6a911a0h, 7ff7c6a911bah][26] = {0f 1f 44 00 00 3b ca 72 0b 41 3b c8 0f 96 c0 0f b6 c0 eb 02 33 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
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
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit between_g32u(uint x, uint a, uint b)
; between_g32u_32u[7ff7c6a911d0h, 7ff7c6a911eah][26] = {0f 1f 44 00 00 3b ca 72 0b 41 3b c8 0f 96 c0 0f b6 c0 eb 02 33 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
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
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit between_d64i(long x, long a, long b)
; between_d64i_64i[7ff7c6a91200h, 7ff7c6a9121bh][27] = {0f 1f 44 00 00 48 3b ca 7c 0b 49 3b c8 0f 9e c0 0f b6 c0 eb 02 33 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
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
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit between_g64i(long x, long a, long b)
; between_g64i_64i[7ff7c6a91230h, 7ff7c6a9124bh][27] = {0f 1f 44 00 00 48 3b ca 7c 0b 49 3b c8 0f 9e c0 0f b6 c0 eb 02 33 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
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
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit between_d64u(ulong x, ulong a, ulong b)
; between_d64u_64u[7ff7c6a91260h, 7ff7c6a9127bh][27] = {0f 1f 44 00 00 48 3b ca 72 0b 49 3b c8 0f 96 c0 0f b6 c0 eb 02 33 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
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
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit between_g64u(ulong x, ulong a, ulong b)
; between_g64u_64u[7ff7c6a91290h, 7ff7c6a912abh][27] = {0f 1f 44 00 00 48 3b ca 72 0b 49 3b c8 0f 96 c0 0f b6 c0 eb 02 33 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
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
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit between_d32f(float x, float a, float b)
; between_d32f_32f[7ff7c6a912c0h, 7ff7c6a912ddh][29] = {c5 f8 77 66 90 c5 f8 2e c1 72 0c c5 f8 2e d0 0f 93 c0 0f b6 c0 eb 02 33 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vucomiss xmm0,xmm1                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e c1}
0009h jb short 0017h                          ; JB rel8 || 72 cb || encoded[2]{72 0c}
000bh vucomiss xmm2,xmm0                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e d0}
000fh setae al                                ; SETAE r/m8 || 0F 93 /r || encoded[3]{0f 93 c0}
0012h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0015h jmp short 0019h                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
0017h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0019h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit between_g32f(float x, float a, float b)
; between_g32f_32f[7ff7c6a912f0h, 7ff7c6a9130dh][29] = {c5 f8 77 66 90 c5 f8 2e c1 72 0c c5 f8 2e d0 0f 93 c0 0f b6 c0 eb 02 33 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vucomiss xmm0,xmm1                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e c1}
0009h jb short 0017h                          ; JB rel8 || 72 cb || encoded[2]{72 0c}
000bh vucomiss xmm2,xmm0                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e d0}
000fh setae al                                ; SETAE r/m8 || 0F 93 /r || encoded[3]{0f 93 c0}
0012h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0015h jmp short 0019h                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
0017h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0019h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit between_d64f(double x, double a, double b)
; between_d64f_64f[7ff7c6a91320h, 7ff7c6a9133dh][29] = {c5 f8 77 66 90 c5 f9 2e c1 72 0c c5 f9 2e d0 0f 93 c0 0f b6 c0 eb 02 33 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vucomisd xmm0,xmm1                      ; VUCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2E /r || encoded[4]{c5 f9 2e c1}
0009h jb short 0017h                          ; JB rel8 || 72 cb || encoded[2]{72 0c}
000bh vucomisd xmm2,xmm0                      ; VUCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2E /r || encoded[4]{c5 f9 2e d0}
000fh setae al                                ; SETAE r/m8 || 0F 93 /r || encoded[3]{0f 93 c0}
0012h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0015h jmp short 0019h                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
0017h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0019h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit between_g64f(double x, double a, double b)
; between_g64f_64f[7ff7c6a91350h, 7ff7c6a9136dh][29] = {c5 f8 77 66 90 c5 f9 2e c1 72 0c c5 f9 2e d0 0f 93 c0 0f b6 c0 eb 02 33 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vucomisd xmm0,xmm1                      ; VUCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2E /r || encoded[4]{c5 f9 2e c1}
0009h jb short 0017h                          ; JB rel8 || 72 cb || encoded[2]{72 0c}
000bh vucomisd xmm2,xmm0                      ; VUCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2E /r || encoded[4]{c5 f9 2e d0}
000fh setae al                                ; SETAE r/m8 || 0F 93 /r || encoded[3]{0f 93 c0}
0012h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0015h jmp short 0019h                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
0017h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0019h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ulong avgz_64u_g(ReadOnlySpan<ulong> src)
; avgz_64u_g_64u_0o[7ff7c6a91790h, 7ff7c6a917cbh][59] = {0f 1f 44 00 00 48 8b 01 8b 51 08 48 8b 08 41 b8 01 00 00 00 83 fa 01 7e 1e 4d 63 c8 4e 8b 0c c8 4c 8b d1 4d 23 d1 49 33 c9 48 d1 e9 49 03 ca 41 ff c0 44 3b c2 7c e2 48 8b c1 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov edx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 51 08}
000bh mov rcx,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 08}
000eh mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
0014h cmp edx,1                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 fa 01}
0017h jle short 0037h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1e}
0019h movsxd r9,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c8}
001ch mov r9,[rax+r9*8]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4e 8b 0c c8}
0020h mov r10,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b d1}
0023h and r10,r9                              ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{4d 23 d1}
0026h xor rcx,r9                              ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{49 33 c9}
0029h shr rcx,1                               ; SHR r/m64, 1 || REX.W D1 /5 || encoded[3]{48 d1 e9}
002ch add rcx,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 ca}
002fh inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
0032h cmp r8d,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c2}
0035h jl short 0019h                          ; JL rel8 || 7C cb || encoded[2]{7c e2}
0037h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
003ah ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; Collector collector_create()
; collector_create_Collector[7ff7c6a91bf0h, 7ff7c6a91c42h][82] = {48 83 ec 28 c5 f8 77 48 b9 e0 7d a8 c6 f7 7f 00 00 e8 aa 50 41 5f c5 f8 57 c0 c5 fb 11 40 30 c5 fb 11 40 28 c5 fb 11 40 20 c5 fb 11 40 18 33 d2 89 50 38 c5 fb 10 05 25 00 00 00 c5 fb 11 40 08 c5 fb 10 05 20 00 00 00 c5 fb 11 40 10 48 83 c4 28 c3}
; Capture completion code, MSDIAG
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h mov rcx,7ff7c6a87de0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 7d a8 c6 f7 7f 00 00}
0011h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa 50 41 5f}
0016h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
001ah vmovsd qword ptr [rax+30h],xmm0         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 40 30}
001fh vmovsd qword ptr [rax+28h],xmm0         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 40 28}
0024h vmovsd qword ptr [rax+20h],xmm0         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 40 20}
0029h vmovsd qword ptr [rax+18h],xmm0         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 40 18}
002eh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0030h mov [rax+38h],edx                       ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 50 38}
0033h vmovsd xmm0,qword ptr [7ff7c6a91c50h]   ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[8]{c5 fb 10 05 25 00 00 00}
003bh vmovsd qword ptr [rax+8],xmm0           ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 40 08}
0040h vmovsd xmm0,qword ptr [7ff7c6a91c58h]   ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[8]{c5 fb 10 05 20 00 00 00}
0048h vmovsd qword ptr [rax+10h],xmm0         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 40 10}
004dh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0051h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; void collector_collect_seq(Collector collector)
; collector_collect_seq_Collector~Void[7ff7c6a91c80h, 7ff7c6a91d18h][152] = {c5 f8 77 66 90 b8 01 00 00 00 8b 11 8b d0 c5 f8 57 c0 c5 fb 2a c2 ff 41 38 c5 fb 10 49 18 c5 f8 28 d0 c5 eb 5c d1 c5 e0 57 db c5 e3 2a 59 38 c5 f8 28 e2 c5 db 5e e3 c5 f3 58 cc c5 fb 11 49 20 c5 fb 10 49 28 c5 fb 10 59 20 c5 f8 28 e0 c5 db 5c e3 c5 eb 59 d4 c5 f3 58 ca c5 fb 11 49 30 c5 fb 11 59 18 c5 fb 10 49 30 c5 fb 11 49 28 c5 f9 2e 41 10 76 05 c5 fb 11 41 10 c5 fb 10 49 08 c5 f9 2e c8 76 05 c5 fb 11 41 08 ff c0 3d ff 00 00 00 0f 8c 73 ff ff ff c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000ah mov edx,[rcx]                           ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b 11}
000ch mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
000eh vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0012h vcvtsi2sd xmm0,xmm0,edx                 ; VCVTSI2SD xmm1, xmm2, r/m32 || VEX.LIG.F2.0F.W0 2A /r || encoded[4]{c5 fb 2a c2}
0016h inc dword ptr [rcx+38h]                 ; INC r/m32 || o32 FF /0 || encoded[3]{ff 41 38}
0019h vmovsd xmm1,qword ptr [rcx+18h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 49 18}
001eh vmovaps xmm2,xmm0                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 d0}
0022h vsubsd xmm2,xmm2,xmm1                   ; VSUBSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 5C /r || encoded[4]{c5 eb 5c d1}
0026h vxorps xmm3,xmm3,xmm3                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 e0 57 db}
002ah vcvtsi2sd xmm3,xmm3,dword ptr [rcx+38h] ; VCVTSI2SD xmm1, xmm2, r/m32 || VEX.LIG.F2.0F.W0 2A /r || encoded[5]{c5 e3 2a 59 38}
002fh vmovaps xmm4,xmm2                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 e2}
0033h vdivsd xmm4,xmm4,xmm3                   ; VDIVSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 5E /r || encoded[4]{c5 db 5e e3}
0037h vaddsd xmm1,xmm1,xmm4                   ; VADDSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 58 /r || encoded[4]{c5 f3 58 cc}
003bh vmovsd qword ptr [rcx+20h],xmm1         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 49 20}
0040h vmovsd xmm1,qword ptr [rcx+28h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 49 28}
0045h vmovsd xmm3,qword ptr [rcx+20h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 59 20}
004ah vmovaps xmm4,xmm0                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 e0}
004eh vsubsd xmm4,xmm4,xmm3                   ; VSUBSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 5C /r || encoded[4]{c5 db 5c e3}
0052h vmulsd xmm2,xmm2,xmm4                   ; VMULSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 59 /r || encoded[4]{c5 eb 59 d4}
0056h vaddsd xmm1,xmm1,xmm2                   ; VADDSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 58 /r || encoded[4]{c5 f3 58 ca}
005ah vmovsd qword ptr [rcx+30h],xmm1         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 49 30}
005fh vmovsd qword ptr [rcx+18h],xmm3         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 59 18}
0064h vmovsd xmm1,qword ptr [rcx+30h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 49 30}
0069h vmovsd qword ptr [rcx+28h],xmm1         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 49 28}
006eh vucomisd xmm0,qword ptr [rcx+10h]       ; VUCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2E /r || encoded[5]{c5 f9 2e 41 10}
0073h jbe short 007ah                         ; JBE rel8 || 76 cb || encoded[2]{76 05}
0075h vmovsd qword ptr [rcx+10h],xmm0         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 41 10}
007ah vmovsd xmm1,qword ptr [rcx+8]           ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 49 08}
007fh vucomisd xmm1,xmm0                      ; VUCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2E /r || encoded[4]{c5 f9 2e c8}
0083h jbe short 008ah                         ; JBE rel8 || 76 cb || encoded[2]{76 05}
0085h vmovsd qword ptr [rcx+8],xmm0           ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 41 08}
008ah inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
008ch cmp eax,0ffh                            ; CMP EAX, imm32 || o32 3D id || encoded[5]{3d ff 00 00 00}
0091h jl near ptr 000ah                       ; JL rel32 || 0F 8C cd || encoded[6]{0f 8c 73 ff ff ff}
0097h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; void collector_collect_op(Collector collector)
; collector_collect_op_Collector~Void[7ff7c6a91d50h, 7ff7c6a91ef4h][420] = {c5 f8 77 66 90 8b 01 8b 41 38 ff c0 89 41 38 c5 fb 10 41 18 c5 fb 10 0d d4 01 00 00 c5 f3 5c c8 c5 e8 57 d2 c5 eb 2a d0 c5 f8 28 d9 c5 e3 5e da c5 fb 58 c3 c5 fb 11 41 20 c5 fb 10 51 28 c5 fb 10 1d b2 01 00 00 c5 e3 5c d8 c5 f3 59 cb c5 f3 58 ca c5 fb 11 49 30 c5 fb 11 41 18 c5 fb 11 49 28 c5 fb 10 15 97 01 00 00 c5 f9 2e 51 10 76 0d c5 fb 10 15 90 01 00 00 c5 fb 11 51 10 c5 fb 10 51 08 c5 f9 2e 15 86 01 00 00 76 0d c5 fb 10 15 84 01 00 00 c5 fb 11 51 08 ff c0 89 41 38 c5 fb 10 15 7a 01 00 00 c5 eb 5c d0 c5 e0 57 db c5 e3 2a d8 c5 f8 28 e2 c5 db 5e e3 c5 fb 58 c4 c5 fb 11 41 20 c5 fb 10 1d 5d 01 00 00 c5 e3 5c d8 c5 eb 59 d3 c5 f3 58 ca c5 fb 11 49 30 c5 fb 11 41 18 c5 fb 11 49 28 c5 fb 10 15 42 01 00 00 c5 f9 2e 51 10 76 0d c5 fb 10 15 3b 01 00 00 c5 fb 11 51 10 c5 fb 10 51 08 c5 f9 2e 15 31 01 00 00 76 0d c5 fb 10 15 2f 01 00 00 c5 fb 11 51 08 ff c0 89 41 38 c5 fb 10 15 25 01 00 00 c5 eb 5c d0 c5 e0 57 db c5 e3 2a d8 c5 f8 28 e2 c5 db 5e e3 c5 fb 58 c4 c5 fb 11 41 20 c5 fb 10 1d 08 01 00 00 c5 e3 5c d8 c5 eb 59 d3 c5 f3 58 ca c5 fb 11 49 30 c5 fb 11 41 18 c5 fb 11 49 28 c5 fb 10 05 ed 00 00 00 c5 f9 2e 41 10 76 0d c5 fb 10 05 e6 00 00 00 c5 fb 11 41 10 c5 fb 10 41 08 c5 f9 2e 05 dc 00 00 00 76 0d c5 fb 10 05 da 00 00 00 c5 fb 11 41 08 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov eax,[rcx]                           ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b 01}
0007h mov eax,[rcx+38h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 41 38}
000ah inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
000ch mov [rcx+38h],eax                       ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 38}
000fh vmovsd xmm0,qword ptr [rcx+18h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 41 18}
0014h vmovsd xmm1,qword ptr [7ff7c6a91f40h]   ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[8]{c5 fb 10 0d d4 01 00 00}
001ch vsubsd xmm1,xmm1,xmm0                   ; VSUBSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 5C /r || encoded[4]{c5 f3 5c c8}
0020h vxorps xmm2,xmm2,xmm2                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 e8 57 d2}
0024h vcvtsi2sd xmm2,xmm2,eax                 ; VCVTSI2SD xmm1, xmm2, r/m32 || VEX.LIG.F2.0F.W0 2A /r || encoded[4]{c5 eb 2a d0}
0028h vmovaps xmm3,xmm1                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 d9}
002ch vdivsd xmm3,xmm3,xmm2                   ; VDIVSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 5E /r || encoded[4]{c5 e3 5e da}
0030h vaddsd xmm0,xmm0,xmm3                   ; VADDSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 58 /r || encoded[4]{c5 fb 58 c3}
0034h vmovsd qword ptr [rcx+20h],xmm0         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 41 20}
0039h vmovsd xmm2,qword ptr [rcx+28h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 51 28}
003eh vmovsd xmm3,qword ptr [7ff7c6a91f48h]   ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[8]{c5 fb 10 1d b2 01 00 00}
0046h vsubsd xmm3,xmm3,xmm0                   ; VSUBSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 5C /r || encoded[4]{c5 e3 5c d8}
004ah vmulsd xmm1,xmm1,xmm3                   ; VMULSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 59 /r || encoded[4]{c5 f3 59 cb}
004eh vaddsd xmm1,xmm1,xmm2                   ; VADDSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 58 /r || encoded[4]{c5 f3 58 ca}
0052h vmovsd qword ptr [rcx+30h],xmm1         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 49 30}
0057h vmovsd qword ptr [rcx+18h],xmm0         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 41 18}
005ch vmovsd qword ptr [rcx+28h],xmm1         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 49 28}
0061h vmovsd xmm2,qword ptr [7ff7c6a91f50h]   ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[8]{c5 fb 10 15 97 01 00 00}
0069h vucomisd xmm2,qword ptr [rcx+10h]       ; VUCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2E /r || encoded[5]{c5 f9 2e 51 10}
006eh jbe short 007dh                         ; JBE rel8 || 76 cb || encoded[2]{76 0d}
0070h vmovsd xmm2,qword ptr [7ff7c6a91f58h]   ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[8]{c5 fb 10 15 90 01 00 00}
0078h vmovsd qword ptr [rcx+10h],xmm2         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 51 10}
007dh vmovsd xmm2,qword ptr [rcx+8]           ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 51 08}
0082h vucomisd xmm2,qword ptr [7ff7c6a91f60h] ; VUCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2E /r || encoded[8]{c5 f9 2e 15 86 01 00 00}
008ah jbe short 0099h                         ; JBE rel8 || 76 cb || encoded[2]{76 0d}
008ch vmovsd xmm2,qword ptr [7ff7c6a91f68h]   ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[8]{c5 fb 10 15 84 01 00 00}
0094h vmovsd qword ptr [rcx+8],xmm2           ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 51 08}
0099h inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
009bh mov [rcx+38h],eax                       ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 38}
009eh vmovsd xmm2,qword ptr [7ff7c6a91f70h]   ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[8]{c5 fb 10 15 7a 01 00 00}
00a6h vsubsd xmm2,xmm2,xmm0                   ; VSUBSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 5C /r || encoded[4]{c5 eb 5c d0}
00aah vxorps xmm3,xmm3,xmm3                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 e0 57 db}
00aeh vcvtsi2sd xmm3,xmm3,eax                 ; VCVTSI2SD xmm1, xmm2, r/m32 || VEX.LIG.F2.0F.W0 2A /r || encoded[4]{c5 e3 2a d8}
00b2h vmovaps xmm4,xmm2                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 e2}
00b6h vdivsd xmm4,xmm4,xmm3                   ; VDIVSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 5E /r || encoded[4]{c5 db 5e e3}
00bah vaddsd xmm0,xmm0,xmm4                   ; VADDSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 58 /r || encoded[4]{c5 fb 58 c4}
00beh vmovsd qword ptr [rcx+20h],xmm0         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 41 20}
00c3h vmovsd xmm3,qword ptr [7ff7c6a91f78h]   ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[8]{c5 fb 10 1d 5d 01 00 00}
00cbh vsubsd xmm3,xmm3,xmm0                   ; VSUBSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 5C /r || encoded[4]{c5 e3 5c d8}
00cfh vmulsd xmm2,xmm2,xmm3                   ; VMULSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 59 /r || encoded[4]{c5 eb 59 d3}
00d3h vaddsd xmm1,xmm1,xmm2                   ; VADDSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 58 /r || encoded[4]{c5 f3 58 ca}
00d7h vmovsd qword ptr [rcx+30h],xmm1         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 49 30}
00dch vmovsd qword ptr [rcx+18h],xmm0         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 41 18}
00e1h vmovsd qword ptr [rcx+28h],xmm1         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 49 28}
00e6h vmovsd xmm2,qword ptr [7ff7c6a91f80h]   ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[8]{c5 fb 10 15 42 01 00 00}
00eeh vucomisd xmm2,qword ptr [rcx+10h]       ; VUCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2E /r || encoded[5]{c5 f9 2e 51 10}
00f3h jbe short 0102h                         ; JBE rel8 || 76 cb || encoded[2]{76 0d}
00f5h vmovsd xmm2,qword ptr [7ff7c6a91f88h]   ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[8]{c5 fb 10 15 3b 01 00 00}
00fdh vmovsd qword ptr [rcx+10h],xmm2         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 51 10}
0102h vmovsd xmm2,qword ptr [rcx+8]           ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 51 08}
0107h vucomisd xmm2,qword ptr [7ff7c6a91f90h] ; VUCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2E /r || encoded[8]{c5 f9 2e 15 31 01 00 00}
010fh jbe short 011eh                         ; JBE rel8 || 76 cb || encoded[2]{76 0d}
0111h vmovsd xmm2,qword ptr [7ff7c6a91f98h]   ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[8]{c5 fb 10 15 2f 01 00 00}
0119h vmovsd qword ptr [rcx+8],xmm2           ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 51 08}
011eh inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
0120h mov [rcx+38h],eax                       ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 38}
0123h vmovsd xmm2,qword ptr [7ff7c6a91fa0h]   ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[8]{c5 fb 10 15 25 01 00 00}
012bh vsubsd xmm2,xmm2,xmm0                   ; VSUBSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 5C /r || encoded[4]{c5 eb 5c d0}
012fh vxorps xmm3,xmm3,xmm3                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 e0 57 db}
0133h vcvtsi2sd xmm3,xmm3,eax                 ; VCVTSI2SD xmm1, xmm2, r/m32 || VEX.LIG.F2.0F.W0 2A /r || encoded[4]{c5 e3 2a d8}
0137h vmovaps xmm4,xmm2                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 e2}
013bh vdivsd xmm4,xmm4,xmm3                   ; VDIVSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 5E /r || encoded[4]{c5 db 5e e3}
013fh vaddsd xmm0,xmm0,xmm4                   ; VADDSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 58 /r || encoded[4]{c5 fb 58 c4}
0143h vmovsd qword ptr [rcx+20h],xmm0         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 41 20}
0148h vmovsd xmm3,qword ptr [7ff7c6a91fa8h]   ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[8]{c5 fb 10 1d 08 01 00 00}
0150h vsubsd xmm3,xmm3,xmm0                   ; VSUBSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 5C /r || encoded[4]{c5 e3 5c d8}
0154h vmulsd xmm2,xmm2,xmm3                   ; VMULSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 59 /r || encoded[4]{c5 eb 59 d3}
0158h vaddsd xmm1,xmm1,xmm2                   ; VADDSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 58 /r || encoded[4]{c5 f3 58 ca}
015ch vmovsd qword ptr [rcx+30h],xmm1         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 49 30}
0161h vmovsd qword ptr [rcx+18h],xmm0         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 41 18}
0166h vmovsd qword ptr [rcx+28h],xmm1         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 49 28}
016bh vmovsd xmm0,qword ptr [7ff7c6a91fb0h]   ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[8]{c5 fb 10 05 ed 00 00 00}
0173h vucomisd xmm0,qword ptr [rcx+10h]       ; VUCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2E /r || encoded[5]{c5 f9 2e 41 10}
0178h jbe short 0187h                         ; JBE rel8 || 76 cb || encoded[2]{76 0d}
017ah vmovsd xmm0,qword ptr [7ff7c6a91fb8h]   ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[8]{c5 fb 10 05 e6 00 00 00}
0182h vmovsd qword ptr [rcx+10h],xmm0         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 41 10}
0187h vmovsd xmm0,qword ptr [rcx+8]           ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 41 08}
018ch vucomisd xmm0,qword ptr [7ff7c6a91fc0h] ; VUCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2E /r || encoded[8]{c5 f9 2e 05 dc 00 00 00}
0194h jbe short 01a3h                         ; JBE rel8 || 76 cb || encoded[2]{76 0d}
0196h vmovsd xmm0,qword ptr [7ff7c6a91fc8h]   ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[8]{c5 fb 10 05 da 00 00 00}
019eh vmovsd qword ptr [rcx+8],xmm0           ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 41 08}
01a3h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; byte alteven_u8()
; alteven_u8__0o[7ff7c6a91fe0h, 7ff7c6a91febh][11] = {0f 1f 44 00 00 b8 aa 00 00 00 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,0aah                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 aa 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; byte altodd_u8()
; altodd_u8__0o[7ff7c6a92000h, 7ff7c6a9200bh][11] = {0f 1f 44 00 00 b8 55 00 00 00 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,55h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 55 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; byte one_n8u()
; one_n8u__0o[7ff7c6a92020h, 7ff7c6a9202bh][11] = {0f 1f 44 00 00 b8 01 00 00 00 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; byte one_g8u()
; one_g8u__0o[7ff7c6a92040h, 7ff7c6a9204bh][11] = {0f 1f 44 00 00 b8 01 00 00 00 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ushort one_n16u()
; one_n16u__0o[7ff7c6a92060h, 7ff7c6a9206bh][11] = {0f 1f 44 00 00 b8 01 00 00 00 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ushort one_g16u()
; one_g16u__0o[7ff7c6a92080h, 7ff7c6a9208bh][11] = {0f 1f 44 00 00 b8 01 00 00 00 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; int one_n32i()
; one_n32i__0o[7ff7c6a920a0h, 7ff7c6a920abh][11] = {0f 1f 44 00 00 b8 01 00 00 00 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; int one_g32i()
; one_g32i__0o[7ff7c6a920c0h, 7ff7c6a920cbh][11] = {0f 1f 44 00 00 b8 01 00 00 00 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; uint one_n32u()
; one_n32u__0o[7ff7c6a920e0h, 7ff7c6a920ebh][11] = {0f 1f 44 00 00 b8 01 00 00 00 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; uint one_g32u()
; one_g32u__0o[7ff7c6a92100h, 7ff7c6a9210bh][11] = {0f 1f 44 00 00 b8 01 00 00 00 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; long one_n64i()
; one_n64i__0o[7ff7c6a92120h, 7ff7c6a9212bh][11] = {0f 1f 44 00 00 b8 01 00 00 00 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; long one_g64i()
; one_g64i__0o[7ff7c6a92140h, 7ff7c6a9214bh][11] = {0f 1f 44 00 00 b8 01 00 00 00 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ulong one_n64u()
; one_n64u__0o[7ff7c6a92160h, 7ff7c6a9216bh][11] = {0f 1f 44 00 00 b8 01 00 00 00 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ulong one_g64u()
; one_g64u__0o[7ff7c6a92180h, 7ff7c6a9218bh][11] = {0f 1f 44 00 00 b8 01 00 00 00 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; float one_n32f()
; one_n32f__0o[7ff7c6a921a0h, 7ff7c6a921aeh][14] = {c5 f8 77 66 90 c5 fa 10 05 03 00 00 00 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovss xmm0,dword ptr [7ff7c6a921b0h]   ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[8]{c5 fa 10 05 03 00 00 00}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; float one_g32f()
; one_g32f__0o[7ff7c6a921d0h, 7ff7c6a921deh][14] = {c5 f8 77 66 90 c5 fa 10 05 03 00 00 00 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovss xmm0,dword ptr [7ff7c6a921e0h]   ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[8]{c5 fa 10 05 03 00 00 00}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; double one_n64f()
; one_n64f__0o[7ff7c6a92200h, 7ff7c6a9220eh][14] = {c5 f8 77 66 90 c5 fb 10 05 03 00 00 00 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovsd xmm0,qword ptr [7ff7c6a92210h]   ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[8]{c5 fb 10 05 03 00 00 00}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; double one_g64f()
; one_g64f__0o[7ff7c6a92230h, 7ff7c6a9223eh][14] = {c5 f8 77 66 90 c5 fb 10 05 03 00 00 00 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovsd xmm0,qword ptr [7ff7c6a92240h]   ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[8]{c5 fb 10 05 03 00 00 00}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; sbyte zero_g8i()
; zero_g8i__0o[7ff7c6a92260h, 7ff7c6a92268h][8] = {0f 1f 44 00 00 33 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; byte zero_g8u()
; zero_g8u__0o[7ff7c6a92280h, 7ff7c6a92288h][8] = {0f 1f 44 00 00 33 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; Int16 zero_g16i()
; zero_g16i__0o[7ff7c6a922a0h, 7ff7c6a922a8h][8] = {0f 1f 44 00 00 33 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ushort zero_g16u()
; zero_g16u__0o[7ff7c6a922c0h, 7ff7c6a922c8h][8] = {0f 1f 44 00 00 33 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; int zero_g32i()
; zero_g32i__0o[7ff7c6a922e0h, 7ff7c6a922e8h][8] = {0f 1f 44 00 00 33 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; uint zero_g32u()
; zero_g32u__0o[7ff7c6a92300h, 7ff7c6a92308h][8] = {0f 1f 44 00 00 33 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; long zero_g64i()
; zero_g64i__0o[7ff7c6a92320h, 7ff7c6a92328h][8] = {0f 1f 44 00 00 33 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ulong zero_g64u()
; zero_g64u__0o[7ff7c6a92340h, 7ff7c6a92348h][8] = {0f 1f 44 00 00 33 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; float zero_g32f()
; zero_g32f__0o[7ff7c6a92360h, 7ff7c6a9236ah][10] = {c5 f8 77 66 90 c5 f8 57 c0 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; double zero_g64f()
; zero_g64f__0o[7ff7c6a92380h, 7ff7c6a9238eh][14] = {c5 f8 77 66 90 c5 fb 10 05 03 00 00 00 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovsd xmm0,qword ptr [7ff7c6a92390h]   ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[8]{c5 fb 10 05 03 00 00 00}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; sbyte minval_n8i()
; minval_n8i__0o[7ff7c6a923b0h, 7ff7c6a923bbh][11] = {0f 1f 44 00 00 b8 80 ff ff ff c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,0ffffff80h                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 80 ff ff ff}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; sbyte minval_g8i()
; minval_g8i__0o[7ff7c6a927e0h, 7ff7c6a927e8h][8] = {0f 1f 44 00 00 33 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; byte minval_n8u()
; minval_n8u__0o[7ff7c6a92800h, 7ff7c6a92808h][8] = {0f 1f 44 00 00 33 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; byte minval_g8u()
; minval_g8u__0o[7ff7c6a92820h, 7ff7c6a92828h][8] = {0f 1f 44 00 00 33 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; Int16 minval_n16i()
; minval_n16i__0o[7ff7c6a92840h, 7ff7c6a9284bh][11] = {0f 1f 44 00 00 b8 00 80 ff ff c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,0ffff8000h                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 00 80 ff ff}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; Int16 minval_g16i()
; minval_g16i__0o[7ff7c6a92860h, 7ff7c6a92868h][8] = {0f 1f 44 00 00 33 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ushort minval_g16u()
; minval_g16u__0o[7ff7c6a92880h, 7ff7c6a92888h][8] = {0f 1f 44 00 00 33 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; int minval_32i()
; minval_32i__0o[7ff7c6a928a0h, 7ff7c6a928abh][11] = {0f 1f 44 00 00 b8 00 00 00 80 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,80000000h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 00 00 00 80}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; int minval_g32i()
; minval_g32i__0o[7ff7c6a928c0h, 7ff7c6a928c8h][8] = {0f 1f 44 00 00 33 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; uint minval_32u()
; minval_32u__0o[7ff7c6a928e0h, 7ff7c6a928e8h][8] = {0f 1f 44 00 00 33 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; uint minval_g32u()
; minval_g32u__0o[7ff7c6a92900h, 7ff7c6a92908h][8] = {0f 1f 44 00 00 33 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; long minval_g64i()
; minval_g64i__0o[7ff7c6a92920h, 7ff7c6a92928h][8] = {0f 1f 44 00 00 33 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ulong minval_g64u()
; minval_g64u__0o[7ff7c6a92940h, 7ff7c6a92948h][8] = {0f 1f 44 00 00 33 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; float minval_g32f()
; minval_g32f__0o[7ff7c6a92d70h, 7ff7c6a92d7ah][10] = {c5 f8 77 66 90 c5 f8 57 c0 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; double minval_g64f()
; minval_g64f__0o[7ff7c6a92d90h, 7ff7c6a92d9ah][10] = {c5 f8 77 66 90 c5 f8 57 c0 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; sbyte maxval_g8i()
; maxval_g8i__0o[7ff7c6a92db0h, 7ff7c6a92dbbh][11] = {0f 1f 44 00 00 b8 7f 00 00 00 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,7fh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 7f 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; byte maxval_g8u()
; maxval_g8u__0o[7ff7c6a92dd0h, 7ff7c6a92ddbh][11] = {0f 1f 44 00 00 b8 ff 00 00 00 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,0ffh                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; Int16 maxval_g16i()
; maxval_g16i__0o[7ff7c6a92df0h, 7ff7c6a92dfbh][11] = {0f 1f 44 00 00 b8 ff 7f 00 00 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,7fffh                           ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff 7f 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ushort maxval_g16u()
; maxval_g16u__0o[7ff7c6a92e10h, 7ff7c6a92e1bh][11] = {0f 1f 44 00 00 b8 ff ff 00 00 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,0ffffh                          ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; int maxval_n32i()
; maxval_n32i__0o[7ff7c6a92e30h, 7ff7c6a92e3bh][11] = {0f 1f 44 00 00 b8 ff ff ff 7f c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,7fffffffh                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff ff 7f}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; int maxval_g32i()
; maxval_g32i__0o[7ff7c6a92e50h, 7ff7c6a92e5bh][11] = {0f 1f 44 00 00 b8 ff ff ff 7f c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,7fffffffh                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff ff 7f}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; uint maxval_n32u()
; maxval_n32u__0o[7ff7c6a92e70h, 7ff7c6a92e7bh][11] = {0f 1f 44 00 00 b8 ff ff ff ff c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,0ffffffffh                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff ff ff}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; uint maxval_g32u()
; maxval_g32u__0o[7ff7c6a92e90h, 7ff7c6a92e9bh][11] = {0f 1f 44 00 00 b8 ff ff ff ff c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,0ffffffffh                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff ff ff}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; long maxval_g64i()
; maxval_g64i__0o[7ff7c6a92eb0h, 7ff7c6a92ec0h][16] = {0f 1f 44 00 00 48 b8 ff ff ff ff ff ff ff 7f c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7fffffffffffffffh               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 ff ff ff ff ff ff ff 7f}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ulong maxval_g64u()
; maxval_g64u__0o[7ff7c6a92ed0h, 7ff7c6a92ee0h][16] = {0f 1f 44 00 00 48 b8 ff ff ff ff ff ff ff ff c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,0ffffffffffffffffh              ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 ff ff ff ff ff ff ff ff}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; float maxval_g32f()
; maxval_g32f__0o[7ff7c6a93300h, 7ff7c6a9330eh][14] = {c5 f8 77 66 90 c5 fa 10 05 03 00 00 00 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovss xmm0,dword ptr [7ff7c6a93310h]   ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[8]{c5 fa 10 05 03 00 00 00}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; double maxval_n64f()
; maxval_n64f__0o[7ff7c6a93330h, 7ff7c6a9333eh][14] = {c5 f8 77 66 90 c5 fb 10 05 03 00 00 00 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovsd xmm0,qword ptr [7ff7c6a93340h]   ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[8]{c5 fb 10 05 03 00 00 00}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; double maxval_g64f()
; maxval_g64f__0o[7ff7c6a93360h, 7ff7c6a9336eh][14] = {c5 f8 77 66 90 c5 fb 10 05 03 00 00 00 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovsd xmm0,qword ptr [7ff7c6a93370h]   ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[8]{c5 fb 10 05 03 00 00 00}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; sbyte dec_d8i(sbyte x)
; dec_d8i_8i[7ff7c6a93390h, 7ff7c6a933a0h][16] = {0f 1f 44 00 00 48 0f be c1 ff c8 48 0f be c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
000bh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; sbyte dec_g8i(sbyte x)
; dec_g8i_8i[7ff7c6a933b0h, 7ff7c6a933c0h][16] = {0f 1f 44 00 00 48 0f be c1 ff c8 48 0f be c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
000bh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; byte dec_d8u(byte x)
; dec_d8u_8u[7ff7c6a933d0h, 7ff7c6a933deh][14] = {0f 1f 44 00 00 0f b6 c1 ff c8 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; byte dec_g8u(byte x)
; dec_g8u_8u[7ff7c6a933f0h, 7ff7c6a933feh][14] = {0f 1f 44 00 00 0f b6 c1 ff c8 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; Int16 dec_d16i(Int16 x)
; dec_d16i_16i[7ff7c6a93410h, 7ff7c6a93420h][16] = {0f 1f 44 00 00 48 0f bf c1 ff c8 48 0f bf c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
000bh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; Int16 dec_g16i(Int16 x)
; dec_g16i_16i[7ff7c6a93430h, 7ff7c6a93440h][16] = {0f 1f 44 00 00 48 0f bf c1 ff c8 48 0f bf c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
000bh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ushort dec_d16u(ushort x)
; dec_d16u_16u[7ff7c6a93450h, 7ff7c6a9345eh][14] = {0f 1f 44 00 00 0f b7 c1 ff c8 0f b7 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
000ah movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ushort dec_g16u(ushort x)
; dec_g16u_16u[7ff7c6a93470h, 7ff7c6a9347eh][14] = {0f 1f 44 00 00 0f b7 c1 ff c8 0f b7 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
000ah movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; int dec_d32i(int x)
; dec_d32i_32i[7ff7c6a93490h, 7ff7c6a93499h][9] = {0f 1f 44 00 00 8d 41 ff c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h lea eax,[rcx-1]                         ; LEA r32, m || o32 8D /r || encoded[3]{8d 41 ff}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; int dec_g32i(int x)
; dec_g32i_32i[7ff7c6a934b0h, 7ff7c6a934bah][10] = {0f 1f 44 00 00 ff c9 8b c1 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0007h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; uint dec_d32u(uint x)
; dec_d32u_32u[7ff7c6a934d0h, 7ff7c6a934d9h][9] = {0f 1f 44 00 00 8d 41 ff c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h lea eax,[rcx-1]                         ; LEA r32, m || o32 8D /r || encoded[3]{8d 41 ff}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; uint dec_g32u(uint x)
; dec_g32u_32u[7ff7c6a934f0h, 7ff7c6a934fah][10] = {0f 1f 44 00 00 ff c9 8b c1 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0007h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; long dec_d64i(long x)
; dec_d64i_64i[7ff7c6a93510h, 7ff7c6a9351ah][10] = {0f 1f 44 00 00 48 8d 41 ff c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h lea rax,[rcx-1]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 41 ff}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; long dec_g64i(long x)
; dec_g64i_64i[7ff7c6a93530h, 7ff7c6a9353ch][12] = {0f 1f 44 00 00 48 ff c9 48 8b c1 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h dec rcx                                 ; DEC r/m64 || REX.W FF /1 || encoded[3]{48 ff c9}
0008h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ulong dec_d64u(ulong x)
; dec_d64u_64u[7ff7c6a93550h, 7ff7c6a9355ah][10] = {0f 1f 44 00 00 48 8d 41 ff c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h lea rax,[rcx-1]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 41 ff}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
