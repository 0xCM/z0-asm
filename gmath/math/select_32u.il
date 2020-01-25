// Id := 100663583, Name := System.UInt32 Z0.math::select(System.UInt32,System.UInt32,System.UInt32)
// uint select(uint a, uint b, uint c)
// AggressiveInlining
uint select(uint a, uint b, uint c)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.UInt32 Z0.math::and(System.UInt32,System.UInt32)
    IL_0007: ldarg.0
    IL_0008: ldarg.2
    IL_0009: call System.UInt32 Z0.math::nonimpl(System.UInt32,System.UInt32)
    IL_000E: call System.UInt32 Z0.math::or(System.UInt32,System.UInt32)
    IL_0013: ret
}
