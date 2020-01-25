// Id := 100663312, Name := System.UInt16 Z0.Bits::between(System.UInt16,System.Byte,System.Byte)
// ushort between(ushort src, byte k0, byte k1)
// AggressiveInlining
ushort between(ushort src, byte k0, byte k1)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: ldarg.1
    IL_0004: sub
    IL_0005: ldc.i4.1
    IL_0006: add
    IL_0007: conv.u1
    IL_0008: call System.UInt32 System.Runtime.Intrinsics.X86.Bmi1::BitFieldExtract(System.UInt32,System.Byte,System.Byte)
    IL_000D: conv.u2
    IL_000E: ret
}
