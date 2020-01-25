// Id := 100666831, Name := Z0.Block128`1<T>& modreq(System.Runtime.InteropServices.InAttribute) Z0.vblocks::vmax<T>(Z0.Block128`1<T>&,Z0.Block128`1<T>&,Z0.Block128`1<T>&)
// ref Block128<long> vmax<long>(in Block128<long> a, in Block128<long> b, in Block128<long> c)
// AggressiveInlining
ref Block128<long> vmax<long>(in Block128<long> a, in Block128<long> b, in Block128<long> c)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call Z0.N128 zfunc::get_n128()
    IL_0008: ldloca.s V_0
    IL_000A: initobj T
    IL_0010: ldloc.0
    IL_0011: call Z0.VXTypes/Max128`1<T> Z0.VX::vmax<T>(Z0.N128,T)
    IL_0016: call Z0.Block128`1<T>& modreq(System.Runtime.InteropServices.InAttribute) Z0.vfunc::vzip<Z0.VXTypes/Max128`1<T>,T>(Z0.Block128`1<T>&,Z0.Block128`1<T>&,Z0.Block128`1<T>&,Z0.VXTypes/Max128`1<T>)
    IL_001B: ret
}
