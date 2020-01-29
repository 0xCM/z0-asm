// Id := 100664460, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vxorsrv(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
// Vector128<uint> vxorsrv(Vector128<uint> x, Vector128<uint> counts)
// AggressiveInlining
Vector128<uint> vxorsrv(Vector128<uint> x, Vector128<uint> counts)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.0
    IL_0002: ldarg.1
    IL_0003: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vsrlv(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_0008: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vxor(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_000D: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664461, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vxorsrv(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
// Vector128<ulong> vxorsrv(Vector128<ulong> x, Vector128<ulong> counts)
// AggressiveInlining
Vector128<ulong> vxorsrv(Vector128<ulong> x, Vector128<ulong> counts)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.0
    IL_0002: ldarg.1
    IL_0003: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vsrlv(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_0008: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vxor(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_000D: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664462, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vxorsrv(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
// Vector256<uint> vxorsrv(Vector256<uint> x, Vector256<uint> counts)
// AggressiveInlining
Vector256<uint> vxorsrv(Vector256<uint> x, Vector256<uint> counts)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.0
    IL_0002: ldarg.1
    IL_0003: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vsrlv(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_0008: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vxor(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_000D: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664463, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vxorsrv(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
// Vector256<ulong> vxorsrv(Vector256<ulong> x, Vector256<ulong> counts)
// AggressiveInlining
Vector256<ulong> vxorsrv(Vector256<ulong> x, Vector256<ulong> counts)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.0
    IL_0002: ldarg.1
    IL_0003: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vsrlv(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_0008: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vxor(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_000D: ret
}
------------------------------------------------------------------------------------------------------------------------
