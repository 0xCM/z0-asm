// Id := 100664046, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vcnonimpl(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
// Vector128<ushort> vcnonimpl(Vector128<ushort> x, Vector128<ushort> y)
// AggressiveInlining
Vector128<ushort> vcnonimpl(Vector128<ushort> x, Vector128<ushort> y)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> System.Runtime.Intrinsics.X86.Sse2::AndNot(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
    IL_0007: ret
}
