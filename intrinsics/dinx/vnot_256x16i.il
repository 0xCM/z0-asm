// Id := 100664141, Name := System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.dinx::vnot(System.Runtime.Intrinsics.Vector256`1<System.Int16>)
// Vector256<Int16> vnot(Vector256<Int16> x)
// AggressiveInlining
Vector256<Int16> vnot(Vector256<Int16> x)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.0
    IL_0002: ldarg.0
    IL_0003: call System.Runtime.Intrinsics.Vector256`1<System.Int16> System.Runtime.Intrinsics.X86.Avx2::CompareEqual(System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Runtime.Intrinsics.Vector256`1<System.Int16>)
    IL_0008: call System.Runtime.Intrinsics.Vector256`1<System.Int16> System.Runtime.Intrinsics.X86.Avx2::Xor(System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Runtime.Intrinsics.Vector256`1<System.Int16>)
    IL_000D: ret
}
