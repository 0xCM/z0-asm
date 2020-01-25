// Id := 100663883, Name := System.Runtime.Intrinsics.Vector128`1<System.Int16> Z0.dinx::vreverse(System.Runtime.Intrinsics.Vector128`1<System.Int16>)
// Vector128<Int16> vreverse(Vector128<Int16> src)
// AggressiveInlining
Vector128<Int16> vreverse(Vector128<Int16> src)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.s 27
    IL_0003: ldc.i4.s 27
    IL_0005: call System.Runtime.Intrinsics.Vector128`1<System.Int16> Z0.dinx::vshuf4x16(System.Runtime.Intrinsics.Vector128`1<System.Int16>,Z0.Arrange4L,Z0.Arrange4L)
    IL_000A: call System.Runtime.Intrinsics.Vector128`1<System.Int16> Z0.dinx::vswaphl(System.Runtime.Intrinsics.Vector128`1<System.Int16>)
    IL_000F: ret
}
