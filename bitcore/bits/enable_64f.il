// Id := 100663384, Name := System.Double Z0.Bits::enable(System.Double,System.Int32)
// double enable(double src, int pos)
// AggressiveInlining
double enable(double src, int pos)
{
    IL_0000: ldarg.0
    IL_0001: call System.Int64 System.BitConverter::DoubleToInt64Bits(System.Double)
    IL_0006: stloc.0
    IL_0007: ldloc.0
    IL_0008: ldc.i4.1
    IL_0009: conv.i8
    IL_000A: ldarg.1
    IL_000B: ldc.i4.s 63
    IL_000D: and
    IL_000E: shl
    IL_000F: or
    IL_0010: stloc.0
    IL_0011: ldloc.0
    IL_0012: call System.Double System.BitConverter::Int64BitsToDouble(System.Int64)
    IL_0017: starg.s src
    IL_0019: ldarg.0
    IL_001A: ret
}
