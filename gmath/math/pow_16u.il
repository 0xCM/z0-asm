// Id := 100663467, Name := System.UInt16 Z0.math::pow(System.UInt16,System.UInt32)
// ushort pow(ushort b, uint exp)
// AggressiveInlining
ushort pow(ushort b, uint exp)
{
    IL_0000: ldarg.1
    IL_0001: brtrue.s IL_0005
    IL_0003: ldc.i4.1
    IL_0004: ret
    IL_0005: ldc.i4.1
    IL_0006: stloc.0
    IL_0007: ldarg.1
    IL_0008: ldc.i4.1
    IL_0009: and
    IL_000A: brfalse.s IL_0011
    IL_000C: ldloc.0
    IL_000D: ldarg.0
    IL_000E: mul
    IL_000F: conv.u2
    IL_0010: stloc.0
    IL_0011: ldarg.1
    IL_0012: ldc.i4.1
    IL_0013: shr.un
    IL_0014: starg.s exp
    IL_0016: ldarg.1
    IL_0017: brfalse.s IL_0021
    IL_0019: ldarg.0
    IL_001A: ldarg.0
    IL_001B: mul
    IL_001C: conv.u2
    IL_001D: starg.s b
    IL_001F: br.s IL_0007
    IL_0021: ldloc.0
    IL_0022: ret
}
