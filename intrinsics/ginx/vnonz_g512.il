// Z0.bit Z0.ginx::vnonz<T>(Z0.Vector512`1<T>&)
// bit vnonz<byte>(in Vector512<byte> src)
// AggressiveInlining
bit vnonz<byte>(in Vector512<byte> src)
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
------------------------------------------------------------------------------------------------------------------------
// Z0.bit Z0.ginx::vnonz<T>(Z0.Vector512`1<T>&)
// bit vnonz<sbyte>(in Vector512<sbyte> src)
// AggressiveInlining
bit vnonz<sbyte>(in Vector512<sbyte> src)
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
------------------------------------------------------------------------------------------------------------------------
// Z0.bit Z0.ginx::vnonz<T>(Z0.Vector512`1<T>&)
// bit vnonz<ushort>(in Vector512<ushort> src)
// AggressiveInlining
bit vnonz<ushort>(in Vector512<ushort> src)
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
------------------------------------------------------------------------------------------------------------------------
// Z0.bit Z0.ginx::vnonz<T>(Z0.Vector512`1<T>&)
// bit vnonz<short>(in Vector512<short> src)
// AggressiveInlining
bit vnonz<short>(in Vector512<short> src)
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
------------------------------------------------------------------------------------------------------------------------
// Z0.bit Z0.ginx::vnonz<T>(Z0.Vector512`1<T>&)
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
------------------------------------------------------------------------------------------------------------------------
// Z0.bit Z0.ginx::vnonz<T>(Z0.Vector512`1<T>&)
// bit vnonz<int>(in Vector512<int> src)
// AggressiveInlining
bit vnonz<int>(in Vector512<int> src)
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
------------------------------------------------------------------------------------------------------------------------
// Z0.bit Z0.ginx::vnonz<T>(Z0.Vector512`1<T>&)
// bit vnonz<ulong>(in Vector512<ulong> src)
// AggressiveInlining
bit vnonz<ulong>(in Vector512<ulong> src)
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
------------------------------------------------------------------------------------------------------------------------
// Z0.bit Z0.ginx::vnonz<T>(Z0.Vector512`1<T>&)
// bit vnonz<long>(in Vector512<long> src)
// AggressiveInlining
bit vnonz<long>(in Vector512<long> src)
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
------------------------------------------------------------------------------------------------------------------------
// Z0.bit Z0.ginx::vnonz<T>(Z0.Vector512`1<T>&)
// bit vnonz<float>(in Vector512<float> src)
// AggressiveInlining
bit vnonz<float>(in Vector512<float> src)
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
------------------------------------------------------------------------------------------------------------------------
// Z0.bit Z0.ginx::vnonz<T>(Z0.Vector512`1<T>&)
// bit vnonz<double>(in Vector512<double> src)
// AggressiveInlining
bit vnonz<double>(in Vector512<double> src)
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
------------------------------------------------------------------------------------------------------------------------
