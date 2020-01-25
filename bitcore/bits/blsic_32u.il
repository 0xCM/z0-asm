// Id := 100663355, Name := System.UInt32 Z0.Bits::blsic(System.UInt32)
// uint blsic(uint src)
// AggressiveInlining
uint blsic(uint src)
{
    IL_0000: ldarg.0
    IL_0001: not
    IL_0002: ldarg.0
    IL_0003: ldc.i4.1
    IL_0004: sub
    IL_0005: or
    IL_0006: ret
}
