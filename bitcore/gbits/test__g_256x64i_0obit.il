// Id := 100663679, Name := Z0.bit Z0.gbits::test<T>(Z0.Block256`1<T>&,System.Int32)
// bit test<long>(in Block256<long> src, int index)
// AggressiveInlining
bit test<long>(in Block256<long> src, int index)
{
    IL_0000: ldarg.1
    IL_0001: call Z0.BitPos`1<T> Z0.gbits::bitpos<T>(System.Int32)
    IL_0006: stloc.0
    IL_0007: ldarg.0
    IL_0008: ldloc.0
    IL_0009: ldfld System.UInt16 Z0.BitPos`1<T>::CellIndex
    IL_000E: call T& Z0.Block256`1<T>::get_Item(System.Int32)
    IL_0013: ldobj T
    IL_0018: ldloc.0
    IL_0019: ldfld System.UInt16 Z0.BitPos`1<T>::BitOffset
    IL_001E: call Z0.bit Z0.gbits::testbit<T>(T,System.Int32)
    IL_0023: ret
}
