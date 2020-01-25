// Id := 100664593, Name := System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vlt(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
// Vector256<byte> vlt(Vector256<byte> x, Vector256<byte> y)
// AggressiveInlining
Vector256<byte> vlt(Vector256<byte> x, Vector256<byte> y)
{
    IL_0000: call Z0.N256 zfunc::get_n256()
    IL_0005: ldc.i4 128
    IL_000A: call System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.CpuVector::vbroadcast<System.Byte>(Z0.N256,System.Byte)
    IL_000F: stloc.0
    IL_0010: ldarg.0
    IL_0011: ldloc.0
    IL_0012: call System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vxor(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_0017: call System.Runtime.Intrinsics.Vector256`1<System.SByte> zfunc::v8i<System.Byte>(System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_001C: ldarg.1
    IL_001D: ldloc.0
    IL_001E: call System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vxor(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_0023: call System.Runtime.Intrinsics.Vector256`1<System.SByte> zfunc::v8i<System.Byte>(System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_0028: call System.Runtime.Intrinsics.Vector256`1<System.SByte> Z0.X86Missing::CompareLessThan(System.Runtime.Intrinsics.Vector256`1<System.SByte>,System.Runtime.Intrinsics.Vector256`1<System.SByte>)
    IL_002D: call System.Runtime.Intrinsics.Vector256`1<System.Byte> zfunc::v8u<System.SByte>(System.Runtime.Intrinsics.Vector256`1<System.SByte>)
    IL_0032: ret
}
