// Id := 100664585, Name := System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vlt(System.Runtime.Intrinsics.Vector128`1<System.Byte>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
// Vector128<byte> vlt(Vector128<byte> x, Vector128<byte> y)
// AggressiveInlining
Vector128<byte> vlt(Vector128<byte> x, Vector128<byte> y)
{
    IL_0000: call Z0.N128 zfunc::get_n128()
    IL_0005: ldc.i4 128
    IL_000A: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.CpuVector::vbroadcast<System.Byte>(Z0.N128,System.Byte)
    IL_000F: stloc.0
    IL_0010: ldarg.0
    IL_0011: ldloc.0
    IL_0012: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vxor(System.Runtime.Intrinsics.Vector128`1<System.Byte>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0017: call System.Runtime.Intrinsics.Vector128`1<System.SByte> System.Runtime.Intrinsics.Vector128::AsSByte<System.Byte>(System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_001C: stloc.1
    IL_001D: ldarg.1
    IL_001E: ldloc.0
    IL_001F: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vxor(System.Runtime.Intrinsics.Vector128`1<System.Byte>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0024: call System.Runtime.Intrinsics.Vector128`1<System.SByte> System.Runtime.Intrinsics.Vector128::AsSByte<System.Byte>(System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0029: stloc.2
    IL_002A: ldloc.1
    IL_002B: ldloc.2
    IL_002C: call System.Runtime.Intrinsics.Vector128`1<System.SByte> System.Runtime.Intrinsics.X86.Sse2::CompareLessThan(System.Runtime.Intrinsics.Vector128`1<System.SByte>,System.Runtime.Intrinsics.Vector128`1<System.SByte>)
    IL_0031: call System.Runtime.Intrinsics.Vector128`1<System.Byte> System.Runtime.Intrinsics.Vector128::AsByte<System.SByte>(System.Runtime.Intrinsics.Vector128`1<System.SByte>)
    IL_0036: ret
}
