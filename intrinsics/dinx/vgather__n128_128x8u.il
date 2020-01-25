// Id := 100664904, Name := System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vgather(Z0.N128,System.Byte&,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
// Vector128<byte> vgather(N128 w, in byte src, Vector128<byte> vidx)
// AggressiveInlining
Vector128<byte> vgather(N128 w, in byte src, Vector128<byte> vidx)
{
    IL_0000: ldarg.2
    IL_0001: call Z0.N512 zfunc::get_n512()
    IL_0006: ldc.i4.0
    IL_0007: call Z0.Vector512`1<System.UInt32> Z0.dinx::vinflate(System.Runtime.Intrinsics.Vector128`1<System.Byte>,Z0.N512,System.UInt32)
    IL_000C: stloc.s V_4
    IL_000E: ldloca.s V_4
    IL_0010: ldloca.s V_5
    IL_0012: ldloca.s V_6
    IL_0014: call System.Void Z0.Vector512`1<System.UInt32>::Deconstruct(System.Runtime.Intrinsics.Vector256`1<System.UInt32>&,System.Runtime.Intrinsics.Vector256`1<System.UInt32>&)
    IL_0019: ldloc.s V_5
    IL_001B: stloc.0
    IL_001C: ldloc.s V_6
    IL_001E: stloc.1
    IL_001F: ldarg.1
    IL_0020: call System.UInt32& Z0.AsIn::uint32<System.Byte>(System.Byte&)
    IL_0025: call System.UInt32* zfunc::constptr<System.UInt32>(System.UInt32&)
    IL_002A: ldloc.0
    IL_002B: call System.Runtime.Intrinsics.Vector256`1<System.Int32> zfunc::v32i<System.UInt32>(System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_0030: ldc.i4.1
    IL_0031: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> System.Runtime.Intrinsics.X86.Avx2::GatherVector256(System.UInt32*,System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Byte)
    IL_0036: stloc.2
    IL_0037: ldarg.1
    IL_0038: call System.UInt32& Z0.AsIn::uint32<System.Byte>(System.Byte&)
    IL_003D: call System.UInt32* zfunc::constptr<System.UInt32>(System.UInt32&)
    IL_0042: ldloc.1
    IL_0043: call System.Runtime.Intrinsics.Vector256`1<System.Int32> zfunc::v32i<System.UInt32>(System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_0048: ldc.i4.1
    IL_0049: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> System.Runtime.Intrinsics.X86.Avx2::GatherVector256(System.UInt32*,System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Byte)
    IL_004E: stloc.3
    IL_004F: ldloc.2
    IL_0050: ldloc.3
    IL_0051: call Z0.N128 zfunc::get_n128()
    IL_0056: ldc.i4.0
    IL_0057: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vcompact(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>,Z0.N128,System.Byte)
    IL_005C: ret
}
