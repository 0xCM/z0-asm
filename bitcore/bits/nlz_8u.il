// Id := 100663431, Name := System.Int32 Z0.Bits::nlz(System.Byte)
// int nlz(byte src)
// AggressiveInlining
int nlz(byte src)
{
    IL_0000: ldarg.0
    IL_0001: call System.UInt32 System.Runtime.Intrinsics.X86.Lzcnt::LeadingZeroCount(System.UInt32)
    IL_0006: ldc.i4.s 24
    IL_0008: sub
    IL_0009: ret
}
