// Id := 100664311, Name := System.Runtime.Intrinsics.Vector128`1<System.Int16> Z0.dinx::vsllr(System.Runtime.Intrinsics.Vector128`1<System.Int16>,System.Runtime.Intrinsics.Vector128`1<System.Int16>)
// Vector128<Int16> vsllr(Vector128<Int16> src, Vector128<Int16> count)
// AggressiveInlining
Vector128<Int16> vsllr(Vector128<Int16> src, Vector128<Int16> count)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.Int16> System.Runtime.Intrinsics.X86.Sse2::ShiftLeftLogical(System.Runtime.Intrinsics.Vector128`1<System.Int16>,System.Runtime.Intrinsics.Vector128`1<System.Int16>)
    IL_0007: ret
}
