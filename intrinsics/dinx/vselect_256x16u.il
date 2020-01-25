// Id := 100664170, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vselect(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
// Vector256<ushort> vselect(Vector256<ushort> x, Vector256<ushort> y, Vector256<ushort> z)
// AggressiveInlining
Vector256<ushort> vselect(Vector256<ushort> x, Vector256<ushort> y, Vector256<ushort> z)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vand(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
    IL_0007: ldarg.0
    IL_0008: ldarg.2
    IL_0009: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vnonimpl(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
    IL_000E: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vor(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
    IL_0013: ret
}
