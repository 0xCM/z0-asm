// Id := 100663468, Name := System.Int32 Z0.math::pow(System.Int32,System.UInt32)
// int pow(int b, uint exp)
// AggressiveInlining
int pow(int b, uint exp)
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
    IL_000A: brfalse.s IL_0010
    IL_000C: ldloc.0
    IL_000D: ldarg.0
    IL_000E: mul
    IL_000F: stloc.0
    IL_0010: ldarg.1
    IL_0011: ldc.i4.1
    IL_0012: shr.un
    IL_0013: starg.s exp
    IL_0015: ldarg.1
    IL_0016: brfalse.s IL_001F
    IL_0018: ldarg.0
    IL_0019: ldarg.0
    IL_001A: mul
    IL_001B: starg.s b
    IL_001D: br.s IL_0007
    IL_001F: ldloc.0
    IL_0020: ret
}
