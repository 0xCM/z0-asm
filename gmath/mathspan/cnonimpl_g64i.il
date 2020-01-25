// Id := 100664186, Name := System.Span`1<T> Z0.mathspan::cnonimpl<T>(System.ReadOnlySpan`1<T>,System.ReadOnlySpan`1<T>,System.Span`1<T>)
// Span<long> cnonimpl<long>(ReadOnlySpan<long> l, ReadOnlySpan<long> r, Span<long> dst)
// AggressiveInlining
Span<long> cnonimpl<long>(ReadOnlySpan<long> l, ReadOnlySpan<long> r, Span<long> dst)
{
    IL_0000: ldloca.s V_0
    IL_0002: initobj T
    IL_0008: ldloc.0
    IL_0009: call Z0.GXTypes/CNonImpl`1<T> Z0.GX::cnonimpl<T>(T)
    IL_000E: ldarg.0
    IL_000F: ldarg.1
    IL_0010: ldarg.2
    IL_0011: call System.Span`1<T> Z0.SpanFunc::apply<Z0.GXTypes/CNonImpl`1<T>,T,T,T>(Z0.GXTypes/CNonImpl`1<T>,System.ReadOnlySpan`1<T>,System.ReadOnlySpan`1<T>,System.Span`1<T>)
    IL_0016: ret
}
