// Id := 100663407, Name := System.UInt32 Z0.Bits::log2(System.Byte)
// uint log2(byte src)
// AggressiveInlining
uint log2(byte src)
{
    IL_0000: ldarg.0
    IL_0001: call System.Int32 System.Numerics.BitOperations::Log2(System.UInt32)
    IL_0006: ret
}
