// Id := 100663470, Name := Z0.bit Z0.Logix.LogicEngine::satisfied<T>(Z0.Logix.ComparisonExpr`1<System.Runtime.Intrinsics.Vector256`1<T>>,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// bit satisfied<ulong>(ComparisonExpr<Vector256<ulong>> expr, Vector256<ulong> a, Vector256<ulong> b)
// IL
bit satisfied<ulong>(ComparisonExpr<Vector256<ulong>> expr, Vector256<ulong> a, Vector256<ulong> b)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.2
    IL_0002: newarr System.Runtime.Intrinsics.Vector256`1<T>
    IL_0007: dup
    IL_0008: ldc.i4.0
    IL_0009: ldarg.1
    IL_000A: stelem System.Runtime.Intrinsics.Vector256`1<T>
    IL_000F: dup
    IL_0010: ldc.i4.1
    IL_0011: ldarg.2
    IL_0012: stelem System.Runtime.Intrinsics.Vector256`1<T>
    IL_0017: callvirt System.Void Z0.Logix.ComparisonExpr`1<System.Runtime.Intrinsics.Vector256`1<T>>::SetVars(System.Runtime.Intrinsics.Vector256`1<T>[])
    IL_001C: ldarg.0
    IL_001D: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector256`1<T>> Z0.Logix.LogicEngine::eval<T>(Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector256`1<T>>)
    IL_0022: stloc.0
    IL_0023: ldloc.0
    IL_0024: callvirt System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector256`1<T>>::get_Value()
    IL_0029: call Z0.N256 zfunc::get_n256()
    IL_002E: ldloca.s V_1
    IL_0030: initobj T
    IL_0036: ldloc.1
    IL_0037: call System.Runtime.Intrinsics.Vector256`1<T> Z0.VPattern::vones<T>(Z0.N256,T)
    IL_003C: call Z0.bit Z0.ginx::vtestc<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0041: ret
}
