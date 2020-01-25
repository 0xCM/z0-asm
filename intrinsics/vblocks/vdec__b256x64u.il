// Id := 100666794, Name := Z0.Block256`1<T>& modreq(System.Runtime.InteropServices.InAttribute) Z0.vblocks::vdec<T>(Z0.Block256`1<T>&,Z0.Block256`1<T>&)
// ref Block256<ulong> vdec<ulong>(in Block256<ulong> a, in Block256<ulong> c)
// AggressiveInlining
ref Block256<ulong> vdec<ulong>(in Block256<ulong> a, in Block256<ulong> c)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call Z0.N256 zfunc::get_n256()
    IL_0007: ldloca.s V_0
    IL_0009: initobj T
    IL_000F: ldloc.0
    IL_0010: call Z0.VXTypes/Dec256`1<T> Z0.VX::vdec<T>(Z0.N256,T)
    IL_0015: call Z0.Block256`1<T>& modreq(System.Runtime.InteropServices.InAttribute) Z0.vfunc::vmap<Z0.VXTypes/Dec256`1<T>,T>(Z0.Block256`1<T>&,Z0.Block256`1<T>&,Z0.VXTypes/Dec256`1<T>)
    IL_001A: ret
}
