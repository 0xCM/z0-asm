// Id := 100663528, Name := System.Runtime.Intrinsics.Vector128`1<System.Int16> Z0.dinx::vmuladj(System.Runtime.Intrinsics.Vector128`1<System.Byte>,System.Runtime.Intrinsics.Vector128`1<System.SByte>)
// Vector128<short> vmuladj(Vector128<byte> x, Vector128<sbyte> y)
// AggressiveInlining
Vector128<short> vmuladj(Vector128<byte> x, Vector128<sbyte> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.Int16> System.Runtime.Intrinsics.X86.Ssse3::MultiplyAddAdjacent(System.Runtime.Intrinsics.Vector128`1<System.Byte>,System.Runtime.Intrinsics.Vector128`1<System.SByte>)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663529, Name := System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.dinx::vmuladj(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.SByte>)
// Vector256<short> vmuladj(Vector256<byte> x, Vector256<sbyte> y)
// AggressiveInlining
Vector256<short> vmuladj(Vector256<byte> x, Vector256<sbyte> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.Int16> System.Runtime.Intrinsics.X86.Avx2::MultiplyAddAdjacent(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.SByte>)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663530, Name := System.Runtime.Intrinsics.Vector256`1<System.Int32> Z0.dinx::vmuladj(System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Runtime.Intrinsics.Vector256`1<System.Int16>)
// Vector256<int> vmuladj(Vector256<short> x, Vector256<short> y)
// AggressiveInlining
Vector256<int> vmuladj(Vector256<short> x, Vector256<short> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.Int32> System.Runtime.Intrinsics.X86.Avx2::MultiplyAddAdjacent(System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Runtime.Intrinsics.Vector256`1<System.Int16>)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
