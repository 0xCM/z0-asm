// Id := 100666816, Name := Z0.Block256`1<T>& modreq(System.Runtime.InteropServices.InAttribute) Z0.vblocks::vselect<T>(Z0.Block256`1<T>&,Z0.Block256`1<T>&,Z0.Block256`1<T>&,Z0.Block256`1<T>&)
// ref Block256<long> vselect<long>(in Block256<long> a, in Block256<long> b, in Block256<long> c, in Block256<long> dst)
// AggressiveInlining
ref Block256<long> vselect<long>(in Block256<long> a, in Block256<long> b, in Block256<long> c, in Block256<long> dst)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: ldarg.3
    IL_0004: call Z0.N256 zfunc::get_n256()
    IL_0009: ldloca.s V_0
    IL_000B: initobj T
    IL_0011: ldloc.0
    IL_0012: call Z0.VXTypes/Select256`1<T> Z0.VX::vselect<T>(Z0.N256,T)
    IL_0017: call Z0.Block256`1<T>& modreq(System.Runtime.InteropServices.InAttribute) Z0.vfunc::vzip<Z0.VXTypes/Select256`1<T>,T>(Z0.Block256`1<T>&,Z0.Block256`1<T>&,Z0.Block256`1<T>&,Z0.Block256`1<T>&,Z0.VXTypes/Select256`1<T>)
    IL_001C: ret
}
