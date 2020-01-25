// Id := 100664314, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vsllr(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
// Vector128<uint> vsllr(Vector128<uint> src, Vector128<uint> count)
// AggressiveInlining
Vector128<uint> vsllr(Vector128<uint> src, Vector128<uint> count)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> System.Runtime.Intrinsics.X86.Sse2::ShiftLeftLogical(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_0007: ret
}
