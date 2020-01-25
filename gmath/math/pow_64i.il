// Id := 100663470, Name := System.Int64 Z0.math::pow(System.Int64,System.UInt32)
// long pow(long b, uint exp)
// AggressiveInlining
long pow(long b, uint exp)
{
    IL_0000: ldarg.1
    IL_0001: brtrue.s IL_0006
    IL_0003: ldc.i4.1
    IL_0004: conv.i8
    IL_0005: ret
    IL_0006: ldc.i4.1
    IL_0007: conv.i8
    IL_0008: stloc.0
    IL_0009: ldarg.1
    IL_000A: ldc.i4.1
    IL_000B: and
    IL_000C: brfalse.s IL_0012
    IL_000E: ldloc.0
    IL_000F: ldarg.0
    IL_0010: mul
    IL_0011: stloc.0
    IL_0012: ldarg.1
    IL_0013: ldc.i4.1
    IL_0014: shr.un
    IL_0015: starg.s exp
    IL_0017: ldarg.1
    IL_0018: brfalse.s IL_0021
    IL_001A: ldarg.0
    IL_001B: ldarg.0
    IL_001C: mul
    IL_001D: starg.s b
    IL_001F: br.s IL_0009
    IL_0021: ldloc.0
    IL_0022: ret
}
