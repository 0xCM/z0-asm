// Id := 100666798, Name := Z0.Block256`1<T>& modreq(System.Runtime.InteropServices.InAttribute) Z0.vblocks::vnegate<T>(Z0.Block256`1<T>&,Z0.Block256`1<T>&)
// ref Block256<int> vnegate<int>(in Block256<int> a, in Block256<int> c)
// AggressiveInlining
ref Block256<int> vnegate<int>(in Block256<int> a, in Block256<int> c)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call Z0.N256 zfunc::get_n256()
    IL_0007: ldloca.s V_0
    IL_0009: initobj T
    IL_000F: ldloc.0
    IL_0010: call Z0.VXTypes/Negate256`1<T> Z0.VX::vnegate<T>(Z0.N256,T)
    IL_0015: call Z0.Block256`1<T>& modreq(System.Runtime.InteropServices.InAttribute) Z0.vfunc::vmap<Z0.VXTypes/Negate256`1<T>,T>(Z0.Block256`1<T>&,Z0.Block256`1<T>&,Z0.VXTypes/Negate256`1<T>)
    IL_001A: ret
}
