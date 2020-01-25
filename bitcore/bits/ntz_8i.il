// Id := 100663435, Name := System.Int32 Z0.Bits::ntz(System.SByte)
// int ntz(sbyte src)
// AggressiveInlining
int ntz(sbyte src)
{
    IL_0000: ldarg.0
    IL_0001: brfalse.s IL_000A
    IL_0003: ldarg.0
    IL_0004: call System.UInt32 System.Runtime.Intrinsics.X86.Bmi1::TrailingZeroCount(System.UInt32)
    IL_0009: ret
    IL_000A: ldc.i4.8
    IL_000B: ret
}
