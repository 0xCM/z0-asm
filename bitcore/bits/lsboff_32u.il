// Id := 100663413, Name := System.UInt32 Z0.Bits::lsboff(System.UInt32)
// uint lsboff(uint src)
// AggressiveInlining
uint lsboff(uint src)
{
    IL_0000: ldarg.0
    IL_0001: call System.UInt32 System.Runtime.Intrinsics.X86.Bmi1::ResetLowestSetBit(System.UInt32)
    IL_0006: ret
}
