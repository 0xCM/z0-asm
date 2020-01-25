; uint clamp(uint src, uint max)
; clamp_32u[7ff7c719b960h, 7ff7c719b96fh][15] = {0f 1f 44 00 00 3b ca 77 03 8b c1 c3 8b c2 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-25 02:10:56:616
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp ecx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b ca}
0007h ja short 000ch                          ; JA rel8 || 77 cb || encoded[2]{77 03}
0009h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
000ch mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
