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
