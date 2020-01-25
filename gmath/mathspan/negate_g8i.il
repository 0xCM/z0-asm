// Id := 100664164, Name := System.Span`1<T> Z0.mathspan::negate<T>(System.ReadOnlySpan`1<T>,System.Span`1<T>)
// Span<sbyte> negate<sbyte>(ReadOnlySpan<sbyte> src, Span<sbyte> dst)
// AggressiveInlining
Span<sbyte> negate<sbyte>(ReadOnlySpan<sbyte> src, Span<sbyte> dst)
{
    IL_0000: ldloca.s V_0
    IL_0002: initobj T
    IL_0008: ldloc.0
    IL_0009: call Z0.GXTypes/Negate`1<T> Z0.GX::negate<T>(T)
    IL_000E: ldarg.0
    IL_000F: ldarg.1
    IL_0010: call System.Span`1<T> Z0.SpanFunc::apply<Z0.GXTypes/Negate`1<T>,T,T>(Z0.GXTypes/Negate`1<T>,System.ReadOnlySpan`1<T>,System.Span`1<T>)
    IL_0015: ret
}
