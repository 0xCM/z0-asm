// T& Z0.gbits::cell<T>(System.Span`1<T>,Z0.BitPos`1<T>)
// ref byte cell<byte>(Span<byte> src, BitPos<byte> pos)
// AggressiveInlining
ref byte cell<byte>(Span<byte> src, BitPos<byte> pos)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldfld System.UInt16 Z0.BitPos`1<T>::CellIndex
    IL_0007: call T& zfunc::seek<T>(System.Span`1<T>,System.Int32)
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
// T& Z0.gbits::cell<T>(System.Span`1<T>,Z0.BitPos`1<T>)
// ref ushort cell<ushort>(Span<ushort> src, BitPos<ushort> pos)
// AggressiveInlining
ref ushort cell<ushort>(Span<ushort> src, BitPos<ushort> pos)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldfld System.UInt16 Z0.BitPos`1<T>::CellIndex
    IL_0007: call T& zfunc::seek<T>(System.Span`1<T>,System.Int32)
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
// T& Z0.gbits::cell<T>(System.Span`1<T>,Z0.BitPos`1<T>)
// ref uint cell<uint>(Span<uint> src, BitPos<uint> pos)
// AggressiveInlining
ref uint cell<uint>(Span<uint> src, BitPos<uint> pos)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldfld System.UInt16 Z0.BitPos`1<T>::CellIndex
    IL_0007: call T& zfunc::seek<T>(System.Span`1<T>,System.Int32)
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
// T& Z0.gbits::cell<T>(System.Span`1<T>,Z0.BitPos`1<T>)
// ref ulong cell<ulong>(Span<ulong> src, BitPos<ulong> pos)
// AggressiveInlining
ref ulong cell<ulong>(Span<ulong> src, BitPos<ulong> pos)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldfld System.UInt16 Z0.BitPos`1<T>::CellIndex
    IL_0007: call T& zfunc::seek<T>(System.Span`1<T>,System.Int32)
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
// T& modreq(System.Runtime.InteropServices.InAttribute) Z0.gbits::cell<T>(System.ReadOnlySpan`1<T>,Z0.BitPos`1<T>)
// ref byte cell<byte>(ReadOnlySpan<byte> src, BitPos<byte> pos)
// AggressiveInlining
ref byte cell<byte>(ReadOnlySpan<byte> src, BitPos<byte> pos)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldfld System.UInt16 Z0.BitPos`1<T>::CellIndex
    IL_0007: call T& modreq(System.Runtime.InteropServices.InAttribute) zfunc::skip<T>(System.ReadOnlySpan`1<T>,System.Int32)
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
// T& modreq(System.Runtime.InteropServices.InAttribute) Z0.gbits::cell<T>(System.ReadOnlySpan`1<T>,Z0.BitPos`1<T>)
// ref ushort cell<ushort>(ReadOnlySpan<ushort> src, BitPos<ushort> pos)
// AggressiveInlining
ref ushort cell<ushort>(ReadOnlySpan<ushort> src, BitPos<ushort> pos)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldfld System.UInt16 Z0.BitPos`1<T>::CellIndex
    IL_0007: call T& modreq(System.Runtime.InteropServices.InAttribute) zfunc::skip<T>(System.ReadOnlySpan`1<T>,System.Int32)
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
// T& modreq(System.Runtime.InteropServices.InAttribute) Z0.gbits::cell<T>(System.ReadOnlySpan`1<T>,Z0.BitPos`1<T>)
// ref uint cell<uint>(ReadOnlySpan<uint> src, BitPos<uint> pos)
// AggressiveInlining
ref uint cell<uint>(ReadOnlySpan<uint> src, BitPos<uint> pos)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldfld System.UInt16 Z0.BitPos`1<T>::CellIndex
    IL_0007: call T& modreq(System.Runtime.InteropServices.InAttribute) zfunc::skip<T>(System.ReadOnlySpan`1<T>,System.Int32)
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
// T& modreq(System.Runtime.InteropServices.InAttribute) Z0.gbits::cell<T>(System.ReadOnlySpan`1<T>,Z0.BitPos`1<T>)
// ref ulong cell<ulong>(ReadOnlySpan<ulong> src, BitPos<ulong> pos)
// AggressiveInlining
ref ulong cell<ulong>(ReadOnlySpan<ulong> src, BitPos<ulong> pos)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldfld System.UInt16 Z0.BitPos`1<T>::CellIndex
    IL_0007: call T& modreq(System.Runtime.InteropServices.InAttribute) zfunc::skip<T>(System.ReadOnlySpan`1<T>,System.Int32)
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
