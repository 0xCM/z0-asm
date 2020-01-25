// Id := 100664114, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vnor(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
// Vector128<ushort> vnor(Vector128<ushort> x, Vector128<ushort> y)
// AggressiveInlining
Vector128<ushort> vnor(Vector128<ushort> x, Vector128<ushort> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> System.Runtime.Intrinsics.X86.Sse2::Or(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vnot(System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
    IL_000C: ret
}
