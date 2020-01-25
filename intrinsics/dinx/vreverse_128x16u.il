// Id := 100663884, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vreverse(System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
// Vector128<ushort> vreverse(Vector128<ushort> src)
// AggressiveInlining
Vector128<ushort> vreverse(Vector128<ushort> src)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.s 27
    IL_0003: ldc.i4.s 27
    IL_0005: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vshuf4x16(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,Z0.Arrange4L,Z0.Arrange4L)
    IL_000A: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vswaphl(System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
    IL_000F: ret
}
