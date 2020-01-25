// Id := 100663475, Name := Z0.Vector512`1<System.Byte> Z0.dinx::vadd(Z0.Vector512`1<System.Byte>&,Z0.Vector512`1<System.Byte>&)
// Vector512<byte> vadd(in Vector512<byte> x, in Vector512<byte> y)
// AggressiveInlining
Vector512<byte> vadd(in Vector512<byte> x, in Vector512<byte> y)
{
    IL_0000: ldarg.0
    IL_0001: ldfld System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.Vector512`1<System.Byte>::Lo
    IL_0006: ldarg.1
    IL_0007: ldfld System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.Vector512`1<System.Byte>::Lo
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<System.Byte> System.Runtime.Intrinsics.X86.Avx2::Add(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_0011: ldarg.0
    IL_0012: ldfld System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.Vector512`1<System.Byte>::Hi
    IL_0017: ldarg.1
    IL_0018: ldfld System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.Vector512`1<System.Byte>::Hi
    IL_001D: call System.Runtime.Intrinsics.Vector256`1<System.Byte> System.Runtime.Intrinsics.X86.Avx2::Add(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_0022: newobj System.Void System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>>::.ctor(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_0027: call Z0.Vector512`1<System.Byte> Z0.Vector512`1<System.Byte>::op_Implicit(System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>>)
    IL_002C: ret
}
