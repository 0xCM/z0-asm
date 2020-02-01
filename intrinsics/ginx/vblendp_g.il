// Z0.Vector512`1<T> Z0.ginx::vblendp<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector512<byte> vblendp<byte>(Vector256<byte> x, Vector256<byte> y, Vector256<byte> spec)
// AggressiveInlining
Vector512<byte> vblendp<byte>(Vector256<byte> x, Vector256<byte> y, Vector256<byte> spec)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vblendv<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0008: ldarg.0
    IL_0009: ldarg.1
    IL_000A: ldarg.2
    IL_000B: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vnot<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0010: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vblendv<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0015: newobj System.Void System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>>::.ctor(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_001A: call Z0.Vector512`1<T> Z0.Vector512`1<T>::op_Implicit(System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>>)
    IL_001F: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Vector512`1<T> Z0.ginx::vblendp<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector512<sbyte> vblendp<sbyte>(Vector256<sbyte> x, Vector256<sbyte> y, Vector256<sbyte> spec)
// AggressiveInlining
Vector512<sbyte> vblendp<sbyte>(Vector256<sbyte> x, Vector256<sbyte> y, Vector256<sbyte> spec)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vblendv<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0008: ldarg.0
    IL_0009: ldarg.1
    IL_000A: ldarg.2
    IL_000B: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vnot<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0010: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vblendv<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0015: newobj System.Void System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>>::.ctor(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_001A: call Z0.Vector512`1<T> Z0.Vector512`1<T>::op_Implicit(System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>>)
    IL_001F: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Vector512`1<T> Z0.ginx::vblendp<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector512<ushort> vblendp<ushort>(Vector256<ushort> x, Vector256<ushort> y, Vector256<ushort> spec)
// AggressiveInlining
Vector512<ushort> vblendp<ushort>(Vector256<ushort> x, Vector256<ushort> y, Vector256<ushort> spec)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vblendv<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0008: ldarg.0
    IL_0009: ldarg.1
    IL_000A: ldarg.2
    IL_000B: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vnot<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0010: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vblendv<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0015: newobj System.Void System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>>::.ctor(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_001A: call Z0.Vector512`1<T> Z0.Vector512`1<T>::op_Implicit(System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>>)
    IL_001F: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Vector512`1<T> Z0.ginx::vblendp<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector512<short> vblendp<short>(Vector256<short> x, Vector256<short> y, Vector256<short> spec)
// AggressiveInlining
Vector512<short> vblendp<short>(Vector256<short> x, Vector256<short> y, Vector256<short> spec)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vblendv<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0008: ldarg.0
    IL_0009: ldarg.1
    IL_000A: ldarg.2
    IL_000B: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vnot<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0010: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vblendv<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0015: newobj System.Void System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>>::.ctor(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_001A: call Z0.Vector512`1<T> Z0.Vector512`1<T>::op_Implicit(System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>>)
    IL_001F: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Vector512`1<T> Z0.ginx::vblendp<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector512<uint> vblendp<uint>(Vector256<uint> x, Vector256<uint> y, Vector256<uint> spec)
// AggressiveInlining
Vector512<uint> vblendp<uint>(Vector256<uint> x, Vector256<uint> y, Vector256<uint> spec)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vblendv<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0008: ldarg.0
    IL_0009: ldarg.1
    IL_000A: ldarg.2
    IL_000B: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vnot<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0010: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vblendv<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0015: newobj System.Void System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>>::.ctor(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_001A: call Z0.Vector512`1<T> Z0.Vector512`1<T>::op_Implicit(System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>>)
    IL_001F: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Vector512`1<T> Z0.ginx::vblendp<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector512<int> vblendp<int>(Vector256<int> x, Vector256<int> y, Vector256<int> spec)
// AggressiveInlining
Vector512<int> vblendp<int>(Vector256<int> x, Vector256<int> y, Vector256<int> spec)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vblendv<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0008: ldarg.0
    IL_0009: ldarg.1
    IL_000A: ldarg.2
    IL_000B: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vnot<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0010: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vblendv<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0015: newobj System.Void System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>>::.ctor(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_001A: call Z0.Vector512`1<T> Z0.Vector512`1<T>::op_Implicit(System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>>)
    IL_001F: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Vector512`1<T> Z0.ginx::vblendp<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector512<ulong> vblendp<ulong>(Vector256<ulong> x, Vector256<ulong> y, Vector256<ulong> spec)
// AggressiveInlining
Vector512<ulong> vblendp<ulong>(Vector256<ulong> x, Vector256<ulong> y, Vector256<ulong> spec)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vblendv<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0008: ldarg.0
    IL_0009: ldarg.1
    IL_000A: ldarg.2
    IL_000B: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vnot<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0010: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vblendv<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0015: newobj System.Void System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>>::.ctor(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_001A: call Z0.Vector512`1<T> Z0.Vector512`1<T>::op_Implicit(System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>>)
    IL_001F: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Vector512`1<T> Z0.ginx::vblendp<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector512<long> vblendp<long>(Vector256<long> x, Vector256<long> y, Vector256<long> spec)
// AggressiveInlining
Vector512<long> vblendp<long>(Vector256<long> x, Vector256<long> y, Vector256<long> spec)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vblendv<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0008: ldarg.0
    IL_0009: ldarg.1
    IL_000A: ldarg.2
    IL_000B: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vnot<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0010: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vblendv<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0015: newobj System.Void System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>>::.ctor(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_001A: call Z0.Vector512`1<T> Z0.Vector512`1<T>::op_Implicit(System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>>)
    IL_001F: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Vector512`1<T> Z0.ginx::vblendp<T>(Z0.Vector512`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector512<byte> vblendp<byte>(Vector512<byte> x, Vector256<byte> spec)
// AggressiveInlining
Vector512<byte> vblendp<byte>(Vector512<byte> x, Vector256<byte> spec)
{
    IL_0000: ldarg.0
    IL_0001: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Lo
    IL_0006: ldarg.0
    IL_0007: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Hi
    IL_000C: ldarg.1
    IL_000D: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vblendv<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0012: ldarg.0
    IL_0013: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Lo
    IL_0018: ldarg.0
    IL_0019: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Hi
    IL_001E: ldarg.1
    IL_001F: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vnot<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0024: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vblendv<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0029: newobj System.Void System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>>::.ctor(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_002E: call Z0.Vector512`1<T> Z0.Vector512`1<T>::op_Implicit(System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>>)
    IL_0033: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Vector512`1<T> Z0.ginx::vblendp<T>(Z0.Vector512`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector512<sbyte> vblendp<sbyte>(Vector512<sbyte> x, Vector256<sbyte> spec)
// AggressiveInlining
Vector512<sbyte> vblendp<sbyte>(Vector512<sbyte> x, Vector256<sbyte> spec)
{
    IL_0000: ldarg.0
    IL_0001: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Lo
    IL_0006: ldarg.0
    IL_0007: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Hi
    IL_000C: ldarg.1
    IL_000D: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vblendv<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0012: ldarg.0
    IL_0013: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Lo
    IL_0018: ldarg.0
    IL_0019: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Hi
    IL_001E: ldarg.1
    IL_001F: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vnot<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0024: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vblendv<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0029: newobj System.Void System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>>::.ctor(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_002E: call Z0.Vector512`1<T> Z0.Vector512`1<T>::op_Implicit(System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>>)
    IL_0033: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Vector512`1<T> Z0.ginx::vblendp<T>(Z0.Vector512`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector512<ushort> vblendp<ushort>(Vector512<ushort> x, Vector256<ushort> spec)
// AggressiveInlining
Vector512<ushort> vblendp<ushort>(Vector512<ushort> x, Vector256<ushort> spec)
{
    IL_0000: ldarg.0
    IL_0001: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Lo
    IL_0006: ldarg.0
    IL_0007: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Hi
    IL_000C: ldarg.1
    IL_000D: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vblendv<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0012: ldarg.0
    IL_0013: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Lo
    IL_0018: ldarg.0
    IL_0019: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Hi
    IL_001E: ldarg.1
    IL_001F: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vnot<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0024: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vblendv<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0029: newobj System.Void System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>>::.ctor(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_002E: call Z0.Vector512`1<T> Z0.Vector512`1<T>::op_Implicit(System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>>)
    IL_0033: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Vector512`1<T> Z0.ginx::vblendp<T>(Z0.Vector512`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector512<short> vblendp<short>(Vector512<short> x, Vector256<short> spec)
// AggressiveInlining
Vector512<short> vblendp<short>(Vector512<short> x, Vector256<short> spec)
{
    IL_0000: ldarg.0
    IL_0001: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Lo
    IL_0006: ldarg.0
    IL_0007: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Hi
    IL_000C: ldarg.1
    IL_000D: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vblendv<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0012: ldarg.0
    IL_0013: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Lo
    IL_0018: ldarg.0
    IL_0019: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Hi
    IL_001E: ldarg.1
    IL_001F: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vnot<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0024: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vblendv<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0029: newobj System.Void System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>>::.ctor(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_002E: call Z0.Vector512`1<T> Z0.Vector512`1<T>::op_Implicit(System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>>)
    IL_0033: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Vector512`1<T> Z0.ginx::vblendp<T>(Z0.Vector512`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector512<uint> vblendp<uint>(Vector512<uint> x, Vector256<uint> spec)
// AggressiveInlining
Vector512<uint> vblendp<uint>(Vector512<uint> x, Vector256<uint> spec)
{
    IL_0000: ldarg.0
    IL_0001: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Lo
    IL_0006: ldarg.0
    IL_0007: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Hi
    IL_000C: ldarg.1
    IL_000D: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vblendv<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0012: ldarg.0
    IL_0013: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Lo
    IL_0018: ldarg.0
    IL_0019: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Hi
    IL_001E: ldarg.1
    IL_001F: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vnot<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0024: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vblendv<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0029: newobj System.Void System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>>::.ctor(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_002E: call Z0.Vector512`1<T> Z0.Vector512`1<T>::op_Implicit(System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>>)
    IL_0033: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Vector512`1<T> Z0.ginx::vblendp<T>(Z0.Vector512`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector512<int> vblendp<int>(Vector512<int> x, Vector256<int> spec)
// AggressiveInlining
Vector512<int> vblendp<int>(Vector512<int> x, Vector256<int> spec)
{
    IL_0000: ldarg.0
    IL_0001: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Lo
    IL_0006: ldarg.0
    IL_0007: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Hi
    IL_000C: ldarg.1
    IL_000D: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vblendv<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0012: ldarg.0
    IL_0013: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Lo
    IL_0018: ldarg.0
    IL_0019: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Hi
    IL_001E: ldarg.1
    IL_001F: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vnot<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0024: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vblendv<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0029: newobj System.Void System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>>::.ctor(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_002E: call Z0.Vector512`1<T> Z0.Vector512`1<T>::op_Implicit(System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>>)
    IL_0033: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Vector512`1<T> Z0.ginx::vblendp<T>(Z0.Vector512`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector512<ulong> vblendp<ulong>(Vector512<ulong> x, Vector256<ulong> spec)
// AggressiveInlining
Vector512<ulong> vblendp<ulong>(Vector512<ulong> x, Vector256<ulong> spec)
{
    IL_0000: ldarg.0
    IL_0001: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Lo
    IL_0006: ldarg.0
    IL_0007: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Hi
    IL_000C: ldarg.1
    IL_000D: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vblendv<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0012: ldarg.0
    IL_0013: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Lo
    IL_0018: ldarg.0
    IL_0019: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Hi
    IL_001E: ldarg.1
    IL_001F: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vnot<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0024: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vblendv<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0029: newobj System.Void System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>>::.ctor(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_002E: call Z0.Vector512`1<T> Z0.Vector512`1<T>::op_Implicit(System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>>)
    IL_0033: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Vector512`1<T> Z0.ginx::vblendp<T>(Z0.Vector512`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector512<long> vblendp<long>(Vector512<long> x, Vector256<long> spec)
// AggressiveInlining
Vector512<long> vblendp<long>(Vector512<long> x, Vector256<long> spec)
{
    IL_0000: ldarg.0
    IL_0001: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Lo
    IL_0006: ldarg.0
    IL_0007: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Hi
    IL_000C: ldarg.1
    IL_000D: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vblendv<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0012: ldarg.0
    IL_0013: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Lo
    IL_0018: ldarg.0
    IL_0019: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Hi
    IL_001E: ldarg.1
    IL_001F: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vnot<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0024: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vblendv<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0029: newobj System.Void System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>>::.ctor(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_002E: call Z0.Vector512`1<T> Z0.Vector512`1<T>::op_Implicit(System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>>)
    IL_0033: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vblendp<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
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
// System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vblendp<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
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
// System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vblendp<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
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
// System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vblendp<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
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
// System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vblendp<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
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
// System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vblendp<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
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
// System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vblendp<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
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
// System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vblendp<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
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
// System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vblendp<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector256<byte> vblendp<byte>(Vector256<byte> x, Vector128<byte> spec)
// AggressiveInlining
Vector256<byte> vblendp<byte>(Vector256<byte> x, Vector128<byte> spec)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vlo<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0006: ldarg.0
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vhi<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_000C: ldarg.1
    IL_000D: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vblendv<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0012: ldarg.0
    IL_0013: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vlo<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0018: ldarg.0
    IL_0019: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vhi<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_001E: ldarg.1
    IL_001F: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vnot<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0024: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vblendv<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0029: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vconcat<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_002E: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vblendp<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector256<sbyte> vblendp<sbyte>(Vector256<sbyte> x, Vector128<sbyte> spec)
// AggressiveInlining
Vector256<sbyte> vblendp<sbyte>(Vector256<sbyte> x, Vector128<sbyte> spec)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vlo<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0006: ldarg.0
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vhi<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_000C: ldarg.1
    IL_000D: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vblendv<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0012: ldarg.0
    IL_0013: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vlo<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0018: ldarg.0
    IL_0019: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vhi<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_001E: ldarg.1
    IL_001F: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vnot<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0024: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vblendv<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0029: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vconcat<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_002E: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vblendp<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector256<ushort> vblendp<ushort>(Vector256<ushort> x, Vector128<ushort> spec)
// AggressiveInlining
Vector256<ushort> vblendp<ushort>(Vector256<ushort> x, Vector128<ushort> spec)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vlo<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0006: ldarg.0
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vhi<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_000C: ldarg.1
    IL_000D: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vblendv<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0012: ldarg.0
    IL_0013: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vlo<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0018: ldarg.0
    IL_0019: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vhi<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_001E: ldarg.1
    IL_001F: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vnot<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0024: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vblendv<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0029: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vconcat<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_002E: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vblendp<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector256<short> vblendp<short>(Vector256<short> x, Vector128<short> spec)
// AggressiveInlining
Vector256<short> vblendp<short>(Vector256<short> x, Vector128<short> spec)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vlo<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0006: ldarg.0
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vhi<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_000C: ldarg.1
    IL_000D: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vblendv<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0012: ldarg.0
    IL_0013: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vlo<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0018: ldarg.0
    IL_0019: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vhi<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_001E: ldarg.1
    IL_001F: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vnot<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0024: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vblendv<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0029: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vconcat<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_002E: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vblendp<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector256<uint> vblendp<uint>(Vector256<uint> x, Vector128<uint> spec)
// AggressiveInlining
Vector256<uint> vblendp<uint>(Vector256<uint> x, Vector128<uint> spec)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vlo<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0006: ldarg.0
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vhi<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_000C: ldarg.1
    IL_000D: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vblendv<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0012: ldarg.0
    IL_0013: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vlo<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0018: ldarg.0
    IL_0019: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vhi<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_001E: ldarg.1
    IL_001F: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vnot<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0024: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vblendv<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0029: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vconcat<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_002E: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vblendp<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector256<int> vblendp<int>(Vector256<int> x, Vector128<int> spec)
// AggressiveInlining
Vector256<int> vblendp<int>(Vector256<int> x, Vector128<int> spec)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vlo<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0006: ldarg.0
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vhi<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_000C: ldarg.1
    IL_000D: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vblendv<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0012: ldarg.0
    IL_0013: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vlo<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0018: ldarg.0
    IL_0019: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vhi<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_001E: ldarg.1
    IL_001F: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vnot<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0024: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vblendv<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0029: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vconcat<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_002E: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vblendp<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector256<ulong> vblendp<ulong>(Vector256<ulong> x, Vector128<ulong> spec)
// AggressiveInlining
Vector256<ulong> vblendp<ulong>(Vector256<ulong> x, Vector128<ulong> spec)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vlo<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0006: ldarg.0
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vhi<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_000C: ldarg.1
    IL_000D: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vblendv<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0012: ldarg.0
    IL_0013: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vlo<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0018: ldarg.0
    IL_0019: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vhi<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_001E: ldarg.1
    IL_001F: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vnot<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0024: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vblendv<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0029: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vconcat<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_002E: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vblendp<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector256<long> vblendp<long>(Vector256<long> x, Vector128<long> spec)
// AggressiveInlining
Vector256<long> vblendp<long>(Vector256<long> x, Vector128<long> spec)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vlo<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0006: ldarg.0
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vhi<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_000C: ldarg.1
    IL_000D: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vblendv<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0012: ldarg.0
    IL_0013: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vlo<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0018: ldarg.0
    IL_0019: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vhi<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_001E: ldarg.1
    IL_001F: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vnot<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0024: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vblendv<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0029: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vconcat<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_002E: ret
}
------------------------------------------------------------------------------------------------------------------------
