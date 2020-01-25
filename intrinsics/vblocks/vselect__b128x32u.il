// Id := 100666815, Name := Z0.Block128`1<T>& modreq(System.Runtime.InteropServices.InAttribute) Z0.vblocks::vselect<T>(Z0.Block128`1<T>&,Z0.Block128`1<T>&,Z0.Block128`1<T>&,Z0.Block128`1<T>&)
// ref Block128<uint> vselect<uint>(in Block128<uint> a, in Block128<uint> b, in Block128<uint> c, in Block128<uint> dst)
// AggressiveInlining
ref Block128<uint> vselect<uint>(in Block128<uint> a, in Block128<uint> b, in Block128<uint> c, in Block128<uint> dst)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: ldarg.3
    IL_0004: call Z0.N128 zfunc::get_n128()
    IL_0009: ldloca.s V_0
    IL_000B: initobj T
    IL_0011: ldloc.0
    IL_0012: call Z0.VXTypes/Select128`1<T> Z0.VX::vselect<T>(Z0.N128,T)
    IL_0017: call Z0.Block128`1<T>& modreq(System.Runtime.InteropServices.InAttribute) Z0.vfunc::vzip<Z0.VXTypes/Select128`1<T>,T>(Z0.Block128`1<T>&,Z0.Block128`1<T>&,Z0.Block128`1<T>&,Z0.Block128`1<T>&,Z0.VXTypes/Select128`1<T>)
    IL_001C: ret
}
