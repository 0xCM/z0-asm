// Id := 100663908, Name := System.Double Z0.fmath::gcd(System.Double,System.Double)
// double gcd(double a, double b)
// AggressiveInlining
double gcd(double a, double b)
{
    IL_0000: ldarg.0
    IL_0001: call System.Double Z0.fmath::abs(System.Double)
    IL_0006: stloc.0
    IL_0007: ldarg.1
    IL_0008: call System.Double Z0.fmath::abs(System.Double)
    IL_000D: stloc.1
    IL_000E: br.s IL_001C
    IL_0010: ldloc.0
    IL_0011: ldloc.1
    IL_0012: call System.Double Z0.fmath::mod(System.Double,System.Double)
    IL_0017: stloc.2
    IL_0018: ldloc.1
    IL_0019: stloc.0
    IL_001A: ldloc.2
    IL_001B: stloc.1
    IL_001C: ldloc.1
    IL_001D: ldc.r8 0
    IL_0026: bne.un.s IL_0010
    IL_0028: ldloc.0
    IL_0029: ret
}
