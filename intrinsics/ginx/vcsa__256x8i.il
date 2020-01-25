// Id := 100665139, Name := Z0.Vector512`1<T> Z0.ginx::vcsa<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector512<sbyte> vcsa<sbyte>(Vector256<sbyte> a, Vector256<sbyte> b, Vector256<sbyte> c)
// AggressiveInlining
Vector512<sbyte> vcsa<sbyte>(Vector256<sbyte> a, Vector256<sbyte> b, Vector256<sbyte> c)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vxor<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0007: stloc.0
    IL_0008: ldloc.0
    IL_0009: ldarg.2
    IL_000A: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vxor<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_000F: stloc.1
    IL_0010: ldarg.0
    IL_0011: ldarg.1
    IL_0012: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vand<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0017: ldloc.0
    IL_0018: ldarg.2
    IL_0019: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vand<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_001E: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vor<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0023: stloc.2
    IL_0024: ldloc.1
    IL_0025: ldloc.2
    IL_0026: newobj System.Void System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>>::.ctor(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_002B: call Z0.Vector512`1<T> Z0.Vector512`1<T>::op_Implicit(System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>>)
    IL_0030: ret
}
