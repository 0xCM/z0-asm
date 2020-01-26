// Id := 100665464, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vblendp<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector256<byte> vblendp<byte>(Vector128<byte> x, Vector128<byte> y, Vector128<byte> spec)
// AggressiveInlining
Vector256<byte> vblendp<byte>(Vector128<byte> x, Vector128<byte> y, Vector128<byte> spec)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vblendv<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0008: ldarg.0
    IL_0009: ldarg.1
    IL_000A: ldarg.2
    IL_000B: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vnot<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0010: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vblendv<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0015: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vconcat<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_001A: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100665464, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vblendp<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector256<sbyte> vblendp<sbyte>(Vector128<sbyte> x, Vector128<sbyte> y, Vector128<sbyte> spec)
// AggressiveInlining
Vector256<sbyte> vblendp<sbyte>(Vector128<sbyte> x, Vector128<sbyte> y, Vector128<sbyte> spec)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vblendv<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0008: ldarg.0
    IL_0009: ldarg.1
    IL_000A: ldarg.2
    IL_000B: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vnot<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0010: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vblendv<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0015: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vconcat<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_001A: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100665464, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vblendp<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector256<ushort> vblendp<ushort>(Vector128<ushort> x, Vector128<ushort> y, Vector128<ushort> spec)
// AggressiveInlining
Vector256<ushort> vblendp<ushort>(Vector128<ushort> x, Vector128<ushort> y, Vector128<ushort> spec)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vblendv<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0008: ldarg.0
    IL_0009: ldarg.1
    IL_000A: ldarg.2
    IL_000B: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vnot<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0010: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vblendv<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0015: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vconcat<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_001A: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100665464, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vblendp<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector256<short> vblendp<short>(Vector128<short> x, Vector128<short> y, Vector128<short> spec)
// AggressiveInlining
Vector256<short> vblendp<short>(Vector128<short> x, Vector128<short> y, Vector128<short> spec)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vblendv<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0008: ldarg.0
    IL_0009: ldarg.1
    IL_000A: ldarg.2
    IL_000B: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vnot<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0010: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vblendv<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0015: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vconcat<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_001A: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100665464, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vblendp<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector256<uint> vblendp<uint>(Vector128<uint> x, Vector128<uint> y, Vector128<uint> spec)
// AggressiveInlining
Vector256<uint> vblendp<uint>(Vector128<uint> x, Vector128<uint> y, Vector128<uint> spec)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vblendv<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0008: ldarg.0
    IL_0009: ldarg.1
    IL_000A: ldarg.2
    IL_000B: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vnot<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0010: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vblendv<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0015: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vconcat<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_001A: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100665464, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vblendp<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector256<int> vblendp<int>(Vector128<int> x, Vector128<int> y, Vector128<int> spec)
// AggressiveInlining
Vector256<int> vblendp<int>(Vector128<int> x, Vector128<int> y, Vector128<int> spec)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vblendv<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0008: ldarg.0
    IL_0009: ldarg.1
    IL_000A: ldarg.2
    IL_000B: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vnot<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0010: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vblendv<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0015: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vconcat<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_001A: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100665464, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vblendp<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector256<ulong> vblendp<ulong>(Vector128<ulong> x, Vector128<ulong> y, Vector128<ulong> spec)
// AggressiveInlining
Vector256<ulong> vblendp<ulong>(Vector128<ulong> x, Vector128<ulong> y, Vector128<ulong> spec)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vblendv<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0008: ldarg.0
    IL_0009: ldarg.1
    IL_000A: ldarg.2
    IL_000B: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vnot<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0010: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vblendv<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0015: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vconcat<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_001A: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100665464, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vblendp<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector256<long> vblendp<long>(Vector128<long> x, Vector128<long> y, Vector128<long> spec)
// AggressiveInlining
Vector256<long> vblendp<long>(Vector128<long> x, Vector128<long> y, Vector128<long> spec)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vblendv<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0008: ldarg.0
    IL_0009: ldarg.1
    IL_000A: ldarg.2
    IL_000B: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vnot<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0010: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vblendv<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0015: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vconcat<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_001A: ret
}
------------------------------------------------------------------------------------------------------------------------
