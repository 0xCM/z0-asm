// Id := 100663508, Name := System.Int64 Z0.dinx::vdot(System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.Int32>)
// long vdot(Vector256<int> x, Vector256<int> y)
// AggressiveInlining
long vdot(Vector256<int> x, Vector256<int> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.Int64> System.Runtime.Intrinsics.X86.Avx2::Multiply(System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.Int32>)
    IL_0007: stloc.0
    IL_0008: ldloc.0
    IL_0009: call System.Runtime.Intrinsics.Vector128`1<System.Int64> Z0.dinx::vlo(System.Runtime.Intrinsics.Vector256`1<System.Int64>)
    IL_000E: ldloc.0
    IL_000F: call System.Runtime.Intrinsics.Vector128`1<System.Int64> Z0.dinx::vhi(System.Runtime.Intrinsics.Vector256`1<System.Int64>)
    IL_0014: call System.Runtime.Intrinsics.Vector128`1<System.Int64> Z0.dinx::vadd(System.Runtime.Intrinsics.Vector128`1<System.Int64>,System.Runtime.Intrinsics.Vector128`1<System.Int64>)
    IL_0019: stloc.1
    IL_001A: ldloc.1
    IL_001B: ldc.i4.0
    IL_001C: call System.Int64 Z0.xfunc::Cell<System.Int64>(System.Runtime.Intrinsics.Vector128`1<System.Int64>,System.Int32)
    IL_0021: ldloc.1
    IL_0022: ldc.i4.1
    IL_0023: call System.Int64 Z0.xfunc::Cell<System.Int64>(System.Runtime.Intrinsics.Vector128`1<System.Int64>,System.Int32)
    IL_0028: add
    IL_0029: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663509, Name := System.UInt64 Z0.dinx::vdot(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
// ulong vdot(Vector256<uint> x, Vector256<uint> y)
// AggressiveInlining
ulong vdot(Vector256<uint> x, Vector256<uint> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> System.Runtime.Intrinsics.X86.Avx2::Multiply(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_0007: stloc.0
    IL_0008: ldloc.0
    IL_0009: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vlo(System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_000E: ldloc.0
    IL_000F: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vhi(System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_0014: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vadd(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_0019: stloc.1
    IL_001A: ldloc.1
    IL_001B: ldc.i4.0
    IL_001C: call System.UInt64 Z0.xfunc::Cell<System.UInt64>(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Int32)
    IL_0021: ldloc.1
    IL_0022: ldc.i4.1
    IL_0023: call System.UInt64 Z0.xfunc::Cell<System.UInt64>(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Int32)
    IL_0028: add
    IL_0029: ret
}
------------------------------------------------------------------------------------------------------------------------
