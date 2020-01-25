// Id := 100663394, Name := System.Double Z0.Bits::disable(System.Double,System.Int32)
// double disable(double src, int pos)
// AggressiveInlining
double disable(double src, int pos)
{
    IL_0000: ldarga.s src
    IL_0002: call System.Int64& System.Runtime.CompilerServices.Unsafe::As<System.Double,System.Int64>(System.Double&)
    IL_0007: stloc.0
    IL_0008: ldc.i4.1
    IL_0009: conv.i8
    IL_000A: ldarg.1
    IL_000B: ldc.i4.s 63
    IL_000D: and
    IL_000E: shl
    IL_000F: stloc.1
    IL_0010: ldloc.0
    IL_0011: ldloc.0
    IL_0012: ldind.i8
    IL_0013: ldloc.1
    IL_0014: not
    IL_0015: and
    IL_0016: stind.i8
    IL_0017: ldarg.0
    IL_0018: ret
}
