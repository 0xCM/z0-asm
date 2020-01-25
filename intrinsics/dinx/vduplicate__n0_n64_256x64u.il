// Id := 100663662, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vduplicate(Z0.N0,Z0.N64,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
// Vector256<ulong> vduplicate(N0 parity, N64 w, Vector256<ulong> src)
// AggressiveInlining
Vector256<ulong> vduplicate(N0 parity, N64 w, Vector256<ulong> src)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.2
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.Double> zfunc::v64f<System.UInt64>(System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_0007: call System.Runtime.Intrinsics.Vector256`1<System.Double> Z0.dinxfp::vdup64(Z0.N0,System.Runtime.Intrinsics.Vector256`1<System.Double>)
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> zfunc::v64u<System.Double>(System.Runtime.Intrinsics.Vector256`1<System.Double>)
    IL_0011: ret
}
