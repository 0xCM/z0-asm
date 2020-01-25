// Id := 100663919, Name := System.Single Z0.fmath::relerr(Z0.ComplexF32,Z0.ComplexF32)
// float relerr(ComplexF32 lhs, ComplexF32 rhs)
// AggressiveInlining
float relerr(ComplexF32 lhs, ComplexF32 rhs)
{
    IL_0000: ldarg.0
    IL_0001: ldfld System.Single Z0.ComplexF32::re
    IL_0006: ldarg.1
    IL_0007: ldfld System.Single Z0.ComplexF32::re
    IL_000C: call System.Single Z0.fmath::relerr(System.Single,System.Single)
    IL_0011: stloc.0
    IL_0012: ldarg.0
    IL_0013: ldfld System.Single Z0.ComplexF32::im
    IL_0018: ldarg.1
    IL_0019: ldfld System.Single Z0.ComplexF32::im
    IL_001E: call System.Single Z0.fmath::relerr(System.Single,System.Single)
    IL_0023: stloc.1
    IL_0024: ldloc.0
    IL_0025: ldloc.1
    IL_0026: bgt.s IL_002A
    IL_0028: ldloc.1
    IL_0029: ret
    IL_002A: ldloc.0
    IL_002B: ret
}
