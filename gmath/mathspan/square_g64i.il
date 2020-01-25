// Id := 100664167, Name := System.Span`1<T> Z0.mathspan::square<T>(System.ReadOnlySpan`1<T>,System.Span`1<T>)
// Span<long> square<long>(ReadOnlySpan<long> src, Span<long> dst)
// AggressiveInlining
Span<long> square<long>(ReadOnlySpan<long> src, Span<long> dst)
{
    IL_0000: ldloca.s V_0
    IL_0002: initobj T
    IL_0008: ldloc.0
    IL_0009: call Z0.GXTypes/Square`1<T> Z0.GX::square<T>(T)
    IL_000E: ldarg.0
    IL_000F: ldarg.1
    IL_0010: call System.Span`1<T> Z0.SpanFunc::apply<Z0.GXTypes/Square`1<T>,T,T>(Z0.GXTypes/Square`1<T>,System.ReadOnlySpan`1<T>,System.Span`1<T>)
    IL_0015: ret
}
