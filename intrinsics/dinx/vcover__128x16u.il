// Id := 100663646, Name := System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vcover(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.Byte>&)
// Vector128<byte> vcover(Vector128<ushort> src, out Vector128<byte> dst)
// AggressiveInlining
Vector128<byte> vcover(Vector128<ushort> src, out Vector128<byte> dst)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: ldc.i4.8
    IL_0003: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vsll(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,System.Byte)
    IL_0008: ldarg.0
    IL_0009: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vor(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
    IL_000E: call System.Runtime.Intrinsics.Vector128`1<System.Byte> zfunc::v8u<System.UInt16>(System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
    IL_0013: dup
    IL_0014: stloc.0
    IL_0015: stobj System.Runtime.Intrinsics.Vector128`1<System.Byte>
    IL_001A: ldloc.0
    IL_001B: ret
}
