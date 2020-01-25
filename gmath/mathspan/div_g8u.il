// Id := 100664160, Name := System.Span`1<T> Z0.mathspan::div<T>(System.ReadOnlySpan`1<T>,System.ReadOnlySpan`1<T>,System.Span`1<T>)
// Span<byte> div<byte>(ReadOnlySpan<byte> l, ReadOnlySpan<byte> r, Span<byte> dst)
// AggressiveInlining
Span<byte> div<byte>(ReadOnlySpan<byte> l, ReadOnlySpan<byte> r, Span<byte> dst)
{
    IL_0000: ldloca.s V_0
    IL_0002: initobj T
    IL_0008: ldloc.0
    IL_0009: call Z0.GXTypes/Div`1<T> Z0.GX::div<T>(T)
    IL_000E: ldarg.0
    IL_000F: ldarg.1
    IL_0010: ldarg.2
    IL_0011: call System.Span`1<T> Z0.SpanFunc::apply<Z0.GXTypes/Div`1<T>,T,T,T>(Z0.GXTypes/Div`1<T>,System.ReadOnlySpan`1<T>,System.ReadOnlySpan`1<T>,System.Span`1<T>)
    IL_0016: ret
}
