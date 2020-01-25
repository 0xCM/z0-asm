// Id := 100663483, Name := System.UInt32 Z0.Bits::pop(System.Int16)
// uint pop(Int16 src)
// AggressiveInlining
uint pop(Int16 src)
{
    IL_0000: ldarg.0
    IL_0001: call System.UInt32 System.Runtime.Intrinsics.X86.Popcnt::PopCount(System.UInt32)
    IL_0006: ret
}
