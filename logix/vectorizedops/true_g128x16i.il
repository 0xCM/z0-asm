// Id := 100664180, Name := System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::true<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector128<Int16> true<Int16>(Vector128<Int16> x, Vector128<Int16> y)
// AggressiveInlining
Vector128<Int16> true<Int16>(Vector128<Int16> x, Vector128<Int16> y)
{
    IL_0000: call Z0.N128 zfunc::get_n128()
    IL_0005: ldloca.s V_0
    IL_0007: initobj T
    IL_000D: ldloc.0
    IL_000E: call System.Runtime.Intrinsics.Vector128`1<T> Z0.VPattern::vones<T>(Z0.N128,T)
    IL_0013: ret
}
