// Id := 100663672, Name := System.Void Z0.gbits::set<T>(Z0.Block256`1<T>&,System.Int32,Z0.bit)
// void set<ushort>(in Block256<ushort> src, int index, bit value)
// AggressiveInlining
void set<ushort>(in Block256<ushort> src, int index, bit value)
{
    IL_0000: ldarg.1
    IL_0001: call Z0.BitPos`1<T> Z0.gbits::bitpos<T>(System.Int32)
    IL_0006: stloc.0
    IL_0007: ldarg.0
    IL_0008: ldloc.0
    IL_0009: ldfld System.UInt16 Z0.BitPos`1<T>::CellIndex
    IL_000E: call T& Z0.Block256`1<T>::get_Item(System.Int32)
    IL_0013: ldarg.0
    IL_0014: ldloc.0
    IL_0015: ldfld System.UInt16 Z0.BitPos`1<T>::CellIndex
    IL_001A: call T& Z0.Block256`1<T>::get_Item(System.Int32)
    IL_001F: ldobj T
    IL_0024: ldloc.0
    IL_0025: ldfld System.UInt16 Z0.BitPos`1<T>::BitOffset
    IL_002A: conv.u1
    IL_002B: ldarg.2
    IL_002C: call T Z0.gbits::set<T>(T,System.Int32,Z0.bit)
    IL_0031: stobj T
    IL_0036: ret
}
