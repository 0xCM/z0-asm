// Id := 100665509, Name := Z0.bit Z0.ginx::vnonz<T>(Z0.Vector512`1<T>&)
// bit vnonz<uint>(in Vector512<uint> src)
// AggressiveInlining
bit vnonz<uint>(in Vector512<uint> src)
{
    IL_0000: ldarg.0
    IL_0001: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Lo
    IL_0006: call Z0.bit Z0.ginx::vnonz<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_000B: stloc.0
    IL_000C: ldloc.0
    IL_000D: call System.Boolean Z0.bit::op_True(Z0.bit)
    IL_0012: brtrue.s IL_0026
    IL_0014: ldloc.0
    IL_0015: ldarg.0
    IL_0016: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Hi
    IL_001B: call Z0.bit Z0.ginx::vnonz<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0020: call Z0.bit Z0.bit::op_BitwiseOr(Z0.bit,Z0.bit)
    IL_0025: ret
    IL_0026: ldloc.0
    IL_0027: ret
}
