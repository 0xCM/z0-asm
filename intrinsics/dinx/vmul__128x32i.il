// Id := 100663551, Name := System.Runtime.Intrinsics.Vector256`1<System.Int64> Z0.dinx::vmul(System.Runtime.Intrinsics.Vector128`1<System.Int32>,System.Runtime.Intrinsics.Vector128`1<System.Int32>)
// Vector256<long> vmul(Vector128<int> x, Vector128<int> y)
// AggressiveInlining
Vector256<long> vmul(Vector128<int> x, Vector128<int> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.Int64> System.Runtime.Intrinsics.X86.Sse41::Multiply(System.Runtime.Intrinsics.Vector128`1<System.Int32>,System.Runtime.Intrinsics.Vector128`1<System.Int32>)
    IL_0007: stloc.0
    IL_0008: ldarg.0
    IL_0009: call System.Runtime.Intrinsics.Vector128`1<System.Int32> Z0.dinx::vswaphl(System.Runtime.Intrinsics.Vector128`1<System.Int32>)
    IL_000E: ldarg.1
    IL_000F: call System.Runtime.Intrinsics.Vector128`1<System.Int32> Z0.dinx::vswaphl(System.Runtime.Intrinsics.Vector128`1<System.Int32>)
    IL_0014: call System.Runtime.Intrinsics.Vector128`1<System.Int64> System.Runtime.Intrinsics.X86.Sse41::Multiply(System.Runtime.Intrinsics.Vector128`1<System.Int32>,System.Runtime.Intrinsics.Vector128`1<System.Int32>)
    IL_0019: stloc.1
    IL_001A: ldloc.0
    IL_001B: ldloc.1
    IL_001C: call System.Runtime.Intrinsics.Vector256`1<System.Int64> Z0.dinx::vconcat(System.Runtime.Intrinsics.Vector128`1<System.Int64>,System.Runtime.Intrinsics.Vector128`1<System.Int64>)
    IL_0021: ret
}
