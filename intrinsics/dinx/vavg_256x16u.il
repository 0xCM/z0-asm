// Id := 100663494, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vavg(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
// Vector256<ushort> vavg(Vector256<ushort> lhs, Vector256<ushort> rhs)
// AggressiveInlining
Vector256<ushort> vavg(Vector256<ushort> lhs, Vector256<ushort> rhs)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> System.Runtime.Intrinsics.X86.Avx2::Average(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
    IL_0007: ret
}
