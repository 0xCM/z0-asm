// Id := 100665462, Name := Z0.Vector512`1<T> Z0.ginx::vblendp<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
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
// Id := 100665462, Name := Z0.Vector512`1<T> Z0.ginx::vblendp<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
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
// Id := 100665462, Name := Z0.Vector512`1<T> Z0.ginx::vblendp<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
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
// Id := 100665462, Name := Z0.Vector512`1<T> Z0.ginx::vblendp<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
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
// Id := 100665462, Name := Z0.Vector512`1<T> Z0.ginx::vblendp<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
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
// Id := 100665462, Name := Z0.Vector512`1<T> Z0.ginx::vblendp<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
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
// Id := 100665462, Name := Z0.Vector512`1<T> Z0.ginx::vblendp<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
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
// Id := 100665462, Name := Z0.Vector512`1<T> Z0.ginx::vblendp<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
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
