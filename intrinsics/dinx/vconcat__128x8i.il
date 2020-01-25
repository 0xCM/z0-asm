// Id := 100663687, Name := System.Runtime.Intrinsics.Vector256`1<System.SByte> Z0.dinx::vconcat(System.Runtime.Intrinsics.Vector128`1<System.SByte>,System.Runtime.Intrinsics.Vector128`1<System.SByte>)
// Vector256<sbyte> vconcat(Vector128<sbyte> lo, Vector128<sbyte> hi)
// AggressiveInlining
Vector256<sbyte> vconcat(Vector128<sbyte> lo, Vector128<sbyte> hi)
{
    IL_0000: ldloca.s V_0
    IL_0002: initobj System.Runtime.Intrinsics.Vector256`1<System.SByte>
    IL_0008: ldloc.0
    IL_0009: ldarg.0
    IL_000A: ldc.i4.0
    IL_000B: call System.Runtime.Intrinsics.Vector256`1<System.SByte> System.Runtime.Intrinsics.X86.Avx2::InsertVector128(System.Runtime.Intrinsics.Vector256`1<System.SByte>,System.Runtime.Intrinsics.Vector128`1<System.SByte>,System.Byte)
    IL_0010: ldarg.1
    IL_0011: ldc.i4.1
    IL_0012: call System.Runtime.Intrinsics.Vector256`1<System.SByte> System.Runtime.Intrinsics.X86.Avx2::InsertVector128(System.Runtime.Intrinsics.Vector256`1<System.SByte>,System.Runtime.Intrinsics.Vector128`1<System.SByte>,System.Byte)
    IL_0017: ret
}
