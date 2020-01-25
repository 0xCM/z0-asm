// Id := 100663442, Name := System.Int32 Z0.Bits::ntz(System.UInt64)
// int ntz(ulong src)
// AggressiveInlining
int ntz(ulong src)
{
    IL_0000: ldarg.0
    IL_0001: call System.UInt64 System.Runtime.Intrinsics.X86.Bmi1/X64::TrailingZeroCount(System.UInt64)
    IL_0006: conv.i4
    IL_0007: ret
}
