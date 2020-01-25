// Id := 100663574, Name := System.Runtime.Intrinsics.Vector128`1<System.SByte> Z0.dinx::vnegate(System.Runtime.Intrinsics.Vector128`1<System.SByte>)
// Vector128<sbyte> vnegate(Vector128<sbyte> src)
// AggressiveInlining
Vector128<sbyte> vnegate(Vector128<sbyte> src)
{
    IL_0000: ldloca.s V_0
    IL_0002: initobj System.Runtime.Intrinsics.Vector128`1<System.SByte>
    IL_0008: ldloc.0
    IL_0009: ldarg.0
    IL_000A: call System.Runtime.Intrinsics.Vector128`1<System.SByte> Z0.dinx::vsub(System.Runtime.Intrinsics.Vector128`1<System.SByte>,System.Runtime.Intrinsics.Vector128`1<System.SByte>)
    IL_000F: ret
}
