// Z0.bit Z0.gbits::test<T>(T,System.Int32)
// bit test<byte>(byte src, int pos)
// AggressiveInlining
bit test<byte>(byte src, int pos)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: conv.u1
    IL_0003: call Z0.bit Z0.gbits::testbit<T>(T,System.Byte)
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.bit Z0.gbits::test<T>(T,System.Int32)
// bit test<sbyte>(sbyte src, int pos)
// AggressiveInlining
bit test<sbyte>(sbyte src, int pos)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: conv.u1
    IL_0003: call Z0.bit Z0.gbits::testbit<T>(T,System.Byte)
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.bit Z0.gbits::test<T>(T,System.Int32)
// bit test<ushort>(ushort src, int pos)
// AggressiveInlining
bit test<ushort>(ushort src, int pos)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: conv.u1
    IL_0003: call Z0.bit Z0.gbits::testbit<T>(T,System.Byte)
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.bit Z0.gbits::test<T>(T,System.Int32)
// bit test<short>(short src, int pos)
// AggressiveInlining
bit test<short>(short src, int pos)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: conv.u1
    IL_0003: call Z0.bit Z0.gbits::testbit<T>(T,System.Byte)
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.bit Z0.gbits::test<T>(T,System.Int32)
// bit test<uint>(uint src, int pos)
// AggressiveInlining
bit test<uint>(uint src, int pos)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: conv.u1
    IL_0003: call Z0.bit Z0.gbits::testbit<T>(T,System.Byte)
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.bit Z0.gbits::test<T>(T,System.Int32)
// bit test<int>(int src, int pos)
// AggressiveInlining
bit test<int>(int src, int pos)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: conv.u1
    IL_0003: call Z0.bit Z0.gbits::testbit<T>(T,System.Byte)
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.bit Z0.gbits::test<T>(T,System.Int32)
// bit test<ulong>(ulong src, int pos)
// AggressiveInlining
bit test<ulong>(ulong src, int pos)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: conv.u1
    IL_0003: call Z0.bit Z0.gbits::testbit<T>(T,System.Byte)
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.bit Z0.gbits::test<T>(T,System.Int32)
// bit test<long>(long src, int pos)
// AggressiveInlining
bit test<long>(long src, int pos)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: conv.u1
    IL_0003: call Z0.bit Z0.gbits::testbit<T>(T,System.Byte)
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.bit Z0.gbits::test<T>(T,System.Int32)
// bit test<float>(float src, int pos)
// AggressiveInlining
bit test<float>(float src, int pos)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: conv.u1
    IL_0003: call Z0.bit Z0.gbits::testbit<T>(T,System.Byte)
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.bit Z0.gbits::test<T>(T,System.Int32)
// bit test<double>(double src, int pos)
// AggressiveInlining
bit test<double>(double src, int pos)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: conv.u1
    IL_0003: call Z0.bit Z0.gbits::testbit<T>(T,System.Byte)
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.bit Z0.gbits::test<T>(Z0.Block256`1<T>&,System.Int32)
// bit test<byte>(in Block256<byte> src, int index)
// AggressiveInlining
bit test<byte>(in Block256<byte> src, int index)
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
------------------------------------------------------------------------------------------------------------------------
// Z0.bit Z0.gbits::test<T>(Z0.Block256`1<T>&,System.Int32)
// bit test<sbyte>(in Block256<sbyte> src, int index)
// AggressiveInlining
bit test<sbyte>(in Block256<sbyte> src, int index)
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
------------------------------------------------------------------------------------------------------------------------
// Z0.bit Z0.gbits::test<T>(Z0.Block256`1<T>&,System.Int32)
// bit test<ushort>(in Block256<ushort> src, int index)
// AggressiveInlining
bit test<ushort>(in Block256<ushort> src, int index)
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
------------------------------------------------------------------------------------------------------------------------
// Z0.bit Z0.gbits::test<T>(Z0.Block256`1<T>&,System.Int32)
// bit test<short>(in Block256<short> src, int index)
// AggressiveInlining
bit test<short>(in Block256<short> src, int index)
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
------------------------------------------------------------------------------------------------------------------------
// Z0.bit Z0.gbits::test<T>(Z0.Block256`1<T>&,System.Int32)
// bit test<uint>(in Block256<uint> src, int index)
// AggressiveInlining
bit test<uint>(in Block256<uint> src, int index)
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
------------------------------------------------------------------------------------------------------------------------
// Z0.bit Z0.gbits::test<T>(Z0.Block256`1<T>&,System.Int32)
// bit test<int>(in Block256<int> src, int index)
// AggressiveInlining
bit test<int>(in Block256<int> src, int index)
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
------------------------------------------------------------------------------------------------------------------------
// Z0.bit Z0.gbits::test<T>(Z0.Block256`1<T>&,System.Int32)
// bit test<ulong>(in Block256<ulong> src, int index)
// AggressiveInlining
bit test<ulong>(in Block256<ulong> src, int index)
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
------------------------------------------------------------------------------------------------------------------------
// Z0.bit Z0.gbits::test<T>(Z0.Block256`1<T>&,System.Int32)
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
------------------------------------------------------------------------------------------------------------------------
// Z0.bit Z0.gbits::test<T>(Z0.Block256`1<T>&,System.Int32)
// bit test<float>(in Block256<float> src, int index)
// AggressiveInlining
bit test<float>(in Block256<float> src, int index)
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
------------------------------------------------------------------------------------------------------------------------
// Z0.bit Z0.gbits::test<T>(Z0.Block256`1<T>&,System.Int32)
// bit test<double>(in Block256<double> src, int index)
// AggressiveInlining
bit test<double>(in Block256<double> src, int index)
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
------------------------------------------------------------------------------------------------------------------------
