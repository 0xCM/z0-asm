// Id := 100664591, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vlt(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
// Vector128<ulong> vlt(Vector128<ulong> x, Vector128<ulong> y)
// AggressiveInlining
Vector128<ulong> vlt(Vector128<ulong> x, Vector128<ulong> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vconcat(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_0007: stloc.0
    IL_0008: ldloc.0
    IL_0009: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vswaphl(System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_000E: stloc.1
    IL_000F: ldloc.0
    IL_0010: ldloc.1
    IL_0011: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vlt(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_0016: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vlo(System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_001B: ret
}
