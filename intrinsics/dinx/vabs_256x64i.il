// Id := 100663458, Name := System.Runtime.Intrinsics.Vector256`1<System.Int64> Z0.dinx::vabs(System.Runtime.Intrinsics.Vector256`1<System.Int64>)
// Vector256<long> vabs(Vector256<long> src)
// AggressiveInlining
Vector256<long> vabs(Vector256<long> src)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.s 63
    IL_0003: call System.Runtime.Intrinsics.Vector256`1<System.Int64> Z0.dinx::vsrl(System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Byte)
    IL_0008: call System.Runtime.Intrinsics.Vector256`1<System.Int64> Z0.dinx::vnegate(System.Runtime.Intrinsics.Vector256`1<System.Int64>)
    IL_000D: stloc.0
    IL_000E: ldloc.0
    IL_000F: ldarg.0
    IL_0010: call System.Runtime.Intrinsics.Vector256`1<System.Int64> Z0.dinx::vxor(System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Runtime.Intrinsics.Vector256`1<System.Int64>)
    IL_0015: ldloc.0
    IL_0016: call System.Runtime.Intrinsics.Vector256`1<System.Int64> Z0.dinx::vsub(System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Runtime.Intrinsics.Vector256`1<System.Int64>)
    IL_001B: ret
}
