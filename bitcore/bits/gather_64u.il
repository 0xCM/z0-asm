// Id := 100663398, Name := System.UInt64 Z0.Bits::gather(System.UInt64,System.UInt64)
// ulong gather(ulong src, ulong mask)
// AggressiveInlining
ulong gather(ulong src, ulong mask)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.UInt64 System.Runtime.Intrinsics.X86.Bmi2/X64::ParallelBitExtract(System.UInt64,System.UInt64)
    IL_0007: ret
}
