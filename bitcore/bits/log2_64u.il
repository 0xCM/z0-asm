// Id := 100663410, Name := System.UInt32 Z0.Bits::log2(System.UInt64)
// uint log2(ulong src)
// AggressiveInlining
uint log2(ulong src)
{
    IL_0000: ldarg.0
    IL_0001: call System.Int32 System.Numerics.BitOperations::Log2(System.UInt64)
    IL_0006: ret
}
