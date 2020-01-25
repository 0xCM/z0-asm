// Id := 100663432, Name := System.UInt16 Z0.math::modmul(System.UInt16,System.UInt16,System.UInt16)
// ushort modmul(ushort a, ushort b, ushort m)
// AggressiveInlining
ushort modmul(ushort a, ushort b, ushort m)
{
    IL_0000: ldarg.0
    IL_0001: conv.u8
    IL_0002: ldarg.1
    IL_0003: conv.u8
    IL_0004: ldarg.2
    IL_0005: conv.u8
    IL_0006: call System.UInt64 Z0.math::modmul(System.UInt64,System.UInt64,System.UInt64)
    IL_000B: conv.u2
    IL_000C: ret
}
