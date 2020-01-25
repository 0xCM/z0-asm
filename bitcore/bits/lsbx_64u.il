// Id := 100663418, Name := System.UInt64 Z0.Bits::lsbx(System.UInt64)
// ulong lsbx(ulong src)
// AggressiveInlining
ulong lsbx(ulong src)
{
    IL_0000: ldarg.0
    IL_0001: call System.UInt64 System.Runtime.Intrinsics.X86.Bmi1/X64::ExtractLowestSetBit(System.UInt64)
    IL_0006: ret
}
