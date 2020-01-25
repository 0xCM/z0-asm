// Id := 100663484, Name := System.UInt32 Z0.Bits::pop(System.UInt16)
// uint pop(ushort src)
// AggressiveInlining
uint pop(ushort src)
{
    IL_0000: ldarg.0
    IL_0001: call System.UInt32 System.Runtime.Intrinsics.X86.Popcnt::PopCount(System.UInt32)
    IL_0006: ret
}
