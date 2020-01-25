// Id := 100664747, Name := Z0.Vector512`1<System.Int32> Z0.dinx::vconvert(Z0.Block128`1<System.Int16>&,Z0.N512,System.Int32)
// Vector512<int> vconvert(in Block128<Int16> src, N512 w, int t)
// AggressiveInlining
Vector512<int> vconvert(in Block128<Int16> src, N512 w, int t)
{
    IL_0000: ldarg.0
    IL_0001: call System.Int16& Z0.Block128`1<System.Int16>::get_Head()
    IL_0006: call System.Int16* zfunc::constptr<System.Int16>(System.Int16&)
    IL_000B: call System.Runtime.Intrinsics.Vector256`1<System.Int32> System.Runtime.Intrinsics.X86.Avx2::ConvertToVector256Int32(System.Int16*)
    IL_0010: ldarg.0
    IL_0011: call System.Int16& Z0.Block128`1<System.Int16>::get_Head()
    IL_0016: ldc.i4.8
    IL_0017: call System.Int16* zfunc::constptr<System.Int16>(System.Int16&,System.Int32)
    IL_001C: call System.Runtime.Intrinsics.Vector256`1<System.Int32> System.Runtime.Intrinsics.X86.Avx2::ConvertToVector256Int32(System.Int16*)
    IL_0021: newobj System.Void System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.Int32>>::.ctor(System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.Int32>)
    IL_0026: call Z0.Vector512`1<System.Int32> Z0.Vector512`1<System.Int32>::op_Implicit(System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.Int32>>)
    IL_002B: ret
}
