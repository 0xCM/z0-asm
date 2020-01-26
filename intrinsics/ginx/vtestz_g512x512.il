// Id := 100665533, Name := Z0.bit Z0.ginx::vtestz<T>(Z0.Vector512`1<T>&,Z0.Vector512`1<T>&)
// bit vtestz<byte>(in Vector512<byte> src, in Vector512<byte> mask)
// AggressiveInlining
bit vtestz<byte>(in Vector512<byte> src, in Vector512<byte> mask)
{
    IL_0000: ldarg.0
    IL_0001: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Lo
    IL_0006: ldarg.1
    IL_0007: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Lo
    IL_000C: call Z0.bit Z0.ginx::vtestz<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0011: stloc.0
    IL_0012: ldloc.0
    IL_0013: call System.Boolean Z0.bit::op_False(Z0.bit)
    IL_0018: brtrue.s IL_0032
    IL_001A: ldloc.0
    IL_001B: ldarg.0
    IL_001C: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Hi
    IL_0021: ldarg.1
    IL_0022: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Hi
    IL_0027: call Z0.bit Z0.ginx::vtestz<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_002C: call Z0.bit Z0.bit::op_BitwiseAnd(Z0.bit,Z0.bit)
    IL_0031: ret
    IL_0032: ldloc.0
    IL_0033: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100665533, Name := Z0.bit Z0.ginx::vtestz<T>(Z0.Vector512`1<T>&,Z0.Vector512`1<T>&)
// bit vtestz<sbyte>(in Vector512<sbyte> src, in Vector512<sbyte> mask)
// AggressiveInlining
bit vtestz<sbyte>(in Vector512<sbyte> src, in Vector512<sbyte> mask)
{
    IL_0000: ldarg.0
    IL_0001: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Lo
    IL_0006: ldarg.1
    IL_0007: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Lo
    IL_000C: call Z0.bit Z0.ginx::vtestz<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0011: stloc.0
    IL_0012: ldloc.0
    IL_0013: call System.Boolean Z0.bit::op_False(Z0.bit)
    IL_0018: brtrue.s IL_0032
    IL_001A: ldloc.0
    IL_001B: ldarg.0
    IL_001C: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Hi
    IL_0021: ldarg.1
    IL_0022: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Hi
    IL_0027: call Z0.bit Z0.ginx::vtestz<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_002C: call Z0.bit Z0.bit::op_BitwiseAnd(Z0.bit,Z0.bit)
    IL_0031: ret
    IL_0032: ldloc.0
    IL_0033: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100665533, Name := Z0.bit Z0.ginx::vtestz<T>(Z0.Vector512`1<T>&,Z0.Vector512`1<T>&)
// bit vtestz<ushort>(in Vector512<ushort> src, in Vector512<ushort> mask)
// AggressiveInlining
bit vtestz<ushort>(in Vector512<ushort> src, in Vector512<ushort> mask)
{
    IL_0000: ldarg.0
    IL_0001: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Lo
    IL_0006: ldarg.1
    IL_0007: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Lo
    IL_000C: call Z0.bit Z0.ginx::vtestz<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0011: stloc.0
    IL_0012: ldloc.0
    IL_0013: call System.Boolean Z0.bit::op_False(Z0.bit)
    IL_0018: brtrue.s IL_0032
    IL_001A: ldloc.0
    IL_001B: ldarg.0
    IL_001C: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Hi
    IL_0021: ldarg.1
    IL_0022: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Hi
    IL_0027: call Z0.bit Z0.ginx::vtestz<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_002C: call Z0.bit Z0.bit::op_BitwiseAnd(Z0.bit,Z0.bit)
    IL_0031: ret
    IL_0032: ldloc.0
    IL_0033: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100665533, Name := Z0.bit Z0.ginx::vtestz<T>(Z0.Vector512`1<T>&,Z0.Vector512`1<T>&)
// bit vtestz<Int16>(in Vector512<Int16> src, in Vector512<Int16> mask)
// AggressiveInlining
bit vtestz<Int16>(in Vector512<Int16> src, in Vector512<Int16> mask)
{
    IL_0000: ldarg.0
    IL_0001: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Lo
    IL_0006: ldarg.1
    IL_0007: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Lo
    IL_000C: call Z0.bit Z0.ginx::vtestz<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0011: stloc.0
    IL_0012: ldloc.0
    IL_0013: call System.Boolean Z0.bit::op_False(Z0.bit)
    IL_0018: brtrue.s IL_0032
    IL_001A: ldloc.0
    IL_001B: ldarg.0
    IL_001C: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Hi
    IL_0021: ldarg.1
    IL_0022: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Hi
    IL_0027: call Z0.bit Z0.ginx::vtestz<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_002C: call Z0.bit Z0.bit::op_BitwiseAnd(Z0.bit,Z0.bit)
    IL_0031: ret
    IL_0032: ldloc.0
    IL_0033: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100665533, Name := Z0.bit Z0.ginx::vtestz<T>(Z0.Vector512`1<T>&,Z0.Vector512`1<T>&)
// bit vtestz<uint>(in Vector512<uint> src, in Vector512<uint> mask)
// AggressiveInlining
bit vtestz<uint>(in Vector512<uint> src, in Vector512<uint> mask)
{
    IL_0000: ldarg.0
    IL_0001: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Lo
    IL_0006: ldarg.1
    IL_0007: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Lo
    IL_000C: call Z0.bit Z0.ginx::vtestz<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0011: stloc.0
    IL_0012: ldloc.0
    IL_0013: call System.Boolean Z0.bit::op_False(Z0.bit)
    IL_0018: brtrue.s IL_0032
    IL_001A: ldloc.0
    IL_001B: ldarg.0
    IL_001C: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Hi
    IL_0021: ldarg.1
    IL_0022: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Hi
    IL_0027: call Z0.bit Z0.ginx::vtestz<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_002C: call Z0.bit Z0.bit::op_BitwiseAnd(Z0.bit,Z0.bit)
    IL_0031: ret
    IL_0032: ldloc.0
    IL_0033: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100665533, Name := Z0.bit Z0.ginx::vtestz<T>(Z0.Vector512`1<T>&,Z0.Vector512`1<T>&)
// bit vtestz<int>(in Vector512<int> src, in Vector512<int> mask)
// AggressiveInlining
bit vtestz<int>(in Vector512<int> src, in Vector512<int> mask)
{
    IL_0000: ldarg.0
    IL_0001: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Lo
    IL_0006: ldarg.1
    IL_0007: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Lo
    IL_000C: call Z0.bit Z0.ginx::vtestz<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0011: stloc.0
    IL_0012: ldloc.0
    IL_0013: call System.Boolean Z0.bit::op_False(Z0.bit)
    IL_0018: brtrue.s IL_0032
    IL_001A: ldloc.0
    IL_001B: ldarg.0
    IL_001C: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Hi
    IL_0021: ldarg.1
    IL_0022: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Hi
    IL_0027: call Z0.bit Z0.ginx::vtestz<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_002C: call Z0.bit Z0.bit::op_BitwiseAnd(Z0.bit,Z0.bit)
    IL_0031: ret
    IL_0032: ldloc.0
    IL_0033: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100665533, Name := Z0.bit Z0.ginx::vtestz<T>(Z0.Vector512`1<T>&,Z0.Vector512`1<T>&)
// bit vtestz<ulong>(in Vector512<ulong> src, in Vector512<ulong> mask)
// AggressiveInlining
bit vtestz<ulong>(in Vector512<ulong> src, in Vector512<ulong> mask)
{
    IL_0000: ldarg.0
    IL_0001: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Lo
    IL_0006: ldarg.1
    IL_0007: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Lo
    IL_000C: call Z0.bit Z0.ginx::vtestz<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0011: stloc.0
    IL_0012: ldloc.0
    IL_0013: call System.Boolean Z0.bit::op_False(Z0.bit)
    IL_0018: brtrue.s IL_0032
    IL_001A: ldloc.0
    IL_001B: ldarg.0
    IL_001C: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Hi
    IL_0021: ldarg.1
    IL_0022: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Hi
    IL_0027: call Z0.bit Z0.ginx::vtestz<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_002C: call Z0.bit Z0.bit::op_BitwiseAnd(Z0.bit,Z0.bit)
    IL_0031: ret
    IL_0032: ldloc.0
    IL_0033: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100665533, Name := Z0.bit Z0.ginx::vtestz<T>(Z0.Vector512`1<T>&,Z0.Vector512`1<T>&)
// bit vtestz<long>(in Vector512<long> src, in Vector512<long> mask)
// AggressiveInlining
bit vtestz<long>(in Vector512<long> src, in Vector512<long> mask)
{
    IL_0000: ldarg.0
    IL_0001: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Lo
    IL_0006: ldarg.1
    IL_0007: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Lo
    IL_000C: call Z0.bit Z0.ginx::vtestz<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0011: stloc.0
    IL_0012: ldloc.0
    IL_0013: call System.Boolean Z0.bit::op_False(Z0.bit)
    IL_0018: brtrue.s IL_0032
    IL_001A: ldloc.0
    IL_001B: ldarg.0
    IL_001C: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Hi
    IL_0021: ldarg.1
    IL_0022: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Hi
    IL_0027: call Z0.bit Z0.ginx::vtestz<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_002C: call Z0.bit Z0.bit::op_BitwiseAnd(Z0.bit,Z0.bit)
    IL_0031: ret
    IL_0032: ldloc.0
    IL_0033: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100665533, Name := Z0.bit Z0.ginx::vtestz<T>(Z0.Vector512`1<T>&,Z0.Vector512`1<T>&)
// bit vtestz<float>(in Vector512<float> src, in Vector512<float> mask)
// AggressiveInlining
bit vtestz<float>(in Vector512<float> src, in Vector512<float> mask)
{
    IL_0000: ldarg.0
    IL_0001: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Lo
    IL_0006: ldarg.1
    IL_0007: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Lo
    IL_000C: call Z0.bit Z0.ginx::vtestz<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0011: stloc.0
    IL_0012: ldloc.0
    IL_0013: call System.Boolean Z0.bit::op_False(Z0.bit)
    IL_0018: brtrue.s IL_0032
    IL_001A: ldloc.0
    IL_001B: ldarg.0
    IL_001C: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Hi
    IL_0021: ldarg.1
    IL_0022: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Hi
    IL_0027: call Z0.bit Z0.ginx::vtestz<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_002C: call Z0.bit Z0.bit::op_BitwiseAnd(Z0.bit,Z0.bit)
    IL_0031: ret
    IL_0032: ldloc.0
    IL_0033: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100665533, Name := Z0.bit Z0.ginx::vtestz<T>(Z0.Vector512`1<T>&,Z0.Vector512`1<T>&)
// bit vtestz<double>(in Vector512<double> src, in Vector512<double> mask)
// AggressiveInlining
bit vtestz<double>(in Vector512<double> src, in Vector512<double> mask)
{
    IL_0000: ldarg.0
    IL_0001: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Lo
    IL_0006: ldarg.1
    IL_0007: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Lo
    IL_000C: call Z0.bit Z0.ginx::vtestz<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0011: stloc.0
    IL_0012: ldloc.0
    IL_0013: call System.Boolean Z0.bit::op_False(Z0.bit)
    IL_0018: brtrue.s IL_0032
    IL_001A: ldloc.0
    IL_001B: ldarg.0
    IL_001C: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Hi
    IL_0021: ldarg.1
    IL_0022: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Hi
    IL_0027: call Z0.bit Z0.ginx::vtestz<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_002C: call Z0.bit Z0.bit::op_BitwiseAnd(Z0.bit,Z0.bit)
    IL_0031: ret
    IL_0032: ldloc.0
    IL_0033: ret
}
------------------------------------------------------------------------------------------------------------------------
