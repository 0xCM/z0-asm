// Id := 100664316, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vsllr(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
// Vector128<ulong> vsllr(Vector128<ulong> src, Vector128<ulong> count)
// AggressiveInlining
Vector128<ulong> vsllr(Vector128<ulong> src, Vector128<ulong> count)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> System.Runtime.Intrinsics.X86.Sse2::ShiftLeftLogical(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_0007: ret
}
