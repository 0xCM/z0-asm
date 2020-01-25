// Id := 100664388, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vsrlr(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
// Vector128<ushort> vsrlr(Vector128<ushort> src, Vector128<ushort> count)
// AggressiveInlining
Vector128<ushort> vsrlr(Vector128<ushort> src, Vector128<ushort> count)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> System.Runtime.Intrinsics.X86.Sse2::ShiftRightLogical(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
    IL_0007: ret
}
