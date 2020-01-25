// Id := 100664827, Name := Z0.Vector512`1<System.Int64> Z0.dinx::vconvert(System.Runtime.Intrinsics.Vector256`1<System.Int16>,Z0.N512,System.Int64)
// Vector512<long> vconvert(Vector256<Int16> src, N512 w, long t)
// AggressiveInlining
Vector512<long> vconvert(Vector256<Int16> src, N512 w, long t)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.Int16> Z0.dinx::vlo(System.Runtime.Intrinsics.Vector256`1<System.Int16>)
    IL_0006: call System.Runtime.Intrinsics.Vector256`1<System.Int64> System.Runtime.Intrinsics.X86.Avx2::ConvertToVector256Int64(System.Runtime.Intrinsics.Vector128`1<System.Int16>)
    IL_000B: ldarg.0
    IL_000C: call System.Runtime.Intrinsics.Vector128`1<System.Int16> Z0.dinx::vhi(System.Runtime.Intrinsics.Vector256`1<System.Int16>)
    IL_0011: call System.Runtime.Intrinsics.Vector256`1<System.Int64> System.Runtime.Intrinsics.X86.Avx2::ConvertToVector256Int64(System.Runtime.Intrinsics.Vector128`1<System.Int16>)
    IL_0016: newobj System.Void System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Runtime.Intrinsics.Vector256`1<System.Int64>>::.ctor(System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Runtime.Intrinsics.Vector256`1<System.Int64>)
    IL_001B: call Z0.Vector512`1<System.Int64> Z0.Vector512`1<System.Int64>::op_Implicit(System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Runtime.Intrinsics.Vector256`1<System.Int64>>)
    IL_0020: ret
}
