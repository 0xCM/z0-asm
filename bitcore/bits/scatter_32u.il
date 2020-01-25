// Id := 100663531, Name := System.UInt32 Z0.Bits::scatter(System.UInt32,System.UInt32)
// uint scatter(uint src, uint mask)
// AggressiveInlining
uint scatter(uint src, uint mask)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.UInt32 System.Runtime.Intrinsics.X86.Bmi2::ParallelBitDeposit(System.UInt32,System.UInt32)
    IL_0007: ret
}
