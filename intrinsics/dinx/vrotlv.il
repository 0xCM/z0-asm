// Id := 100664261, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vrotlv(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
// Vector128<uint> vrotlv(Vector128<uint> src, Vector128<uint> counts)
// AggressiveInlining
Vector128<uint> vrotlv(Vector128<uint> src, Vector128<uint> counts)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vsllv(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_0007: ldarg.0
    IL_0008: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::get_Vector128u32()
    IL_000D: ldarg.1
    IL_000E: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vsub(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_0013: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vsrlv(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_0018: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vor(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_001D: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664262, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vrotlv(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
// Vector128<ulong> vrotlv(Vector128<ulong> src, Vector128<ulong> counts)
// AggressiveInlining
Vector128<ulong> vrotlv(Vector128<ulong> src, Vector128<ulong> counts)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vsllv(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_0007: ldarg.0
    IL_0008: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::get_Vector128u64()
    IL_000D: ldarg.1
    IL_000E: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vsub(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_0013: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vsrlv(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_0018: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vor(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_001D: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664263, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vrotlv(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
// Vector256<uint> vrotlv(Vector256<uint> src, Vector256<uint> counts)
// AggressiveInlining
Vector256<uint> vrotlv(Vector256<uint> src, Vector256<uint> counts)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vsllv(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_0007: ldarg.0
    IL_0008: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::get_Vector256u32()
    IL_000D: ldarg.1
    IL_000E: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vsub(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_0013: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vsrlv(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_0018: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vor(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_001D: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664264, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vrotlv(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
// Vector256<ulong> vrotlv(Vector256<ulong> src, Vector256<ulong> counts)
// AggressiveInlining
Vector256<ulong> vrotlv(Vector256<ulong> src, Vector256<ulong> counts)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vsllv(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_0007: ldarg.0
    IL_0008: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::get_Vector256u64()
    IL_000D: ldarg.1
    IL_000E: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vsub(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_0013: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vsrlv(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_0018: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vor(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_001D: ret
}
------------------------------------------------------------------------------------------------------------------------
