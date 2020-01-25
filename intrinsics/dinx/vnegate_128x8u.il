// Id := 100663575, Name := System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vnegate(System.Runtime.Intrinsics.Vector128`1<System.Byte>)
// Vector128<byte> vnegate(Vector128<byte> src)
// AggressiveInlining
Vector128<byte> vnegate(Vector128<byte> src)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vnot(System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0006: call Z0.N128 zfunc::get_n128()
    IL_000B: ldc.i4.0
    IL_000C: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.VPattern::vones<System.Byte>(Z0.N128,System.Byte)
    IL_0011: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vsub(System.Runtime.Intrinsics.Vector128`1<System.Byte>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0016: ret
}
