// Id := 100663584, Name := System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.dinx::vnegate(System.Runtime.Intrinsics.Vector256`1<System.Int16>)
// Vector256<Int16> vnegate(Vector256<Int16> src)
// AggressiveInlining
Vector256<Int16> vnegate(Vector256<Int16> src)
{
    IL_0000: ldloca.s V_0
    IL_0002: initobj System.Runtime.Intrinsics.Vector256`1<System.Int16>
    IL_0008: ldloc.0
    IL_0009: ldarg.0
    IL_000A: call System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.dinx::vsub(System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Runtime.Intrinsics.Vector256`1<System.Int16>)
    IL_000F: ret
}
