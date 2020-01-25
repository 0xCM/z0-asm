// Id := 100663482, Name := System.UInt32 Z0.Bits::pop(System.Byte)
// uint pop(byte src)
// AggressiveInlining
uint pop(byte src)
{
    IL_0000: ldarg.0
    IL_0001: call System.UInt32 System.Runtime.Intrinsics.X86.Popcnt::PopCount(System.UInt32)
    IL_0006: ret
}
