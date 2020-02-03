// Z0.BitGrid16`1<T> Z0.BitGrid::and<T>(Z0.BitGrid16`1<T>,Z0.BitGrid16`1<T>)
// BitGrid16<byte> and<byte>(BitGrid16<byte> gx, BitGrid16<byte> gy)
// AggressiveInlining
BitGrid16<byte> and<byte>(BitGrid16<byte> gx, BitGrid16<byte> gy)
{
    IL_0000: ldarga.s gx
    IL_0002: call System.Int32 Z0.BitGrid16`1<T>::get_RowCount()
    IL_0007: ldarga.s gx
    IL_0009: call System.Int32 Z0.BitGrid16`1<T>::get_ColCount()
    IL_000E: ldarg.0
    IL_000F: call System.UInt16 Z0.BitGrid16`1<T>::op_Implicit(Z0.BitGrid16`1<T>)
    IL_0014: ldarg.1
    IL_0015: call System.UInt16 Z0.BitGrid16`1<T>::op_Implicit(Z0.BitGrid16`1<T>)
    IL_001A: call System.UInt16 Z0.math::and(System.UInt16,System.UInt16)
    IL_001F: call Z0.BitGrid16`1<T> Z0.BitGrid::init16<T>(System.Int32,System.Int32,System.UInt16)
    IL_0024: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.BitGrid16`1<T> Z0.BitGrid::and<T>(Z0.BitGrid16`1<T>,Z0.BitGrid16`1<T>)
// BitGrid16<ushort> and<ushort>(BitGrid16<ushort> gx, BitGrid16<ushort> gy)
// AggressiveInlining
BitGrid16<ushort> and<ushort>(BitGrid16<ushort> gx, BitGrid16<ushort> gy)
{
    IL_0000: ldarga.s gx
    IL_0002: call System.Int32 Z0.BitGrid16`1<T>::get_RowCount()
    IL_0007: ldarga.s gx
    IL_0009: call System.Int32 Z0.BitGrid16`1<T>::get_ColCount()
    IL_000E: ldarg.0
    IL_000F: call System.UInt16 Z0.BitGrid16`1<T>::op_Implicit(Z0.BitGrid16`1<T>)
    IL_0014: ldarg.1
    IL_0015: call System.UInt16 Z0.BitGrid16`1<T>::op_Implicit(Z0.BitGrid16`1<T>)
    IL_001A: call System.UInt16 Z0.math::and(System.UInt16,System.UInt16)
    IL_001F: call Z0.BitGrid16`1<T> Z0.BitGrid::init16<T>(System.Int32,System.Int32,System.UInt16)
    IL_0024: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.BitGrid16`1<T> Z0.BitGrid::and<T>(Z0.BitGrid16`1<T>,Z0.BitGrid16`1<T>)
// BitGrid16<uint> and<uint>(BitGrid16<uint> gx, BitGrid16<uint> gy)
// AggressiveInlining
BitGrid16<uint> and<uint>(BitGrid16<uint> gx, BitGrid16<uint> gy)
{
    IL_0000: ldarga.s gx
    IL_0002: call System.Int32 Z0.BitGrid16`1<T>::get_RowCount()
    IL_0007: ldarga.s gx
    IL_0009: call System.Int32 Z0.BitGrid16`1<T>::get_ColCount()
    IL_000E: ldarg.0
    IL_000F: call System.UInt16 Z0.BitGrid16`1<T>::op_Implicit(Z0.BitGrid16`1<T>)
    IL_0014: ldarg.1
    IL_0015: call System.UInt16 Z0.BitGrid16`1<T>::op_Implicit(Z0.BitGrid16`1<T>)
    IL_001A: call System.UInt16 Z0.math::and(System.UInt16,System.UInt16)
    IL_001F: call Z0.BitGrid16`1<T> Z0.BitGrid::init16<T>(System.Int32,System.Int32,System.UInt16)
    IL_0024: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.BitGrid16`1<T> Z0.BitGrid::and<T>(Z0.BitGrid16`1<T>,Z0.BitGrid16`1<T>)
