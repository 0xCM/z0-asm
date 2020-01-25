// Id := 100663597, Name := System.Runtime.Intrinsics.Vector256`1<System.Int32> Z0.dinx::vsign(System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.Int32>)
// Vector256<int> vsign(Vector256<int> lhs, Vector256<int> rhs)
// AggressiveInlining
Vector256<int> vsign(Vector256<int> lhs, Vector256<int> rhs)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.Int32> System.Runtime.Intrinsics.X86.Avx2::Sign(System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.Int32>)
    IL_0007: ret
}
