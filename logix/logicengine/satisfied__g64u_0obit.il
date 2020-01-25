// Id := 100663468, Name := Z0.bit Z0.Logix.LogicEngine::satisfied<T>(Z0.Logix.ComparisonExpr`1<T>,T,T)
// bit satisfied<ulong>(ComparisonExpr<ulong> expr, ulong a, ulong b)
// IL
bit satisfied<ulong>(ComparisonExpr<ulong> expr, ulong a, ulong b)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.2
    IL_0002: newarr T
    IL_0007: dup
    IL_0008: ldc.i4.0
    IL_0009: ldarg.1
    IL_000A: stelem T
    IL_000F: dup
    IL_0010: ldc.i4.1
    IL_0011: ldarg.2
    IL_0012: stelem T
    IL_0017: callvirt System.Void Z0.Logix.ComparisonExpr`1<T>::SetVars(T[])
    IL_001C: ldarg.0
    IL_001D: call Z0.Logix.LiteralExpr`1<T> Z0.Logix.LogicEngine::eval<T>(Z0.Logix.IComparisonExpr`1<T>)
    IL_0022: callvirt T Z0.Logix.LiteralExpr`1<T>::get_Value()
    IL_0027: ldloca.s V_0
    IL_0029: initobj T
    IL_002F: ldloc.0
    IL_0030: call T Z0.gmath::maxval<T>(T)
    IL_0035: call Z0.bit Z0.gmath::eq<T>(T,T)
    IL_003A: ret
}