// BitGrid16<ulong> and<ulong>(BitGrid16<ulong> gx, BitGrid16<ulong> gy)
// AggressiveInlining
BitGrid16<ulong> and<ulong>(BitGrid16<ulong> gx, BitGrid16<ulong> gy)
{
    IL_0000: ldarga.s gx
    IL_0002: call System.Int32 Z0.BitGrid16`1<T>::get_RowCount()
    IL_0007: ldarga.s gx
    IL_0009: call System.Int32 Z0.BitGrid16`1<T>::get_ColCount()
    IL_000E: ldarg.0
    IL_000F: call System.UInt16 Z0.BitGrid16`1<T>::op_Implicit(Z0.BitGrid16`1<T>)
    IL_0014: ldarg.1
    IL_0015: call System.UInt16 Z0.BitGrid16`1<T>::op_Implicit(Z0.BitGrid16`1<T>)
    IL_001A: call System.UInt16 Z0.math::and(System.UInt16,System.UInt16)
    IL_001F: call Z0.BitGrid16`1<T> Z0.BitGrid::init16<T>(System.Int32,System.Int32,System.UInt16)
    IL_0024: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.BitGrid32`1<T> Z0.BitGrid::and<T>(Z0.BitGrid32`1<T>,Z0.BitGrid32`1<T>)
// BitGrid32<byte> and<byte>(BitGrid32<byte> gx, BitGrid32<byte> gy)
// AggressiveInlining
BitGrid32<byte> and<byte>(BitGrid32<byte> gx, BitGrid32<byte> gy)
{
    IL_0000: ldarga.s gx
    IL_0002: call System.Int32 Z0.BitGrid32`1<T>::get_RowCount()
    IL_0007: ldarga.s gx
    IL_0009: call System.Int32 Z0.BitGrid32`1<T>::get_ColCount()
    IL_000E: ldarg.0
    IL_000F: call System.UInt32 Z0.BitGrid32`1<T>::op_Implicit(Z0.BitGrid32`1<T>)
    IL_0014: ldarg.1
    IL_0015: call System.UInt32 Z0.BitGrid32`1<T>::op_Implicit(Z0.BitGrid32`1<T>)
    IL_001A: call System.UInt32 Z0.math::and(System.UInt32,System.UInt32)
    IL_001F: call Z0.BitGrid32`1<T> Z0.BitGrid::init32<T>(System.Int32,System.Int32,System.UInt32)
    IL_0024: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.BitGrid32`1<T> Z0.BitGrid::and<T>(Z0.BitGrid32`1<T>,Z0.BitGrid32`1<T>)
// BitGrid32<ushort> and<ushort>(BitGrid32<ushort> gx, BitGrid32<ushort> gy)
// AggressiveInlining
BitGrid32<ushort> and<ushort>(BitGrid32<ushort> gx, BitGrid32<ushort> gy)
{
    IL_0000: ldarga.s gx
    IL_0002: call System.Int32 Z0.BitGrid32`1<T>::get_RowCount()
    IL_0007: ldarga.s gx
    IL_0009: call System.Int32 Z0.BitGrid32`1<T>::get_ColCount()
    IL_000E: ldarg.0
    IL_000F: call System.UInt32 Z0.BitGrid32`1<T>::op_Implicit(Z0.BitGrid32`1<T>)
    IL_0014: ldarg.1
    IL_0015: call System.UInt32 Z0.BitGrid32`1<T>::op_Implicit(Z0.BitGrid32`1<T>)
    IL_001A: call System.UInt32 Z0.math::and(System.UInt32,System.UInt32)
    IL_001F: call Z0.BitGrid32`1<T> Z0.BitGrid::init32<T>(System.Int32,System.Int32,System.UInt32)
    IL_0024: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.BitGrid32`1<T> Z0.BitGrid::and<T>(Z0.BitGrid32`1<T>,Z0.BitGrid32`1<T>)
