// Id := 100663886, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vreverse(System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
// Vector128<uint> vreverse(Vector128<uint> src)
// AggressiveInlining
Vector128<uint> vreverse(Vector128<uint> src)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.s 27
    IL_0003: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vperm4x32(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,Z0.Perm4L)
    IL_0008: ret
}
