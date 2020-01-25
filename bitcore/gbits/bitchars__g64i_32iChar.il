// Id := 100663607, Name := System.Span`1<System.Char> Z0.gbits::bitchars<T>(System.Span`1<T>,System.Nullable`1<System.Int32>)
// Span<Char> bitchars<long>(Span<long> src, int maxlen)
// AggressiveInlining
Span<Char> bitchars<long>(Span<long> src, int maxlen)
{
    IL_0000: ldarg.0
    IL_0001: call System.ReadOnlySpan`1<T> Z0.SpanExtend::ReadOnly<T>(System.Span`1<T>)
    IL_0006: ldarg.1
    IL_0007: call System.Span`1<System.Char> Z0.gbits::bitchars<T>(System.ReadOnlySpan`1<T>,System.Nullable`1<System.Int32>)
    IL_000C: ret
}
