// Id := 100664811, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vconvert(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,Z0.N256,System.UInt32)
// Vector256<uint> vconvert(Vector128<ushort> src, N256 w, uint t)
// AggressiveInlining
Vector256<uint> vconvert(Vector128<ushort> src, N256 w, uint t)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector256`1<System.Int32> System.Runtime.Intrinsics.X86.Avx2::ConvertToVector256Int32(System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
    IL_0006: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> zfunc::v32u<System.Int32>(System.Runtime.Intrinsics.Vector256`1<System.Int32>)
    IL_000B: ret
}
