// Id := 100663404, Name := System.UInt32 Z0.math::inc(System.UInt32)
// uint inc(uint src)
// AggressiveInlining
uint inc(uint src)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: add
    IL_0003: dup
    IL_0004: starg.s src
    IL_0006: ret
}
