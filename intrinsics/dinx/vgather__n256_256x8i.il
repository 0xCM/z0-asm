// Id := 100664905, Name := System.Runtime.Intrinsics.Vector256`1<System.SByte> Z0.dinx::vgather(Z0.N256,System.SByte&,System.Runtime.Intrinsics.Vector256`1<System.SByte>)
// Vector256<sbyte> vgather(N256 w, in sbyte src, Vector256<sbyte> vidx)
// AggressiveInlining
Vector256<sbyte> vgather(N256 w, in sbyte src, Vector256<sbyte> vidx)
{
    IL_0000: call Z0.N128 zfunc::get_n128()
    IL_0005: ldarg.1
    IL_0006: ldarg.2
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.SByte> Z0.dinx::vlo(System.Runtime.Intrinsics.Vector256`1<System.SByte>)
    IL_000C: call System.Runtime.Intrinsics.Vector128`1<System.SByte> Z0.dinx::vgather(Z0.N128,System.SByte&,System.Runtime.Intrinsics.Vector128`1<System.SByte>)
    IL_0011: call Z0.N128 zfunc::get_n128()
    IL_0016: ldarg.1
    IL_0017: ldarg.2
    IL_0018: call System.Runtime.Intrinsics.Vector128`1<System.SByte> Z0.dinx::vhi(System.Runtime.Intrinsics.Vector256`1<System.SByte>)
    IL_001D: call System.Runtime.Intrinsics.Vector128`1<System.SByte> Z0.dinx::vgather(Z0.N128,System.SByte&,System.Runtime.Intrinsics.Vector128`1<System.SByte>)
    IL_0022: call System.Runtime.Intrinsics.Vector256`1<System.SByte> Z0.dinx::vconcat(System.Runtime.Intrinsics.Vector128`1<System.SByte>,System.Runtime.Intrinsics.Vector128`1<System.SByte>)
    IL_0027: ret
}
