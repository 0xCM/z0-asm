// Id := 100663481, Name := Z0.Vector512`1<System.Int64> Z0.dinx::vadd(Z0.Vector512`1<System.Int64>&,Z0.Vector512`1<System.Int64>&)
// Vector512<long> vadd(in Vector512<long> x, in Vector512<long> y)
// AggressiveInlining
Vector512<long> vadd(in Vector512<long> x, in Vector512<long> y)
{
    IL_0000: ldarg.0
    IL_0001: ldfld System.Runtime.Intrinsics.Vector256`1<System.Int64> Z0.Vector512`1<System.Int64>::Lo
    IL_0006: ldarg.1
    IL_0007: ldfld System.Runtime.Intrinsics.Vector256`1<System.Int64> Z0.Vector512`1<System.Int64>::Lo
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<System.Int64> System.Runtime.Intrinsics.X86.Avx2::Add(System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Runtime.Intrinsics.Vector256`1<System.Int64>)
    IL_0011: ldarg.0
    IL_0012: ldfld System.Runtime.Intrinsics.Vector256`1<System.Int64> Z0.Vector512`1<System.Int64>::Hi
    IL_0017: ldarg.1
    IL_0018: ldfld System.Runtime.Intrinsics.Vector256`1<System.Int64> Z0.Vector512`1<System.Int64>::Hi
    IL_001D: call System.Runtime.Intrinsics.Vector256`1<System.Int64> System.Runtime.Intrinsics.X86.Avx2::Add(System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Runtime.Intrinsics.Vector256`1<System.Int64>)
    IL_0022: newobj System.Void System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Runtime.Intrinsics.Vector256`1<System.Int64>>::.ctor(System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Runtime.Intrinsics.Vector256`1<System.Int64>)
    IL_0027: call Z0.Vector512`1<System.Int64> Z0.Vector512`1<System.Int64>::op_Implicit(System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Runtime.Intrinsics.Vector256`1<System.Int64>>)
    IL_002C: ret
}
