// Id := 100663417, Name := System.UInt32 Z0.Bits::lsbx(System.UInt32)
// uint lsbx(uint src)
// AggressiveInlining
uint lsbx(uint src)
{
    IL_0000: ldarg.0
    IL_0001: call System.UInt32 System.Runtime.Intrinsics.X86.Bmi1::ExtractLowestSetBit(System.UInt32)
    IL_0006: ret
}
