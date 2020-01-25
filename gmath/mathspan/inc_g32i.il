// Id := 100664165, Name := System.Span`1<T> Z0.mathspan::inc<T>(System.ReadOnlySpan`1<T>,System.Span`1<T>)
// Span<int> inc<int>(ReadOnlySpan<int> src, Span<int> dst)
// AggressiveInlining
Span<int> inc<int>(ReadOnlySpan<int> src, Span<int> dst)
{
    IL_0000: ldloca.s V_0
    IL_0002: initobj T
    IL_0008: ldloc.0
    IL_0009: call Z0.GXTypes/Inc`1<T> Z0.GX::inc<T>(T)
    IL_000E: ldarg.0
    IL_000F: ldarg.1
    IL_0010: call System.Span`1<T> Z0.SpanFunc::apply<Z0.GXTypes/Inc`1<T>,T,T>(Z0.GXTypes/Inc`1<T>,System.ReadOnlySpan`1<T>,System.Span`1<T>)
    IL_0015: ret
}
