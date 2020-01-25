// Id := 100663409, Name := System.UInt32 Z0.Bits::log2(System.UInt32)
// uint log2(uint src)
// AggressiveInlining
uint log2(uint src)
{
    IL_0000: ldarg.0
    IL_0001: call System.Int32 System.Numerics.BitOperations::Log2(System.UInt32)
    IL_0006: ret
}
