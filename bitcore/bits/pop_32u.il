// Id := 100663486, Name := System.UInt32 Z0.Bits::pop(System.UInt32)
// uint pop(uint src)
// AggressiveInlining
uint pop(uint src)
{
    IL_0000: ldarg.0
    IL_0001: call System.UInt32 System.Runtime.Intrinsics.X86.Popcnt::PopCount(System.UInt32)
    IL_0006: ret
}
