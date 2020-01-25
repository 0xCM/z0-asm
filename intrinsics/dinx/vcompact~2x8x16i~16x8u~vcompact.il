// Id := 100664752, Name := System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vcompact(System.Runtime.Intrinsics.Vector128`1<System.Int16>,System.Runtime.Intrinsics.Vector128`1<System.Int16>,Z0.N128,System.Byte)
// Vector128<byte> vcompact(Vector128<Int16> x, Vector128<Int16> y, N128 w, byte t)
// AggressiveInlining
Vector128<byte> vcompact(Vector128<Int16> x, Vector128<Int16> y, N128 w, byte t)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vpackus(System.Runtime.Intrinsics.Vector128`1<System.Int16>,System.Runtime.Intrinsics.Vector128`1<System.Int16>)
    IL_0007: ret
}
