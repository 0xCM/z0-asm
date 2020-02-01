// Z0.BitGrid`1<T>& modreq(System.Runtime.InteropServices.InAttribute) Z0.BitGrid::and<T>(Z0.BitGrid`1<T>&,Z0.BitGrid`1<T>&,Z0.BitGrid`1<T>&)
// ref BitGrid<byte> and<byte>(in BitGrid<byte> gx, in BitGrid<byte> gy, in BitGrid<byte> gz)
// AggressiveInlining
ref BitGrid<byte> and<byte>(in BitGrid<byte> gx, in BitGrid<byte> gy, in BitGrid<byte> gz)
{
    IL_0000: ldarg.2
    IL_0001: call System.Int32 Z0.BitGrid`1<T>::get_BlockCount()
    IL_0006: stloc.0
    IL_0007: ldc.i4.0
    IL_0008: stloc.1
    IL_0009: br.s IL_0029
    IL_000B: ldarg.2
    IL_000C: ldloc.1
    IL_000D: ldarg.0
    IL_000E: ldloc.1
    IL_000F: call System.Runtime.Intrinsics.Vector256`1<T> Z0.BitGrid`1<T>::get_Item(System.Int32)
    IL_0014: ldarg.1
    IL_0015: ldloc.1
    IL_0016: call System.Runtime.Intrinsics.Vector256`1<T> Z0.BitGrid`1<T>::get_Item(System.Int32)
    IL_001B: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vand<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0020: call System.Void Z0.BitGrid`1<T>::set_Item(System.Int32,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0025: ldloc.1
    IL_0026: ldc.i4.1
    IL_0027: add
    IL_0028: stloc.1
    IL_0029: ldloc.1
    IL_002A: ldloc.0
    IL_002B: blt.s IL_000B
    IL_002D: ldarg.2
    IL_002E: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.BitGrid`1<T>& modreq(System.Runtime.InteropServices.InAttribute) Z0.BitGrid::and<T>(Z0.BitGrid`1<T>&,Z0.BitGrid`1<T>&,Z0.BitGrid`1<T>&)
// ref BitGrid<ushort> and<ushort>(in BitGrid<ushort> gx, in BitGrid<ushort> gy, in BitGrid<ushort> gz)
// AggressiveInlining
ref BitGrid<ushort> and<ushort>(in BitGrid<ushort> gx, in BitGrid<ushort> gy, in BitGrid<ushort> gz)
{
    IL_0000: ldarg.2
    IL_0001: call System.Int32 Z0.BitGrid`1<T>::get_BlockCount()
    IL_0006: stloc.0
    IL_0007: ldc.i4.0
    IL_0008: stloc.1
    IL_0009: br.s IL_0029
    IL_000B: ldarg.2
    IL_000C: ldloc.1
    IL_000D: ldarg.0
    IL_000E: ldloc.1
    IL_000F: call System.Runtime.Intrinsics.Vector256`1<T> Z0.BitGrid`1<T>::get_Item(System.Int32)
    IL_0014: ldarg.1
    IL_0015: ldloc.1
    IL_0016: call System.Runtime.Intrinsics.Vector256`1<T> Z0.BitGrid`1<T>::get_Item(System.Int32)
    IL_001B: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vand<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0020: call System.Void Z0.BitGrid`1<T>::set_Item(System.Int32,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0025: ldloc.1
    IL_0026: ldc.i4.1
    IL_0027: add
    IL_0028: stloc.1
    IL_0029: ldloc.1
    IL_002A: ldloc.0
    IL_002B: blt.s IL_000B
    IL_002D: ldarg.2
    IL_002E: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.BitGrid`1<T>& modreq(System.Runtime.InteropServices.InAttribute) Z0.BitGrid::and<T>(Z0.BitGrid`1<T>&,Z0.BitGrid`1<T>&,Z0.BitGrid`1<T>&)
// ref BitGrid<uint> and<uint>(in BitGrid<uint> gx, in BitGrid<uint> gy, in BitGrid<uint> gz)
// AggressiveInlining
ref BitGrid<uint> and<uint>(in BitGrid<uint> gx, in BitGrid<uint> gy, in BitGrid<uint> gz)
{
    IL_0000: ldarg.2
    IL_0001: call System.Int32 Z0.BitGrid`1<T>::get_BlockCount()
    IL_0006: stloc.0
    IL_0007: ldc.i4.0
    IL_0008: stloc.1
    IL_0009: br.s IL_0029
    IL_000B: ldarg.2
    IL_000C: ldloc.1
    IL_000D: ldarg.0
    IL_000E: ldloc.1
    IL_000F: call System.Runtime.Intrinsics.Vector256`1<T> Z0.BitGrid`1<T>::get_Item(System.Int32)
    IL_0014: ldarg.1
    IL_0015: ldloc.1
    IL_0016: call System.Runtime.Intrinsics.Vector256`1<T> Z0.BitGrid`1<T>::get_Item(System.Int32)
    IL_001B: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vand<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0020: call System.Void Z0.BitGrid`1<T>::set_Item(System.Int32,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0025: ldloc.1
    IL_0026: ldc.i4.1
    IL_0027: add
    IL_0028: stloc.1
    IL_0029: ldloc.1
    IL_002A: ldloc.0
    IL_002B: blt.s IL_000B
    IL_002D: ldarg.2
    IL_002E: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.BitGrid`1<T>& modreq(System.Runtime.InteropServices.InAttribute) Z0.BitGrid::and<T>(Z0.BitGrid`1<T>&,Z0.BitGrid`1<T>&,Z0.BitGrid`1<T>&)
// ref BitGrid<ulong> and<ulong>(in BitGrid<ulong> gx, in BitGrid<ulong> gy, in BitGrid<ulong> gz)
// AggressiveInlining
ref BitGrid<ulong> and<ulong>(in BitGrid<ulong> gx, in BitGrid<ulong> gy, in BitGrid<ulong> gz)
{
    IL_0000: ldarg.2
    IL_0001: call System.Int32 Z0.BitGrid`1<T>::get_BlockCount()
    IL_0006: stloc.0
    IL_0007: ldc.i4.0
    IL_0008: stloc.1
    IL_0009: br.s IL_0029
    IL_000B: ldarg.2
    IL_000C: ldloc.1
    IL_000D: ldarg.0
    IL_000E: ldloc.1
    IL_000F: call System.Runtime.Intrinsics.Vector256`1<T> Z0.BitGrid`1<T>::get_Item(System.Int32)
    IL_0014: ldarg.1
    IL_0015: ldloc.1
    IL_0016: call System.Runtime.Intrinsics.Vector256`1<T> Z0.BitGrid`1<T>::get_Item(System.Int32)
    IL_001B: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vand<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0020: call System.Void Z0.BitGrid`1<T>::set_Item(System.Int32,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0025: ldloc.1
    IL_0026: ldc.i4.1
    IL_0027: add
    IL_0028: stloc.1
    IL_0029: ldloc.1
    IL_002A: ldloc.0
    IL_002B: blt.s IL_000B
    IL_002D: ldarg.2
    IL_002E: ret
}
------------------------------------------------------------------------------------------------------------------------
