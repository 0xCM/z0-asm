// Id := 100663681, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vmovelo(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
// Vector128<ulong> vmovelo(Vector128<uint> src, Vector128<ulong> dst)
// AggressiveInlining
Vector128<ulong> vmovelo(Vector128<uint> src, Vector128<ulong> dst)
{
    IL_0000: ldarg.1
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.Double> zfunc::v64f<System.UInt64>(System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_0006: ldarg.0
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.Single> zfunc::v32f<System.UInt32>(System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_000C: call System.Runtime.Intrinsics.Vector128`1<System.Double> System.Runtime.Intrinsics.X86.Sse2::ConvertScalarToVector128Double(System.Runtime.Intrinsics.Vector128`1<System.Double>,System.Runtime.Intrinsics.Vector128`1<System.Single>)
    IL_0011: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> zfunc::v64u<System.Double>(System.Runtime.Intrinsics.Vector128`1<System.Double>)
    IL_0016: ret
}
