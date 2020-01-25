// Id := 100663529, Name := System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.dinx::vmuladj(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.SByte>)
// Vector256<Int16> vmuladj(Vector256<byte> x, Vector256<sbyte> y)
// AggressiveInlining
Vector256<Int16> vmuladj(Vector256<byte> x, Vector256<sbyte> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.Int16> System.Runtime.Intrinsics.X86.Avx2::MultiplyAddAdjacent(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.SByte>)
    IL_0007: ret
}
