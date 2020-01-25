// Id := 100664313, Name := System.Runtime.Intrinsics.Vector128`1<System.Int32> Z0.dinx::vsllr(System.Runtime.Intrinsics.Vector128`1<System.Int32>,System.Runtime.Intrinsics.Vector128`1<System.Int32>)
// Vector128<int> vsllr(Vector128<int> src, Vector128<int> count)
// AggressiveInlining
Vector128<int> vsllr(Vector128<int> src, Vector128<int> count)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.Int32> System.Runtime.Intrinsics.X86.Sse2::ShiftLeftLogical(System.Runtime.Intrinsics.Vector128`1<System.Int32>,System.Runtime.Intrinsics.Vector128`1<System.Int32>)
    IL_0007: ret
}
