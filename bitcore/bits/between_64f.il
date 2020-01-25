// Id := 100663318, Name := System.Double Z0.Bits::between(System.Double,System.Byte,System.Byte)
// double between(double src, byte k0, byte k1)
// AggressiveInlining
double between(double src, byte k0, byte k1)
{
    IL_0000: ldarg.0
    IL_0001: call System.Int64 System.BitConverter::DoubleToInt64Bits(System.Double)
    IL_0006: ldarg.1
    IL_0007: ldarg.2
    IL_0008: call System.Int64 Z0.Bits::between(System.Int64,System.Byte,System.Byte)
    IL_000D: call System.Double System.BitConverter::Int64BitsToDouble(System.Int64)
    IL_0012: ret
}
