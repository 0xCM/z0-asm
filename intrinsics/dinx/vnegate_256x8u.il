// Id := 100663583, Name := System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vnegate(System.Runtime.Intrinsics.Vector256`1<System.Byte>)
// Vector256<byte> vnegate(Vector256<byte> src)
// AggressiveInlining
Vector256<byte> vnegate(Vector256<byte> src)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vnot(System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_0006: call Z0.N256 zfunc::get_n256()
    IL_000B: ldc.i4.0
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.VPattern::vones<System.Byte>(Z0.N256,System.Byte)
    IL_0011: call System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vsub(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_0016: ret
}
