// Id := 100664744, Name := System.Runtime.Intrinsics.Vector128`1<System.Int64> Z0.dinx::vconvert(Z0.Block64`1<System.Int32>&,Z0.N128,System.Int64)
// Vector128<long> vconvert(in Block64<int> src, N128 w, long t)
// AggressiveInlining
Vector128<long> vconvert(in Block64<int> src, N128 w, long t)
{
    IL_0000: ldarg.0
    IL_0001: call System.Int32& Z0.Block64`1<System.Int32>::get_Head()
    IL_0006: call System.Int32* zfunc::constptr<System.Int32>(System.Int32&)
    IL_000B: call System.Runtime.Intrinsics.Vector128`1<System.Int64> System.Runtime.Intrinsics.X86.Sse41::ConvertToVector128Int64(System.Int32*)
    IL_0010: ret
}
