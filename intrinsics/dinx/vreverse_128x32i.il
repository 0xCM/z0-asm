// Id := 100663885, Name := System.Runtime.Intrinsics.Vector128`1<System.Int32> Z0.dinx::vreverse(System.Runtime.Intrinsics.Vector128`1<System.Int32>)
// Vector128<int> vreverse(Vector128<int> src)
// AggressiveInlining
Vector128<int> vreverse(Vector128<int> src)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.s 27
    IL_0003: call System.Runtime.Intrinsics.Vector128`1<System.Int32> Z0.dinx::vperm4x32(System.Runtime.Intrinsics.Vector128`1<System.Int32>,Z0.Perm4L)
    IL_0008: ret
}
