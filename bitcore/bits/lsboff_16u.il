// Id := 100663412, Name := System.UInt16 Z0.Bits::lsboff(System.UInt16)
// ushort lsboff(ushort src)
// AggressiveInlining
ushort lsboff(ushort src)
{
    IL_0000: ldarg.0
    IL_0001: call System.UInt32 System.Runtime.Intrinsics.X86.Bmi1::ResetLowestSetBit(System.UInt32)
    IL_0006: conv.u2
    IL_0007: ret
}
