// Id := 100663881, Name := System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vreverse(System.Runtime.Intrinsics.Vector128`1<System.Byte>)
// Vector128<byte> vreverse(Vector128<byte> src)
// AggressiveInlining
Vector128<byte> vreverse(Vector128<byte> src)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N128 zfunc::get_n128()
    IL_0006: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.VPattern::vdecrements<System.Byte>(Z0.N128)
    IL_000B: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vshuf16x8(System.Runtime.Intrinsics.Vector128`1<System.Byte>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0010: ret
}
