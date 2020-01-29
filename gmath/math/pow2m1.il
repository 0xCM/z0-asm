// System.UInt64 Z0.math::pow2m1(System.Int32)
// ulong pow2m1(int exp)
// AggressiveInlining
ulong pow2m1(int exp)
{
    IL_0000: ldarg.0
    IL_0001: call System.UInt64 Z0.math::pow2(System.Int32)
    IL_0006: ldc.i4.1
    IL_0007: conv.i8
    IL_0008: sub
    IL_0009: ret
}
------------------------------------------------------------------------------------------------------------------------
