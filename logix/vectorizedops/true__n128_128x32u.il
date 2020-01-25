// Id := 100664174, Name := System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::true<T>(Z0.N128)
// Vector128<uint> true<uint>(N128 w)
// AggressiveInlining
Vector128<uint> true<uint>(N128 w)
{
    IL_0000: call Z0.N128 zfunc::get_n128()
    IL_0005: ldloca.s V_0
    IL_0007: initobj T
    IL_000D: ldloc.0
    IL_000E: call System.Runtime.Intrinsics.Vector128`1<T> Z0.VPattern::vones<T>(Z0.N128,T)
    IL_0013: ret
}
