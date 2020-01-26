// Id := 100663968, Name := System.Runtime.Intrinsics.Vector128`1<System.SByte> Z0.dinx::vswaphl(System.Runtime.Intrinsics.Vector128`1<System.SByte>)
// Vector128<sbyte> vswaphl(Vector128<sbyte> x)
// AggressiveInlining
Vector128<sbyte> vswaphl(Vector128<sbyte> x)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.s 78
    IL_0003: call System.Runtime.Intrinsics.Vector128`1<System.SByte> Z0.dinx::vshuf2x64(System.Runtime.Intrinsics.Vector128`1<System.SByte>,Z0.Arrange2L)
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663969, Name := System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vswaphl(System.Runtime.Intrinsics.Vector128`1<System.Byte>)
// Vector128<byte> vswaphl(Vector128<byte> x)
// AggressiveInlining
Vector128<byte> vswaphl(Vector128<byte> x)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.s 78
    IL_0003: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vshuf2x64(System.Runtime.Intrinsics.Vector128`1<System.Byte>,Z0.Arrange2L)
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663970, Name := System.Runtime.Intrinsics.Vector128`1<System.Int16> Z0.dinx::vswaphl(System.Runtime.Intrinsics.Vector128`1<System.Int16>)
// Vector128<short> vswaphl(Vector128<short> x)
// AggressiveInlining
Vector128<short> vswaphl(Vector128<short> x)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.s 78
    IL_0003: call System.Runtime.Intrinsics.Vector128`1<System.Int16> Z0.dinx::vshuf2x64(System.Runtime.Intrinsics.Vector128`1<System.Int16>,Z0.Arrange2L)
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663972, Name := System.Runtime.Intrinsics.Vector128`1<System.Int32> Z0.dinx::vswaphl(System.Runtime.Intrinsics.Vector128`1<System.Int32>)
// Vector128<int> vswaphl(Vector128<int> x)
// AggressiveInlining
Vector128<int> vswaphl(Vector128<int> x)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.s 78
    IL_0003: call System.Runtime.Intrinsics.Vector128`1<System.Int32> Z0.dinx::vshuf2x64(System.Runtime.Intrinsics.Vector128`1<System.Int32>,Z0.Arrange2L)
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663973, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vswaphl(System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
// Vector128<uint> vswaphl(Vector128<uint> x)
// AggressiveInlining
Vector128<uint> vswaphl(Vector128<uint> x)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.s 78
    IL_0003: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vshuf2x64(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,Z0.Arrange2L)
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663974, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vswaphl(System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
// Vector128<ulong> vswaphl(Vector128<ulong> x)
// AggressiveInlining
Vector128<ulong> vswaphl(Vector128<ulong> x)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.s 78
    IL_0003: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vshuf2x64(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,Z0.Arrange2L)
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663975, Name := System.Runtime.Intrinsics.Vector128`1<System.Int64> Z0.dinx::vswaphl(System.Runtime.Intrinsics.Vector128`1<System.Int64>)
// Vector128<long> vswaphl(Vector128<long> x)
// AggressiveInlining
Vector128<long> vswaphl(Vector128<long> x)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.s 78
    IL_0003: call System.Runtime.Intrinsics.Vector128`1<System.Int64> Z0.dinx::vshuf2x64(System.Runtime.Intrinsics.Vector128`1<System.Int64>,Z0.Arrange2L)
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663976, Name := System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vswaphl(System.Runtime.Intrinsics.Vector256`1<System.Byte>)
// Vector256<byte> vswaphl(Vector256<byte> x)
// AggressiveInlining
Vector256<byte> vswaphl(Vector256<byte> x)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.0
    IL_0002: ldc.i4.3
    IL_0003: call System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vperm2x128(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>,Z0.Perm2x4)
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663977, Name := System.Runtime.Intrinsics.Vector256`1<System.SByte> Z0.dinx::vswaphl(System.Runtime.Intrinsics.Vector256`1<System.SByte>)
// Vector256<sbyte> vswaphl(Vector256<sbyte> x)
// AggressiveInlining
Vector256<sbyte> vswaphl(Vector256<sbyte> x)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.0
    IL_0002: ldc.i4.3
    IL_0003: call System.Runtime.Intrinsics.Vector256`1<System.SByte> Z0.dinx::vperm2x128(System.Runtime.Intrinsics.Vector256`1<System.SByte>,System.Runtime.Intrinsics.Vector256`1<System.SByte>,Z0.Perm2x4)
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663978, Name := System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.dinx::vswaphl(System.Runtime.Intrinsics.Vector256`1<System.Int16>)
// Vector256<short> vswaphl(Vector256<short> x)
// AggressiveInlining
Vector256<short> vswaphl(Vector256<short> x)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.0
    IL_0002: ldc.i4.3
    IL_0003: call System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.dinx::vperm2x128(System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Runtime.Intrinsics.Vector256`1<System.Int16>,Z0.Perm2x4)
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663979, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vswaphl(System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
// Vector256<ushort> vswaphl(Vector256<ushort> x)
// AggressiveInlining
Vector256<ushort> vswaphl(Vector256<ushort> x)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.0
    IL_0002: ldc.i4.3
    IL_0003: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vperm2x128(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>,Z0.Perm2x4)
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663980, Name := System.Runtime.Intrinsics.Vector256`1<System.Int32> Z0.dinx::vswaphl(System.Runtime.Intrinsics.Vector256`1<System.Int32>)
// Vector256<int> vswaphl(Vector256<int> x)
// AggressiveInlining
Vector256<int> vswaphl(Vector256<int> x)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.0
    IL_0002: ldc.i4.3
    IL_0003: call System.Runtime.Intrinsics.Vector256`1<System.Int32> Z0.dinx::vperm2x128(System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.Int32>,Z0.Perm2x4)
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663981, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vswaphl(System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
// Vector256<uint> vswaphl(Vector256<uint> x)
// AggressiveInlining
Vector256<uint> vswaphl(Vector256<uint> x)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.0
    IL_0002: ldc.i4.3
    IL_0003: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vperm2x128(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>,Z0.Perm2x4)
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663982, Name := System.Runtime.Intrinsics.Vector256`1<System.Int64> Z0.dinx::vswaphl(System.Runtime.Intrinsics.Vector256`1<System.Int64>)
// Vector256<long> vswaphl(Vector256<long> x)
// AggressiveInlining
Vector256<long> vswaphl(Vector256<long> x)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.0
    IL_0002: ldc.i4.3
    IL_0003: call System.Runtime.Intrinsics.Vector256`1<System.Int64> Z0.dinx::vperm2x128(System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Runtime.Intrinsics.Vector256`1<System.Int64>,Z0.Perm2x4)
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663983, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vswaphl(System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
// Vector256<ulong> vswaphl(Vector256<ulong> x)
// AggressiveInlining
Vector256<ulong> vswaphl(Vector256<ulong> x)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.0
    IL_0002: ldc.i4.3
    IL_0003: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vperm2x128(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>,Z0.Perm2x4)
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
