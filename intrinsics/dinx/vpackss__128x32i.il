// Id := 100664876, Name := System.Runtime.Intrinsics.Vector128`1<System.Int16> Z0.dinx::vpackss(System.Runtime.Intrinsics.Vector128`1<System.Int32>,System.Runtime.Intrinsics.Vector128`1<System.Int32>)
// Vector128<Int16> vpackss(Vector128<int> x, Vector128<int> y)
// AggressiveInlining
Vector128<Int16> vpackss(Vector128<int> x, Vector128<int> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.Int16> System.Runtime.Intrinsics.X86.Sse2::PackSignedSaturate(System.Runtime.Intrinsics.Vector128`1<System.Int32>,System.Runtime.Intrinsics.Vector128`1<System.Int32>)
    IL_0007: ret
}
