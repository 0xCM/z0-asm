// Id := 100664137, Name := System.Runtime.Intrinsics.Vector128`1<System.Int64> Z0.dinx::vnot(System.Runtime.Intrinsics.Vector128`1<System.Int64>)
// Vector128<long> vnot(Vector128<long> x)
// AggressiveInlining
Vector128<long> vnot(Vector128<long> x)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> System.Runtime.Intrinsics.Vector128::AsUInt32<System.Int64>(System.Runtime.Intrinsics.Vector128`1<System.Int64>)
    IL_0006: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vnot(System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_000B: call System.Runtime.Intrinsics.Vector128`1<System.Int64> System.Runtime.Intrinsics.Vector128::AsInt64<System.UInt32>(System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_0010: ret
}
