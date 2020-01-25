// Id := 100663439, Name := System.Int32 Z0.Bits::ntz(System.Int32)
// int ntz(int src)
// AggressiveInlining
int ntz(int src)
{
    IL_0000: ldarg.0
    IL_0001: call System.UInt32 System.Runtime.Intrinsics.X86.Bmi1::TrailingZeroCount(System.UInt32)
    IL_0006: ret
}
