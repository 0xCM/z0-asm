// Id := 100664158, Name := System.Span`1<T> Z0.mathspan::sub<T>(System.ReadOnlySpan`1<T>,System.ReadOnlySpan`1<T>,System.Span`1<T>)
// Span<Int16> sub<Int16>(ReadOnlySpan<Int16> l, ReadOnlySpan<Int16> r, Span<Int16> dst)
// AggressiveInlining
Span<Int16> sub<Int16>(ReadOnlySpan<Int16> l, ReadOnlySpan<Int16> r, Span<Int16> dst)
{
    IL_0000: ldloca.s V_0
    IL_0002: initobj T
    IL_0008: ldloc.0
    IL_0009: call Z0.GXTypes/Sub`1<T> Z0.GX::sub<T>(T)
    IL_000E: ldarg.0
    IL_000F: ldarg.1
    IL_0010: ldarg.2
    IL_0011: call System.Span`1<T> Z0.SpanFunc::apply<Z0.GXTypes/Sub`1<T>,T,T,T>(Z0.GXTypes/Sub`1<T>,System.ReadOnlySpan`1<T>,System.ReadOnlySpan`1<T>,System.Span`1<T>)
    IL_0016: ret
}
