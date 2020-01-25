// Id := 100663653, Name := System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vcover(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.Byte>&)
// Vector256<byte> vcover(Vector256<uint> src, out Vector256<byte> dst)
// AggressiveInlining
Vector256<byte> vcover(Vector256<uint> src, out Vector256<byte> dst)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: ldc.i4.s 16
    IL_0004: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vsll(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Byte)
    IL_0009: ldarg.0
    IL_000A: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vxor(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_000F: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> zfunc::v16u<System.UInt32>(System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_0014: ldarg.1
    IL_0015: call System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vcover(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.Byte>&)
    IL_001A: dup
    IL_001B: stloc.0
    IL_001C: stobj System.Runtime.Intrinsics.Vector256`1<System.Byte>
    IL_0021: ldloc.0
    IL_0022: ret
}
