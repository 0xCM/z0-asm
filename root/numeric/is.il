// System.Boolean Z0.Numeric::is(Z0.NumericKind,Z0.NumericKind)
// bool is(NumericKind:uint k, NumericKind:uint match)
// AggressiveInlining
bool is(NumericKind:uint k, NumericKind:uint match)
{
    IL_0000: ldarg.0
    IL_0001: call System.Collections.Generic.ISet`1<Z0.NumericKind> Z0.Numeric::kindset(Z0.NumericKind)
    IL_0006: ldarg.1
    IL_0007: callvirt System.Boolean System.Collections.Generic.ICollection`1<Z0.NumericKind>::Contains(Z0.NumericKind)
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
