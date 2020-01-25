// Id := 100664391, Name := System.Runtime.Intrinsics.Vector128`1<System.Int64> Z0.dinx::vsrlr(System.Runtime.Intrinsics.Vector128`1<System.Int64>,System.Runtime.Intrinsics.Vector128`1<System.Int64>)
// Vector128<long> vsrlr(Vector128<long> src, Vector128<long> count)
// AggressiveInlining
Vector128<long> vsrlr(Vector128<long> src, Vector128<long> count)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.Int64> System.Runtime.Intrinsics.X86.Sse2::ShiftRightLogical(System.Runtime.Intrinsics.Vector128`1<System.Int64>,System.Runtime.Intrinsics.Vector128`1<System.Int64>)
    IL_0007: ret
}
