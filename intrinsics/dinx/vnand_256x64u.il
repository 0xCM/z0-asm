// Id := 100664092, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vnand(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
// Vector256<ulong> vnand(Vector256<ulong> x, Vector256<ulong> y)
// AggressiveInlining
Vector256<ulong> vnand(Vector256<ulong> x, Vector256<ulong> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> System.Runtime.Intrinsics.X86.Avx2::And(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_0007: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vnot(System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_000C: ret
}
