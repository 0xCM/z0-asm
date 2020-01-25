// Id := 100664177, Name := System.Span`1<T> Z0.mathspan::and<T>(System.ReadOnlySpan`1<T>,System.ReadOnlySpan`1<T>,System.Span`1<T>)
// Span<ulong> and<ulong>(ReadOnlySpan<ulong> l, ReadOnlySpan<ulong> r, Span<ulong> dst)
// AggressiveInlining
Span<ulong> and<ulong>(ReadOnlySpan<ulong> l, ReadOnlySpan<ulong> r, Span<ulong> dst)
{
    IL_0000: ldloca.s V_0
    IL_0002: initobj T
    IL_0008: ldloc.0
    IL_0009: call Z0.GXTypes/And`1<T> Z0.GX::and<T>(T)
    IL_000E: ldarg.0
    IL_000F: ldarg.1
    IL_0010: ldarg.2
    IL_0011: call System.Span`1<T> Z0.SpanFunc::apply<Z0.GXTypes/And`1<T>,T,T,T>(Z0.GXTypes/And`1<T>,System.ReadOnlySpan`1<T>,System.ReadOnlySpan`1<T>,System.Span`1<T>)
    IL_0016: ret
}
