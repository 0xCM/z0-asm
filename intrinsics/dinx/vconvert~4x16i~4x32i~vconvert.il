// Id := 100664733, Name := System.Runtime.Intrinsics.Vector128`1<System.Int32> Z0.dinx::vconvert(Z0.Block64`1<System.Int16>&,Z0.N128,System.Int32)
// Vector128<int> vconvert(in Block64<short> src, N128 w, int t)
// AggressiveInlining
Vector128<int> vconvert(in Block64<short> src, N128 w, int t)
{
    IL_0000: ldarg.0
    IL_0001: call System.Int16& Z0.Block64`1<System.Int16>::get_Head()
    IL_0006: call System.Int16* zfunc::constptr<System.Int16>(System.Int16&)
    IL_000B: call System.Runtime.Intrinsics.Vector128`1<System.Int32> System.Runtime.Intrinsics.X86.Sse41::ConvertToVector128Int32(System.Int16*)
    IL_0010: ret
}
------------------------------------------------------------------------------------------------------------------------
