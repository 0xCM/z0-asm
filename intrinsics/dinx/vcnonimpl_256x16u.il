// Id := 100664054, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vcnonimpl(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
// Vector256<ushort> vcnonimpl(Vector256<ushort> x, Vector256<ushort> y)
// AggressiveInlining
Vector256<ushort> vcnonimpl(Vector256<ushort> x, Vector256<ushort> y)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> System.Runtime.Intrinsics.X86.Avx2::AndNot(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
    IL_0007: ret
}
