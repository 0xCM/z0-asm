// Id := 100664902, Name := System.Runtime.Intrinsics.Vector128`1<System.Int16> Z0.dinx::vgather(Z0.N128,System.Int16&,System.Runtime.Intrinsics.Vector128`1<System.Int16>)
// Vector128<Int16> vgather(N128 w, in Int16 src, Vector128<Int16> vidx)
// AggressiveInlining
Vector128<Int16> vgather(N128 w, in Int16 src, Vector128<Int16> vidx)
{
    IL_0000: ldarg.1
    IL_0001: call System.UInt32& Z0.AsIn::uint32<System.Int16>(System.Int16&)
    IL_0006: call System.UInt32* zfunc::constptr<System.UInt32>(System.UInt32&)
    IL_000B: ldarg.2
    IL_000C: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> zfunc::v16u<System.Int16>(System.Runtime.Intrinsics.Vector128`1<System.Int16>)
    IL_0011: call Z0.N256 zfunc::get_n256()
    IL_0016: ldc.i4.0
    IL_0017: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vinflate(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,Z0.N256,System.UInt32)
    IL_001C: call System.Runtime.Intrinsics.Vector256`1<System.Int32> zfunc::v32i<System.UInt32>(System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_0021: ldc.i4.2
    IL_0022: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> System.Runtime.Intrinsics.X86.Avx2::GatherVector256(System.UInt32*,System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Byte)
    IL_0027: call Z0.N128 zfunc::get_n128()
    IL_002C: ldc.i4.0
    IL_002D: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vcompact(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,Z0.N128,System.UInt16)
    IL_0032: call System.Runtime.Intrinsics.Vector128`1<System.Int16> zfunc::v16i<System.UInt16>(System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
    IL_0037: ret
}
