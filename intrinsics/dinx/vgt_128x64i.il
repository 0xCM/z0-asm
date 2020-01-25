// Id := 100664574, Name := System.Runtime.Intrinsics.Vector128`1<System.Int64> Z0.dinx::vgt(System.Runtime.Intrinsics.Vector128`1<System.Int64>,System.Runtime.Intrinsics.Vector128`1<System.Int64>)
// Vector128<long> vgt(Vector128<long> x, Vector128<long> y)
// AggressiveInlining
Vector128<long> vgt(Vector128<long> x, Vector128<long> y)
{
    IL_0000: ldarg.0
    IL_0001: ldloca.s V_2
    IL_0003: initobj System.Runtime.Intrinsics.Vector256`1<System.Int64>
    IL_0009: ldloc.2
    IL_000A: ldc.i4.0
    IL_000B: call System.Runtime.Intrinsics.Vector256`1<System.Int64> Z0.ginx::vinsert<System.Int64>(System.Runtime.Intrinsics.Vector128`1<System.Int64>,System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Byte)
    IL_0010: stloc.0
    IL_0011: ldarg.1
    IL_0012: ldloca.s V_2
    IL_0014: initobj System.Runtime.Intrinsics.Vector256`1<System.Int64>
    IL_001A: ldloc.2
    IL_001B: ldc.i4.0
    IL_001C: call System.Runtime.Intrinsics.Vector256`1<System.Int64> Z0.ginx::vinsert<System.Int64>(System.Runtime.Intrinsics.Vector128`1<System.Int64>,System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Byte)
    IL_0021: stloc.1
    IL_0022: ldloc.0
    IL_0023: ldloc.1
    IL_0024: call System.Runtime.Intrinsics.Vector256`1<System.Int64> Z0.dinx::vgt(System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Runtime.Intrinsics.Vector256`1<System.Int64>)
    IL_0029: call System.Runtime.Intrinsics.Vector128`1<System.Int64> Z0.ginx::vlo<System.Int64>(System.Runtime.Intrinsics.Vector256`1<System.Int64>)
    IL_002E: ret
}
