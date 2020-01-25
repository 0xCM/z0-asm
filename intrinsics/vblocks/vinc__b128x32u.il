// Id := 100666795, Name := Z0.Block128`1<T>& modreq(System.Runtime.InteropServices.InAttribute) Z0.vblocks::vinc<T>(Z0.Block128`1<T>&,Z0.Block128`1<T>&)
// ref Block128<uint> vinc<uint>(in Block128<uint> a, in Block128<uint> c)
// AggressiveInlining
ref Block128<uint> vinc<uint>(in Block128<uint> a, in Block128<uint> c)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call Z0.N128 zfunc::get_n128()
    IL_0007: ldloca.s V_0
    IL_0009: initobj T
    IL_000F: ldloc.0
    IL_0010: call Z0.VXTypes/Inc128`1<T> Z0.VX::vinc<T>(Z0.N128,T)
    IL_0015: call Z0.Block128`1<T>& modreq(System.Runtime.InteropServices.InAttribute) Z0.vfunc::vmap<Z0.VXTypes/Inc128`1<T>,T>(Z0.Block128`1<T>&,Z0.Block128`1<T>&,Z0.VXTypes/Inc128`1<T>)
    IL_001A: ret
}
