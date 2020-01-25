// Id := 100663319, Name := System.Byte Z0.math::avgi(System.Byte,System.Byte)
// byte avgi(byte a, byte b)
// AggressiveInlining
byte avgi(byte a, byte b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: or
    IL_0003: ldarg.0
    IL_0004: ldarg.1
    IL_0005: xor
    IL_0006: ldc.i4.1
    IL_0007: shr
    IL_0008: sub
    IL_0009: conv.u1
    IL_000A: ret
}
