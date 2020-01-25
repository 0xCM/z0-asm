// Id := 100663434, Name := System.Int32 Z0.Bits::nlz(System.UInt64)
// int nlz(ulong src)
// AggressiveInlining
int nlz(ulong src)
{
    IL_0000: ldarg.0
    IL_0001: call System.UInt64 System.Runtime.Intrinsics.X86.Lzcnt/X64::LeadingZeroCount(System.UInt64)
    IL_0006: conv.i4
    IL_0007: ret
}
