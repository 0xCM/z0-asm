// Id := 100663736, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vlo(System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
// Vector128<uint> vlo(Vector256<uint> src)
// AggressiveInlining
Vector128<uint> vlo(Vector256<uint> src)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.0
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> System.Runtime.Intrinsics.X86.Avx::ExtractVector128(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Byte)
    IL_0007: ret
}
