// Id := 100666838, Name := Z0.Block256`1<T>& modreq(System.Runtime.InteropServices.InAttribute) Z0.vblocks::vlt<T>(Z0.Block256`1<T>&,Z0.Block256`1<T>&,Z0.Block256`1<T>&)
// ref Block256<uint> vlt<uint>(in Block256<uint> a, in Block256<uint> b, in Block256<uint> c)
// AggressiveInlining
ref Block256<uint> vlt<uint>(in Block256<uint> a, in Block256<uint> b, in Block256<uint> c)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call Z0.N256 zfunc::get_n256()
    IL_0008: ldloca.s V_0
    IL_000A: initobj T
    IL_0010: ldloc.0
    IL_0011: call Z0.VXTypes/Lt256`1<T> Z0.VX::vlt<T>(Z0.N256,T)
    IL_0016: call Z0.Block256`1<T>& modreq(System.Runtime.InteropServices.InAttribute) Z0.vfunc::vzip<Z0.VXTypes/Lt256`1<T>,T>(Z0.Block256`1<T>&,Z0.Block256`1<T>&,Z0.Block256`1<T>&,Z0.VXTypes/Lt256`1<T>)
    IL_001B: ret
}
