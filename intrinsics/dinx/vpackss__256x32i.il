// Id := 100664880, Name := System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.dinx::vpackss(System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.Int32>)
// Vector256<Int16> vpackss(Vector256<int> x, Vector256<int> y)
// AggressiveInlining
Vector256<Int16> vpackss(Vector256<int> x, Vector256<int> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.Int16> System.Runtime.Intrinsics.X86.Avx2::PackSignedSaturate(System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.Int32>)
    IL_0007: ret
}
