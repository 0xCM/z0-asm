// Id := 100663352, Name := System.UInt32 Z0.math::dec(System.UInt32)
// uint dec(uint src)
// AggressiveInlining
uint dec(uint src)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: sub
    IL_0003: dup
    IL_0004: starg.s src
    IL_0006: ret
}
