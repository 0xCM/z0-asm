// Id := 100664822, Name := Z0.Vector1024`1<System.UInt64> Z0.dinx::vconvert(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,Z0.N1024,System.UInt64)
// Vector1024<ulong> vconvert(Vector256<ushort> src, N1024 w, ulong t)
// AggressiveInlining
Vector1024<ulong> vconvert(Vector256<ushort> src, N1024 w, ulong t)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vlo(System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
    IL_0006: call Z0.N512 zfunc::get_n512()
    IL_000B: ldarg.2
    IL_000C: call Z0.Vector512`1<System.UInt64> Z0.dinx::vconvert(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,Z0.N512,System.UInt64)
    IL_0011: ldarg.0
    IL_0012: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vhi(System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
    IL_0017: call Z0.N512 zfunc::get_n512()
    IL_001C: ldarg.2
    IL_001D: call Z0.Vector512`1<System.UInt64> Z0.dinx::vconvert(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,Z0.N512,System.UInt64)
    IL_0022: newobj System.Void System.ValueTuple`2<Z0.Vector512`1<System.UInt64>,Z0.Vector512`1<System.UInt64>>::.ctor(Z0.Vector512`1<System.UInt64>,Z0.Vector512`1<System.UInt64>)
    IL_0027: stloc.0
    IL_0028: ldloca.s V_0
    IL_002A: call Z0.Vector1024`1<System.UInt64> Z0.Vector1024`1<System.UInt64>::op_Implicit(System.ValueTuple`2<Z0.Vector512`1<System.UInt64>,Z0.Vector512`1<System.UInt64>>&)
    IL_002F: ret
}
