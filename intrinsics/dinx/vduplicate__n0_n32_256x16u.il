// Id := 100663658, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vduplicate(Z0.N0,Z0.N32,System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
// Vector256<ushort> vduplicate(N0 parity, N32 w, Vector256<ushort> src)
// AggressiveInlining
Vector256<ushort> vduplicate(N0 parity, N32 w, Vector256<ushort> src)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.2
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.Single> zfunc::v32f<System.UInt16>(System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
    IL_0007: call System.Runtime.Intrinsics.Vector256`1<System.Single> Z0.dinxfp::vdup32(Z0.N0,System.Runtime.Intrinsics.Vector256`1<System.Single>)
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> zfunc::v16u<System.Single>(System.Runtime.Intrinsics.Vector256`1<System.Single>)
    IL_0011: ret
}
