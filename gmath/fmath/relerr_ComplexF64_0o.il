// Id := 100663920, Name := System.Double Z0.fmath::relerr(Z0.ComplexF64,Z0.ComplexF64)
// double relerr(ComplexF64 lhs, ComplexF64 rhs)
// AggressiveInlining
double relerr(ComplexF64 lhs, ComplexF64 rhs)
{
    IL_0000: ldarg.0
    IL_0001: ldfld System.Double Z0.ComplexF64::re
    IL_0006: ldarg.1
    IL_0007: ldfld System.Double Z0.ComplexF64::re
    IL_000C: call System.Double Z0.fmath::relerr(System.Double,System.Double)
    IL_0011: stloc.0
    IL_0012: ldarg.0
    IL_0013: ldfld System.Double Z0.ComplexF64::im
    IL_0018: ldarg.1
    IL_0019: ldfld System.Double Z0.ComplexF64::im
    IL_001E: call System.Double Z0.fmath::relerr(System.Double,System.Double)
    IL_0023: stloc.1
    IL_0024: ldloc.0
    IL_0025: ldloc.1
    IL_0026: bgt.s IL_002A
    IL_0028: ldloc.1
    IL_0029: ret
    IL_002A: ldloc.0
    IL_002B: ret
}
