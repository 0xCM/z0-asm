// Id := 100664751, Name := System.Runtime.Intrinsics.Vector128`1<System.SByte> Z0.dinx::vcompact(System.Runtime.Intrinsics.Vector128`1<System.Int16>,System.Runtime.Intrinsics.Vector128`1<System.Int16>,Z0.N128,System.SByte)
// Vector128<sbyte> vcompact(Vector128<Int16> x, Vector128<Int16> y, N128 w, sbyte t)
// AggressiveInlining
Vector128<sbyte> vcompact(Vector128<Int16> x, Vector128<Int16> y, N128 w, sbyte t)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.SByte> Z0.dinx::vpackss(System.Runtime.Intrinsics.Vector128`1<System.Int16>,System.Runtime.Intrinsics.Vector128`1<System.Int16>)
    IL_0007: ret
}
