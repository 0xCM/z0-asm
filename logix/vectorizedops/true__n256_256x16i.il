// Id := 100664242, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::true<T>(Z0.N256)
// Vector256<Int16> true<Int16>(N256 w)
// AggressiveInlining
Vector256<Int16> true<Int16>(N256 w)
{
    IL_0000: call Z0.N256 zfunc::get_n256()
    IL_0005: ldloca.s V_0
    IL_0007: initobj T
    IL_000D: ldloc.0
    IL_000E: call System.Runtime.Intrinsics.Vector256`1<T> Z0.VPattern::vones<T>(Z0.N256,T)
    IL_0013: ret
}
