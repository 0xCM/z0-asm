// Id := 100664903, Name := System.Runtime.Intrinsics.Vector128`1<System.SByte> Z0.dinx::vgather(Z0.N128,System.SByte&,System.Runtime.Intrinsics.Vector128`1<System.SByte>)
// Vector128<sbyte> vgather(N128 w, in sbyte src, Vector128<sbyte> vidx)
// AggressiveInlining
Vector128<sbyte> vgather(N128 w, in sbyte src, Vector128<sbyte> vidx)
{
    IL_0000: ldarg.2
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.Byte> zfunc::v8u<System.SByte>(System.Runtime.Intrinsics.Vector128`1<System.SByte>)
    IL_0006: call Z0.N512 zfunc::get_n512()
    IL_000B: ldc.i4.0
    IL_000C: call Z0.Vector512`1<System.UInt32> Z0.dinx::vinflate(System.Runtime.Intrinsics.Vector128`1<System.Byte>,Z0.N512,System.UInt32)
    IL_0011: stloc.s V_4
    IL_0013: ldloca.s V_4
    IL_0015: ldloca.s V_5
    IL_0017: ldloca.s V_6
    IL_0019: call System.Void Z0.Vector512`1<System.UInt32>::Deconstruct(System.Runtime.Intrinsics.Vector256`1<System.UInt32>&,System.Runtime.Intrinsics.Vector256`1<System.UInt32>&)
    IL_001E: ldloc.s V_5
    IL_0020: stloc.0
    IL_0021: ldloc.s V_6
    IL_0023: stloc.1
    IL_0024: ldarg.1
    IL_0025: call System.UInt32& Z0.AsIn::uint32<System.SByte>(System.SByte&)
    IL_002A: call System.UInt32* zfunc::constptr<System.UInt32>(System.UInt32&)
    IL_002F: ldloc.0
    IL_0030: call System.Runtime.Intrinsics.Vector256`1<System.Int32> zfunc::v32i<System.UInt32>(System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_0035: ldc.i4.1
    IL_0036: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> System.Runtime.Intrinsics.X86.Avx2::GatherVector256(System.UInt32*,System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Byte)
    IL_003B: stloc.2
    IL_003C: ldarg.1
    IL_003D: call System.UInt32& Z0.AsIn::uint32<System.SByte>(System.SByte&)
    IL_0042: call System.UInt32* zfunc::constptr<System.UInt32>(System.UInt32&)
    IL_0047: ldloc.1
    IL_0048: call System.Runtime.Intrinsics.Vector256`1<System.Int32> zfunc::v32i<System.UInt32>(System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_004D: ldc.i4.1
    IL_004E: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> System.Runtime.Intrinsics.X86.Avx2::GatherVector256(System.UInt32*,System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Byte)
    IL_0053: stloc.3
    IL_0054: ldloc.2
    IL_0055: ldloc.3
    IL_0056: call Z0.N128 zfunc::get_n128()
    IL_005B: ldc.i4.0
    IL_005C: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vcompact(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>,Z0.N128,System.Byte)
    IL_0061: call System.Runtime.Intrinsics.Vector128`1<System.SByte> zfunc::v8i<System.Byte>(System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0066: ret
}
