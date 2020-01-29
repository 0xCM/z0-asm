// Id := 100665460, Name := Z0.Vector512`1<T> Z0.ginx::vblendp<T>(Z0.Vector512`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
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
// Id := 100665460, Name := Z0.Vector512`1<T> Z0.ginx::vblendp<T>(Z0.Vector512`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
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
// Id := 100665460, Name := Z0.Vector512`1<T> Z0.ginx::vblendp<T>(Z0.Vector512`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
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
// Id := 100665460, Name := Z0.Vector512`1<T> Z0.ginx::vblendp<T>(Z0.Vector512`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
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
// Id := 100665460, Name := Z0.Vector512`1<T> Z0.ginx::vblendp<T>(Z0.Vector512`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
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
// Id := 100665460, Name := Z0.Vector512`1<T> Z0.ginx::vblendp<T>(Z0.Vector512`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
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
// Id := 100665460, Name := Z0.Vector512`1<T> Z0.ginx::vblendp<T>(Z0.Vector512`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
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
// Id := 100665460, Name := Z0.Vector512`1<T> Z0.ginx::vblendp<T>(Z0.Vector512`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
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
