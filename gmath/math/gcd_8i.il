// Id := 100663387, Name := System.SByte Z0.math::gcd(System.SByte,System.SByte)
// sbyte gcd(sbyte a, sbyte b)
// AggressiveInlining
sbyte gcd(sbyte a, sbyte b)
{
    IL_0000: ldarg.0
    IL_0001: call System.SByte Z0.math::abs(System.SByte)
    IL_0006: stloc.0
    IL_0007: ldarg.1
    IL_0008: call System.SByte Z0.math::abs(System.SByte)
    IL_000D: stloc.1
    IL_000E: br.s IL_001C
    IL_0010: ldloc.0
    IL_0011: ldloc.1
    IL_0012: call System.SByte Z0.math::mod(System.SByte,System.SByte)
    IL_0017: stloc.2
    IL_0018: ldloc.1
    IL_0019: stloc.0
    IL_001A: ldloc.2
    IL_001B: stloc.1
    IL_001C: ldloc.1
    IL_001D: brtrue.s IL_0010
    IL_001F: ldloc.0
    IL_0020: ret
}
