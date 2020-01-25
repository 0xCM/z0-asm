// Id := 100663674, Name := System.Byte Z0.dinx::vmovelo(System.Runtime.Intrinsics.Vector128`1<System.Byte>,Z0.N8)
// byte vmovelo(Vector128<byte> src, N8 w)
// AggressiveInlining
byte vmovelo(Vector128<byte> src, N8 w)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> zfunc::v32u<System.Byte>(System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0006: call System.UInt32 System.Runtime.Intrinsics.X86.Sse2::ConvertToUInt32(System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_000B: conv.u1
    IL_000C: ret
}
