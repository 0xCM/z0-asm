// Id := 100664122, Name := System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.dinx::vnor(System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Runtime.Intrinsics.Vector256`1<System.Int16>)
// Vector256<Int16> vnor(Vector256<Int16> x, Vector256<Int16> y)
// AggressiveInlining
Vector256<Int16> vnor(Vector256<Int16> x, Vector256<Int16> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.Int16> System.Runtime.Intrinsics.X86.Avx2::Or(System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Runtime.Intrinsics.Vector256`1<System.Int16>)
    IL_0007: call System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.dinx::vnot(System.Runtime.Intrinsics.Vector256`1<System.Int16>)
    IL_000C: ret
}
