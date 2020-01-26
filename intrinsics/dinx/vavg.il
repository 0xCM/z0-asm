// Id := 100663491, Name := System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vavg(System.Runtime.Intrinsics.Vector128`1<System.Byte>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
// Vector128<byte> vavg(Vector128<byte> lhs, Vector128<byte> rhs)
// AggressiveInlining
Vector128<byte> vavg(Vector128<byte> lhs, Vector128<byte> rhs)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.Byte> System.Runtime.Intrinsics.X86.Sse2::Average(System.Runtime.Intrinsics.Vector128`1<System.Byte>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663492, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vavg(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
// Vector128<ushort> vavg(Vector128<ushort> lhs, Vector128<ushort> rhs)
// AggressiveInlining
Vector128<ushort> vavg(Vector128<ushort> lhs, Vector128<ushort> rhs)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> System.Runtime.Intrinsics.X86.Sse2::Average(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663493, Name := System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vavg(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
// Vector256<byte> vavg(Vector256<byte> lhs, Vector256<byte> rhs)
// AggressiveInlining
Vector256<byte> vavg(Vector256<byte> lhs, Vector256<byte> rhs)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.Byte> System.Runtime.Intrinsics.X86.Avx2::Average(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663494, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vavg(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
// Vector256<ushort> vavg(Vector256<ushort> lhs, Vector256<ushort> rhs)
// AggressiveInlining
Vector256<ushort> vavg(Vector256<ushort> lhs, Vector256<ushort> rhs)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> System.Runtime.Intrinsics.X86.Avx2::Average(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
