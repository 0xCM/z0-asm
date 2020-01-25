// Id := 100663476, Name := Z0.Vector512`1<System.SByte> Z0.dinx::vadd(Z0.Vector512`1<System.SByte>&,Z0.Vector512`1<System.SByte>&)
// Vector512<sbyte> vadd(in Vector512<sbyte> x, in Vector512<sbyte> y)
// AggressiveInlining
Vector512<sbyte> vadd(in Vector512<sbyte> x, in Vector512<sbyte> y)
{
    IL_0000: ldarg.0
    IL_0001: ldfld System.Runtime.Intrinsics.Vector256`1<System.SByte> Z0.Vector512`1<System.SByte>::Lo
    IL_0006: ldarg.1
    IL_0007: ldfld System.Runtime.Intrinsics.Vector256`1<System.SByte> Z0.Vector512`1<System.SByte>::Lo
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<System.SByte> System.Runtime.Intrinsics.X86.Avx2::Add(System.Runtime.Intrinsics.Vector256`1<System.SByte>,System.Runtime.Intrinsics.Vector256`1<System.SByte>)
    IL_0011: ldarg.0
    IL_0012: ldfld System.Runtime.Intrinsics.Vector256`1<System.SByte> Z0.Vector512`1<System.SByte>::Hi
    IL_0017: ldarg.1
    IL_0018: ldfld System.Runtime.Intrinsics.Vector256`1<System.SByte> Z0.Vector512`1<System.SByte>::Hi
    IL_001D: call System.Runtime.Intrinsics.Vector256`1<System.SByte> System.Runtime.Intrinsics.X86.Avx2::Add(System.Runtime.Intrinsics.Vector256`1<System.SByte>,System.Runtime.Intrinsics.Vector256`1<System.SByte>)
    IL_0022: newobj System.Void System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<System.SByte>,System.Runtime.Intrinsics.Vector256`1<System.SByte>>::.ctor(System.Runtime.Intrinsics.Vector256`1<System.SByte>,System.Runtime.Intrinsics.Vector256`1<System.SByte>)
    IL_0027: call Z0.Vector512`1<System.SByte> Z0.Vector512`1<System.SByte>::op_Implicit(System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<System.SByte>,System.Runtime.Intrinsics.Vector256`1<System.SByte>>)
    IL_002C: ret
}
