// Id := 100663617, Name := T Z0.gbits::bitseg<T>(Z0.Block256`1<T>&,Z0.BitPos`1<T>,Z0.BitPos`1<T>)
// ushort bitseg<ushort>(in Block256<ushort> src, BitPos<ushort> firstpos, BitPos<ushort> lastpos)
// AggressiveInlining
ushort bitseg<ushort>(in Block256<ushort> src, BitPos<ushort> firstpos, BitPos<ushort> lastpos)
{
    IL_0000: ldarg.0
    IL_0001: call System.Span`1<T> Z0.Block256`1<T>::get_Data()
    IL_0006: ldarg.1
    IL_0007: ldarg.2
    IL_0008: call T Z0.gbits::bitseg<T>(System.Span`1<T>,Z0.BitPos`1<T>,Z0.BitPos`1<T>)
    IL_000D: ret
}
