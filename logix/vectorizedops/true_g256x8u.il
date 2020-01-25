// Id := 100664248, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::true<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<byte> true<byte>(Vector256<byte> x, Vector256<byte> y, Vector256<byte> z)
// AggressiveInlining
Vector256<byte> true<byte>(Vector256<byte> x, Vector256<byte> y, Vector256<byte> z)
{
    IL_0000: call Z0.N256 zfunc::get_n256()
    IL_0005: ldloca.s V_0
    IL_0007: initobj T
    IL_000D: ldloc.0
    IL_000E: call System.Runtime.Intrinsics.Vector256`1<T> Z0.VPattern::vones<T>(Z0.N256,T)
    IL_0013: ret
}
