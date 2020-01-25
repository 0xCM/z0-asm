// Id := 100664409, Name := System.Runtime.Intrinsics.Vector256`1<System.SByte> Z0.dinx::vsrlr(System.Runtime.Intrinsics.Vector256`1<System.SByte>,System.SByte)
// Vector256<sbyte> vsrlr(Vector256<sbyte> src, sbyte count)
// AggressiveInlining
Vector256<sbyte> vsrlr(Vector256<sbyte> src, sbyte count)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N128 zfunc::get_n128()
    IL_0006: ldarg.1
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.SByte> Z0.dinx::vscalar(Z0.N128,System.SByte)
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<System.SByte> Z0.dinx::vsrlr(System.Runtime.Intrinsics.Vector256`1<System.SByte>,System.Runtime.Intrinsics.Vector128`1<System.SByte>)
    IL_0011: ret
}
