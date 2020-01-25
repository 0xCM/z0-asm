; long promote<long>(bit src)
; promote_bit_0o[7ff7c6ba6700h, 7ff7c6ba6717h][23] = {0f 1f 44 00 00 85 c9 75 03 33 c0 c3 48 b8 ff ff ff ff ff ff ff 7f c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-25 02:10:42:163
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test ecx,ecx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c9}
0007h jne short 000ch                         ; JNE rel8 || 75 cb || encoded[2]{75 03}
0009h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
000ch mov rax,7fffffffffffffffh               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 ff ff ff ff ff ff ff 7f}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
