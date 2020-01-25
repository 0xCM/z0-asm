// Id := 100663481, Name := System.UInt32 Z0.Bits::pop(System.SByte)
// uint pop(sbyte src)
// AggressiveInlining
uint pop(sbyte src)
{
    IL_0000: ldarg.0
    IL_0001: call System.UInt32 System.Runtime.Intrinsics.X86.Popcnt::PopCount(System.UInt32)
    IL_0006: ret
}
