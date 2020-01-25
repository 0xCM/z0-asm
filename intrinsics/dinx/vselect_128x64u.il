// Id := 100664168, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vselect(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
// Vector128<ulong> vselect(Vector128<ulong> x, Vector128<ulong> y, Vector128<ulong> z)
// AggressiveInlining
Vector128<ulong> vselect(Vector128<ulong> x, Vector128<ulong> y, Vector128<ulong> z)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vand(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_0007: ldarg.0
    IL_0008: ldarg.2
    IL_0009: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vnonimpl(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_000E: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vor(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_0013: ret
}
