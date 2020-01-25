// Id := 100663478, Name := Z0.Vector512`1<System.UInt16> Z0.dinx::vadd(Z0.Vector512`1<System.UInt16>&,Z0.Vector512`1<System.UInt16>&)
// Vector512<ushort> vadd(in Vector512<ushort> x, in Vector512<ushort> y)
// AggressiveInlining
Vector512<ushort> vadd(in Vector512<ushort> x, in Vector512<ushort> y)
{
    IL_0000: ldarg.0
    IL_0001: ldfld System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.Vector512`1<System.UInt16>::Lo
    IL_0006: ldarg.1
    IL_0007: ldfld System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.Vector512`1<System.UInt16>::Lo
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> System.Runtime.Intrinsics.X86.Avx2::Add(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
    IL_0011: ldarg.0
    IL_0012: ldfld System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.Vector512`1<System.UInt16>::Hi
    IL_0017: ldarg.1
    IL_0018: ldfld System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.Vector512`1<System.UInt16>::Hi
    IL_001D: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> System.Runtime.Intrinsics.X86.Avx2::Add(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
    IL_0022: newobj System.Void System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>>::.ctor(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
    IL_0027: call Z0.Vector512`1<System.UInt16> Z0.Vector512`1<System.UInt16>::op_Implicit(System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>>)
    IL_002C: ret
}
