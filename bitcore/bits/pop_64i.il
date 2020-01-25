// Id := 100663487, Name := System.UInt32 Z0.Bits::pop(System.Int64)
// uint pop(long src)
// AggressiveInlining
uint pop(long src)
{
    IL_0000: ldarg.0
    IL_0001: call System.UInt64 System.Runtime.Intrinsics.X86.Popcnt/X64::PopCount(System.UInt64)
    IL_0006: conv.u4
    IL_0007: ret
}
