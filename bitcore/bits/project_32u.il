// Id := 100663533, Name := System.UInt32 Z0.Bits::project(System.UInt32,System.UInt32)
// uint project(uint src, uint spec)
// AggressiveInlining
uint project(uint src, uint spec)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.UInt32 Z0.Bits::scatter(System.UInt32,System.UInt32)
    IL_0007: ret
}
