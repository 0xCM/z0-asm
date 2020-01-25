// Id := 100663551, Name := System.UInt32 Z0.math::nor(System.UInt32,System.UInt32)
// uint nor(uint a, uint b)
// AggressiveInlining
uint nor(uint a, uint b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: or
    IL_0003: not
    IL_0004: ret
}
