// Id := 100663459, Name := System.UInt32 Z0.math::negate(System.UInt32)
// uint negate(uint src)
// AggressiveInlining
uint negate(uint src)
{
    IL_0000: ldarg.0
    IL_0001: not
    IL_0002: ldc.i4.1
    IL_0003: add
    IL_0004: ret
}
