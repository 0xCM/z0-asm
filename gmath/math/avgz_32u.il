// Id := 100663317, Name := System.UInt32 Z0.math::avgz(System.UInt32,System.UInt32)
// uint avgz(uint a, uint b)
// AggressiveInlining
uint avgz(uint a, uint b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: and
    IL_0003: ldarg.0
    IL_0004: ldarg.1
    IL_0005: xor
    IL_0006: ldc.i4.1
    IL_0007: shr.un
    IL_0008: add
    IL_0009: ret
}
