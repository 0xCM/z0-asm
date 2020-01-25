// Id := 100664145, Name := System.Runtime.Intrinsics.Vector256`1<System.Int64> Z0.dinx::vnot(System.Runtime.Intrinsics.Vector256`1<System.Int64>)
// Vector256<long> vnot(Vector256<long> x)
// AggressiveInlining
Vector256<long> vnot(Vector256<long> x)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.0
    IL_0002: ldarg.0
    IL_0003: call System.Runtime.Intrinsics.Vector256`1<System.Int64> System.Runtime.Intrinsics.X86.Avx2::CompareEqual(System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Runtime.Intrinsics.Vector256`1<System.Int64>)
    IL_0008: call System.Runtime.Intrinsics.Vector256`1<System.Int64> System.Runtime.Intrinsics.X86.Avx2::Xor(System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Runtime.Intrinsics.Vector256`1<System.Int64>)
    IL_000D: ret
}
