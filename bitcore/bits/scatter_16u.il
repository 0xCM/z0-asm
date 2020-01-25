// Id := 100663530, Name := System.UInt16 Z0.Bits::scatter(System.UInt16,System.UInt16)
// ushort scatter(ushort src, ushort mask)
// AggressiveInlining
ushort scatter(ushort src, ushort mask)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.UInt32 System.Runtime.Intrinsics.X86.Bmi2::ParallelBitDeposit(System.UInt32,System.UInt32)
    IL_0007: conv.u2
    IL_0008: ret
}
