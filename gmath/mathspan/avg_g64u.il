// Id := 100664195, Name := T Z0.mathspan::avg<T>(System.ReadOnlySpan`1<T>)
// ulong avg<ulong>(ReadOnlySpan<ulong> src)
// AggressiveInlining
ulong avg<ulong>(ReadOnlySpan<ulong> src)
{
    IL_0000: ldarg.0
    IL_0001: call T Z0.mathspan::avg_u<T>(System.ReadOnlySpan`1<T>)
    IL_0006: ret
}