// BitGrid32<uint> and<uint>(BitGrid32<uint> gx, BitGrid32<uint> gy)
// AggressiveInlining
BitGrid32<uint> and<uint>(BitGrid32<uint> gx, BitGrid32<uint> gy)
{
    IL_0000: ldarga.s gx
    IL_0002: call System.Int32 Z0.BitGrid32`1<T>::get_RowCount()
    IL_0007: ldarga.s gx
    IL_0009: call System.Int32 Z0.BitGrid32`1<T>::get_ColCount()
    IL_000E: ldarg.0
    IL_000F: call System.UInt32 Z0.BitGrid32`1<T>::op_Implicit(Z0.BitGrid32`1<T>)
    IL_0014: ldarg.1
    IL_0015: call System.UInt32 Z0.BitGrid32`1<T>::op_Implicit(Z0.BitGrid32`1<T>)
    IL_001A: call System.UInt32 Z0.math::and(System.UInt32,System.UInt32)
    IL_001F: call Z0.BitGrid32`1<T> Z0.BitGrid::init32<T>(System.Int32,System.Int32,System.UInt32)
    IL_0024: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.BitGrid32`1<T> Z0.BitGrid::and<T>(Z0.BitGrid32`1<T>,Z0.BitGrid32`1<T>)
// BitGrid32<ulong> and<ulong>(BitGrid32<ulong> gx, BitGrid32<ulong> gy)
// AggressiveInlining
BitGrid32<ulong> and<ulong>(BitGrid32<ulong> gx, BitGrid32<ulong> gy)
{
    IL_0000: ldarga.s gx
    IL_0002: call System.Int32 Z0.BitGrid32`1<T>::get_RowCount()
    IL_0007: ldarga.s gx
    IL_0009: call System.Int32 Z0.BitGrid32`1<T>::get_ColCount()
    IL_000E: ldarg.0
    IL_000F: call System.UInt32 Z0.BitGrid32`1<T>::op_Implicit(Z0.BitGrid32`1<T>)
    IL_0014: ldarg.1
    IL_0015: call System.UInt32 Z0.BitGrid32`1<T>::op_Implicit(Z0.BitGrid32`1<T>)
    IL_001A: call System.UInt32 Z0.math::and(System.UInt32,System.UInt32)
    IL_001F: call Z0.BitGrid32`1<T> Z0.BitGrid::init32<T>(System.Int32,System.Int32,System.UInt32)
    IL_0024: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.BitGrid64`1<T> Z0.BitGrid::and<T>(Z0.BitGrid64`1<T>,Z0.BitGrid64`1<T>)
// BitGrid64<byte> and<byte>(BitGrid64<byte> gx, BitGrid64<byte> gy)
// AggressiveInlining
BitGrid64<byte> and<byte>(BitGrid64<byte> gx, BitGrid64<byte> gy)
{
    IL_0000: ldarga.s gx
    IL_0002: call System.Int32 Z0.BitGrid64`1<T>::get_RowCount()
    IL_0007: ldarga.s gx
    IL_0009: call System.Int32 Z0.BitGrid64`1<T>::get_ColCount()
    IL_000E: ldarg.0
    IL_000F: call System.UInt64 Z0.BitGrid64`1<T>::op_Implicit(Z0.BitGrid64`1<T>)
    IL_0014: ldarg.1
    IL_0015: call System.UInt64 Z0.BitGrid64`1<T>::op_Implicit(Z0.BitGrid64`1<T>)
    IL_001A: call System.UInt64 Z0.math::and(System.UInt64,System.UInt64)
    IL_001F: call Z0.BitGrid64`1<T> Z0.BitGrid::init64<T>(System.Int32,System.Int32,System.UInt64)
    IL_0024: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.BitGrid64`1<T> Z0.BitGrid::and<T>(Z0.BitGrid64`1<T>,Z0.BitGrid64`1<T>)
// BitGrid64<ushort> and<ushort>(BitGrid64<ushort> gx, BitGrid64<ushort> gy)
// AggressiveInlining
BitGrid64<ushort> and<ushort>(BitGrid64<ushort> gx, BitGrid64<ushort> gy)
{
    IL_0000: ldarga.s gx
    IL_0002: call System.Int32 Z0.BitGrid64`1<T>::get_RowCount()
    IL_0007: ldarga.s gx
    IL_0009: call System.Int32 Z0.BitGrid64`1<T>::get_ColCount()
    IL_000E: ldarg.0
    IL_000F: call System.UInt64 Z0.BitGrid64`1<T>::op_Implicit(Z0.BitGrid64`1<T>)
    IL_0014: ldarg.1
    IL_0015: call System.UInt64 Z0.BitGrid64`1<T>::op_Implicit(Z0.BitGrid64`1<T>)
    IL_001A: call System.UInt64 Z0.math::and(System.UInt64,System.UInt64)
    IL_001F: call Z0.BitGrid64`1<T> Z0.BitGrid::init64<T>(System.Int32,System.Int32,System.UInt64)
    IL_0024: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.BitGrid64`1<T> Z0.BitGrid::and<T>(Z0.BitGrid64`1<T>,Z0.BitGrid64`1<T>)
