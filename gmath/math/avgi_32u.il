// Id := 100663321, Name := System.UInt32 Z0.math::avgi(System.UInt32,System.UInt32)
// uint avgi(uint a, uint b)
// AggressiveInlining
uint avgi(uint a, uint b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: or
    IL_0003: ldarg.0
    IL_0004: ldarg.1
    IL_0005: xor
    IL_0006: ldc.i4.1
    IL_0007: shr.un
    IL_0008: sub
    IL_0009: ret
}
