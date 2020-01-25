// Id := 100663630, Name := T& modreq(System.Runtime.InteropServices.InAttribute) Z0.gbits::cell<T>(System.ReadOnlySpan`1<T>,Z0.BitPos`1<T>)
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
