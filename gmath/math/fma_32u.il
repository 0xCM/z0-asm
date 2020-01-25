// Id := 100663384, Name := System.UInt32 Z0.math::fma(System.UInt32,System.UInt32,System.UInt32)
// uint fma(uint x, uint y, uint z)
// AggressiveInlining
uint fma(uint x, uint y, uint z)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: mul
    IL_0003: ldarg.2
    IL_0004: add
    IL_0005: ret
}
