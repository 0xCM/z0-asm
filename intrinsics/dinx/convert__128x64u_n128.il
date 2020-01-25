// Id := 100664798, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::convert(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>,Z0.N128,System.UInt32)
// Vector128<uint> convert(Vector128<ulong> lo, Vector128<ulong> hi, N128 w, uint t)
// AggressiveInlining
Vector128<uint> convert(Vector128<ulong> lo, Vector128<ulong> hi, N128 w, uint t)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vconcat(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_0007: ldarg.2
    IL_0008: ldarg.3
    IL_0009: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::convert(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,Z0.N128,System.UInt32)
    IL_000E: ret
}
