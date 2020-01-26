// Id := 100664743, Name := System.Runtime.Intrinsics.Vector128`1<System.Int64> Z0.dinx::vconvert(Z0.Block64`1<System.UInt32>&,Z0.N128,System.UInt64)
// Vector128<long> vconvert(in Block64<uint> src, N128 w, ulong t)
// AggressiveInlining
Vector128<long> vconvert(in Block64<uint> src, N128 w, ulong t)
{
    IL_0000: ldarg.0
    IL_0001: call System.UInt32& Z0.Block64`1<System.UInt32>::get_Head()
    IL_0006: call System.UInt32* zfunc::constptr<System.UInt32>(System.UInt32&)
    IL_000B: call System.Runtime.Intrinsics.Vector128`1<System.Int64> System.Runtime.Intrinsics.X86.Sse41::ConvertToVector128Int64(System.UInt32*)
    IL_0010: ret
}
------------------------------------------------------------------------------------------------------------------------
