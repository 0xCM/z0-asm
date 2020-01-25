// Id := 100664169, Name := System.Span`1<Z0.bit> Z0.mathspan::eq<T>(System.ReadOnlySpan`1<T>,System.ReadOnlySpan`1<T>,System.Span`1<Z0.bit>)
// Span<bit> eq<int>(ReadOnlySpan<int> l, ReadOnlySpan<int> r, Span<bit> dst)
// AggressiveInlining
Span<bit> eq<int>(ReadOnlySpan<int> l, ReadOnlySpan<int> r, Span<bit> dst)
{
    IL_0000: ldloca.s V_0
    IL_0002: initobj T
    IL_0008: ldloc.0
    IL_0009: call Z0.GXTypes/Eq`1<T> Z0.GX::eq<T>(T)
    IL_000E: ldarg.0
    IL_000F: ldarg.1
    IL_0010: ldarg.2
    IL_0011: call System.Span`1<Z0.bit> Z0.SpanFunc::apply<Z0.GXTypes/Eq`1<T>,T>(Z0.GXTypes/Eq`1<T>,System.ReadOnlySpan`1<T>,System.ReadOnlySpan`1<T>,System.Span`1<Z0.bit>)
    IL_0016: ret
}
