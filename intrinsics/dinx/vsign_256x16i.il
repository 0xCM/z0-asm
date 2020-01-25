// Id := 100663596, Name := System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.dinx::vsign(System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Runtime.Intrinsics.Vector256`1<System.Int16>)
// Vector256<Int16> vsign(Vector256<Int16> lhs, Vector256<Int16> rhs)
// AggressiveInlining
Vector256<Int16> vsign(Vector256<Int16> lhs, Vector256<Int16> rhs)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.Int16> System.Runtime.Intrinsics.X86.Avx2::Sign(System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Runtime.Intrinsics.Vector256`1<System.Int16>)
    IL_0007: ret
}
