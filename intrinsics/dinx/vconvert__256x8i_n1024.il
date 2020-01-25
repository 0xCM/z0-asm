// Id := 100664816, Name := Z0.Vector1024`1<System.Int32> Z0.dinx::vconvert(System.Runtime.Intrinsics.Vector256`1<System.SByte>,Z0.N1024,System.Int32)
// Vector1024<int> vconvert(Vector256<sbyte> src, N1024 w, int t)
// AggressiveInlining
Vector1024<int> vconvert(Vector256<sbyte> src, N1024 w, int t)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N512 zfunc::get_n512()
    IL_0006: ldc.i4.0
    IL_0007: call Z0.Vector512`1<System.Int16> Z0.dinx::vconvert(System.Runtime.Intrinsics.Vector256`1<System.SByte>,Z0.N512,System.Int16)
    IL_000C: stloc.s V_6
    IL_000E: ldloca.s V_6
    IL_0010: ldloca.s V_7
    IL_0012: ldloca.s V_8
    IL_0014: call System.Void Z0.Vector512`1<System.Int16>::Deconstruct(System.Runtime.Intrinsics.Vector256`1<System.Int16>&,System.Runtime.Intrinsics.Vector256`1<System.Int16>&)
    IL_0019: ldloc.s V_7
    IL_001B: stloc.0
    IL_001C: ldloc.s V_8
    IL_001E: stloc.1
    IL_001F: ldloc.0
    IL_0020: call Z0.N256 zfunc::get_n256()
    IL_0025: ldc.i4.0
    IL_0026: call System.Runtime.Intrinsics.Vector256`1<System.Int32> Z0.dinx::vmaplo(System.Runtime.Intrinsics.Vector256`1<System.Int16>,Z0.N256,System.Int32)
    IL_002B: stloc.2
    IL_002C: ldloc.0
    IL_002D: call Z0.N256 zfunc::get_n256()
    IL_0032: ldc.i4.0
    IL_0033: call System.Runtime.Intrinsics.Vector256`1<System.Int32> Z0.dinx::vmaphi(System.Runtime.Intrinsics.Vector256`1<System.Int16>,Z0.N256,System.Int32)
    IL_0038: stloc.3
    IL_0039: ldloc.1
    IL_003A: call Z0.N256 zfunc::get_n256()
    IL_003F: ldc.i4.0
    IL_0040: call System.Runtime.Intrinsics.Vector256`1<System.Int32> Z0.dinx::vmaplo(System.Runtime.Intrinsics.Vector256`1<System.Int16>,Z0.N256,System.Int32)
    IL_0045: stloc.s V_4
    IL_0047: ldloc.1
    IL_0048: call Z0.N256 zfunc::get_n256()
    IL_004D: ldc.i4.0
    IL_004E: call System.Runtime.Intrinsics.Vector256`1<System.Int32> Z0.dinx::vmaphi(System.Runtime.Intrinsics.Vector256`1<System.Int16>,Z0.N256,System.Int32)
    IL_0053: stloc.s V_5
    IL_0055: ldloc.2
    IL_0056: ldloc.3
    IL_0057: ldloc.s V_4
    IL_0059: ldloc.s V_5
    IL_005B: newobj System.Void System.ValueTuple`4<System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.Int32>>::.ctor(System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.Int32>)
    IL_0060: stloc.s V_9
    IL_0062: ldloca.s V_9
    IL_0064: call Z0.Vector1024`1<System.Int32> Z0.Vector1024`1<System.Int32>::op_Implicit(System.ValueTuple`4<System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.Int32>>&)
    IL_0069: ret
}
