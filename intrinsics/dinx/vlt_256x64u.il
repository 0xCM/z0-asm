// Id := 100664599, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vlt(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
// Vector256<ulong> vlt(Vector256<ulong> x, Vector256<ulong> y)
// AggressiveInlining
Vector256<ulong> vlt(Vector256<ulong> x, Vector256<ulong> y)
{
    IL_0000: call Z0.N256 zfunc::get_n256()
    IL_0005: ldc.i8 -9223372036854775808
    IL_000E: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.CpuVector::vbroadcast<System.UInt64>(Z0.N256,System.UInt64)
    IL_0013: stloc.0
    IL_0014: ldarg.0
    IL_0015: ldloc.0
    IL_0016: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vxor(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_001B: call System.Runtime.Intrinsics.Vector256`1<System.Int64> zfunc::v64i<System.UInt64>(System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_0020: ldarg.1
    IL_0021: ldloc.0
    IL_0022: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vxor(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_0027: call System.Runtime.Intrinsics.Vector256`1<System.Int64> zfunc::v64i<System.UInt64>(System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_002C: call System.Runtime.Intrinsics.Vector256`1<System.Int64> Z0.X86Missing::CompareLessThan(System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Runtime.Intrinsics.Vector256`1<System.Int64>)
    IL_0031: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> zfunc::v64u<System.Int64>(System.Runtime.Intrinsics.Vector256`1<System.Int64>)
    IL_0036: ret
}
