// Id := 100663566, Name := System.Byte Z0.Bits::toggle(System.Byte,System.Int32)
// byte toggle(byte src, int pos)
// AggressiveInlining
byte toggle(byte src, int pos)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: ldarg.1
    IL_0003: ldc.i4.s 31
    IL_0005: and
    IL_0006: shl
    IL_0007: conv.u1
    IL_0008: xor
    IL_0009: conv.u1
    IL_000A: dup
    IL_000B: starg.s src
    IL_000D: ret
}
