// Id := 100663457, Name := System.Runtime.Intrinsics.Vector256`1<System.Int32> Z0.dinx::vabs(System.Runtime.Intrinsics.Vector256`1<System.Int32>)
// Vector256<int> vabs(Vector256<int> src)
// AggressiveInlining
Vector256<int> vabs(Vector256<int> src)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> System.Runtime.Intrinsics.X86.Avx2::Abs(System.Runtime.Intrinsics.Vector256`1<System.Int32>)
    IL_0006: call System.Runtime.Intrinsics.Vector256`1<System.Int32> zfunc::v32i<System.UInt32>(System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_000B: ret
}