// BitGrid64<uint> and<uint>(BitGrid64<uint> gx, BitGrid64<uint> gy)
// AggressiveInlining
BitGrid64<uint> and<uint>(BitGrid64<uint> gx, BitGrid64<uint> gy)
{
    IL_0000: ldarga.s gx
    IL_0002: call System.Int32 Z0.BitGrid64`1<T>::get_RowCount()
    IL_0007: ldarga.s gx
    IL_0009: call System.Int32 Z0.BitGrid64`1<T>::get_ColCount()
    IL_000E: ldarg.0
    IL_000F: call System.UInt64 Z0.BitGrid64`1<T>::op_Implicit(Z0.BitGrid64`1<T>)
    IL_0014: ldarg.1
    IL_0015: call System.UInt64 Z0.BitGrid64`1<T>::op_Implicit(Z0.BitGrid64`1<T>)
    IL_001A: call System.UInt64 Z0.math::and(System.UInt64,System.UInt64)
    IL_001F: call Z0.BitGrid64`1<T> Z0.BitGrid::init64<T>(System.Int32,System.Int32,System.UInt64)
    IL_0024: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.BitGrid64`1<T> Z0.BitGrid::and<T>(Z0.BitGrid64`1<T>,Z0.BitGrid64`1<T>)
// BitGrid64<ulong> and<ulong>(BitGrid64<ulong> gx, BitGrid64<ulong> gy)
// AggressiveInlining
BitGrid64<ulong> and<ulong>(BitGrid64<ulong> gx, BitGrid64<ulong> gy)
{
    IL_0000: ldarga.s gx
    IL_0002: call System.Int32 Z0.BitGrid64`1<T>::get_RowCount()
    IL_0007: ldarga.s gx
    IL_0009: call System.Int32 Z0.BitGrid64`1<T>::get_ColCount()
    IL_000E: ldarg.0
    IL_000F: call System.UInt64 Z0.BitGrid64`1<T>::op_Implicit(Z0.BitGrid64`1<T>)
    IL_0014: ldarg.1
    IL_0015: call System.UInt64 Z0.BitGrid64`1<T>::op_Implicit(Z0.BitGrid64`1<T>)
    IL_001A: call System.UInt64 Z0.math::and(System.UInt64,System.UInt64)
    IL_001F: call Z0.BitGrid64`1<T> Z0.BitGrid::init64<T>(System.Int32,System.Int32,System.UInt64)
    IL_0024: ret
}
------------------------------------------------------------------------------------------------------------------------
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
// Z0.BitGrid`1<T> Z0.BitGrid::and<T>(Z0.BitGrid`1<T>&,Z0.BitGrid`1<T>&)
// BitGrid<byte> and<byte>(in BitGrid<byte> gx, in BitGrid<byte> gy)
// AggressiveInlining
BitGrid<byte> and<byte>(in BitGrid<byte> gx, in BitGrid<byte> gy)
{
    IL_0000: ldarg.0
    IL_0001: ldfld System.Int32 Z0.BitGrid`1<T>::RowCount
    IL_0006: ldarg.0
    IL_0007: ldfld System.Int32 Z0.BitGrid`1<T>::ColCount
    IL_000C: ldloca.s V_1
    IL_000E: initobj T
    IL_0014: ldloc.1
    IL_0015: call Z0.BitGrid`1<T> Z0.BitGrid::alloc<T>(System.Int32,System.Int32,T)
    IL_001A: stloc.0
    IL_001B: ldarg.0
    IL_001C: ldarg.1
    IL_001D: ldloca.s V_0
    IL_001F: call Z0.BitGrid`1<T>& modreq(System.Runtime.InteropServices.InAttribute) Z0.BitGrid::and<T>(Z0.BitGrid`1<T>&,Z0.BitGrid`1<T>&,Z0.BitGrid`1<T>&)
    IL_0024: pop
    IL_0025: ldloc.0
    IL_0026: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.BitGrid`1<T> Z0.BitGrid::and<T>(Z0.BitGrid`1<T>&,Z0.BitGrid`1<T>&)
// BitGrid<ushort> and<ushort>(in BitGrid<ushort> gx, in BitGrid<ushort> gy)
// AggressiveInlining
BitGrid<ushort> and<ushort>(in BitGrid<ushort> gx, in BitGrid<ushort> gy)
{
    IL_0000: ldarg.0
    IL_0001: ldfld System.Int32 Z0.BitGrid`1<T>::RowCount
    IL_0006: ldarg.0
    IL_0007: ldfld System.Int32 Z0.BitGrid`1<T>::ColCount
    IL_000C: ldloca.s V_1
    IL_000E: initobj T
    IL_0014: ldloc.1
    IL_0015: call Z0.BitGrid`1<T> Z0.BitGrid::alloc<T>(System.Int32,System.Int32,T)
    IL_001A: stloc.0
    IL_001B: ldarg.0
    IL_001C: ldarg.1
    IL_001D: ldloca.s V_0
    IL_001F: call Z0.BitGrid`1<T>& modreq(System.Runtime.InteropServices.InAttribute) Z0.BitGrid::and<T>(Z0.BitGrid`1<T>&,Z0.BitGrid`1<T>&,Z0.BitGrid`1<T>&)
    IL_0024: pop
    IL_0025: ldloc.0
    IL_0026: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.BitGrid`1<T> Z0.BitGrid::and<T>(Z0.BitGrid`1<T>&,Z0.BitGrid`1<T>&)
// BitGrid<uint> and<uint>(in BitGrid<uint> gx, in BitGrid<uint> gy)
// AggressiveInlining
BitGrid<uint> and<uint>(in BitGrid<uint> gx, in BitGrid<uint> gy)
{
    IL_0000: ldarg.0
    IL_0001: ldfld System.Int32 Z0.BitGrid`1<T>::RowCount
    IL_0006: ldarg.0
    IL_0007: ldfld System.Int32 Z0.BitGrid`1<T>::ColCount
    IL_000C: ldloca.s V_1
    IL_000E: initobj T
    IL_0014: ldloc.1
    IL_0015: call Z0.BitGrid`1<T> Z0.BitGrid::alloc<T>(System.Int32,System.Int32,T)
    IL_001A: stloc.0
    IL_001B: ldarg.0
    IL_001C: ldarg.1
    IL_001D: ldloca.s V_0
    IL_001F: call Z0.BitGrid`1<T>& modreq(System.Runtime.InteropServices.InAttribute) Z0.BitGrid::and<T>(Z0.BitGrid`1<T>&,Z0.BitGrid`1<T>&,Z0.BitGrid`1<T>&)
    IL_0024: pop
    IL_0025: ldloc.0
    IL_0026: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.BitGrid`1<T> Z0.BitGrid::and<T>(Z0.BitGrid`1<T>&,Z0.BitGrid`1<T>&)
// BitGrid<ulong> and<ulong>(in BitGrid<ulong> gx, in BitGrid<ulong> gy)
// AggressiveInlining
BitGrid<ulong> and<ulong>(in BitGrid<ulong> gx, in BitGrid<ulong> gy)
{
    IL_0000: ldarg.0
    IL_0001: ldfld System.Int32 Z0.BitGrid`1<T>::RowCount
    IL_0006: ldarg.0
    IL_0007: ldfld System.Int32 Z0.BitGrid`1<T>::ColCount
    IL_000C: ldloca.s V_1
    IL_000E: initobj T
    IL_0014: ldloc.1
    IL_0015: call Z0.BitGrid`1<T> Z0.BitGrid::alloc<T>(System.Int32,System.Int32,T)
    IL_001A: stloc.0
    IL_001B: ldarg.0
    IL_001C: ldarg.1
    IL_001D: ldloca.s V_0
    IL_001F: call Z0.BitGrid`1<T>& modreq(System.Runtime.InteropServices.InAttribute) Z0.BitGrid::and<T>(Z0.BitGrid`1<T>&,Z0.BitGrid`1<T>&,Z0.BitGrid`1<T>&)
    IL_0024: pop
    IL_0025: ldloc.0
    IL_0026: ret
}
------------------------------------------------------------------------------------------------------------------------
