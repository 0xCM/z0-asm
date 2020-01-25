// Id := 100664066, Name := T Z0.gmath::xornot<T>(T,T)
// long xornot<long>(long a, long b)
// AggressiveInlining
long xornot<long>(long a, long b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call T Z0.gmath::not<T>(T)
    IL_0007: call T Z0.gmath::xor<T>(T,T)
    IL_000C: ret
}
