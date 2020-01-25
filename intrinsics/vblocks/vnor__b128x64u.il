// Id := 100666809, Name := Z0.Block128`1<T>& modreq(System.Runtime.InteropServices.InAttribute) Z0.vblocks::vnor<T>(Z0.Block128`1<T>&,Z0.Block128`1<T>&,Z0.Block128`1<T>&)
// ref Block128<ulong> vnor<ulong>(in Block128<ulong> a, in Block128<ulong> b, in Block128<ulong> c)
// AggressiveInlining
ref Block128<ulong> vnor<ulong>(in Block128<ulong> a, in Block128<ulong> b, in Block128<ulong> c)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call Z0.N128 zfunc::get_n128()
    IL_0008: ldloca.s V_0
    IL_000A: initobj T
    IL_0010: ldloc.0
    IL_0011: call Z0.VXTypes/Nor128`1<T> Z0.VX::vnor<T>(Z0.N128,T)
    IL_0016: call Z0.Block128`1<T>& modreq(System.Runtime.InteropServices.InAttribute) Z0.vfunc::vzip<Z0.VXTypes/Nor128`1<T>,T>(Z0.Block128`1<T>&,Z0.Block128`1<T>&,Z0.Block128`1<T>&,Z0.VXTypes/Nor128`1<T>)
    IL_001B: ret
}
