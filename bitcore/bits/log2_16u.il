// Id := 100663408, Name := System.UInt32 Z0.Bits::log2(System.UInt16)
// uint log2(ushort src)
// AggressiveInlining
uint log2(ushort src)
{
    IL_0000: ldarg.0
    IL_0001: call System.Int32 System.Numerics.BitOperations::Log2(System.UInt32)
    IL_0006: ret
}
