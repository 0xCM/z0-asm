// Id := 100663544, Name := System.Int64 Z0.math::nonimpl(System.Int64,System.Int64)
// long nonimpl(long a, long b)
// AggressiveInlining
long nonimpl(long a, long b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.UInt64 System.Runtime.Intrinsics.X86.Bmi1/X64::AndNot(System.UInt64,System.UInt64)
    IL_0007: ret
}
