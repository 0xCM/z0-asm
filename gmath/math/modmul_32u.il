// Id := 100663434, Name := System.UInt32 Z0.math::modmul(System.UInt32,System.UInt32,System.UInt32)
// uint modmul(uint a, uint b, uint m)
// AggressiveInlining
uint modmul(uint a, uint b, uint m)
{
    IL_0000: ldarg.0
    IL_0001: conv.u8
    IL_0002: ldarg.1
    IL_0003: conv.u8
    IL_0004: ldarg.2
    IL_0005: conv.u8
    IL_0006: call System.UInt64 Z0.math::modmul(System.UInt64,System.UInt64,System.UInt64)
    IL_000B: conv.u4
    IL_000C: ret
}
