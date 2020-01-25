// Id := 100663657, Name := System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vduplicate(Z0.N1,Z0.N32,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
// Vector256<byte> vduplicate(N1 parity, N32 w, Vector256<byte> src)
// AggressiveInlining
Vector256<byte> vduplicate(N1 parity, N32 w, Vector256<byte> src)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.2
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.Single> zfunc::v32f<System.Byte>(System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_0007: call System.Runtime.Intrinsics.Vector256`1<System.Single> Z0.dinxfp::vdup32(Z0.N1,System.Runtime.Intrinsics.Vector256`1<System.Single>)
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<System.Byte> zfunc::v8u<System.Single>(System.Runtime.Intrinsics.Vector256`1<System.Single>)
    IL_0011: ret
}
