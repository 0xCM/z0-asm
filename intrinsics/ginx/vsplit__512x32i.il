// Id := 100665225, Name := Z0.Pair`1<System.Runtime.Intrinsics.Vector256`1<T>> Z0.ginx::vsplit<T>(Z0.Vector512`1<T>)
// Pair<Vector256<int>> vsplit<int>(Vector512<int> src)
// AggressiveInlining
Pair<Vector256<int>> vsplit<int>(Vector512<int> src)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vlo<T>(Z0.Vector512`1<T>)
    IL_0006: ldarg.0
    IL_0007: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vhi<T>(Z0.Vector512`1<T>)
    IL_000C: newobj System.Void System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>>::.ctor(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0011: call Z0.Pair`1<System.Runtime.Intrinsics.Vector256`1<T>> Z0.Pair`1<System.Runtime.Intrinsics.Vector256`1<T>>::op_Implicit(System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>>)
    IL_0016: ret
}
