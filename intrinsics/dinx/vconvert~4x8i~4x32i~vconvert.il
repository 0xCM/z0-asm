// Id := 100664715, Name := System.Runtime.Intrinsics.Vector128`1<System.Int32> Z0.dinx::vconvert(Z0.Block32`1<System.SByte>&,Z0.N128,System.Int32)
// Vector128<int> vconvert(in Block32<sbyte> src, N128 w, int t)
// AggressiveInlining
Vector128<int> vconvert(in Block32<sbyte> src, N128 w, int t)
{
    IL_0000: ldarg.0
    IL_0001: call System.SByte& Z0.Block32`1<System.SByte>::get_Head()
    IL_0006: call System.SByte* zfunc::constptr<System.SByte>(System.SByte&)
    IL_000B: call System.Runtime.Intrinsics.Vector128`1<System.Int32> System.Runtime.Intrinsics.X86.Sse41::ConvertToVector128Int32(System.SByte*)
    IL_0010: ret
}
------------------------------------------------------------------------------------------------------------------------
