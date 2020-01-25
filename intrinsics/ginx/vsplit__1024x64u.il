// Id := 100665226, Name := Z0.Pair`1<Z0.Vector512`1<T>> Z0.ginx::vsplit<T>(Z0.Vector1024`1<T>)
// Pair<Vector512<ulong>> vsplit<ulong>(Vector1024<ulong> src)
// AggressiveInlining
Pair<Vector512<ulong>> vsplit<ulong>(Vector1024<ulong> src)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.Vector512`1<T> Z0.ginx::vlo<T>(Z0.Vector1024`1<T>)
    IL_0006: ldarg.0
    IL_0007: call Z0.Vector512`1<T> Z0.ginx::vhi<T>(Z0.Vector1024`1<T>)
    IL_000C: newobj System.Void System.ValueTuple`2<Z0.Vector512`1<T>,Z0.Vector512`1<T>>::.ctor(Z0.Vector512`1<T>,Z0.Vector512`1<T>)
    IL_0011: call Z0.Pair`1<Z0.Vector512`1<T>> Z0.Pair`1<Z0.Vector512`1<T>>::op_Implicit(System.ValueTuple`2<Z0.Vector512`1<T>,Z0.Vector512`1<T>>)
    IL_0016: ret
}
