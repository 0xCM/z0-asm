// Id := 100663426, Name := System.UInt32 Z0.math::mod(System.UInt32,System.UInt32)
// uint mod(uint a, uint m)
// AggressiveInlining
uint mod(uint a, uint m)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: rem.un
    IL_0003: ret
}
