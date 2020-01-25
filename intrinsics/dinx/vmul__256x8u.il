// Id := 100663554, Name := Z0.Vector512`1<System.UInt16> Z0.dinx::vmul(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
// Vector512<ushort> vmul(Vector256<byte> x, Vector256<byte> y)
// AggressiveInlining
Vector512<ushort> vmul(Vector256<byte> x, Vector256<byte> y)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N512 zfunc::get_n512()
    IL_0006: ldc.i4.0
    IL_0007: call Z0.Vector512`1<System.UInt16> Z0.dinx::vinflate(System.Runtime.Intrinsics.Vector256`1<System.Byte>,Z0.N512,System.UInt16)
    IL_000C: stloc.s V_4
    IL_000E: ldloca.s V_4
    IL_0010: ldloca.s V_5
    IL_0012: ldloca.s V_6
    IL_0014: call System.Void Z0.Vector512`1<System.UInt16>::Deconstruct(System.Runtime.Intrinsics.Vector256`1<System.UInt16>&,System.Runtime.Intrinsics.Vector256`1<System.UInt16>&)
    IL_0019: ldloc.s V_5
    IL_001B: stloc.0
    IL_001C: ldloc.s V_6
    IL_001E: stloc.1
    IL_001F: ldarg.1
    IL_0020: call Z0.N512 zfunc::get_n512()
    IL_0025: ldc.i4.0
    IL_0026: call Z0.Vector512`1<System.UInt16> Z0.dinx::vinflate(System.Runtime.Intrinsics.Vector256`1<System.Byte>,Z0.N512,System.UInt16)
    IL_002B: stloc.s V_4
    IL_002D: ldloca.s V_4
    IL_002F: ldloca.s V_6
    IL_0031: ldloca.s V_5
    IL_0033: call System.Void Z0.Vector512`1<System.UInt16>::Deconstruct(System.Runtime.Intrinsics.Vector256`1<System.UInt16>&,System.Runtime.Intrinsics.Vector256`1<System.UInt16>&)
    IL_0038: ldloc.s V_6
    IL_003A: stloc.2
    IL_003B: ldloc.s V_5
    IL_003D: stloc.3
    IL_003E: ldloc.0
    IL_003F: ldloc.2
    IL_0040: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vmullo(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
    IL_0045: ldloc.1
    IL_0046: ldloc.3
    IL_0047: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vmullo(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
    IL_004C: newobj System.Void System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>>::.ctor(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
    IL_0051: call Z0.Vector512`1<System.UInt16> Z0.Vector512`1<System.UInt16>::op_Implicit(System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>>)
    IL_0056: ret
}
