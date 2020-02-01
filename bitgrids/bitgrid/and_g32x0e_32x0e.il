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
