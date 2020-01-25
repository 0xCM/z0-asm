// Id := 100664741, Name := System.Runtime.Intrinsics.Vector256`1<System.Int64> Z0.dinx::vconvert(Z0.Block128`1<System.UInt32>&,Z0.N256,System.Int64)
// Vector256<long> vconvert(in Block128<uint> src, N256 w, long t)
// AggressiveInlining
Vector256<long> vconvert(in Block128<uint> src, N256 w, long t)
{
    IL_0000: ldarg.0
    IL_0001: call System.UInt32& Z0.Block128`1<System.UInt32>::get_Head()
    IL_0006: call System.UInt32* zfunc::constptr<System.UInt32>(System.UInt32&)
    IL_000B: call System.Runtime.Intrinsics.Vector256`1<System.Int64> System.Runtime.Intrinsics.X86.Avx2::ConvertToVector256Int64(System.UInt32*)
    IL_0010: ret
}
