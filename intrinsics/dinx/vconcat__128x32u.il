// Id := 100663691, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vconcat(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
// Vector256<uint> vconcat(Vector128<uint> lo, Vector128<uint> hi)
// AggressiveInlining
Vector256<uint> vconcat(Vector128<uint> lo, Vector128<uint> hi)
{
    IL_0000: ldloca.s V_0
    IL_0002: initobj System.Runtime.Intrinsics.Vector256`1<System.UInt32>
    IL_0008: ldloc.0
    IL_0009: ldarg.0
    IL_000A: ldc.i4.0
    IL_000B: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> System.Runtime.Intrinsics.X86.Avx2::InsertVector128(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Byte)
    IL_0010: ldarg.1
    IL_0011: ldc.i4.1
    IL_0012: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> System.Runtime.Intrinsics.X86.Avx2::InsertVector128(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Byte)
    IL_0017: ret
}
