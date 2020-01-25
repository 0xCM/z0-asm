// Id := 100663393, Name := System.Single Z0.Bits::disable(System.Single,System.Int32)
// float disable(float src, int pos)
// AggressiveInlining
float disable(float src, int pos)
{
    IL_0000: ldarga.s src
    IL_0002: call System.Int32& System.Runtime.CompilerServices.Unsafe::As<System.Single,System.Int32>(System.Single&)
    IL_0007: stloc.0
    IL_0008: ldc.i4.1
    IL_0009: ldarg.1
    IL_000A: ldc.i4.s 31
    IL_000C: and
    IL_000D: shl
    IL_000E: stloc.1
    IL_000F: ldloc.0
    IL_0010: ldloc.0
    IL_0011: ldind.i4
    IL_0012: ldloc.1
    IL_0013: not
    IL_0014: and
    IL_0015: stind.i4
    IL_0016: ldarg.0
    IL_0017: ret
}
