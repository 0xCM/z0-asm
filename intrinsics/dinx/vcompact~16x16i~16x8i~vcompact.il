// Id := 100664754, Name := System.Runtime.Intrinsics.Vector128`1<System.SByte> Z0.dinx::vcompact(System.Runtime.Intrinsics.Vector256`1<System.Int16>,Z0.N128,System.SByte)
// Vector128<sbyte> vcompact(Vector256<short> src, N128 w, sbyte t)
// AggressiveInlining
Vector128<sbyte> vcompact(Vector256<short> src, N128 w, sbyte t)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.Int16> Z0.dinx::vlo(System.Runtime.Intrinsics.Vector256`1<System.Int16>)
    IL_0006: ldarg.0
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.Int16> Z0.dinx::vhi(System.Runtime.Intrinsics.Vector256`1<System.Int16>)
    IL_000C: call System.Runtime.Intrinsics.Vector128`1<System.SByte> Z0.dinx::vpackss(System.Runtime.Intrinsics.Vector128`1<System.Int16>,System.Runtime.Intrinsics.Vector128`1<System.Int16>)
    IL_0011: ret
}
------------------------------------------------------------------------------------------------------------------------
