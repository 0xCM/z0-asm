// Id := 100663591, Name := System.UInt32 Z0.Bits::zerohi(System.UInt32,System.Int32)
// uint zerohi(uint src, int index)
// AggressiveInlining
uint zerohi(uint src, int index)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.UInt32 System.Runtime.Intrinsics.X86.Bmi2::ZeroHighBits(System.UInt32,System.UInt32)
    IL_0007: ret
}
