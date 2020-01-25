// Id := 100663430, Name := System.Byte Z0.math::modmul(System.Byte,System.Byte,System.Byte)
// byte modmul(byte a, byte b, byte m)
// AggressiveInlining
byte modmul(byte a, byte b, byte m)
{
    IL_0000: ldarg.0
    IL_0001: conv.u8
    IL_0002: ldarg.1
    IL_0003: conv.u8
    IL_0004: ldarg.2
    IL_0005: conv.u8
    IL_0006: call System.UInt64 Z0.math::modmul(System.UInt64,System.UInt64,System.UInt64)
    IL_000B: conv.u1
    IL_000C: ret
}
