// Id := 100666842, Name := System.Span`1<Z0.bit> Z0.vblocks::vnonz<T>(Z0.Block256`1<T>&,System.Span`1<Z0.bit>)
// Span<bit> vnonz<Int16>(in Block256<Int16> a, Span<bit> dst)
// AggressiveInlining
Span<bit> vnonz<Int16>(in Block256<Int16> a, Span<bit> dst)
{
    IL_0000: call Z0.N256 zfunc::get_n256()
    IL_0005: ldloca.s V_3
    IL_0007: initobj T
    IL_000D: ldloc.3
    IL_000E: call Z0.VXTypes/NonZ256`1<T> Z0.VX::vnonz<T>(Z0.N256,T)
    IL_0013: stloc.0
    IL_0014: ldarg.0
    IL_0015: call System.Int32 Z0.Block256`1<T>::get_BlockCount()
    IL_001A: stloc.1
    IL_001B: ldarg.1
    IL_001C: call Z0.bit& zfunc::head<Z0.bit>(System.Span`1<Z0.bit>)
    IL_0021: stloc.2
    IL_0022: ldc.i4.0
    IL_0023: stloc.s V_4
    IL_0025: br.s IL_0049
    IL_0027: ldloc.2
    IL_0028: ldloc.s V_4
    IL_002A: call Z0.bit& zfunc::seek<Z0.bit>(Z0.bit&,System.Int32)
    IL_002F: ldloca.s V_0
    IL_0031: ldarg.0
    IL_0032: ldloc.s V_4
    IL_0034: call System.Runtime.Intrinsics.Vector256`1<T> Z0.CpuVecX::LoadVector<T>(Z0.Block256`1<T>&,System.Int32)
    IL_0039: call Z0.bit Z0.VXTypes/NonZ256`1<T>::Invoke(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_003E: stobj Z0.bit
    IL_0043: ldloc.s V_4
    IL_0045: ldc.i4.1
    IL_0046: add
    IL_0047: stloc.s V_4
    IL_0049: ldloc.s V_4
    IL_004B: ldloc.1
    IL_004C: blt.s IL_0027
    IL_004E: ldarg.1
    IL_004F: ret
}
