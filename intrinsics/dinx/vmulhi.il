// Id := 100663562, Name := System.Runtime.Intrinsics.Vector128`1<System.Int16> Z0.dinx::vmulhi(System.Runtime.Intrinsics.Vector128`1<System.Int16>,System.Runtime.Intrinsics.Vector128`1<System.Int16>)
// Vector128<Int16> vmulhi(Vector128<Int16> x, Vector128<Int16> y)
// AggressiveInlining
Vector128<Int16> vmulhi(Vector128<Int16> x, Vector128<Int16> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.Int16> System.Runtime.Intrinsics.X86.Sse2::MultiplyHigh(System.Runtime.Intrinsics.Vector128`1<System.Int16>,System.Runtime.Intrinsics.Vector128`1<System.Int16>)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663563, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vmulhi(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
// Vector128<ushort> vmulhi(Vector128<ushort> x, Vector128<ushort> y)
// AggressiveInlining
Vector128<ushort> vmulhi(Vector128<ushort> x, Vector128<ushort> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> System.Runtime.Intrinsics.X86.Sse2::MultiplyHigh(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663564, Name := System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.dinx::vmulhi(System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Runtime.Intrinsics.Vector256`1<System.Int16>)
// Vector256<Int16> vmulhi(Vector256<Int16> x, Vector256<Int16> y)
// AggressiveInlining
Vector256<Int16> vmulhi(Vector256<Int16> x, Vector256<Int16> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.Int16> System.Runtime.Intrinsics.X86.Avx2::MultiplyHigh(System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Runtime.Intrinsics.Vector256`1<System.Int16>)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663565, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vmulhi(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
// Vector256<ushort> vmulhi(Vector256<ushort> x, Vector256<ushort> y)
// AggressiveInlining
Vector256<ushort> vmulhi(Vector256<ushort> x, Vector256<ushort> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> System.Runtime.Intrinsics.X86.Avx2::MultiplyHigh(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
