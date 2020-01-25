// Id := 100663592, Name := System.UInt64 Z0.Bits::zerohi(System.UInt64,System.Int32)
// ulong zerohi(ulong src, int index)
// AggressiveInlining
ulong zerohi(ulong src, int index)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: conv.u8
    IL_0003: call System.UInt64 System.Runtime.Intrinsics.X86.Bmi2/X64::ZeroHighBits(System.UInt64,System.UInt64)
    IL_0008: ret
}
