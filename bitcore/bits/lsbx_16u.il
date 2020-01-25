// Id := 100663416, Name := System.UInt16 Z0.Bits::lsbx(System.UInt16)
// ushort lsbx(ushort src)
// AggressiveInlining
ushort lsbx(ushort src)
{
    IL_0000: ldarg.0
    IL_0001: call System.UInt32 System.Runtime.Intrinsics.X86.Bmi1::ExtractLowestSetBit(System.UInt32)
    IL_0006: conv.u2
    IL_0007: ret
}
