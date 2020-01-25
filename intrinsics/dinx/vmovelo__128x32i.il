// Id := 100663682, Name := System.Runtime.Intrinsics.Vector128`1<System.Int64> Z0.dinx::vmovelo(System.Runtime.Intrinsics.Vector128`1<System.Int32>,System.Runtime.Intrinsics.Vector128`1<System.Int64>)
// Vector128<long> vmovelo(Vector128<int> src, Vector128<long> dst)
// AggressiveInlining
Vector128<long> vmovelo(Vector128<int> src, Vector128<long> dst)
{
    IL_0000: ldarg.1
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.Double> zfunc::v64f<System.Int64>(System.Runtime.Intrinsics.Vector128`1<System.Int64>)
    IL_0006: ldarg.0
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.Single> zfunc::v32f<System.Int32>(System.Runtime.Intrinsics.Vector128`1<System.Int32>)
    IL_000C: call System.Runtime.Intrinsics.Vector128`1<System.Double> System.Runtime.Intrinsics.X86.Sse2::ConvertScalarToVector128Double(System.Runtime.Intrinsics.Vector128`1<System.Double>,System.Runtime.Intrinsics.Vector128`1<System.Single>)
    IL_0011: call System.Runtime.Intrinsics.Vector128`1<System.Int64> zfunc::v64i<System.Double>(System.Runtime.Intrinsics.Vector128`1<System.Double>)
    IL_0016: ret
}
