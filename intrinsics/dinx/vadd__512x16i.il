// Id := 100663477, Name := Z0.Vector512`1<System.Int16> Z0.dinx::vadd(Z0.Vector512`1<System.Int16>,Z0.Vector512`1<System.Int16>&)
// Vector512<Int16> vadd(Vector512<Int16> x, in Vector512<Int16> y)
// AggressiveInlining
Vector512<Int16> vadd(Vector512<Int16> x, in Vector512<Int16> y)
{
    IL_0000: ldarg.0
    IL_0001: ldfld System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.Vector512`1<System.Int16>::Lo
    IL_0006: ldarg.1
    IL_0007: ldfld System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.Vector512`1<System.Int16>::Lo
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<System.Int16> System.Runtime.Intrinsics.X86.Avx2::Add(System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Runtime.Intrinsics.Vector256`1<System.Int16>)
    IL_0011: ldarg.0
    IL_0012: ldfld System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.Vector512`1<System.Int16>::Hi
    IL_0017: ldarg.1
    IL_0018: ldfld System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.Vector512`1<System.Int16>::Hi
    IL_001D: call System.Runtime.Intrinsics.Vector256`1<System.Int16> System.Runtime.Intrinsics.X86.Avx2::Add(System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Runtime.Intrinsics.Vector256`1<System.Int16>)
    IL_0022: newobj System.Void System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Runtime.Intrinsics.Vector256`1<System.Int16>>::.ctor(System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Runtime.Intrinsics.Vector256`1<System.Int16>)
    IL_0027: call Z0.Vector512`1<System.Int16> Z0.Vector512`1<System.Int16>::op_Implicit(System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Runtime.Intrinsics.Vector256`1<System.Int16>>)
    IL_002C: ret
}
