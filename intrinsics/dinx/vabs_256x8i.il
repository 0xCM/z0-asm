// Id := 100663455, Name := System.Runtime.Intrinsics.Vector256`1<System.SByte> Z0.dinx::vabs(System.Runtime.Intrinsics.Vector256`1<System.SByte>)
// Vector256<sbyte> vabs(Vector256<sbyte> src)
// AggressiveInlining
Vector256<sbyte> vabs(Vector256<sbyte> src)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector256`1<System.Byte> System.Runtime.Intrinsics.X86.Avx2::Abs(System.Runtime.Intrinsics.Vector256`1<System.SByte>)
    IL_0006: call System.Runtime.Intrinsics.Vector256`1<System.SByte> zfunc::v8i<System.Byte>(System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_000B: ret
}
