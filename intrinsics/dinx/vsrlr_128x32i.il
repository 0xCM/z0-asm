// Id := 100664389, Name := System.Runtime.Intrinsics.Vector128`1<System.Int32> Z0.dinx::vsrlr(System.Runtime.Intrinsics.Vector128`1<System.Int32>,System.Runtime.Intrinsics.Vector128`1<System.Int32>)
// Vector128<int> vsrlr(Vector128<int> src, Vector128<int> count)
// AggressiveInlining
Vector128<int> vsrlr(Vector128<int> src, Vector128<int> count)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.Int32> System.Runtime.Intrinsics.X86.Sse2::ShiftRightLogical(System.Runtime.Intrinsics.Vector128`1<System.Int32>,System.Runtime.Intrinsics.Vector128`1<System.Int32>)
    IL_0007: ret
}
