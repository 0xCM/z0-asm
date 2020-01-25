// Id := 100666404, Name := Z0.Vector512`1<T> Z0.VPattern::vones<T>(Z0.N512,T)
// Vector512<ushort> vones<ushort>(N512 n, ushort t)
// AggressiveInlining
Vector512<ushort> vones<ushort>(N512 n, ushort t)
{
    IL_0000: ldloca.s V_0
    IL_0002: dup
    IL_0003: initobj Z0.Vector512`1<T>
    IL_0009: ldloca.s V_1
    IL_000B: dup
    IL_000C: initobj Z0.Vector512`1<T>
    IL_0012: call Z0.Vector512`1<T> Z0.ginx::veq<T>(Z0.Vector512`1<T>&,Z0.Vector512`1<T>&)
    IL_0017: ret
}
