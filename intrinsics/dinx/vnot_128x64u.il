// Id := 100664138, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vnot(System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
// Vector128<ulong> vnot(Vector128<ulong> x)
// AggressiveInlining
Vector128<ulong> vnot(Vector128<ulong> x)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> System.Runtime.Intrinsics.Vector128::AsUInt32<System.UInt64>(System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_0006: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vnot(System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_000B: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> System.Runtime.Intrinsics.Vector128::AsUInt64<System.UInt32>(System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_0010: ret
}
