// Id := 100663317, Name := System.Single Z0.Bits::between(System.Single,System.Byte,System.Byte)
// float between(float src, byte k0, byte k1)
// AggressiveInlining
float between(float src, byte k0, byte k1)
{
    IL_0000: ldarg.0
    IL_0001: call System.Int32 System.BitConverter::SingleToInt32Bits(System.Single)
    IL_0006: ldarg.1
    IL_0007: ldarg.2
    IL_0008: call System.Int32 Z0.Bits::between(System.Int32,System.Byte,System.Byte)
    IL_000D: call System.Single System.BitConverter::Int32BitsToSingle(System.Int32)
    IL_0012: ret
}
