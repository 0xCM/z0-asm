------------------------------------------------------------------------------------------------------------------------
; TernaryOp<bit> lookup(TernaryBitLogicKind:byte kind)
; tbl~lookup[5988] = {57 56 48 83 ec 28 8b f1 40 0f b6 fe 83 ff 5f 77 18 8b cf 48 8d 05 76 19 00 00 8b 04 88 48 8d 15 e4 ff ff ff 48 03 c2 ff e0 40 80 fe ff 0f 85 fe 18 00 00 48 b9 50 d0 ae c6 f7 7f 00 00 e8 0e 8b 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 3f 7c 45 5f 48 b8 00 d9 26 c6 f7 7f 00 00 48 89 46 18 48 b8 90 5b 7f c6 f7 7f 00 00 48 89 46 20 48 8b c6 e9 b5 18 00 00 48 b9 50 d0 ae c6 f7 7f 00 00 e8 cc 8a 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 fd 7b 45 5f 48 b9 00 d9 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 5d 7f c6 f7 7f 00 00 48 89 4e 20 48 8b c6 e9 73 18 00 00 48 b9 50 d0 ae c6 f7 7f 00 00 e8 8a 8a 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 bb 7b 45 5f 48 b9 00 d9 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 5d 7f c6 f7 7f 00 00 48 89 4e 20 48 8b c6 e9 31 18 00 00 48 b9 50 d0 ae c6 f7 7f 00 00 e8 48 8a 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 79 7b 45 5f 48 b9 00 d9 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 5d 7f c6 f7 7f 00 00 48 89 4e 20 48 8b c6 e9 ef 17 00 00 48 b9 50 d0 ae c6 f7 7f 00 00 e8 06 8a 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 37 7b 45 5f 48 b9 00 d9 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 5d 7f c6 f7 7f 00 00 48 89 4e 20 48 8b c6 e9 ad 17 00 00 48 b9 50 d0 ae c6 f7 7f 00 00 e8 c4 89 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 f5 7a 45 5f 48 b9 00 d9 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 5d 7f c6 f7 7f 00 00 48 89 4e 20 48 8b c6 e9 6b 17 00 00 48 b9 50 d0 ae c6 f7 7f 00 00 e8 82 89 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 b3 7a 45 5f 48 b9 00 d9 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 5d 7f c6 f7 7f 00 00 48 89 4e 20 48 8b c6 e9 29 17 00 00 48 b9 50 d0 ae c6 f7 7f 00 00 e8 40 89 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 71 7a 45 5f 48 b9 00 d9 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 5e 7f c6 f7 7f 00 00 48 89 4e 20 48 8b c6 e9 e7 16 00 00 48 b9 50 d0 ae c6 f7 7f 00 00 e8 fe 88 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 2f 7a 45 5f 48 b9 00 d9 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 5e 7f c6 f7 7f 00 00 48 89 4e 20 48 8b c6 e9 a5 16 00 00 48 b9 50 d0 ae c6 f7 7f 00 00 e8 bc 88 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 ed 79 45 5f 48 b9 00 d9 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 5e 7f c6 f7 7f 00 00 48 89 4e 20 48 8b c6 e9 63 16 00 00 48 b9 50 d0 ae c6 f7 7f 00 00 e8 7a 88 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 ab 79 45 5f 48 b9 00 d9 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 5e 7f c6 f7 7f 00 00 48 89 4e 20 48 8b c6 e9 21 16 00 00 48 b9 50 d0 ae c6 f7 7f 00 00 e8 38 88 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 69 79 45 5f 48 b9 00 d9 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 5e 7f c6 f7 7f 00 00 48 89 4e 20 48 8b c6 e9 df 15 00 00 48 b9 50 d0 ae c6 f7 7f 00 00 e8 f6 87 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 27 79 45 5f 48 b9 00 d9 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 5e 7f c6 f7 7f 00 00 48 89 4e 20 48 8b c6 e9 9d 15 00 00 48 b9 50 d0 ae c6 f7 7f 00 00 e8 b4 87 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 e5 78 45 5f 48 b9 00 d9 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 5e 7f c6 f7 7f 00 00 48 89 4e 20 48 8b c6 e9 5b 15 00 00 48 b9 50 d0 ae c6 f7 7f 00 00 e8 72 87 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 a3 78 45 5f 48 b9 00 d9 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 5e 7f c6 f7 7f 00 00 48 89 4e 20 48 8b c6 e9 19 15 00 00 48 b9 50 d0 ae c6 f7 7f 00 00 e8 30 87 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 61 78 45 5f 48 b9 00 d9 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 5e 7f c6 f7 7f 00 00 48 89 4e 20 48 8b c6 e9 d7 14 00 00 48 b9 50 d0 ae c6 f7 7f 00 00 e8 ee 86 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 1f 78 45 5f 48 b9 00 d9 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 5e 7f c6 f7 7f 00 00 48 89 4e 20 48 8b c6 e9 95 14 00 00 48 b9 50 d0 ae c6 f7 7f 00 00 e8 ac 86 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 dd 77 45 5f 48 b9 00 d9 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 5e 7f c6 f7 7f 00 00 48 89 4e 20 48 8b c6 e9 53 14 00 00 48 b9 50 d0 ae c6 f7 7f 00 00 e8 6a 86 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 9b 77 45 5f 48 b9 00 d9 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 5e 7f c6 f7 7f 00 00 48 89 4e 20 48 8b c6 e9 11 14 00 00 48 b9 50 d0 ae c6 f7 7f 00 00 e8 28 86 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 59 77 45 5f 48 b9 00 d9 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 5e 7f c6 f7 7f 00 00 48 89 4e 20 48 8b c6 e9 cf 13 00 00 48 b9 50 d0 ae c6 f7 7f 00 00 e8 e6 85 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 17 77 45 5f 48 b9 00 d9 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 5e 7f c6 f7 7f 00 00 48 89 4e 20 48 8b c6 e9 8d 13 00 00 48 b9 50 d0 ae c6 f7 7f 00 00 e8 a4 85 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 d5 76 45 5f 48 b9 00 d9 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 5e 7f c6 f7 7f 00 00 48 89 4e 20 48 8b c6 e9 4b 13 00 00 48 b9 50 d0 ae c6 f7 7f 00 00 e8 62 85 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 93 76 45 5f 48 b9 00 d9 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 5e 7f c6 f7 7f 00 00 48 89 4e 20 48 8b c6 e9 09 13 00 00 48 b9 50 d0 ae c6 f7 7f 00 00 e8 20 85 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 51 76 45 5f 48 b9 00 d9 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 5e 7f c6 f7 7f 00 00 48 89 4e 20 48 8b c6 e9 c7 12 00 00 48 b9 50 d0 ae c6 f7 7f 00 00 e8 de 84 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 0f 76 45 5f 48 b9 00 d9 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 5e 7f c6 f7 7f 00 00 48 89 4e 20 48 8b c6 e9 85 12 00 00 48 b9 50 d0 ae c6 f7 7f 00 00 e8 9c 84 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 cd 75 45 5f 48 b9 00 d9 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 5e 7f c6 f7 7f 00 00 48 89 4e 20 48 8b c6 e9 43 12 00 00 48 b9 50 d0 ae c6 f7 7f 00 00 e8 5a 84 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 8b 75 45 5f 48 b9 00 d9 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 5e 7f c6 f7 7f 00 00 48 89 4e 20 48 8b c6 e9 01 12 00 00 48 b9 50 d0 ae c6 f7 7f 00 00 e8 18 84 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 49 75 45 5f 48 b9 00 d9 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 5e 7f c6 f7 7f 00 00 48 89 4e 20 48 8b c6 e9 bf 11 00 00 48 b9 50 d0 ae c6 f7 7f 00 00 e8 d6 83 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 07 75 45 5f 48 b9 00 d9 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 5e 7f c6 f7 7f 00 00 48 89 4e 20 48 8b c6 e9 7d 11 00 00 48 b9 50 d0 ae c6 f7 7f 00 00 e8 94 83 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 c5 74 45 5f 48 b9 00 d9 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 5e 7f c6 f7 7f 00 00 48 89 4e 20 48 8b c6 e9 3b 11 00 00 48 b9 50 d0 ae c6 f7 7f 00 00 e8 52 83 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 83 74 45 5f 48 b9 00 d9 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 5e 7f c6 f7 7f 00 00 48 89 4e 20 48 8b c6 e9 f9 10 00 00 48 b9 50 d0 ae c6 f7 7f 00 00 e8 10 83 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 41 74 45 5f 48 b9 00 d9 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 5e 7f c6 f7 7f 00 00 48 89 4e 20 48 8b c6 e9 b7 10 00 00 48 b9 50 d0 ae c6 f7 7f 00 00 e8 ce 82 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 ff 73 45 5f 48 b9 00 d9 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 5e 7f c6 f7 7f 00 00 48 89 4e 20 48 8b c6 e9 75 10 00 00 48 b9 50 d0 ae c6 f7 7f 00 00 e8 8c 82 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 bd 73 45 5f 48 b9 00 d9 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 5e 7f c6 f7 7f 00 00 48 89 4e 20 48 8b c6 e9 33 10 00 00 48 b9 50 d0 ae c6 f7 7f 00 00 e8 4a 82 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 7b 73 45 5f 48 b9 00 d9 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 5e 7f c6 f7 7f 00 00 48 89 4e 20 48 8b c6 e9 f1 0f 00 00 48 b9 50 d0 ae c6 f7 7f 00 00 e8 08 82 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 39 73 45 5f 48 b9 00 d9 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 5e 7f c6 f7 7f 00 00 48 89 4e 20 48 8b c6 e9 af 0f 00 00 48 b9 50 d0 ae c6 f7 7f 00 00 e8 c6 81 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 f7 72 45 5f 48 b9 00 d9 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 5e 7f c6 f7 7f 00 00 48 89 4e 20 48 8b c6 e9 6d 0f 00 00 48 b9 50 d0 ae c6 f7 7f 00 00 e8 84 81 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 b5 72 45 5f 48 b9 00 d9 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 5e 7f c6 f7 7f 00 00 48 89 4e 20 48 8b c6 e9 2b 0f 00 00 48 b9 50 d0 ae c6 f7 7f 00 00 e8 42 81 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 73 72 45 5f 48 b9 00 d9 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 5e 7f c6 f7 7f 00 00 48 89 4e 20 48 8b c6 e9 e9 0e 00 00 48 b9 50 d0 ae c6 f7 7f 00 00 e8 00 81 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 31 72 45 5f 48 b9 00 d9 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 5f 7f c6 f7 7f 00 00 48 89 4e 20 48 8b c6 e9 a7 0e 00 00 48 b9 50 d0 ae c6 f7 7f 00 00 e8 be 80 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 ef 71 45 5f 48 b9 00 d9 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 5f 7f c6 f7 7f 00 00 48 89 4e 20 48 8b c6 e9 65 0e 00 00 48 b9 50 d0 ae c6 f7 7f 00 00 e8 7c 80 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 ad 71 45 5f 48 b9 00 d9 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 5f 7f c6 f7 7f 00 00 48 89 4e 20 48 8b c6 e9 23 0e 00 00 48 b9 50 d0 ae c6 f7 7f 00 00 e8 3a 80 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 6b 71 45 5f 48 b9 00 d9 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 5f 7f c6 f7 7f 00 00 48 89 4e 20 48 8b c6 e9 e1 0d 00 00 48 b9 50 d0 ae c6 f7 7f 00 00 e8 f8 7f 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 29 71 45 5f 48 b9 00 d9 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 5f 7f c6 f7 7f 00 00 48 89 4e 20 48 8b c6 e9 9f 0d 00 00 48 b9 50 d0 ae c6 f7 7f 00 00 e8 b6 7f 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 e7 70 45 5f 48 b9 00 d9 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 5f 7f c6 f7 7f 00 00 48 89 4e 20 48 8b c6 e9 5d 0d 00 00 48 b9 50 d0 ae c6 f7 7f 00 00 e8 74 7f 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 a5 70 45 5f 48 b9 00 d9 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 5f 7f c6 f7 7f 00 00 48 89 4e 20 48 8b c6 e9 1b 0d 00 00 48 b9 50 d0 ae c6 f7 7f 00 00 e8 32 7f 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 63 70 45 5f 48 b9 00 d9 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 5f 7f c6 f7 7f 00 00 48 89 4e 20 48 8b c6 e9 d9 0c 00 00 48 b9 50 d0 ae c6 f7 7f 00 00 e8 f0 7e 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 21 70 45 5f 48 b9 00 d9 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 5f 7f c6 f7 7f 00 00 48 89 4e 20 48 8b c6 e9 97 0c 00 00 48 b9 50 d0 ae c6 f7 7f 00 00 e8 ae 7e 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 df 6f 45 5f 48 b9 00 d9 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 5f 7f c6 f7 7f 00 00 48 89 4e 20 48 8b c6 e9 55 0c 00 00 48 b9 50 d0 ae c6 f7 7f 00 00 e8 6c 7e 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 9d 6f 45 5f 48 b9 00 d9 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 5f 7f c6 f7 7f 00 00 48 89 4e 20 48 8b c6 e9 13 0c 00 00 48 b9 50 d0 ae c6 f7 7f 00 00 e8 2a 7e 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 5b 6f 45 5f 48 b9 00 d9 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 5f 7f c6 f7 7f 00 00 48 89 4e 20 48 8b c6 e9 d1 0b 00 00 48 b9 50 d0 ae c6 f7 7f 00 00 e8 e8 7d 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 19 6f 45 5f 48 b9 00 d9 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 5f 7f c6 f7 7f 00 00 48 89 4e 20 48 8b c6 e9 8f 0b 00 00 48 b9 50 d0 ae c6 f7 7f 00 00 e8 a6 7d 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 d7 6e 45 5f 48 b9 00 d9 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 5f 7f c6 f7 7f 00 00 48 89 4e 20 48 8b c6 e9 4d 0b 00 00 48 b9 50 d0 ae c6 f7 7f 00 00 e8 64 7d 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 95 6e 45 5f 48 b9 00 d9 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 5f 7f c6 f7 7f 00 00 48 89 4e 20 48 8b c6 e9 0b 0b 00 00 48 b9 50 d0 ae c6 f7 7f 00 00 e8 22 7d 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 53 6e 45 5f 48 b9 00 d9 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 5f 7f c6 f7 7f 00 00 48 89 4e 20 48 8b c6 e9 c9 0a 00 00 48 b9 50 d0 ae c6 f7 7f 00 00 e8 e0 7c 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 11 6e 45 5f 48 b9 00 d9 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 5f 7f c6 f7 7f 00 00 48 89 4e 20 48 8b c6 e9 87 0a 00 00 48 b9 50 d0 ae c6 f7 7f 00 00 e8 9e 7c 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 cf 6d 45 5f 48 b9 00 d9 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 5f 7f c6 f7 7f 00 00 48 89 4e 20 48 8b c6 e9 45 0a 00 00 48 b9 50 d0 ae c6 f7 7f 00 00 e8 5c 7c 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 8d 6d 45 5f 48 b9 00 d9 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 5f 7f c6 f7 7f 00 00 48 89 4e 20 48 8b c6 e9 03 0a 00 00 48 b9 50 d0 ae c6 f7 7f 00 00 e8 1a 7c 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 4b 6d 45 5f 48 b9 00 d9 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 5f 7f c6 f7 7f 00 00 48 89 4e 20 48 8b c6 e9 c1 09 00 00 48 b9 50 d0 ae c6 f7 7f 00 00 e8 d8 7b 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 09 6d 45 5f 48 b9 00 d9 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 5f 7f c6 f7 7f 00 00 48 89 4e 20 48 8b c6 e9 7f 09 00 00 48 b9 50 d0 ae c6 f7 7f 00 00 e8 96 7b 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 c7 6c 45 5f 48 b9 00 d9 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 5f 7f c6 f7 7f 00 00 48 89 4e 20 48 8b c6 e9 3d 09 00 00 48 b9 50 d0 ae c6 f7 7f 00 00 e8 54 7b 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 85 6c 45 5f 48 b9 00 d9 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 5f 7f c6 f7 7f 00 00 48 89 4e 20 48 8b c6 e9 fb 08 00 00 48 b9 50 d0 ae c6 f7 7f 00 00 e8 12 7b 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 43 6c 45 5f 48 b9 00 d9 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 5f 7f c6 f7 7f 00 00 48 89 4e 20 48 8b c6 e9 b9 08 00 00 48 b9 50 d0 ae c6 f7 7f 00 00 e8 d0 7a 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 01 6c 45 5f 48 b9 00 d9 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 5f 7f c6 f7 7f 00 00 48 89 4e 20 48 8b c6 e9 77 08 00 00 48 b9 50 d0 ae c6 f7 7f 00 00 e8 8e 7a 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 bf 6b 45 5f 48 b9 00 d9 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 5f 7f c6 f7 7f 00 00 48 89 4e 20 48 8b c6 e9 35 08 00 00 48 b9 50 d0 ae c6 f7 7f 00 00 e8 4c 7a 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 7d 6b 45 5f 48 b9 00 d9 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 5f 7f c6 f7 7f 00 00 48 89 4e 20 48 8b c6 e9 f3 07 00 00 48 b9 50 d0 ae c6 f7 7f 00 00 e8 0a 7a 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 3b 6b 45 5f 48 b9 00 d9 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 5f 7f c6 f7 7f 00 00 48 89 4e 20 48 8b c6 e9 b1 07 00 00 48 b9 50 d0 ae c6 f7 7f 00 00 e8 c8 79 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 f9 6a 45 5f 48 b9 00 d9 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 5f 7f c6 f7 7f 00 00 48 89 4e 20 48 8b c6 e9 6f 07 00 00 48 b9 50 d0 ae c6 f7 7f 00 00 e8 86 79 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 b7 6a 45 5f 48 b9 00 d9 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 5f 7f c6 f7 7f 00 00 48 89 4e 20 48 8b c6 e9 2d 07 00 00 48 b9 50 d0 ae c6 f7 7f 00 00 e8 44 79 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 75 6a 45 5f 48 b9 00 d9 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 5f 7f c6 f7 7f 00 00 48 89 4e 20 48 8b c6 e9 eb 06 00 00 48 b9 50 d0 ae c6 f7 7f 00 00 e8 02 79 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 33 6a 45 5f 48 b9 00 d9 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 5f 7f c6 f7 7f 00 00 48 89 4e 20 48 8b c6 e9 a9 06 00 00 48 b9 50 d0 ae c6 f7 7f 00 00 e8 c0 78 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 f1 69 45 5f 48 b9 00 d9 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 60 7f c6 f7 7f 00 00 48 89 4e 20 48 8b c6 e9 67 06 00 00 48 b9 50 d0 ae c6 f7 7f 00 00 e8 7e 78 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 af 69 45 5f 48 b9 00 d9 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 60 7f c6 f7 7f 00 00 48 89 4e 20 48 8b c6 e9 25 06 00 00 48 b9 50 d0 ae c6 f7 7f 00 00 e8 3c 78 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 6d 69 45 5f 48 b9 00 d9 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 60 7f c6 f7 7f 00 00 48 89 4e 20 48 8b c6 e9 e3 05 00 00 48 b9 50 d0 ae c6 f7 7f 00 00 e8 fa 77 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 2b 69 45 5f 48 b9 00 d9 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 60 7f c6 f7 7f 00 00 48 89 4e 20 48 8b c6 e9 a1 05 00 00 48 b9 50 d0 ae c6 f7 7f 00 00 e8 b8 77 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 e9 68 45 5f 48 b9 00 d9 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 60 7f c6 f7 7f 00 00 48 89 4e 20 48 8b c6 e9 5f 05 00 00 48 b9 50 d0 ae c6 f7 7f 00 00 e8 76 77 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 a7 68 45 5f 48 b9 00 d9 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 60 7f c6 f7 7f 00 00 48 89 4e 20 48 8b c6 e9 1d 05 00 00 48 b9 50 d0 ae c6 f7 7f 00 00 e8 34 77 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 65 68 45 5f 48 b9 00 d9 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 60 7f c6 f7 7f 00 00 48 89 4e 20 48 8b c6 e9 db 04 00 00 48 b9 50 d0 ae c6 f7 7f 00 00 e8 f2 76 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 23 68 45 5f 48 b9 00 d9 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 60 7f c6 f7 7f 00 00 48 89 4e 20 48 8b c6 e9 99 04 00 00 48 b9 50 d0 ae c6 f7 7f 00 00 e8 b0 76 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 e1 67 45 5f 48 b9 00 d9 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 60 7f c6 f7 7f 00 00 48 89 4e 20 48 8b c6 e9 57 04 00 00 48 b9 50 d0 ae c6 f7 7f 00 00 e8 6e 76 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 9f 67 45 5f 48 b9 00 d9 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 60 7f c6 f7 7f 00 00 48 89 4e 20 48 8b c6 e9 15 04 00 00 48 b9 50 d0 ae c6 f7 7f 00 00 e8 2c 76 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 5d 67 45 5f 48 b9 00 d9 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 60 7f c6 f7 7f 00 00 48 89 4e 20 48 8b c6 e9 d3 03 00 00 48 b9 50 d0 ae c6 f7 7f 00 00 e8 ea 75 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 1b 67 45 5f 48 b9 00 d9 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 60 7f c6 f7 7f 00 00 48 89 4e 20 48 8b c6 e9 91 03 00 00 48 b9 50 d0 ae c6 f7 7f 00 00 e8 a8 75 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 d9 66 45 5f 48 b9 00 d9 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 60 7f c6 f7 7f 00 00 48 89 4e 20 48 8b c6 e9 4f 03 00 00 48 b9 50 d0 ae c6 f7 7f 00 00 e8 66 75 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 97 66 45 5f 48 b9 00 d9 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 60 7f c6 f7 7f 00 00 48 89 4e 20 48 8b c6 e9 0d 03 00 00 48 b9 50 d0 ae c6 f7 7f 00 00 e8 24 75 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 55 66 45 5f 48 b9 00 d9 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 60 7f c6 f7 7f 00 00 48 89 4e 20 48 8b c6 e9 cb 02 00 00 48 b9 50 d0 ae c6 f7 7f 00 00 e8 e2 74 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 13 66 45 5f 48 b9 00 d9 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 60 7f c6 f7 7f 00 00 48 89 4e 20 48 8b c6 e9 89 02 00 00 48 b9 50 d0 ae c6 f7 7f 00 00 e8 a0 74 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 d1 65 45 5f 48 b9 00 d9 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 60 7f c6 f7 7f 00 00 48 89 4e 20 48 8b c6 e9 47 02 00 00 48 b9 50 d0 ae c6 f7 7f 00 00 e8 5e 74 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 8f 65 45 5f 48 b9 00 d9 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 60 7f c6 f7 7f 00 00 48 89 4e 20 48 8b c6 e9 05 02 00 00 48 b9 50 d0 ae c6 f7 7f 00 00 e8 1c 74 45 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 4d 65 45 5f 48 b9 00 d9 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 60 7f c6 f7 7f 00 00 48 89 4e 20 48 8b c6 e9 c3}
; Capture completion code = ZEDx6_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0008h movzx edi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 fe}
000ch cmp edi,5fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 ff 5f}
000fh ja short 0029h                          ; JA rel8 || 77 cb || encoded[2]{77 18}
0011h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0013h lea rax,[rip+1976h]                     ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 76 19 00 00}
001ah mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
001dh lea rdx,[rip-1ch]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e4 ff ff ff}
0024h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
0027h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0029h cmp sil,0ffh                            ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe ff}
002dh jne near ptr 1931h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 fe 18 00 00}
0033h mov rcx,7ff7c6aed050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d0 ae c6 f7 7f 00 00}
003dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0e 8b 45 5f}
0042h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0045h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0049h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f 7c 45 5f}
0051h mov rax,7ff7c626d900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 d9 26 c6 f7 7f 00 00}
005bh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
005fh mov rax,7ff7c67f5b90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 5b 7f c6 f7 7f 00 00}
0069h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
006dh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0070h jmp near ptr 192ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 b5 18 00 00}
0075h mov rcx,7ff7c6aed050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d0 ae c6 f7 7f 00 00}
007fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 8a 45 5f}
0084h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0087h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
008bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
008eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd 7b 45 5f}
0093h mov rcx,7ff7c626d900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d9 26 c6 f7 7f 00 00}
009dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00a1h mov rcx,7ff7c67f5dd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 5d 7f c6 f7 7f 00 00}
00abh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00afh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
00b2h jmp near ptr 192ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 73 18 00 00}
00b7h mov rcx,7ff7c6aed050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d0 ae c6 f7 7f 00 00}
00c1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a 8a 45 5f}
00c6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00cdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00d0h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb 7b 45 5f}
00d5h mov rcx,7ff7c626d900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d9 26 c6 f7 7f 00 00}
00dfh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00e3h mov rcx,7ff7c67f5dd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 5d 7f c6 f7 7f 00 00}
00edh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00f1h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
00f4h jmp near ptr 192ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 31 18 00 00}
00f9h mov rcx,7ff7c6aed050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d0 ae c6 f7 7f 00 00}
0103h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 8a 45 5f}
0108h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
010bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
010fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0112h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 7b 45 5f}
0117h mov rcx,7ff7c626d900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d9 26 c6 f7 7f 00 00}
0121h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0125h mov rcx,7ff7c67f5de0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 5d 7f c6 f7 7f 00 00}
012fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0133h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0136h jmp near ptr 192ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 ef 17 00 00}
013bh mov rcx,7ff7c6aed050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d0 ae c6 f7 7f 00 00}
0145h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 8a 45 5f}
014ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
014dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0151h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0154h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 7b 45 5f}
0159h mov rcx,7ff7c626d900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d9 26 c6 f7 7f 00 00}
0163h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0167h mov rcx,7ff7c67f5de8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 5d 7f c6 f7 7f 00 00}
0171h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0175h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0178h jmp near ptr 192ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 ad 17 00 00}
017dh mov rcx,7ff7c6aed050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d0 ae c6 f7 7f 00 00}
0187h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 89 45 5f}
018ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
018fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0193h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0196h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 7a 45 5f}
019bh mov rcx,7ff7c626d900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d9 26 c6 f7 7f 00 00}
01a5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01a9h mov rcx,7ff7c67f5df0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 5d 7f c6 f7 7f 00 00}
01b3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01b7h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01bah jmp near ptr 192ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 17 00 00}
01bfh mov rcx,7ff7c6aed050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d0 ae c6 f7 7f 00 00}
01c9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 89 45 5f}
01ceh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01d1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01d5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01d8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 7a 45 5f}
01ddh mov rcx,7ff7c626d900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d9 26 c6 f7 7f 00 00}
01e7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01ebh mov rcx,7ff7c67f5df8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 5d 7f c6 f7 7f 00 00}
01f5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01f9h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01fch jmp near ptr 192ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 29 17 00 00}
0201h mov rcx,7ff7c6aed050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d0 ae c6 f7 7f 00 00}
020bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 89 45 5f}
0210h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0213h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0217h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
021ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 7a 45 5f}
021fh mov rcx,7ff7c626d900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d9 26 c6 f7 7f 00 00}
0229h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
022dh mov rcx,7ff7c67f5e00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 5e 7f c6 f7 7f 00 00}
0237h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
023bh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
023eh jmp near ptr 192ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e7 16 00 00}
0243h mov rcx,7ff7c6aed050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d0 ae c6 f7 7f 00 00}
024dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe 88 45 5f}
0252h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0255h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0259h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
025ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f 7a 45 5f}
0261h mov rcx,7ff7c626d900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d9 26 c6 f7 7f 00 00}
026bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
026fh mov rcx,7ff7c67f5e08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 5e 7f c6 f7 7f 00 00}
0279h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
027dh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0280h jmp near ptr 192ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 a5 16 00 00}
0285h mov rcx,7ff7c6aed050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d0 ae c6 f7 7f 00 00}
028fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc 88 45 5f}
0294h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0297h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
029bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
029eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed 79 45 5f}
02a3h mov rcx,7ff7c626d900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d9 26 c6 f7 7f 00 00}
02adh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02b1h mov rcx,7ff7c67f5e10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 5e 7f c6 f7 7f 00 00}
02bbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02bfh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
02c2h jmp near ptr 192ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 16 00 00}
02c7h mov rcx,7ff7c6aed050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d0 ae c6 f7 7f 00 00}
02d1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7a 88 45 5f}
02d6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02d9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02ddh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02e0h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab 79 45 5f}
02e5h mov rcx,7ff7c626d900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d9 26 c6 f7 7f 00 00}
02efh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02f3h mov rcx,7ff7c67f5e18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 5e 7f c6 f7 7f 00 00}
02fdh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0301h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0304h jmp near ptr 192ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 21 16 00 00}
0309h mov rcx,7ff7c6aed050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d0 ae c6 f7 7f 00 00}
0313h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 88 45 5f}
0318h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
031bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
031fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0322h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 79 45 5f}
0327h mov rcx,7ff7c626d900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d9 26 c6 f7 7f 00 00}
0331h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0335h mov rcx,7ff7c67f5e20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 5e 7f c6 f7 7f 00 00}
033fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0343h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0346h jmp near ptr 192ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 df 15 00 00}
034bh mov rcx,7ff7c6aed050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d0 ae c6 f7 7f 00 00}
0355h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 87 45 5f}
035ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
035dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0361h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0364h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 79 45 5f}
0369h mov rcx,7ff7c626d900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d9 26 c6 f7 7f 00 00}
0373h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0377h mov rcx,7ff7c67f5e28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 5e 7f c6 f7 7f 00 00}
0381h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0385h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0388h jmp near ptr 192ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 9d 15 00 00}
038dh mov rcx,7ff7c6aed050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d0 ae c6 f7 7f 00 00}
0397h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 87 45 5f}
039ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
039fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03a3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03a6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 78 45 5f}
03abh mov rcx,7ff7c626d900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d9 26 c6 f7 7f 00 00}
03b5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03b9h mov rcx,7ff7c67f5e30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 5e 7f c6 f7 7f 00 00}
03c3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03c7h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
03cah jmp near ptr 192ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 15 00 00}
03cfh mov rcx,7ff7c6aed050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d0 ae c6 f7 7f 00 00}
03d9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 87 45 5f}
03deh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03e1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03e5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03e8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 78 45 5f}
03edh mov rcx,7ff7c626d900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d9 26 c6 f7 7f 00 00}
03f7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03fbh mov rcx,7ff7c67f5e38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 5e 7f c6 f7 7f 00 00}
0405h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0409h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
040ch jmp near ptr 192ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 19 15 00 00}
0411h mov rcx,7ff7c6aed050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d0 ae c6 f7 7f 00 00}
041bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 87 45 5f}
0420h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0423h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0427h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
042ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 78 45 5f}
042fh mov rcx,7ff7c626d900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d9 26 c6 f7 7f 00 00}
0439h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
043dh mov rcx,7ff7c67f5e40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 5e 7f c6 f7 7f 00 00}
0447h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
044bh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
044eh jmp near ptr 192ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 d7 14 00 00}
0453h mov rcx,7ff7c6aed050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d0 ae c6 f7 7f 00 00}
045dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee 86 45 5f}
0462h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0465h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0469h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
046ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f 78 45 5f}
0471h mov rcx,7ff7c626d900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d9 26 c6 f7 7f 00 00}
047bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
047fh mov rcx,7ff7c67f5e48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 5e 7f c6 f7 7f 00 00}
0489h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
048dh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0490h jmp near ptr 192ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 95 14 00 00}
0495h mov rcx,7ff7c6aed050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d0 ae c6 f7 7f 00 00}
049fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac 86 45 5f}
04a4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04a7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04abh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04aeh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd 77 45 5f}
04b3h mov rcx,7ff7c626d900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d9 26 c6 f7 7f 00 00}
04bdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
04c1h mov rcx,7ff7c67f5e50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 5e 7f c6 f7 7f 00 00}
04cbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
04cfh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
04d2h jmp near ptr 192ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 53 14 00 00}
04d7h mov rcx,7ff7c6aed050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d0 ae c6 f7 7f 00 00}
04e1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a 86 45 5f}
04e6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04e9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04edh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04f0h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b 77 45 5f}
04f5h mov rcx,7ff7c626d900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d9 26 c6 f7 7f 00 00}
04ffh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0503h mov rcx,7ff7c67f5e58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 5e 7f c6 f7 7f 00 00}
050dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0511h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0514h jmp near ptr 192ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 11 14 00 00}
0519h mov rcx,7ff7c6aed050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d0 ae c6 f7 7f 00 00}
0523h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 86 45 5f}
0528h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
052bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
052fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0532h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 77 45 5f}
0537h mov rcx,7ff7c626d900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d9 26 c6 f7 7f 00 00}
0541h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0545h mov rcx,7ff7c67f5e60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 5e 7f c6 f7 7f 00 00}
054fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0553h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0556h jmp near ptr 192ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 cf 13 00 00}
055bh mov rcx,7ff7c6aed050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d0 ae c6 f7 7f 00 00}
0565h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 85 45 5f}
056ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
056dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0571h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0574h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 77 45 5f}
0579h mov rcx,7ff7c626d900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d9 26 c6 f7 7f 00 00}
0583h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0587h mov rcx,7ff7c67f5e68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 5e 7f c6 f7 7f 00 00}
0591h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0595h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0598h jmp near ptr 192ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 8d 13 00 00}
059dh mov rcx,7ff7c6aed050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d0 ae c6 f7 7f 00 00}
05a7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 85 45 5f}
05ach mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05afh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05b3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05b6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 76 45 5f}
05bbh mov rcx,7ff7c626d900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d9 26 c6 f7 7f 00 00}
05c5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
05c9h mov rcx,7ff7c67f5e70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 5e 7f c6 f7 7f 00 00}
05d3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
05d7h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
05dah jmp near ptr 192ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 4b 13 00 00}
05dfh mov rcx,7ff7c6aed050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d0 ae c6 f7 7f 00 00}
05e9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 85 45 5f}
05eeh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05f1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05f5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05f8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 76 45 5f}
05fdh mov rcx,7ff7c626d900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d9 26 c6 f7 7f 00 00}
0607h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
060bh mov rcx,7ff7c67f5e78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 5e 7f c6 f7 7f 00 00}
0615h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0619h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
061ch jmp near ptr 192ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 09 13 00 00}
0621h mov rcx,7ff7c6aed050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d0 ae c6 f7 7f 00 00}
062bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 85 45 5f}
0630h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0633h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0637h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
063ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 76 45 5f}
063fh mov rcx,7ff7c626d900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d9 26 c6 f7 7f 00 00}
0649h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
064dh mov rcx,7ff7c67f5e80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 5e 7f c6 f7 7f 00 00}
0657h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
065bh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
065eh jmp near ptr 192ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 c7 12 00 00}
0663h mov rcx,7ff7c6aed050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d0 ae c6 f7 7f 00 00}
066dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de 84 45 5f}
0672h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0675h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0679h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
067ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f 76 45 5f}
0681h mov rcx,7ff7c626d900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d9 26 c6 f7 7f 00 00}
068bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
068fh mov rcx,7ff7c67f5e88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 5e 7f c6 f7 7f 00 00}
0699h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
069dh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
06a0h jmp near ptr 192ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 85 12 00 00}
06a5h mov rcx,7ff7c6aed050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d0 ae c6 f7 7f 00 00}
06afh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c 84 45 5f}
06b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
06b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
06bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06beh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd 75 45 5f}
06c3h mov rcx,7ff7c626d900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d9 26 c6 f7 7f 00 00}
06cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
06d1h mov rcx,7ff7c67f5e90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 5e 7f c6 f7 7f 00 00}
06dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
06dfh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
06e2h jmp near ptr 192ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 43 12 00 00}
06e7h mov rcx,7ff7c6aed050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d0 ae c6 f7 7f 00 00}
06f1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a 84 45 5f}
06f6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
06f9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
06fdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0700h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b 75 45 5f}
0705h mov rcx,7ff7c626d900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d9 26 c6 f7 7f 00 00}
070fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0713h mov rcx,7ff7c67f5e98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 5e 7f c6 f7 7f 00 00}
071dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0721h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0724h jmp near ptr 192ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 01 12 00 00}
0729h mov rcx,7ff7c6aed050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d0 ae c6 f7 7f 00 00}
0733h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 84 45 5f}
0738h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
073bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
073fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0742h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 49 75 45 5f}
0747h mov rcx,7ff7c626d900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d9 26 c6 f7 7f 00 00}
0751h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0755h mov rcx,7ff7c67f5ea0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 5e 7f c6 f7 7f 00 00}
075fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0763h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0766h jmp near ptr 192ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 bf 11 00 00}
076bh mov rcx,7ff7c6aed050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d0 ae c6 f7 7f 00 00}
0775h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 83 45 5f}
077ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
077dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0781h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0784h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 75 45 5f}
0789h mov rcx,7ff7c626d900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d9 26 c6 f7 7f 00 00}
0793h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0797h mov rcx,7ff7c67f5ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 5e 7f c6 f7 7f 00 00}
07a1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
07a5h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
07a8h jmp near ptr 192ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 7d 11 00 00}
07adh mov rcx,7ff7c6aed050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d0 ae c6 f7 7f 00 00}
07b7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 83 45 5f}
07bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
07bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
07c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
07c6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 74 45 5f}
07cbh mov rcx,7ff7c626d900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d9 26 c6 f7 7f 00 00}
07d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
07d9h mov rcx,7ff7c67f5eb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 5e 7f c6 f7 7f 00 00}
07e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
07e7h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
07eah jmp near ptr 192ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 3b 11 00 00}
07efh mov rcx,7ff7c6aed050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d0 ae c6 f7 7f 00 00}
07f9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 83 45 5f}
07feh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0801h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0805h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0808h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 74 45 5f}
080dh mov rcx,7ff7c626d900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d9 26 c6 f7 7f 00 00}
0817h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
081bh mov rcx,7ff7c67f5eb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 5e 7f c6 f7 7f 00 00}
0825h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0829h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
082ch jmp near ptr 192ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 f9 10 00 00}
0831h mov rcx,7ff7c6aed050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d0 ae c6 f7 7f 00 00}
083bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 83 45 5f}
0840h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0843h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0847h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
084ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 74 45 5f}
084fh mov rcx,7ff7c626d900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d9 26 c6 f7 7f 00 00}
0859h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
085dh mov rcx,7ff7c67f5ec0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 5e 7f c6 f7 7f 00 00}
0867h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
086bh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
086eh jmp near ptr 192ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 b7 10 00 00}
0873h mov rcx,7ff7c6aed050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d0 ae c6 f7 7f 00 00}
087dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce 82 45 5f}
0882h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0885h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0889h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
088ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff 73 45 5f}
0891h mov rcx,7ff7c626d900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d9 26 c6 f7 7f 00 00}
089bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
089fh mov rcx,7ff7c67f5ec8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 5e 7f c6 f7 7f 00 00}
08a9h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
08adh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
08b0h jmp near ptr 192ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 75 10 00 00}
08b5h mov rcx,7ff7c6aed050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d0 ae c6 f7 7f 00 00}
08bfh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8c 82 45 5f}
08c4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
08c7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
08cbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
08ceh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd 73 45 5f}
08d3h mov rcx,7ff7c626d900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d9 26 c6 f7 7f 00 00}
08ddh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
08e1h mov rcx,7ff7c67f5ed0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 5e 7f c6 f7 7f 00 00}
08ebh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
08efh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
08f2h jmp near ptr 192ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 33 10 00 00}
08f7h mov rcx,7ff7c6aed050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d0 ae c6 f7 7f 00 00}
0901h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a 82 45 5f}
0906h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0909h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
090dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0910h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b 73 45 5f}
0915h mov rcx,7ff7c626d900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d9 26 c6 f7 7f 00 00}
091fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0923h mov rcx,7ff7c67f5ed8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 5e 7f c6 f7 7f 00 00}
092dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0931h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0934h jmp near ptr 192ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 0f 00 00}
0939h mov rcx,7ff7c6aed050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d0 ae c6 f7 7f 00 00}
0943h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 82 45 5f}
0948h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
094bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
094fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0952h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 73 45 5f}
0957h mov rcx,7ff7c626d900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d9 26 c6 f7 7f 00 00}
0961h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0965h mov rcx,7ff7c67f5ee0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 5e 7f c6 f7 7f 00 00}
096fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0973h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0976h jmp near ptr 192ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 af 0f 00 00}
097bh mov rcx,7ff7c6aed050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d0 ae c6 f7 7f 00 00}
0985h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 81 45 5f}
098ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
098dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0991h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0994h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 72 45 5f}
0999h mov rcx,7ff7c626d900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d9 26 c6 f7 7f 00 00}
09a3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
09a7h mov rcx,7ff7c67f5ee8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 5e 7f c6 f7 7f 00 00}
09b1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
09b5h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
09b8h jmp near ptr 192ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 6d 0f 00 00}
09bdh mov rcx,7ff7c6aed050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d0 ae c6 f7 7f 00 00}
09c7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 81 45 5f}
09cch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
09cfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
09d3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
09d6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 72 45 5f}
09dbh mov rcx,7ff7c626d900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d9 26 c6 f7 7f 00 00}
09e5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
09e9h mov rcx,7ff7c67f5ef0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 5e 7f c6 f7 7f 00 00}
09f3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
09f7h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
09fah jmp near ptr 192ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 2b 0f 00 00}
09ffh mov rcx,7ff7c6aed050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d0 ae c6 f7 7f 00 00}
0a09h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 81 45 5f}
0a0eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0a11h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0a15h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0a18h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 72 45 5f}
0a1dh mov rcx,7ff7c626d900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d9 26 c6 f7 7f 00 00}
0a27h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0a2bh mov rcx,7ff7c67f5ef8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 5e 7f c6 f7 7f 00 00}
0a35h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0a39h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0a3ch jmp near ptr 192ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 0e 00 00}
0a41h mov rcx,7ff7c6aed050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d0 ae c6 f7 7f 00 00}
0a4bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 00 81 45 5f}
0a50h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0a53h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0a57h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0a5ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 72 45 5f}
0a5fh mov rcx,7ff7c626d900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d9 26 c6 f7 7f 00 00}
0a69h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0a6dh mov rcx,7ff7c67f5f00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 5f 7f c6 f7 7f 00 00}
0a77h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0a7bh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0a7eh jmp near ptr 192ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 a7 0e 00 00}
0a83h mov rcx,7ff7c6aed050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d0 ae c6 f7 7f 00 00}
0a8dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be 80 45 5f}
0a92h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0a95h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0a99h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0a9ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef 71 45 5f}
0aa1h mov rcx,7ff7c626d900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d9 26 c6 f7 7f 00 00}
0aabh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0aafh mov rcx,7ff7c67f5f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 5f 7f c6 f7 7f 00 00}
0ab9h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0abdh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0ac0h jmp near ptr 192ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 65 0e 00 00}
0ac5h mov rcx,7ff7c6aed050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d0 ae c6 f7 7f 00 00}
0acfh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c 80 45 5f}
0ad4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0ad7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0adbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0adeh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad 71 45 5f}
0ae3h mov rcx,7ff7c626d900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d9 26 c6 f7 7f 00 00}
0aedh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0af1h mov rcx,7ff7c67f5f10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 5f 7f c6 f7 7f 00 00}
0afbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0affh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0b02h jmp near ptr 192ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 23 0e 00 00}
0b07h mov rcx,7ff7c6aed050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d0 ae c6 f7 7f 00 00}
0b11h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a 80 45 5f}
0b16h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0b19h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0b1dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0b20h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b 71 45 5f}
0b25h mov rcx,7ff7c626d900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d9 26 c6 f7 7f 00 00}
0b2fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0b33h mov rcx,7ff7c67f5f18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 5f 7f c6 f7 7f 00 00}
0b3dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0b41h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0b44h jmp near ptr 192ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 0d 00 00}
0b49h mov rcx,7ff7c6aed050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d0 ae c6 f7 7f 00 00}
0b53h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 7f 45 5f}
0b58h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0b5bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0b5fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0b62h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 71 45 5f}
0b67h mov rcx,7ff7c626d900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d9 26 c6 f7 7f 00 00}
0b71h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0b75h mov rcx,7ff7c67f5f20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 5f 7f c6 f7 7f 00 00}
0b7fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0b83h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0b86h jmp near ptr 192ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 9f 0d 00 00}
0b8bh mov rcx,7ff7c6aed050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d0 ae c6 f7 7f 00 00}
0b95h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 7f 45 5f}
0b9ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0b9dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0ba1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0ba4h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 70 45 5f}
0ba9h mov rcx,7ff7c626d900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d9 26 c6 f7 7f 00 00}
0bb3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0bb7h mov rcx,7ff7c67f5f28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 5f 7f c6 f7 7f 00 00}
0bc1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0bc5h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0bc8h jmp near ptr 192ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 5d 0d 00 00}
0bcdh mov rcx,7ff7c6aed050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d0 ae c6 f7 7f 00 00}
0bd7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 7f 45 5f}
0bdch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0bdfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0be3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0be6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 70 45 5f}
0bebh mov rcx,7ff7c626d900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d9 26 c6 f7 7f 00 00}
0bf5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0bf9h mov rcx,7ff7c67f5f30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 5f 7f c6 f7 7f 00 00}
0c03h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0c07h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0c0ah jmp near ptr 192ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 1b 0d 00 00}
0c0fh mov rcx,7ff7c6aed050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d0 ae c6 f7 7f 00 00}
0c19h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 7f 45 5f}
0c1eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0c21h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0c25h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0c28h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 70 45 5f}
0c2dh mov rcx,7ff7c626d900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d9 26 c6 f7 7f 00 00}
0c37h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0c3bh mov rcx,7ff7c67f5f38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 5f 7f c6 f7 7f 00 00}
0c45h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0c49h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0c4ch jmp near ptr 192ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 d9 0c 00 00}
0c51h mov rcx,7ff7c6aed050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d0 ae c6 f7 7f 00 00}
0c5bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f0 7e 45 5f}
0c60h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0c63h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0c67h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0c6ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 70 45 5f}
0c6fh mov rcx,7ff7c626d900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d9 26 c6 f7 7f 00 00}
0c79h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0c7dh mov rcx,7ff7c67f5f40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 5f 7f c6 f7 7f 00 00}
0c87h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0c8bh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0c8eh jmp near ptr 192ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 97 0c 00 00}
0c93h mov rcx,7ff7c6aed050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d0 ae c6 f7 7f 00 00}
0c9dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae 7e 45 5f}
0ca2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0ca5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0ca9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0cach call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df 6f 45 5f}
0cb1h mov rcx,7ff7c626d900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d9 26 c6 f7 7f 00 00}
0cbbh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0cbfh mov rcx,7ff7c67f5f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 5f 7f c6 f7 7f 00 00}
0cc9h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0ccdh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0cd0h jmp near ptr 192ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 55 0c 00 00}
0cd5h mov rcx,7ff7c6aed050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d0 ae c6 f7 7f 00 00}
0cdfh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c 7e 45 5f}
0ce4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0ce7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0cebh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0ceeh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d 6f 45 5f}
0cf3h mov rcx,7ff7c626d900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d9 26 c6 f7 7f 00 00}
0cfdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0d01h mov rcx,7ff7c67f5f50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 5f 7f c6 f7 7f 00 00}
0d0bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0d0fh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0d12h jmp near ptr 192ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 13 0c 00 00}
0d17h mov rcx,7ff7c6aed050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d0 ae c6 f7 7f 00 00}
0d21h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a 7e 45 5f}
0d26h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0d29h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0d2dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0d30h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b 6f 45 5f}
0d35h mov rcx,7ff7c626d900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d9 26 c6 f7 7f 00 00}
0d3fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0d43h mov rcx,7ff7c67f5f58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 5f 7f c6 f7 7f 00 00}
0d4dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0d51h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0d54h jmp near ptr 192ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 d1 0b 00 00}
0d59h mov rcx,7ff7c6aed050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d0 ae c6 f7 7f 00 00}
0d63h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 7d 45 5f}
0d68h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0d6bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0d6fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0d72h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 6f 45 5f}
0d77h mov rcx,7ff7c626d900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d9 26 c6 f7 7f 00 00}
0d81h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0d85h mov rcx,7ff7c67f5f60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 5f 7f c6 f7 7f 00 00}
0d8fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0d93h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0d96h jmp near ptr 192ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 8f 0b 00 00}
0d9bh mov rcx,7ff7c6aed050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d0 ae c6 f7 7f 00 00}
0da5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 7d 45 5f}
0daah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0dadh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0db1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0db4h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 6e 45 5f}
0db9h mov rcx,7ff7c626d900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d9 26 c6 f7 7f 00 00}
0dc3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0dc7h mov rcx,7ff7c67f5f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 5f 7f c6 f7 7f 00 00}
0dd1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0dd5h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0dd8h jmp near ptr 192ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 4d 0b 00 00}
0dddh mov rcx,7ff7c6aed050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d0 ae c6 f7 7f 00 00}
0de7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 7d 45 5f}
0dech mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0defh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0df3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0df6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 6e 45 5f}
0dfbh mov rcx,7ff7c626d900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d9 26 c6 f7 7f 00 00}
0e05h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0e09h mov rcx,7ff7c67f5f70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 5f 7f c6 f7 7f 00 00}
0e13h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0e17h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0e1ah jmp near ptr 192ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 0b 0b 00 00}
0e1fh mov rcx,7ff7c6aed050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d0 ae c6 f7 7f 00 00}
0e29h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 7d 45 5f}
0e2eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0e31h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0e35h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0e38h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 6e 45 5f}
0e3dh mov rcx,7ff7c626d900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d9 26 c6 f7 7f 00 00}
0e47h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0e4bh mov rcx,7ff7c67f5f78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 5f 7f c6 f7 7f 00 00}
0e55h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0e59h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0e5ch jmp near ptr 192ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 c9 0a 00 00}
0e61h mov rcx,7ff7c6aed050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d0 ae c6 f7 7f 00 00}
0e6bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 7c 45 5f}
0e70h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0e73h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0e77h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0e7ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 6e 45 5f}
0e7fh mov rcx,7ff7c626d900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d9 26 c6 f7 7f 00 00}
0e89h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0e8dh mov rcx,7ff7c67f5f80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 5f 7f c6 f7 7f 00 00}
0e97h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0e9bh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0e9eh jmp near ptr 192ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 87 0a 00 00}
0ea3h mov rcx,7ff7c6aed050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d0 ae c6 f7 7f 00 00}
0eadh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9e 7c 45 5f}
0eb2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0eb5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0eb9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0ebch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf 6d 45 5f}
0ec1h mov rcx,7ff7c626d900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d9 26 c6 f7 7f 00 00}
0ecbh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0ecfh mov rcx,7ff7c67f5f88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 5f 7f c6 f7 7f 00 00}
0ed9h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0eddh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0ee0h jmp near ptr 192ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 45 0a 00 00}
0ee5h mov rcx,7ff7c6aed050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d0 ae c6 f7 7f 00 00}
0eefh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c 7c 45 5f}
0ef4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0ef7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0efbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0efeh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d 6d 45 5f}
0f03h mov rcx,7ff7c626d900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d9 26 c6 f7 7f 00 00}
0f0dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0f11h mov rcx,7ff7c67f5f90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 5f 7f c6 f7 7f 00 00}
0f1bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0f1fh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0f22h jmp near ptr 192ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 03 0a 00 00}
0f27h mov rcx,7ff7c6aed050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d0 ae c6 f7 7f 00 00}
0f31h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a 7c 45 5f}
0f36h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0f39h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0f3dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0f40h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b 6d 45 5f}
0f45h mov rcx,7ff7c626d900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d9 26 c6 f7 7f 00 00}
0f4fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0f53h mov rcx,7ff7c67f5f98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 5f 7f c6 f7 7f 00 00}
0f5dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0f61h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0f64h jmp near ptr 192ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 c1 09 00 00}
0f69h mov rcx,7ff7c6aed050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d0 ae c6 f7 7f 00 00}
0f73h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 7b 45 5f}
0f78h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0f7bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0f7fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0f82h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 6d 45 5f}
0f87h mov rcx,7ff7c626d900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d9 26 c6 f7 7f 00 00}
0f91h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0f95h mov rcx,7ff7c67f5fa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 5f 7f c6 f7 7f 00 00}
0f9fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0fa3h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0fa6h jmp near ptr 192ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 7f 09 00 00}
0fabh mov rcx,7ff7c6aed050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d0 ae c6 f7 7f 00 00}
0fb5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 7b 45 5f}
0fbah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0fbdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0fc1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0fc4h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 6c 45 5f}
0fc9h mov rcx,7ff7c626d900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d9 26 c6 f7 7f 00 00}
0fd3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0fd7h mov rcx,7ff7c67f5fa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 5f 7f c6 f7 7f 00 00}
0fe1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0fe5h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0fe8h jmp near ptr 192ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 3d 09 00 00}
0fedh mov rcx,7ff7c6aed050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d0 ae c6 f7 7f 00 00}
0ff7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 7b 45 5f}
0ffch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0fffh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
1003h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
1006h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 6c 45 5f}
100bh mov rcx,7ff7c626d900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d9 26 c6 f7 7f 00 00}
1015h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
1019h mov rcx,7ff7c67f5fb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 5f 7f c6 f7 7f 00 00}
1023h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
1027h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
102ah jmp near ptr 192ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 fb 08 00 00}
102fh mov rcx,7ff7c6aed050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d0 ae c6 f7 7f 00 00}
1039h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 7b 45 5f}
103eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
1041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
1045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
1048h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 6c 45 5f}
104dh mov rcx,7ff7c626d900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d9 26 c6 f7 7f 00 00}
1057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
105bh mov rcx,7ff7c67f5fb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 5f 7f c6 f7 7f 00 00}
1065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
1069h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
106ch jmp near ptr 192ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 b9 08 00 00}
1071h mov rcx,7ff7c6aed050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d0 ae c6 f7 7f 00 00}
107bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 7a 45 5f}
1080h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
1083h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
1087h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
108ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 6c 45 5f}
108fh mov rcx,7ff7c626d900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d9 26 c6 f7 7f 00 00}
1099h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
109dh mov rcx,7ff7c67f5fc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 5f 7f c6 f7 7f 00 00}
10a7h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
10abh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
10aeh jmp near ptr 192ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 77 08 00 00}
10b3h mov rcx,7ff7c6aed050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d0 ae c6 f7 7f 00 00}
10bdh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8e 7a 45 5f}
10c2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
10c5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
10c9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
10cch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf 6b 45 5f}
10d1h mov rcx,7ff7c626d900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d9 26 c6 f7 7f 00 00}
10dbh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
10dfh mov rcx,7ff7c67f5fc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 5f 7f c6 f7 7f 00 00}
10e9h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
10edh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
10f0h jmp near ptr 192ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 35 08 00 00}
10f5h mov rcx,7ff7c6aed050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d0 ae c6 f7 7f 00 00}
10ffh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c 7a 45 5f}
1104h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
1107h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
110bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
110eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d 6b 45 5f}
1113h mov rcx,7ff7c626d900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d9 26 c6 f7 7f 00 00}
111dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
1121h mov rcx,7ff7c67f5fd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 5f 7f c6 f7 7f 00 00}
112bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
112fh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
1132h jmp near ptr 192ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 f3 07 00 00}
1137h mov rcx,7ff7c6aed050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d0 ae c6 f7 7f 00 00}
1141h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0a 7a 45 5f}
1146h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
1149h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
114dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
1150h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b 6b 45 5f}
1155h mov rcx,7ff7c626d900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d9 26 c6 f7 7f 00 00}
115fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
1163h mov rcx,7ff7c67f5fd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 5f 7f c6 f7 7f 00 00}
116dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
1171h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
1174h jmp near ptr 192ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 b1 07 00 00}
1179h mov rcx,7ff7c6aed050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d0 ae c6 f7 7f 00 00}
1183h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 79 45 5f}
1188h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
118bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
118fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
1192h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 6a 45 5f}
1197h mov rcx,7ff7c626d900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d9 26 c6 f7 7f 00 00}
11a1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
11a5h mov rcx,7ff7c67f5fe0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 5f 7f c6 f7 7f 00 00}
11afh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
11b3h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
11b6h jmp near ptr 192ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 07 00 00}
11bbh mov rcx,7ff7c6aed050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d0 ae c6 f7 7f 00 00}
11c5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 79 45 5f}
11cah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
11cdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
11d1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
11d4h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 6a 45 5f}
11d9h mov rcx,7ff7c626d900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d9 26 c6 f7 7f 00 00}
11e3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
11e7h mov rcx,7ff7c67f5fe8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 5f 7f c6 f7 7f 00 00}
11f1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
11f5h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
11f8h jmp near ptr 192ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 2d 07 00 00}
11fdh mov rcx,7ff7c6aed050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d0 ae c6 f7 7f 00 00}
1207h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 79 45 5f}
120ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
120fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
1213h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
1216h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 6a 45 5f}
121bh mov rcx,7ff7c626d900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d9 26 c6 f7 7f 00 00}
1225h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
1229h mov rcx,7ff7c67f5ff0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 5f 7f c6 f7 7f 00 00}
1233h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
1237h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
123ah jmp near ptr 192ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 eb 06 00 00}
123fh mov rcx,7ff7c6aed050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d0 ae c6 f7 7f 00 00}
1249h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 79 45 5f}
124eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
1251h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
1255h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
1258h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 6a 45 5f}
125dh mov rcx,7ff7c626d900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d9 26 c6 f7 7f 00 00}
1267h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
126bh mov rcx,7ff7c67f5ff8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 5f 7f c6 f7 7f 00 00}
1275h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
1279h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
127ch jmp near ptr 192ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 a9 06 00 00}
1281h mov rcx,7ff7c6aed050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d0 ae c6 f7 7f 00 00}
128bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 78 45 5f}
1290h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
1293h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
1297h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
129ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 69 45 5f}
129fh mov rcx,7ff7c626d900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d9 26 c6 f7 7f 00 00}
12a9h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
12adh mov rcx,7ff7c67f6000h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 60 7f c6 f7 7f 00 00}
12b7h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
12bbh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
12beh jmp near ptr 192ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 06 00 00}
12c3h mov rcx,7ff7c6aed050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d0 ae c6 f7 7f 00 00}
12cdh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e 78 45 5f}
12d2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
12d5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
12d9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
12dch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af 69 45 5f}
12e1h mov rcx,7ff7c626d900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d9 26 c6 f7 7f 00 00}
12ebh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
12efh mov rcx,7ff7c67f6008h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 60 7f c6 f7 7f 00 00}
12f9h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
12fdh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
1300h jmp near ptr 192ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 25 06 00 00}
1305h mov rcx,7ff7c6aed050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d0 ae c6 f7 7f 00 00}
130fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c 78 45 5f}
1314h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
1317h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
131bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
131eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d 69 45 5f}
1323h mov rcx,7ff7c626d900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d9 26 c6 f7 7f 00 00}
132dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
1331h mov rcx,7ff7c67f6010h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 60 7f c6 f7 7f 00 00}
133bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
133fh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
1342h jmp near ptr 192ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 e3 05 00 00}
1347h mov rcx,7ff7c6aed050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d0 ae c6 f7 7f 00 00}
1351h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa 77 45 5f}
1356h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
1359h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
135dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
1360h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b 69 45 5f}
1365h mov rcx,7ff7c626d900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d9 26 c6 f7 7f 00 00}
136fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
1373h mov rcx,7ff7c67f6018h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 60 7f c6 f7 7f 00 00}
137dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
1381h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
1384h jmp near ptr 192ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 a1 05 00 00}
1389h mov rcx,7ff7c6aed050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d0 ae c6 f7 7f 00 00}
1393h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 77 45 5f}
1398h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
139bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
139fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
13a2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 68 45 5f}
13a7h mov rcx,7ff7c626d900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d9 26 c6 f7 7f 00 00}
13b1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
13b5h mov rcx,7ff7c67f6020h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 60 7f c6 f7 7f 00 00}
13bfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
13c3h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
13c6h jmp near ptr 192ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
13cbh mov rcx,7ff7c6aed050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d0 ae c6 f7 7f 00 00}
13d5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 76 77 45 5f}
13dah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
13ddh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
13e1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
13e4h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 68 45 5f}
13e9h mov rcx,7ff7c626d900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d9 26 c6 f7 7f 00 00}
13f3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
13f7h mov rcx,7ff7c67f6028h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 60 7f c6 f7 7f 00 00}
1401h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
1405h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
1408h jmp near ptr 192ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 1d 05 00 00}
140dh mov rcx,7ff7c6aed050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d0 ae c6 f7 7f 00 00}
1417h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 77 45 5f}
141ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
141fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
1423h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
1426h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 68 45 5f}
142bh mov rcx,7ff7c626d900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d9 26 c6 f7 7f 00 00}
1435h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
1439h mov rcx,7ff7c67f6030h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 60 7f c6 f7 7f 00 00}
1443h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
1447h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
144ah jmp near ptr 192ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 db 04 00 00}
144fh mov rcx,7ff7c6aed050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d0 ae c6 f7 7f 00 00}
1459h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 76 45 5f}
145eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
1461h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
1465h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
1468h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 68 45 5f}
146dh mov rcx,7ff7c626d900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d9 26 c6 f7 7f 00 00}
1477h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
147bh mov rcx,7ff7c67f6038h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 60 7f c6 f7 7f 00 00}
1485h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
1489h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
148ch jmp near ptr 192ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 99 04 00 00}
1491h mov rcx,7ff7c6aed050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d0 ae c6 f7 7f 00 00}
149bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 76 45 5f}
14a0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
14a3h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
14a7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
14aah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 67 45 5f}
14afh mov rcx,7ff7c626d900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d9 26 c6 f7 7f 00 00}
14b9h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
14bdh mov rcx,7ff7c67f6040h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 60 7f c6 f7 7f 00 00}
14c7h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
14cbh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
14ceh jmp near ptr 192ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 57 04 00 00}
14d3h mov rcx,7ff7c6aed050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d0 ae c6 f7 7f 00 00}
14ddh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6e 76 45 5f}
14e2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
14e5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
14e9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
14ech call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f 67 45 5f}
14f1h mov rcx,7ff7c626d900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d9 26 c6 f7 7f 00 00}
14fbh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
14ffh mov rcx,7ff7c67f6048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 60 7f c6 f7 7f 00 00}
1509h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
150dh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
1510h jmp near ptr 192ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 15 04 00 00}
1515h mov rcx,7ff7c6aed050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d0 ae c6 f7 7f 00 00}
151fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c 76 45 5f}
1524h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
1527h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
152bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
152eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d 67 45 5f}
1533h mov rcx,7ff7c626d900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d9 26 c6 f7 7f 00 00}
153dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
1541h mov rcx,7ff7c67f6050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 60 7f c6 f7 7f 00 00}
154bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
154fh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
1552h jmp near ptr 192ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 d3 03 00 00}
1557h mov rcx,7ff7c6aed050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d0 ae c6 f7 7f 00 00}
1561h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea 75 45 5f}
1566h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
1569h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
156dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
1570h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b 67 45 5f}
1575h mov rcx,7ff7c626d900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d9 26 c6 f7 7f 00 00}
157fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
1583h mov rcx,7ff7c67f6058h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 60 7f c6 f7 7f 00 00}
158dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
1591h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
1594h jmp near ptr 192ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 91 03 00 00}
1599h mov rcx,7ff7c6aed050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d0 ae c6 f7 7f 00 00}
15a3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 75 45 5f}
15a8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
15abh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
15afh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
15b2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 66 45 5f}
15b7h mov rcx,7ff7c626d900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d9 26 c6 f7 7f 00 00}
15c1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
15c5h mov rcx,7ff7c67f6060h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 60 7f c6 f7 7f 00 00}
15cfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
15d3h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
15d6h jmp near ptr 192ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 4f 03 00 00}
15dbh mov rcx,7ff7c6aed050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d0 ae c6 f7 7f 00 00}
15e5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 75 45 5f}
15eah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
15edh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
15f1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
15f4h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 66 45 5f}
15f9h mov rcx,7ff7c626d900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d9 26 c6 f7 7f 00 00}
1603h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
1607h mov rcx,7ff7c67f6068h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 60 7f c6 f7 7f 00 00}
1611h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
1615h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
1618h jmp near ptr 192ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 0d 03 00 00}
161dh mov rcx,7ff7c6aed050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d0 ae c6 f7 7f 00 00}
1627h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 75 45 5f}
162ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
162fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
1633h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
1636h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 66 45 5f}
163bh mov rcx,7ff7c626d900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d9 26 c6 f7 7f 00 00}
1645h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
1649h mov rcx,7ff7c67f6070h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 60 7f c6 f7 7f 00 00}
1653h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
1657h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
165ah jmp near ptr 192ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 cb 02 00 00}
165fh mov rcx,7ff7c6aed050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d0 ae c6 f7 7f 00 00}
1669h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 74 45 5f}
166eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
1671h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
1675h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
1678h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 66 45 5f}
167dh mov rcx,7ff7c626d900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d9 26 c6 f7 7f 00 00}
1687h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
168bh mov rcx,7ff7c67f6078h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 60 7f c6 f7 7f 00 00}
1695h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
1699h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
169ch jmp near ptr 192ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 89 02 00 00}
16a1h mov rcx,7ff7c6aed050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d0 ae c6 f7 7f 00 00}
16abh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 74 45 5f}
16b0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
16b3h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
16b7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
16bah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 65 45 5f}
16bfh mov rcx,7ff7c626d900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d9 26 c6 f7 7f 00 00}
16c9h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
16cdh mov rcx,7ff7c67f6080h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 60 7f c6 f7 7f 00 00}
16d7h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
16dbh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
16deh jmp near ptr 192ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 47 02 00 00}
16e3h mov rcx,7ff7c6aed050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d0 ae c6 f7 7f 00 00}
16edh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e 74 45 5f}
16f2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
16f5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
16f9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
16fch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f 65 45 5f}
1701h mov rcx,7ff7c626d900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d9 26 c6 f7 7f 00 00}
170bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
170fh mov rcx,7ff7c67f6088h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 60 7f c6 f7 7f 00 00}
1719h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
171dh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
1720h jmp near ptr 192ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 05 02 00 00}
1725h mov rcx,7ff7c6aed050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d0 ae c6 f7 7f 00 00}
172fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c 74 45 5f}
1734h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
1737h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
173bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
173eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4d 65 45 5f}
1743h mov rcx,7ff7c626d900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 d9 26 c6 f7 7f 00 00}
174dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
1751h mov rcx,7ff7c67f6090h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 60 7f c6 f7 7f 00 00}
175bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
175fh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
1762h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e9 c3}
