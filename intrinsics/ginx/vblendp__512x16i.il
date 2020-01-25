// Id := 100665463, Name := Z0.Vector512`1<T> Z0.ginx::vblendp<T>(Z0.Vector512`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector512<Int16> vblendp<Int16>(Vector512<Int16> x, Vector256<Int16> spec)
// AggressiveInlining
Vector512<Int16> vblendp<Int16>(Vector512<Int16> x, Vector256<Int16> spec)
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
