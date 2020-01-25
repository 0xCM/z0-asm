// Id := 100664280, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vrotrv(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
// Vector128<ulong> vrotrv(Vector128<ulong> src, Vector128<ulong> counts)
// AggressiveInlining
Vector128<ulong> vrotrv(Vector128<ulong> src, Vector128<ulong> counts)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vsrlv(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_0007: ldarg.0
    IL_0008: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::get_Vector128u64()
    IL_000D: ldarg.1
    IL_000E: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vsub(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_0013: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vsllv(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_0018: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vor(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_001D: ret
}
