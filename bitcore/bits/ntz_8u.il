// Id := 100663436, Name := System.Int32 Z0.Bits::ntz(System.Byte)
// int ntz(byte src)
// AggressiveInlining
int ntz(byte src)
{
    IL_0000: ldarg.0
    IL_0001: brfalse.s IL_000A
    IL_0003: ldarg.0
    IL_0004: call System.UInt32 System.Runtime.Intrinsics.X86.Bmi1::TrailingZeroCount(System.UInt32)
    IL_0009: ret
    IL_000A: ldc.i4.8
    IL_000B: ret
}
