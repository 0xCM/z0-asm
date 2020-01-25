// Id := 100664161, Name := System.Span`1<T> Z0.mathspan::mod<T>(System.ReadOnlySpan`1<T>,System.ReadOnlySpan`1<T>,System.Span`1<T>)
// Span<int> mod<int>(ReadOnlySpan<int> l, ReadOnlySpan<int> r, Span<int> dst)
// AggressiveInlining
Span<int> mod<int>(ReadOnlySpan<int> l, ReadOnlySpan<int> r, Span<int> dst)
{
    IL_0000: ldloca.s V_0
    IL_0002: initobj T
    IL_0008: ldloc.0
    IL_0009: call Z0.GXTypes/ModOp`1<T> Z0.GX::mod<T>(T)
    IL_000E: ldarg.0
    IL_000F: ldarg.1
    IL_0010: ldarg.2
    IL_0011: call System.Span`1<T> Z0.SpanFunc::apply<Z0.GXTypes/ModOp`1<T>,T,T,T>(Z0.GXTypes/ModOp`1<T>,System.ReadOnlySpan`1<T>,System.ReadOnlySpan`1<T>,System.Span`1<T>)
    IL_0016: ret
}
