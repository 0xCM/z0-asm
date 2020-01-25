// Id := 100663545, Name := System.UInt64 Z0.math::nonimpl(System.UInt64,System.UInt64)
// ulong nonimpl(ulong a, ulong b)
// AggressiveInlining
ulong nonimpl(ulong a, ulong b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.UInt64 System.Runtime.Intrinsics.X86.Bmi1/X64::AndNot(System.UInt64,System.UInt64)
    IL_0007: ret
}
