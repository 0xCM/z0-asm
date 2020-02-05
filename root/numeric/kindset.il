// System.Collections.Generic.ISet`1<Z0.NumericKind> Z0.Numeric::kindset(Z0.NumericKind)
// ISet<NumericKind:uint> kindset(NumericKind:uint k)
// AggressiveInlining
ISet<NumericKind:uint> kindset(NumericKind:uint k)
{
    IL_0000: ldarg.0
    IL_0001: call System.Collections.Generic.HashSet`1<Z0.NumericKind> Z0.Numeric::kindsetAcquire(Z0.NumericKind)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
