// Id := 100663591, Name := System.UInt32 Z0.math::blend(System.UInt32,System.UInt32,System.UInt32)
// uint blend(uint a, uint b, uint mask)
// AggressiveInlining
uint blend(uint a, uint b, uint mask)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.0
    IL_0002: ldarg.1
    IL_0003: call System.UInt32 Z0.math::xor(System.UInt32,System.UInt32)
    IL_0008: ldarg.2
    IL_0009: call System.UInt32 Z0.math::and(System.UInt32,System.UInt32)
    IL_000E: call System.UInt32 Z0.math::xor(System.UInt32,System.UInt32)
    IL_0013: ret
}
