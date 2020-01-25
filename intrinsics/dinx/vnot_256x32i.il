// Id := 100664143, Name := System.Runtime.Intrinsics.Vector256`1<System.Int32> Z0.dinx::vnot(System.Runtime.Intrinsics.Vector256`1<System.Int32>)
// Vector256<int> vnot(Vector256<int> x)
// AggressiveInlining
Vector256<int> vnot(Vector256<int> x)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.0
    IL_0002: ldarg.0
    IL_0003: call System.Runtime.Intrinsics.Vector256`1<System.Int32> System.Runtime.Intrinsics.X86.Avx2::CompareEqual(System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.Int32>)
    IL_0008: call System.Runtime.Intrinsics.Vector256`1<System.Int32> System.Runtime.Intrinsics.X86.Avx2::Xor(System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.Int32>)
    IL_000D: ret
}
