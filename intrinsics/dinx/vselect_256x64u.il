// Id := 100664172, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vselect(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
// Vector256<ulong> vselect(Vector256<ulong> x, Vector256<ulong> y, Vector256<ulong> z)
// AggressiveInlining
Vector256<ulong> vselect(Vector256<ulong> x, Vector256<ulong> y, Vector256<ulong> z)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vand(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_0007: ldarg.0
    IL_0008: ldarg.2
    IL_0009: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vnonimpl(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_000E: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vor(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_0013: ret
}
