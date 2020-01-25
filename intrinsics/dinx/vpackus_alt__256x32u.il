// Id := 100664893, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vpackus_alt(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
// Vector256<ushort> vpackus_alt(Vector256<uint> x, Vector256<uint> y)
// AggressiveInlining
Vector256<ushort> vpackus_alt(Vector256<uint> x, Vector256<uint> y)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N256 zfunc::get_n256()
    IL_0006: call Z0.N32 zfunc::get_n32()
    IL_000B: call Z0.N16 zfunc::get_n16()
    IL_0010: call System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.VData::packusLo(Z0.N256,Z0.N32,Z0.N16)
    IL_0015: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vshuf16x8(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_001A: stloc.0
    IL_001B: ldarg.1
    IL_001C: call Z0.N256 zfunc::get_n256()
    IL_0021: call Z0.N32 zfunc::get_n32()
    IL_0026: call Z0.N16 zfunc::get_n16()
    IL_002B: call System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.VData::packusHi(Z0.N256,Z0.N32,Z0.N16)
    IL_0030: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vshuf16x8(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_0035: stloc.1
    IL_0036: ldloc.0
    IL_0037: ldloc.1
    IL_0038: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vor(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_003D: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> zfunc::v16u<System.UInt32>(System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_0042: ret
}
