// Id := 100663557, Name := Z0.Vector512`1<System.Int64> Z0.dinx::vmul(System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.Int32>)
// Vector512<long> vmul(Vector256<int> x, Vector256<int> y)
// AggressiveInlining
Vector512<long> vmul(Vector256<int> x, Vector256<int> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.Int64> System.Runtime.Intrinsics.X86.Avx2::Multiply(System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.Int32>)
    IL_0007: stloc.0
    IL_0008: ldarg.0
    IL_0009: call System.Runtime.Intrinsics.Vector256`1<System.Int32> Z0.dinx::vswaphl(System.Runtime.Intrinsics.Vector256`1<System.Int32>)
    IL_000E: ldarg.1
    IL_000F: call System.Runtime.Intrinsics.Vector256`1<System.Int32> Z0.dinx::vswaphl(System.Runtime.Intrinsics.Vector256`1<System.Int32>)
    IL_0014: call System.Runtime.Intrinsics.Vector256`1<System.Int64> System.Runtime.Intrinsics.X86.Avx2::Multiply(System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.Int32>)
    IL_0019: stloc.1
    IL_001A: ldloc.0
    IL_001B: ldloc.1
    IL_001C: newobj System.Void System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Runtime.Intrinsics.Vector256`1<System.Int64>>::.ctor(System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Runtime.Intrinsics.Vector256`1<System.Int64>)
    IL_0021: call Z0.Vector512`1<System.Int64> Z0.Vector512`1<System.Int64>::op_Implicit(System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Runtime.Intrinsics.Vector256`1<System.Int64>>)
    IL_0026: ret
}
