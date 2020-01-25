// Id := 100664631, Name := System.Runtime.Intrinsics.Vector256`1<System.Int64> Z0.dinx::vmin(System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Runtime.Intrinsics.Vector256`1<System.Int64>)
// Vector256<long> vmin(Vector256<long> x, Vector256<long> y)
// AggressiveInlining
Vector256<long> vmin(Vector256<long> x, Vector256<long> y)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: ldarg.0
    IL_0003: ldarg.1
    IL_0004: call System.Runtime.Intrinsics.Vector256`1<System.Int64> Z0.dinx::vlt(System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Runtime.Intrinsics.Vector256`1<System.Int64>)
    IL_0009: call System.Runtime.Intrinsics.Vector256`1<System.Byte> zfunc::v8u<System.Int64>(System.Runtime.Intrinsics.Vector256`1<System.Int64>)
    IL_000E: call System.Runtime.Intrinsics.Vector256`1<System.Int64> Z0.dinx::vblend(System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_0013: ret
}
