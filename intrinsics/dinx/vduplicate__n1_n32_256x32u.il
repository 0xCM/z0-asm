// Id := 100663661, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vduplicate(Z0.N1,Z0.N32,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
// Vector256<uint> vduplicate(N1 parity, N32 w, Vector256<uint> src)
// AggressiveInlining
Vector256<uint> vduplicate(N1 parity, N32 w, Vector256<uint> src)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.2
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.Single> zfunc::v32f<System.UInt32>(System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_0007: call System.Runtime.Intrinsics.Vector256`1<System.Single> Z0.dinxfp::vdup32(Z0.N1,System.Runtime.Intrinsics.Vector256`1<System.Single>)
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> zfunc::v32u<System.Single>(System.Runtime.Intrinsics.Vector256`1<System.Single>)
    IL_0011: ret
}
