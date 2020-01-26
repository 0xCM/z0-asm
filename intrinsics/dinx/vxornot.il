// Id := 100664218, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vxornot(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
// Vector256<uint> vxornot(Vector256<uint> x, Vector256<uint> y)
// AggressiveInlining
Vector256<uint> vxornot(Vector256<uint> x, Vector256<uint> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vnot(System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_0007: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> System.Runtime.Intrinsics.X86.Avx2::Xor(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664219, Name := System.Runtime.Intrinsics.Vector256`1<System.Int64> Z0.dinx::vxornot(System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Runtime.Intrinsics.Vector256`1<System.Int64>)
// Vector256<long> vxornot(Vector256<long> x, Vector256<long> y)
// AggressiveInlining
Vector256<long> vxornot(Vector256<long> x, Vector256<long> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.Int64> Z0.dinx::vnot(System.Runtime.Intrinsics.Vector256`1<System.Int64>)
    IL_0007: call System.Runtime.Intrinsics.Vector256`1<System.Int64> System.Runtime.Intrinsics.X86.Avx2::Xor(System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Runtime.Intrinsics.Vector256`1<System.Int64>)
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664220, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vxornot(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
// Vector256<ulong> vxornot(Vector256<ulong> x, Vector256<ulong> y)
// AggressiveInlining
Vector256<ulong> vxornot(Vector256<ulong> x, Vector256<ulong> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vnot(System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_0007: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> System.Runtime.Intrinsics.X86.Avx2::Xor(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664205, Name := System.Runtime.Intrinsics.Vector128`1<System.SByte> Z0.dinx::vxornot(System.Runtime.Intrinsics.Vector128`1<System.SByte>,System.Runtime.Intrinsics.Vector128`1<System.SByte>)
// Vector128<sbyte> vxornot(Vector128<sbyte> x, Vector128<sbyte> y)
// AggressiveInlining
Vector128<sbyte> vxornot(Vector128<sbyte> x, Vector128<sbyte> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.SByte> Z0.dinx::vnot(System.Runtime.Intrinsics.Vector128`1<System.SByte>)
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.SByte> System.Runtime.Intrinsics.X86.Sse2::Xor(System.Runtime.Intrinsics.Vector128`1<System.SByte>,System.Runtime.Intrinsics.Vector128`1<System.SByte>)
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664206, Name := System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vxornot(System.Runtime.Intrinsics.Vector128`1<System.Byte>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
// Vector128<byte> vxornot(Vector128<byte> x, Vector128<byte> y)
// AggressiveInlining
Vector128<byte> vxornot(Vector128<byte> x, Vector128<byte> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vnot(System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.Byte> System.Runtime.Intrinsics.X86.Sse2::Xor(System.Runtime.Intrinsics.Vector128`1<System.Byte>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664207, Name := System.Runtime.Intrinsics.Vector128`1<System.Int16> Z0.dinx::vxornot(System.Runtime.Intrinsics.Vector128`1<System.Int16>,System.Runtime.Intrinsics.Vector128`1<System.Int16>)
// Vector128<Int16> vxornot(Vector128<Int16> x, Vector128<Int16> y)
// AggressiveInlining
Vector128<Int16> vxornot(Vector128<Int16> x, Vector128<Int16> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.Int16> Z0.dinx::vnot(System.Runtime.Intrinsics.Vector128`1<System.Int16>)
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.Int16> System.Runtime.Intrinsics.X86.Sse2::Xor(System.Runtime.Intrinsics.Vector128`1<System.Int16>,System.Runtime.Intrinsics.Vector128`1<System.Int16>)
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664208, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vxornot(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
// Vector128<ushort> vxornot(Vector128<ushort> x, Vector128<ushort> y)
// AggressiveInlining
Vector128<ushort> vxornot(Vector128<ushort> x, Vector128<ushort> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vnot(System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> System.Runtime.Intrinsics.X86.Sse2::Xor(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664209, Name := System.Runtime.Intrinsics.Vector128`1<System.Int32> Z0.dinx::vxornot(System.Runtime.Intrinsics.Vector128`1<System.Int32>,System.Runtime.Intrinsics.Vector128`1<System.Int32>)
// Vector128<int> vxornot(Vector128<int> x, Vector128<int> y)
// AggressiveInlining
Vector128<int> vxornot(Vector128<int> x, Vector128<int> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.Int32> Z0.dinx::vnot(System.Runtime.Intrinsics.Vector128`1<System.Int32>)
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.Int32> System.Runtime.Intrinsics.X86.Sse2::Xor(System.Runtime.Intrinsics.Vector128`1<System.Int32>,System.Runtime.Intrinsics.Vector128`1<System.Int32>)
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664210, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vxornot(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
// Vector128<uint> vxornot(Vector128<uint> x, Vector128<uint> y)
// AggressiveInlining
Vector128<uint> vxornot(Vector128<uint> x, Vector128<uint> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vnot(System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> System.Runtime.Intrinsics.X86.Sse2::Xor(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664211, Name := System.Runtime.Intrinsics.Vector128`1<System.Int64> Z0.dinx::vxornot(System.Runtime.Intrinsics.Vector128`1<System.Int64>,System.Runtime.Intrinsics.Vector128`1<System.Int64>)
// Vector128<long> vxornot(Vector128<long> x, Vector128<long> y)
// AggressiveInlining
Vector128<long> vxornot(Vector128<long> x, Vector128<long> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.Int64> Z0.dinx::vnot(System.Runtime.Intrinsics.Vector128`1<System.Int64>)
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.Int64> System.Runtime.Intrinsics.X86.Sse2::Xor(System.Runtime.Intrinsics.Vector128`1<System.Int64>,System.Runtime.Intrinsics.Vector128`1<System.Int64>)
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664212, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vxornot(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
// Vector128<ulong> vxornot(Vector128<ulong> x, Vector128<ulong> y)
// AggressiveInlining
Vector128<ulong> vxornot(Vector128<ulong> x, Vector128<ulong> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vnot(System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> System.Runtime.Intrinsics.X86.Sse2::Xor(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664213, Name := System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vxornot(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
// Vector256<byte> vxornot(Vector256<byte> x, Vector256<byte> y)
// AggressiveInlining
Vector256<byte> vxornot(Vector256<byte> x, Vector256<byte> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vnot(System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_0007: call System.Runtime.Intrinsics.Vector256`1<System.Byte> System.Runtime.Intrinsics.X86.Avx2::Xor(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664214, Name := System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.dinx::vxornot(System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Runtime.Intrinsics.Vector256`1<System.Int16>)
// Vector256<Int16> vxornot(Vector256<Int16> x, Vector256<Int16> y)
// AggressiveInlining
Vector256<Int16> vxornot(Vector256<Int16> x, Vector256<Int16> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.dinx::vnot(System.Runtime.Intrinsics.Vector256`1<System.Int16>)
    IL_0007: call System.Runtime.Intrinsics.Vector256`1<System.Int16> System.Runtime.Intrinsics.X86.Avx2::Xor(System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Runtime.Intrinsics.Vector256`1<System.Int16>)
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664215, Name := System.Runtime.Intrinsics.Vector256`1<System.SByte> Z0.dinx::vxornot(System.Runtime.Intrinsics.Vector256`1<System.SByte>,System.Runtime.Intrinsics.Vector256`1<System.SByte>)
// Vector256<sbyte> vxornot(Vector256<sbyte> x, Vector256<sbyte> y)
// AggressiveInlining
Vector256<sbyte> vxornot(Vector256<sbyte> x, Vector256<sbyte> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.SByte> Z0.dinx::vnot(System.Runtime.Intrinsics.Vector256`1<System.SByte>)
    IL_0007: call System.Runtime.Intrinsics.Vector256`1<System.SByte> System.Runtime.Intrinsics.X86.Avx2::Xor(System.Runtime.Intrinsics.Vector256`1<System.SByte>,System.Runtime.Intrinsics.Vector256`1<System.SByte>)
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664216, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vxornot(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
// Vector256<ushort> vxornot(Vector256<ushort> x, Vector256<ushort> y)
// AggressiveInlining
Vector256<ushort> vxornot(Vector256<ushort> x, Vector256<ushort> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vnot(System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
    IL_0007: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> System.Runtime.Intrinsics.X86.Avx2::Xor(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664217, Name := System.Runtime.Intrinsics.Vector256`1<System.Int32> Z0.dinx::vxornot(System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.Int32>)
// Vector256<int> vxornot(Vector256<int> x, Vector256<int> y)
// AggressiveInlining
Vector256<int> vxornot(Vector256<int> x, Vector256<int> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.Int32> Z0.dinx::vnot(System.Runtime.Intrinsics.Vector256`1<System.Int32>)
    IL_0007: call System.Runtime.Intrinsics.Vector256`1<System.Int32> System.Runtime.Intrinsics.X86.Avx2::Xor(System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.Int32>)
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
