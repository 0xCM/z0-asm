// Id := 100663397, Name := System.UInt32 Z0.Bits::gather(System.UInt32,System.UInt32)
// uint gather(uint src, uint mask)
// AggressiveInlining
uint gather(uint src, uint mask)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.UInt32 System.Runtime.Intrinsics.X86.Bmi2::ParallelBitExtract(System.UInt32,System.UInt32)
    IL_0007: ret
}
