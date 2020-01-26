// Id := 100665112, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vbitblend(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
// Vector256<uint> vbitblend(Vector256<uint> x, Vector256<uint> y, Vector256<uint> mask)
// AggressiveInlining
Vector256<uint> vbitblend(Vector256<uint> x, Vector256<uint> y, Vector256<uint> mask)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.0
    IL_0002: ldarg.1
    IL_0003: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vxor(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_0008: ldarg.2
    IL_0009: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vand(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_000E: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vxor(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_0013: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100665113, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vbitblend(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
// Vector256<ulong> vbitblend(Vector256<ulong> x, Vector256<ulong> y, Vector256<ulong> mask)
// AggressiveInlining
Vector256<ulong> vbitblend(Vector256<ulong> x, Vector256<ulong> y, Vector256<ulong> mask)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.0
    IL_0002: ldarg.1
    IL_0003: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vxor(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_0008: ldarg.2
    IL_0009: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vand(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_000E: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vxor(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_0013: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100665106, Name := System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vbitblend(System.Runtime.Intrinsics.Vector128`1<System.Byte>,System.Runtime.Intrinsics.Vector128`1<System.Byte>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
// Vector128<byte> vbitblend(Vector128<byte> x, Vector128<byte> y, Vector128<byte> mask)
// AggressiveInlining
Vector128<byte> vbitblend(Vector128<byte> x, Vector128<byte> y, Vector128<byte> mask)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.0
    IL_0002: ldarg.1
    IL_0003: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vxor(System.Runtime.Intrinsics.Vector128`1<System.Byte>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0008: ldarg.2
    IL_0009: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vand(System.Runtime.Intrinsics.Vector128`1<System.Byte>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_000E: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vxor(System.Runtime.Intrinsics.Vector128`1<System.Byte>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0013: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100665107, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vbitblend(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
// Vector128<ushort> vbitblend(Vector128<ushort> x, Vector128<ushort> y, Vector128<ushort> mask)
// AggressiveInlining
Vector128<ushort> vbitblend(Vector128<ushort> x, Vector128<ushort> y, Vector128<ushort> mask)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.0
    IL_0002: ldarg.1
    IL_0003: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vxor(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
    IL_0008: ldarg.2
    IL_0009: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vand(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
    IL_000E: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vxor(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
    IL_0013: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100665108, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vbitblend(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
// Vector128<uint> vbitblend(Vector128<uint> x, Vector128<uint> y, Vector128<uint> mask)
// AggressiveInlining
Vector128<uint> vbitblend(Vector128<uint> x, Vector128<uint> y, Vector128<uint> mask)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.0
    IL_0002: ldarg.1
    IL_0003: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vxor(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_0008: ldarg.2
    IL_0009: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vand(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_000E: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vxor(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_0013: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100665109, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vbitblend(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
// Vector128<ulong> vbitblend(Vector128<ulong> x, Vector128<ulong> y, Vector128<ulong> mask)
// AggressiveInlining
Vector128<ulong> vbitblend(Vector128<ulong> x, Vector128<ulong> y, Vector128<ulong> mask)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.0
    IL_0002: ldarg.1
    IL_0003: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vxor(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_0008: ldarg.2
    IL_0009: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vand(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_000E: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vxor(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_0013: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100665110, Name := System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vbitblend(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
// Vector256<byte> vbitblend(Vector256<byte> x, Vector256<byte> y, Vector256<byte> mask)
// AggressiveInlining
Vector256<byte> vbitblend(Vector256<byte> x, Vector256<byte> y, Vector256<byte> mask)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.0
    IL_0002: ldarg.1
    IL_0003: call System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vxor(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_0008: ldarg.2
    IL_0009: call System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vand(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_000E: call System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vxor(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_0013: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100665111, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vbitblend(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
// Vector256<ushort> vbitblend(Vector256<ushort> x, Vector256<ushort> y, Vector256<ushort> mask)
// AggressiveInlining
Vector256<ushort> vbitblend(Vector256<ushort> x, Vector256<ushort> y, Vector256<ushort> mask)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.0
    IL_0002: ldarg.1
    IL_0003: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vxor(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
    IL_0008: ldarg.2
    IL_0009: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vand(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
    IL_000E: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vxor(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
    IL_0013: ret
}
------------------------------------------------------------------------------------------------------------------------
