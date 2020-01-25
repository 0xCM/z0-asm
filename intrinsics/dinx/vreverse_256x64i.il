// Id := 100663895, Name := System.Runtime.Intrinsics.Vector256`1<System.Int64> Z0.dinx::vreverse(System.Runtime.Intrinsics.Vector256`1<System.Int64>)
// Vector256<long> vreverse(Vector256<long> src)
// AggressiveInlining
Vector256<long> vreverse(Vector256<long> src)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.s 27
    IL_0003: call System.Runtime.Intrinsics.Vector256`1<System.Int64> Z0.dinx::vperm4x64(System.Runtime.Intrinsics.Vector256`1<System.Int64>,Z0.Perm4L)
    IL_0008: ret
}
