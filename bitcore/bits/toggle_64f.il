// Id := 100663574, Name := System.Double Z0.Bits::toggle(System.Double,System.Int32)
// double toggle(double src, int pos)
// AggressiveInlining
double toggle(double src, int pos)
{
    IL_0000: ldarga.s src
    IL_0002: call System.Int64& System.Runtime.CompilerServices.Unsafe::As<System.Double,System.Int64>(System.Double&)
    IL_0007: stloc.0
    IL_0008: ldloc.0
    IL_0009: ldloc.0
    IL_000A: ldind.i8
    IL_000B: ldc.i4.1
    IL_000C: conv.i8
    IL_000D: ldarg.1
    IL_000E: ldc.i4.s 63
    IL_0010: and
    IL_0011: shl
    IL_0012: xor
    IL_0013: stind.i8
    IL_0014: ldarg.0
    IL_0015: ret
}
