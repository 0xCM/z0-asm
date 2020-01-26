// Id := 100663303, Name := System.SByte Z0.math::abs(System.SByte)
// sbyte abs(sbyte a)
// AggressiveInlining
sbyte abs(sbyte a)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.0
    IL_0002: ldc.i4.7
    IL_0003: shr
    IL_0004: add
    IL_0005: ldarg.0
    IL_0006: ldc.i4.7
    IL_0007: shr
    IL_0008: xor
    IL_0009: conv.i1
    IL_000A: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663304, Name := System.Int16 Z0.math::abs(System.Int16)
// Int16 abs(Int16 a)
// AggressiveInlining
Int16 abs(Int16 a)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.0
    IL_0002: ldc.i4.s 15
    IL_0004: shr
    IL_0005: add
    IL_0006: ldarg.0
    IL_0007: ldc.i4.s 15
    IL_0009: shr
    IL_000A: xor
    IL_000B: conv.i2
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663305, Name := System.Int32 Z0.math::abs(System.Int32)
// int abs(int a)
// AggressiveInlining
int abs(int a)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.0
    IL_0002: ldc.i4.s 31
    IL_0004: shr
    IL_0005: add
    IL_0006: ldarg.0
    IL_0007: ldc.i4.s 31
    IL_0009: shr
    IL_000A: xor
    IL_000B: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663306, Name := System.Int64 Z0.math::abs(System.Int64)
// long abs(long a)
// AggressiveInlining
long abs(long a)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.0
    IL_0002: ldc.i4.s 63
    IL_0004: shr
    IL_0005: add
    IL_0006: ldarg.0
    IL_0007: ldc.i4.s 63
    IL_0009: shr
    IL_000A: xor
    IL_000B: ret
}
------------------------------------------------------------------------------------------------------------------------
