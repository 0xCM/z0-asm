// Id := 100663559, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vmul(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
// Vector256<ulong> vmul(Vector256<ulong> x, Vector256<ulong> y)
// AggressiveInlining
Vector256<ulong> vmul(Vector256<ulong> x, Vector256<ulong> y)
{
    IL_0000: call Z0.N256 zfunc::get_n256()
    IL_0005: ldc.i4.m1
    IL_0006: conv.u8
    IL_0007: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.CpuVector::vbroadcast<System.UInt64>(Z0.N256,System.UInt64)
    IL_000C: stloc.0
    IL_000D: ldarg.0
    IL_000E: ldc.i4.s 32
    IL_0010: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vsrl(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Byte)
    IL_0015: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> zfunc::v32u<System.UInt64>(System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_001A: stloc.1
    IL_001B: ldarg.1
    IL_001C: ldloc.0
    IL_001D: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vand(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_0022: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> zfunc::v32u<System.UInt64>(System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_0027: stloc.2
    IL_0028: ldarg.0
    IL_0029: ldloc.0
    IL_002A: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vand(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_002F: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> zfunc::v32u<System.UInt64>(System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_0034: ldloc.2
    IL_0035: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> System.Runtime.Intrinsics.X86.Avx2::Multiply(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_003A: ldloc.1
    IL_003B: ldloc.2
    IL_003C: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> System.Runtime.Intrinsics.X86.Avx2::Multiply(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_0041: ldc.i4.s 32
    IL_0043: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vsll(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Byte)
    IL_0048: ldloc.1
    IL_0049: ldarg.1
    IL_004A: ldc.i4.s 32
    IL_004C: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vsrl(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Byte)
    IL_0051: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> zfunc::v32u<System.UInt64>(System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_0056: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> System.Runtime.Intrinsics.X86.Avx2::Multiply(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_005B: ldc.i4.s 32
    IL_005D: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vsll(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Byte)
    IL_0062: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vadd(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_0067: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vadd(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_006C: ret
}
