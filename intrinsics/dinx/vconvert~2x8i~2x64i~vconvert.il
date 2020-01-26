// Id := 100664714, Name := System.Runtime.Intrinsics.Vector128`1<System.Int64> Z0.dinx::vconvert(Z0.Block16`1<System.SByte>&,Z0.N128,System.Int64)
// Vector128<long> vconvert(in Block16<sbyte> src, N128 w, long t)
// AggressiveInlining
Vector128<long> vconvert(in Block16<sbyte> src, N128 w, long t)
{
    IL_0000: ldarg.0
    IL_0001: call System.SByte& Z0.Block16`1<System.SByte>::get_Head()
    IL_0006: call System.SByte* zfunc::constptr<System.SByte>(System.SByte&)
    IL_000B: call System.Runtime.Intrinsics.Vector128`1<System.Int64> System.Runtime.Intrinsics.X86.Sse41::ConvertToVector128Int64(System.SByte*)
    IL_0010: ret
}
------------------------------------------------------------------------------------------------------------------------
