// Id := 100663588, Name := System.Runtime.Intrinsics.Vector256`1<System.Int64> Z0.dinx::vnegate(System.Runtime.Intrinsics.Vector256`1<System.Int64>)
// Vector256<long> vnegate(Vector256<long> src)
// AggressiveInlining
Vector256<long> vnegate(Vector256<long> src)
{
    IL_0000: ldloca.s V_0
    IL_0002: initobj System.Runtime.Intrinsics.Vector256`1<System.Int64>
    IL_0008: ldloc.0
    IL_0009: ldarg.0
    IL_000A: call System.Runtime.Intrinsics.Vector256`1<System.Int64> Z0.dinx::vsub(System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Runtime.Intrinsics.Vector256`1<System.Int64>)
    IL_000F: ret
}
