// Id := 100664235, Name := System.Runtime.Intrinsics.Vector256`1<System.Int64> Z0.dinx::vbsll(System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Byte)
// Vector256<long> vbsll(Vector256<long> x, byte count)
// AggressiveInlining
Vector256<long> vbsll(Vector256<long> x, byte count)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.Int64> System.Runtime.Intrinsics.X86.Avx2::ShiftLeftLogical128BitLane(System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Byte)
    IL_0007: ret
}
