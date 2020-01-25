// Id := 100663586, Name := System.Runtime.Intrinsics.Vector256`1<System.Int32> Z0.dinx::vnegate(System.Runtime.Intrinsics.Vector256`1<System.Int32>)
// Vector256<int> vnegate(Vector256<int> src)
// AggressiveInlining
Vector256<int> vnegate(Vector256<int> src)
{
    IL_0000: ldloca.s V_0
    IL_0002: initobj System.Runtime.Intrinsics.Vector256`1<System.Int32>
    IL_0008: ldloc.0
    IL_0009: ldarg.0
    IL_000A: call System.Runtime.Intrinsics.Vector256`1<System.Int32> Z0.dinx::vsub(System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.Int32>)
    IL_000F: ret
}
