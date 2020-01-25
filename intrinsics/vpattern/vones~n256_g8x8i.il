// Id := 100666403, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.VPattern::vones<T>(Z0.N256,T)
// Vector256<sbyte> vones<sbyte>(N256 n, sbyte t)
// AggressiveInlining
Vector256<sbyte> vones<sbyte>(N256 n, sbyte t)
{
    IL_0000: ldloca.s V_0
    IL_0002: initobj System.Runtime.Intrinsics.Vector256`1<T>
    IL_0008: ldloc.0
    IL_0009: ldloca.s V_0
    IL_000B: initobj System.Runtime.Intrinsics.Vector256`1<T>
    IL_0011: ldloc.0
    IL_0012: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::veq<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0017: ret
}
