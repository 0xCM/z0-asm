// Id := 100663414, Name := System.UInt64 Z0.Bits::lsboff(System.UInt64)
// ulong lsboff(ulong src)
// AggressiveInlining
ulong lsboff(ulong src)
{
    IL_0000: ldarg.0
    IL_0001: call System.UInt64 System.Runtime.Intrinsics.X86.Bmi1/X64::ResetLowestSetBit(System.UInt64)
    IL_0006: ret
}
