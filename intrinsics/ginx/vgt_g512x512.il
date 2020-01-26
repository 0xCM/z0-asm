// Id := 100665483, Name := Z0.Vector512`1<T> Z0.ginx::vgt<T>(Z0.Vector512`1<T>&,Z0.Vector512`1<T>&)
// Vector512<byte> vgt<byte>(in Vector512<byte> x, in Vector512<byte> y)
// AggressiveInlining
Vector512<byte> vgt<byte>(in Vector512<byte> x, in Vector512<byte> y)
{
    IL_0000: ldarg.0
    IL_0001: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Lo
    IL_0006: ldarg.1
    IL_0007: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Lo
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vgt<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0011: ldarg.0
    IL_0012: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Hi
    IL_0017: ldarg.1
    IL_0018: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Hi
    IL_001D: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vgt<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0022: newobj System.Void System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>>::.ctor(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0027: call Z0.Vector512`1<T> Z0.Vector512`1<T>::op_Implicit(System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>>)
    IL_002C: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100665483, Name := Z0.Vector512`1<T> Z0.ginx::vgt<T>(Z0.Vector512`1<T>&,Z0.Vector512`1<T>&)
// Vector512<sbyte> vgt<sbyte>(in Vector512<sbyte> x, in Vector512<sbyte> y)
// AggressiveInlining
Vector512<sbyte> vgt<sbyte>(in Vector512<sbyte> x, in Vector512<sbyte> y)
{
    IL_0000: ldarg.0
    IL_0001: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Lo
    IL_0006: ldarg.1
    IL_0007: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Lo
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vgt<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0011: ldarg.0
    IL_0012: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Hi
    IL_0017: ldarg.1
    IL_0018: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Hi
    IL_001D: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vgt<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0022: newobj System.Void System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>>::.ctor(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0027: call Z0.Vector512`1<T> Z0.Vector512`1<T>::op_Implicit(System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>>)
    IL_002C: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100665483, Name := Z0.Vector512`1<T> Z0.ginx::vgt<T>(Z0.Vector512`1<T>&,Z0.Vector512`1<T>&)
// Vector512<ushort> vgt<ushort>(in Vector512<ushort> x, in Vector512<ushort> y)
// AggressiveInlining
Vector512<ushort> vgt<ushort>(in Vector512<ushort> x, in Vector512<ushort> y)
{
    IL_0000: ldarg.0
    IL_0001: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Lo
    IL_0006: ldarg.1
    IL_0007: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Lo
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vgt<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0011: ldarg.0
    IL_0012: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Hi
    IL_0017: ldarg.1
    IL_0018: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Hi
    IL_001D: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vgt<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0022: newobj System.Void System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>>::.ctor(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0027: call Z0.Vector512`1<T> Z0.Vector512`1<T>::op_Implicit(System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>>)
    IL_002C: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100665483, Name := Z0.Vector512`1<T> Z0.ginx::vgt<T>(Z0.Vector512`1<T>&,Z0.Vector512`1<T>&)
// Vector512<short> vgt<short>(in Vector512<short> x, in Vector512<short> y)
// AggressiveInlining
Vector512<short> vgt<short>(in Vector512<short> x, in Vector512<short> y)
{
    IL_0000: ldarg.0
    IL_0001: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Lo
    IL_0006: ldarg.1
    IL_0007: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Lo
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vgt<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0011: ldarg.0
    IL_0012: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Hi
    IL_0017: ldarg.1
    IL_0018: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Hi
    IL_001D: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vgt<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0022: newobj System.Void System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>>::.ctor(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0027: call Z0.Vector512`1<T> Z0.Vector512`1<T>::op_Implicit(System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>>)
    IL_002C: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100665483, Name := Z0.Vector512`1<T> Z0.ginx::vgt<T>(Z0.Vector512`1<T>&,Z0.Vector512`1<T>&)
// Vector512<uint> vgt<uint>(in Vector512<uint> x, in Vector512<uint> y)
// AggressiveInlining
Vector512<uint> vgt<uint>(in Vector512<uint> x, in Vector512<uint> y)
{
    IL_0000: ldarg.0
    IL_0001: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Lo
    IL_0006: ldarg.1
    IL_0007: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Lo
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vgt<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0011: ldarg.0
    IL_0012: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Hi
    IL_0017: ldarg.1
    IL_0018: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Hi
    IL_001D: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vgt<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0022: newobj System.Void System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>>::.ctor(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0027: call Z0.Vector512`1<T> Z0.Vector512`1<T>::op_Implicit(System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>>)
    IL_002C: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100665483, Name := Z0.Vector512`1<T> Z0.ginx::vgt<T>(Z0.Vector512`1<T>&,Z0.Vector512`1<T>&)
// Vector512<int> vgt<int>(in Vector512<int> x, in Vector512<int> y)
// AggressiveInlining
Vector512<int> vgt<int>(in Vector512<int> x, in Vector512<int> y)
{
    IL_0000: ldarg.0
    IL_0001: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Lo
    IL_0006: ldarg.1
    IL_0007: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Lo
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vgt<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0011: ldarg.0
    IL_0012: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Hi
    IL_0017: ldarg.1
    IL_0018: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Hi
    IL_001D: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vgt<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0022: newobj System.Void System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>>::.ctor(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0027: call Z0.Vector512`1<T> Z0.Vector512`1<T>::op_Implicit(System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>>)
    IL_002C: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100665483, Name := Z0.Vector512`1<T> Z0.ginx::vgt<T>(Z0.Vector512`1<T>&,Z0.Vector512`1<T>&)
// Vector512<long> vgt<long>(in Vector512<long> x, in Vector512<long> y)
// AggressiveInlining
Vector512<long> vgt<long>(in Vector512<long> x, in Vector512<long> y)
{
    IL_0000: ldarg.0
    IL_0001: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Lo
    IL_0006: ldarg.1
    IL_0007: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Lo
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vgt<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0011: ldarg.0
    IL_0012: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Hi
    IL_0017: ldarg.1
    IL_0018: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Hi
    IL_001D: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vgt<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0022: newobj System.Void System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>>::.ctor(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0027: call Z0.Vector512`1<T> Z0.Vector512`1<T>::op_Implicit(System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>>)
    IL_002C: ret
}
------------------------------------------------------------------------------------------------------------------------
