// Id := 100663590, Name := System.UInt16 Z0.Bits::zerohi(System.UInt16,System.Int32)
// ushort zerohi(ushort src, int index)
// AggressiveInlining
ushort zerohi(ushort src, int index)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.UInt32 System.Runtime.Intrinsics.X86.Bmi2::ZeroHighBits(System.UInt32,System.UInt32)
    IL_0007: conv.u2
    IL_0008: ret
}
