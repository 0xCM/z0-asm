// T& Z0.BitGrid::cell<T>(T&,System.Int32)
// ref byte cell<byte>(ref byte src, int bitpos)
// AggressiveInlining
ref byte cell<byte>(ref byte src, int bitpos)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Int32 zfunc::bitsize<T>()
    IL_0007: div
    IL_0008: call T& zfunc::seek<T>(T&,System.Int32)
    IL_000D: ret
}
------------------------------------------------------------------------------------------------------------------------
// T& Z0.BitGrid::cell<T>(T&,System.Int32)
// ref ushort cell<ushort>(ref ushort src, int bitpos)
// AggressiveInlining
ref ushort cell<ushort>(ref ushort src, int bitpos)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Int32 zfunc::bitsize<T>()
    IL_0007: div
    IL_0008: call T& zfunc::seek<T>(T&,System.Int32)
    IL_000D: ret
}
------------------------------------------------------------------------------------------------------------------------
// T& Z0.BitGrid::cell<T>(T&,System.Int32)
// ref uint cell<uint>(ref uint src, int bitpos)
// AggressiveInlining
ref uint cell<uint>(ref uint src, int bitpos)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Int32 zfunc::bitsize<T>()
    IL_0007: div
    IL_0008: call T& zfunc::seek<T>(T&,System.Int32)
    IL_000D: ret
}
------------------------------------------------------------------------------------------------------------------------
// T& Z0.BitGrid::cell<T>(T&,System.Int32)
// ref ulong cell<ulong>(ref ulong src, int bitpos)
// AggressiveInlining
ref ulong cell<ulong>(ref ulong src, int bitpos)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Int32 zfunc::bitsize<T>()
    IL_0007: div
    IL_0008: call T& zfunc::seek<T>(T&,System.Int32)
    IL_000D: ret
}
------------------------------------------------------------------------------------------------------------------------
// T& Z0.BitGrid::cell<T>(Z0.BitGrid`1<T>&,System.Int32)
// ref byte cell<byte>(in BitGrid<byte> src, int bitpos)
// AggressiveInlining
ref byte cell<byte>(in BitGrid<byte> src, int bitpos)
{
    IL_0000: ldarg.0
    IL_0001: call T& Z0.BitGrid`1<T>::get_Head()
    IL_0006: ldarg.1
    IL_0007: call System.Int32 zfunc::bitsize<T>()
    IL_000C: div
    IL_000D: call T& zfunc::seek<T>(T&,System.Int32)
    IL_0012: ret
}
------------------------------------------------------------------------------------------------------------------------
// T& Z0.BitGrid::cell<T>(Z0.BitGrid`1<T>&,System.Int32)
// ref ushort cell<ushort>(in BitGrid<ushort> src, int bitpos)
// AggressiveInlining
ref ushort cell<ushort>(in BitGrid<ushort> src, int bitpos)
{
    IL_0000: ldarg.0
    IL_0001: call T& Z0.BitGrid`1<T>::get_Head()
    IL_0006: ldarg.1
    IL_0007: call System.Int32 zfunc::bitsize<T>()
    IL_000C: div
    IL_000D: call T& zfunc::seek<T>(T&,System.Int32)
    IL_0012: ret
}
------------------------------------------------------------------------------------------------------------------------
// T& Z0.BitGrid::cell<T>(Z0.BitGrid`1<T>&,System.Int32)
// ref uint cell<uint>(in BitGrid<uint> src, int bitpos)
// AggressiveInlining
ref uint cell<uint>(in BitGrid<uint> src, int bitpos)
{
    IL_0000: ldarg.0
    IL_0001: call T& Z0.BitGrid`1<T>::get_Head()
    IL_0006: ldarg.1
    IL_0007: call System.Int32 zfunc::bitsize<T>()
    IL_000C: div
    IL_000D: call T& zfunc::seek<T>(T&,System.Int32)
    IL_0012: ret
}
------------------------------------------------------------------------------------------------------------------------
// T& Z0.BitGrid::cell<T>(Z0.BitGrid`1<T>&,System.Int32)
// ref ulong cell<ulong>(in BitGrid<ulong> src, int bitpos)
// AggressiveInlining
ref ulong cell<ulong>(in BitGrid<ulong> src, int bitpos)
{
    IL_0000: ldarg.0
    IL_0001: call T& Z0.BitGrid`1<T>::get_Head()
    IL_0006: ldarg.1
    IL_0007: call System.Int32 zfunc::bitsize<T>()
    IL_000C: div
    IL_000D: call T& zfunc::seek<T>(T&,System.Int32)
    IL_0012: ret
}
------------------------------------------------------------------------------------------------------------------------
