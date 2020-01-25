// Id := 100664819, Name := Z0.Vector1024`1<System.UInt32> Z0.dinx::vconvert(System.Runtime.Intrinsics.Vector256`1<System.Byte>,Z0.N1024,System.UInt32)
// Vector1024<uint> vconvert(Vector256<byte> src, N1024 w, uint t)
// AggressiveInlining
Vector1024<uint> vconvert(Vector256<byte> src, N1024 w, uint t)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N512 zfunc::get_n512()
    IL_0006: ldc.i4.0
    IL_0007: call Z0.Vector512`1<System.UInt16> Z0.dinx::vconvert(System.Runtime.Intrinsics.Vector256`1<System.Byte>,Z0.N512,System.UInt16)
    IL_000C: stloc.s V_6
    IL_000E: ldloca.s V_6
    IL_0010: ldloca.s V_7
    IL_0012: ldloca.s V_8
    IL_0014: call System.Void Z0.Vector512`1<System.UInt16>::Deconstruct(System.Runtime.Intrinsics.Vector256`1<System.UInt16>&,System.Runtime.Intrinsics.Vector256`1<System.UInt16>&)
    IL_0019: ldloc.s V_7
    IL_001B: stloc.0
    IL_001C: ldloc.s V_8
    IL_001E: stloc.1
    IL_001F: ldloc.0
    IL_0020: call Z0.N512 zfunc::get_n512()
    IL_0025: ldarg.2
    IL_0026: call Z0.Vector512`1<System.UInt32> Z0.dinx::vconvert(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,Z0.N512,System.UInt32)
    IL_002B: stloc.s V_9
    IL_002D: ldloca.s V_9
    IL_002F: ldloca.s V_10
    IL_0031: ldloca.s V_11
    IL_0033: call System.Void Z0.Vector512`1<System.UInt32>::Deconstruct(System.Runtime.Intrinsics.Vector256`1<System.UInt32>&,System.Runtime.Intrinsics.Vector256`1<System.UInt32>&)
    IL_0038: ldloc.s V_10
    IL_003A: stloc.2
    IL_003B: ldloc.s V_11
    IL_003D: stloc.3
    IL_003E: ldloc.1
    IL_003F: call Z0.N512 zfunc::get_n512()
    IL_0044: ldarg.2
    IL_0045: call Z0.Vector512`1<System.UInt32> Z0.dinx::vconvert(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,Z0.N512,System.UInt32)
    IL_004A: stloc.s V_9
    IL_004C: ldloca.s V_9
    IL_004E: ldloca.s V_11
    IL_0050: ldloca.s V_10
    IL_0052: call System.Void Z0.Vector512`1<System.UInt32>::Deconstruct(System.Runtime.Intrinsics.Vector256`1<System.UInt32>&,System.Runtime.Intrinsics.Vector256`1<System.UInt32>&)
    IL_0057: ldloc.s V_11
    IL_0059: stloc.s V_4
    IL_005B: ldloc.s V_10
    IL_005D: stloc.s V_5
    IL_005F: ldloc.2
    IL_0060: ldloc.3
    IL_0061: ldloc.s V_4
    IL_0063: ldloc.s V_5
    IL_0065: newobj System.Void System.ValueTuple`4<System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>>::.ctor(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_006A: stloc.s V_12
    IL_006C: ldloca.s V_12
    IL_006E: call Z0.Vector1024`1<System.UInt32> Z0.Vector1024`1<System.UInt32>::op_Implicit(System.ValueTuple`4<System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>>&)
    IL_0073: ret
}
