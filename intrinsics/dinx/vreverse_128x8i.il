// Id := 100663882, Name := System.Runtime.Intrinsics.Vector128`1<System.SByte> Z0.dinx::vreverse(System.Runtime.Intrinsics.Vector128`1<System.SByte>)
// Vector128<sbyte> vreverse(Vector128<sbyte> src)
// AggressiveInlining
Vector128<sbyte> vreverse(Vector128<sbyte> src)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N128 zfunc::get_n128()
    IL_0006: call System.Runtime.Intrinsics.Vector128`1<System.SByte> Z0.VPattern::vdecrements<System.SByte>(Z0.N128)
    IL_000B: call System.Runtime.Intrinsics.Vector128`1<System.SByte> Z0.dinx::vshuf16x8(System.Runtime.Intrinsics.Vector128`1<System.SByte>,System.Runtime.Intrinsics.Vector128`1<System.SByte>)
    IL_0010: ret
}
