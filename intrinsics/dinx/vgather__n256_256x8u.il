// Id := 100664906, Name := System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vgather(Z0.N256,System.Byte&,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
// Vector256<byte> vgather(N256 w, in byte src, Vector256<byte> vidx)
// AggressiveInlining
Vector256<byte> vgather(N256 w, in byte src, Vector256<byte> vidx)
{
    IL_0000: call Z0.N128 zfunc::get_n128()
    IL_0005: ldarg.1
    IL_0006: ldarg.2
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vlo(System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_000C: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vgather(Z0.N128,System.Byte&,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0011: call Z0.N128 zfunc::get_n128()
    IL_0016: ldarg.1
    IL_0017: ldarg.2
    IL_0018: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vhi(System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_001D: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vgather(Z0.N128,System.Byte&,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0022: call System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vconcat(System.Runtime.Intrinsics.Vector128`1<System.Byte>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0027: ret
}
