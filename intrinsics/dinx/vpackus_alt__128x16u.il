// Id := 100664884, Name := System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vpackus_alt(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
// Vector128<byte> vpackus_alt(Vector128<ushort> x, Vector128<ushort> y)
// AggressiveInlining
Vector128<byte> vpackus_alt(Vector128<ushort> x, Vector128<ushort> y)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N128 zfunc::get_n128()
    IL_0006: call Z0.N16 zfunc::get_n16()
    IL_000B: call Z0.N8 zfunc::get_n8()
    IL_0010: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.VData::packusLo(Z0.N128,Z0.N16,Z0.N8)
    IL_0015: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vshuf16x8(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_001A: ldarg.1
    IL_001B: call Z0.N128 zfunc::get_n128()
    IL_0020: call Z0.N16 zfunc::get_n16()
    IL_0025: call Z0.N8 zfunc::get_n8()
    IL_002A: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.VData::packusHi(Z0.N128,Z0.N16,Z0.N8)
    IL_002F: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vshuf16x8(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0034: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vor(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
    IL_0039: call System.Runtime.Intrinsics.Vector128`1<System.Byte> zfunc::v8u<System.UInt16>(System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
    IL_003E: ret
}
