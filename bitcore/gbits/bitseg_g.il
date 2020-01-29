// T Z0.gbits::bitseg<T>(System.Span`1<T>,Z0.BitPos`1<T>,Z0.BitPos`1<T>)
// byte bitseg<byte>(Span<byte> src, BitPos<byte> firstpos, BitPos<byte> lastpos)
// AggressiveInlining
byte bitseg<byte>(Span<byte> src, BitPos<byte> firstpos, BitPos<byte> lastpos)
{
    IL_0000: ldarg.2
    IL_0001: ldarg.1
    IL_0002: call System.Int32 Z0.BitPos`1<T>::op_Subtraction(Z0.BitPos`1<T>,Z0.BitPos`1<T>)
    IL_0007: stloc.0
    IL_0008: ldloc.0
    IL_0009: call System.Int32 zfunc::bitsize<T>()
    IL_000E: ble.s IL_0020
    IL_0010: ldloca.s V_4
    IL_0012: initobj T
    IL_0018: ldloc.s V_4
    IL_001A: call T Z0.gmath::maxval<T>(T)
    IL_001F: ret
    IL_0020: ldarg.1
    IL_0021: ldfld System.UInt16 Z0.BitPos`1<T>::CellIndex
    IL_0026: ldarg.2
    IL_0027: ldfld System.UInt16 Z0.BitPos`1<T>::CellIndex
    IL_002C: ceq
    IL_002E: stloc.1
    IL_002F: ldloc.1
    IL_0030: brtrue.s IL_0040
    IL_0032: call System.Int32 zfunc::bitsize<T>()
    IL_0037: ldarg.1
    IL_0038: ldfld System.UInt16 Z0.BitPos`1<T>::BitOffset
    IL_003D: sub
    IL_003E: br.s IL_0041
    IL_0040: ldloc.0
    IL_0041: call System.Byte Z0.As::uint8<System.Int32>(System.Int32)
    IL_0046: stloc.2
    IL_0047: ldarg.0
    IL_0048: ldarg.1
    IL_0049: call T& Z0.gbits::cell<T>(System.Span`1<T>,Z0.BitPos`1<T>)
    IL_004E: ldobj T
    IL_0053: ldarg.1
    IL_0054: ldfld System.UInt16 Z0.BitPos`1<T>::BitOffset
    IL_0059: conv.u1
    IL_005A: ldloc.2
    IL_005B: call T Z0.gbits::bitslice<T>(T,System.Byte,System.Byte)
    IL_0060: stloc.3
    IL_0061: ldloc.1
    IL_0062: brfalse.s IL_0066
    IL_0064: ldloc.3
    IL_0065: ret
    IL_0066: ldloc.0
    IL_0067: ldloc.2
    IL_0068: sub
    IL_0069: call System.Byte Z0.As::uint8<System.Int32>(System.Int32)
    IL_006E: stloc.s V_5
    IL_0070: ldloc.3
    IL_0071: ldarg.0
    IL_0072: ldarg.2
    IL_0073: call T& Z0.gbits::cell<T>(System.Span`1<T>,Z0.BitPos`1<T>)
    IL_0078: ldobj T
    IL_007D: ldc.i4.0
    IL_007E: ldloc.s V_5
    IL_0080: call T Z0.gbits::bitslice<T>(T,System.Byte,System.Byte)
    IL_0085: ldloc.2
    IL_0086: call T Z0.gmath::sal<T>(T,System.Byte)
    IL_008B: call T Z0.gmath::or<T>(T,T)
    IL_0090: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.gbits::bitseg<T>(System.Span`1<T>,Z0.BitPos`1<T>,Z0.BitPos`1<T>)
// ushort bitseg<ushort>(Span<ushort> src, BitPos<ushort> firstpos, BitPos<ushort> lastpos)
// AggressiveInlining
ushort bitseg<ushort>(Span<ushort> src, BitPos<ushort> firstpos, BitPos<ushort> lastpos)
{
    IL_0000: ldarg.2
    IL_0001: ldarg.1
    IL_0002: call System.Int32 Z0.BitPos`1<T>::op_Subtraction(Z0.BitPos`1<T>,Z0.BitPos`1<T>)
    IL_0007: stloc.0
    IL_0008: ldloc.0
    IL_0009: call System.Int32 zfunc::bitsize<T>()
    IL_000E: ble.s IL_0020
    IL_0010: ldloca.s V_4
    IL_0012: initobj T
    IL_0018: ldloc.s V_4
    IL_001A: call T Z0.gmath::maxval<T>(T)
    IL_001F: ret
    IL_0020: ldarg.1
    IL_0021: ldfld System.UInt16 Z0.BitPos`1<T>::CellIndex
    IL_0026: ldarg.2
    IL_0027: ldfld System.UInt16 Z0.BitPos`1<T>::CellIndex
    IL_002C: ceq
    IL_002E: stloc.1
    IL_002F: ldloc.1
    IL_0030: brtrue.s IL_0040
    IL_0032: call System.Int32 zfunc::bitsize<T>()
    IL_0037: ldarg.1
    IL_0038: ldfld System.UInt16 Z0.BitPos`1<T>::BitOffset
    IL_003D: sub
    IL_003E: br.s IL_0041
    IL_0040: ldloc.0
    IL_0041: call System.Byte Z0.As::uint8<System.Int32>(System.Int32)
    IL_0046: stloc.2
    IL_0047: ldarg.0
    IL_0048: ldarg.1
    IL_0049: call T& Z0.gbits::cell<T>(System.Span`1<T>,Z0.BitPos`1<T>)
    IL_004E: ldobj T
    IL_0053: ldarg.1
    IL_0054: ldfld System.UInt16 Z0.BitPos`1<T>::BitOffset
    IL_0059: conv.u1
    IL_005A: ldloc.2
    IL_005B: call T Z0.gbits::bitslice<T>(T,System.Byte,System.Byte)
    IL_0060: stloc.3
    IL_0061: ldloc.1
    IL_0062: brfalse.s IL_0066
    IL_0064: ldloc.3
    IL_0065: ret
    IL_0066: ldloc.0
    IL_0067: ldloc.2
    IL_0068: sub
    IL_0069: call System.Byte Z0.As::uint8<System.Int32>(System.Int32)
    IL_006E: stloc.s V_5
    IL_0070: ldloc.3
    IL_0071: ldarg.0
    IL_0072: ldarg.2
    IL_0073: call T& Z0.gbits::cell<T>(System.Span`1<T>,Z0.BitPos`1<T>)
    IL_0078: ldobj T
    IL_007D: ldc.i4.0
    IL_007E: ldloc.s V_5
    IL_0080: call T Z0.gbits::bitslice<T>(T,System.Byte,System.Byte)
    IL_0085: ldloc.2
    IL_0086: call T Z0.gmath::sal<T>(T,System.Byte)
    IL_008B: call T Z0.gmath::or<T>(T,T)
    IL_0090: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.gbits::bitseg<T>(System.Span`1<T>,Z0.BitPos`1<T>,Z0.BitPos`1<T>)
// uint bitseg<uint>(Span<uint> src, BitPos<uint> firstpos, BitPos<uint> lastpos)
// AggressiveInlining
uint bitseg<uint>(Span<uint> src, BitPos<uint> firstpos, BitPos<uint> lastpos)
{
    IL_0000: ldarg.2
    IL_0001: ldarg.1
    IL_0002: call System.Int32 Z0.BitPos`1<T>::op_Subtraction(Z0.BitPos`1<T>,Z0.BitPos`1<T>)
    IL_0007: stloc.0
    IL_0008: ldloc.0
    IL_0009: call System.Int32 zfunc::bitsize<T>()
    IL_000E: ble.s IL_0020
    IL_0010: ldloca.s V_4
    IL_0012: initobj T
    IL_0018: ldloc.s V_4
    IL_001A: call T Z0.gmath::maxval<T>(T)
    IL_001F: ret
    IL_0020: ldarg.1
    IL_0021: ldfld System.UInt16 Z0.BitPos`1<T>::CellIndex
    IL_0026: ldarg.2
    IL_0027: ldfld System.UInt16 Z0.BitPos`1<T>::CellIndex
    IL_002C: ceq
    IL_002E: stloc.1
    IL_002F: ldloc.1
    IL_0030: brtrue.s IL_0040
    IL_0032: call System.Int32 zfunc::bitsize<T>()
    IL_0037: ldarg.1
    IL_0038: ldfld System.UInt16 Z0.BitPos`1<T>::BitOffset
    IL_003D: sub
    IL_003E: br.s IL_0041
    IL_0040: ldloc.0
    IL_0041: call System.Byte Z0.As::uint8<System.Int32>(System.Int32)
    IL_0046: stloc.2
    IL_0047: ldarg.0
    IL_0048: ldarg.1
    IL_0049: call T& Z0.gbits::cell<T>(System.Span`1<T>,Z0.BitPos`1<T>)
    IL_004E: ldobj T
    IL_0053: ldarg.1
    IL_0054: ldfld System.UInt16 Z0.BitPos`1<T>::BitOffset
    IL_0059: conv.u1
    IL_005A: ldloc.2
    IL_005B: call T Z0.gbits::bitslice<T>(T,System.Byte,System.Byte)
    IL_0060: stloc.3
    IL_0061: ldloc.1
    IL_0062: brfalse.s IL_0066
    IL_0064: ldloc.3
    IL_0065: ret
    IL_0066: ldloc.0
    IL_0067: ldloc.2
    IL_0068: sub
    IL_0069: call System.Byte Z0.As::uint8<System.Int32>(System.Int32)
    IL_006E: stloc.s V_5
    IL_0070: ldloc.3
    IL_0071: ldarg.0
    IL_0072: ldarg.2
    IL_0073: call T& Z0.gbits::cell<T>(System.Span`1<T>,Z0.BitPos`1<T>)
    IL_0078: ldobj T
    IL_007D: ldc.i4.0
    IL_007E: ldloc.s V_5
    IL_0080: call T Z0.gbits::bitslice<T>(T,System.Byte,System.Byte)
    IL_0085: ldloc.2
    IL_0086: call T Z0.gmath::sal<T>(T,System.Byte)
    IL_008B: call T Z0.gmath::or<T>(T,T)
    IL_0090: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.gbits::bitseg<T>(System.Span`1<T>,Z0.BitPos`1<T>,Z0.BitPos`1<T>)
// ulong bitseg<ulong>(Span<ulong> src, BitPos<ulong> firstpos, BitPos<ulong> lastpos)
// AggressiveInlining
ulong bitseg<ulong>(Span<ulong> src, BitPos<ulong> firstpos, BitPos<ulong> lastpos)
{
    IL_0000: ldarg.2
    IL_0001: ldarg.1
    IL_0002: call System.Int32 Z0.BitPos`1<T>::op_Subtraction(Z0.BitPos`1<T>,Z0.BitPos`1<T>)
    IL_0007: stloc.0
    IL_0008: ldloc.0
    IL_0009: call System.Int32 zfunc::bitsize<T>()
    IL_000E: ble.s IL_0020
    IL_0010: ldloca.s V_4
    IL_0012: initobj T
    IL_0018: ldloc.s V_4
    IL_001A: call T Z0.gmath::maxval<T>(T)
    IL_001F: ret
    IL_0020: ldarg.1
    IL_0021: ldfld System.UInt16 Z0.BitPos`1<T>::CellIndex
    IL_0026: ldarg.2
    IL_0027: ldfld System.UInt16 Z0.BitPos`1<T>::CellIndex
    IL_002C: ceq
    IL_002E: stloc.1
    IL_002F: ldloc.1
    IL_0030: brtrue.s IL_0040
    IL_0032: call System.Int32 zfunc::bitsize<T>()
    IL_0037: ldarg.1
    IL_0038: ldfld System.UInt16 Z0.BitPos`1<T>::BitOffset
    IL_003D: sub
    IL_003E: br.s IL_0041
    IL_0040: ldloc.0
    IL_0041: call System.Byte Z0.As::uint8<System.Int32>(System.Int32)
    IL_0046: stloc.2
    IL_0047: ldarg.0
    IL_0048: ldarg.1
    IL_0049: call T& Z0.gbits::cell<T>(System.Span`1<T>,Z0.BitPos`1<T>)
    IL_004E: ldobj T
    IL_0053: ldarg.1
    IL_0054: ldfld System.UInt16 Z0.BitPos`1<T>::BitOffset
    IL_0059: conv.u1
    IL_005A: ldloc.2
    IL_005B: call T Z0.gbits::bitslice<T>(T,System.Byte,System.Byte)
    IL_0060: stloc.3
    IL_0061: ldloc.1
    IL_0062: brfalse.s IL_0066
    IL_0064: ldloc.3
    IL_0065: ret
    IL_0066: ldloc.0
    IL_0067: ldloc.2
    IL_0068: sub
    IL_0069: call System.Byte Z0.As::uint8<System.Int32>(System.Int32)
    IL_006E: stloc.s V_5
    IL_0070: ldloc.3
    IL_0071: ldarg.0
    IL_0072: ldarg.2
    IL_0073: call T& Z0.gbits::cell<T>(System.Span`1<T>,Z0.BitPos`1<T>)
    IL_0078: ldobj T
    IL_007D: ldc.i4.0
    IL_007E: ldloc.s V_5
    IL_0080: call T Z0.gbits::bitslice<T>(T,System.Byte,System.Byte)
    IL_0085: ldloc.2
    IL_0086: call T Z0.gmath::sal<T>(T,System.Byte)
    IL_008B: call T Z0.gmath::or<T>(T,T)
    IL_0090: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.gbits::bitseg<T>(Z0.Block256`1<T>&,Z0.BitPos`1<T>,Z0.BitPos`1<T>)
// byte bitseg<byte>(in Block256<byte> src, BitPos<byte> firstpos, BitPos<byte> lastpos)
// AggressiveInlining
byte bitseg<byte>(in Block256<byte> src, BitPos<byte> firstpos, BitPos<byte> lastpos)
{
    IL_0000: ldarg.0
    IL_0001: call System.Span`1<T> Z0.Block256`1<T>::get_Data()
    IL_0006: ldarg.1
    IL_0007: ldarg.2
    IL_0008: call T Z0.gbits::bitseg<T>(System.Span`1<T>,Z0.BitPos`1<T>,Z0.BitPos`1<T>)
    IL_000D: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.gbits::bitseg<T>(Z0.Block256`1<T>&,Z0.BitPos`1<T>,Z0.BitPos`1<T>)
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
------------------------------------------------------------------------------------------------------------------------
// T Z0.gbits::bitseg<T>(Z0.Block256`1<T>&,Z0.BitPos`1<T>,Z0.BitPos`1<T>)
// uint bitseg<uint>(in Block256<uint> src, BitPos<uint> firstpos, BitPos<uint> lastpos)
// AggressiveInlining
uint bitseg<uint>(in Block256<uint> src, BitPos<uint> firstpos, BitPos<uint> lastpos)
{
    IL_0000: ldarg.0
    IL_0001: call System.Span`1<T> Z0.Block256`1<T>::get_Data()
    IL_0006: ldarg.1
    IL_0007: ldarg.2
    IL_0008: call T Z0.gbits::bitseg<T>(System.Span`1<T>,Z0.BitPos`1<T>,Z0.BitPos`1<T>)
    IL_000D: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.gbits::bitseg<T>(Z0.Block256`1<T>&,Z0.BitPos`1<T>,Z0.BitPos`1<T>)
// ulong bitseg<ulong>(in Block256<ulong> src, BitPos<ulong> firstpos, BitPos<ulong> lastpos)
// AggressiveInlining
ulong bitseg<ulong>(in Block256<ulong> src, BitPos<ulong> firstpos, BitPos<ulong> lastpos)
{
    IL_0000: ldarg.0
    IL_0001: call System.Span`1<T> Z0.Block256`1<T>::get_Data()
    IL_0006: ldarg.1
    IL_0007: ldarg.2
    IL_0008: call T Z0.gbits::bitseg<T>(System.Span`1<T>,Z0.BitPos`1<T>,Z0.BitPos`1<T>)
    IL_000D: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.gbits::bitseg<T>(System.Span`1<T>,System.Int32,System.Int32)
// byte bitseg<byte>(Span<byte> src, int firstidx, int lastidx)
// AggressiveInlining
byte bitseg<byte>(Span<byte> src, int firstidx, int lastidx)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call Z0.BitPos`1<T> Z0.gbits::bitpos<T>(System.Int32)
    IL_0007: ldarg.2
    IL_0008: call Z0.BitPos`1<T> Z0.gbits::bitpos<T>(System.Int32)
    IL_000D: call T Z0.gbits::bitseg<T>(System.Span`1<T>,Z0.BitPos`1<T>,Z0.BitPos`1<T>)
    IL_0012: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.gbits::bitseg<T>(System.Span`1<T>,System.Int32,System.Int32)
// ushort bitseg<ushort>(Span<ushort> src, int firstidx, int lastidx)
// AggressiveInlining
ushort bitseg<ushort>(Span<ushort> src, int firstidx, int lastidx)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call Z0.BitPos`1<T> Z0.gbits::bitpos<T>(System.Int32)
    IL_0007: ldarg.2
    IL_0008: call Z0.BitPos`1<T> Z0.gbits::bitpos<T>(System.Int32)
    IL_000D: call T Z0.gbits::bitseg<T>(System.Span`1<T>,Z0.BitPos`1<T>,Z0.BitPos`1<T>)
    IL_0012: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.gbits::bitseg<T>(System.Span`1<T>,System.Int32,System.Int32)
// uint bitseg<uint>(Span<uint> src, int firstidx, int lastidx)
// AggressiveInlining
uint bitseg<uint>(Span<uint> src, int firstidx, int lastidx)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call Z0.BitPos`1<T> Z0.gbits::bitpos<T>(System.Int32)
    IL_0007: ldarg.2
    IL_0008: call Z0.BitPos`1<T> Z0.gbits::bitpos<T>(System.Int32)
    IL_000D: call T Z0.gbits::bitseg<T>(System.Span`1<T>,Z0.BitPos`1<T>,Z0.BitPos`1<T>)
    IL_0012: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.gbits::bitseg<T>(System.Span`1<T>,System.Int32,System.Int32)
// ulong bitseg<ulong>(Span<ulong> src, int firstidx, int lastidx)
// AggressiveInlining
ulong bitseg<ulong>(Span<ulong> src, int firstidx, int lastidx)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call Z0.BitPos`1<T> Z0.gbits::bitpos<T>(System.Int32)
    IL_0007: ldarg.2
    IL_0008: call Z0.BitPos`1<T> Z0.gbits::bitpos<T>(System.Int32)
    IL_000D: call T Z0.gbits::bitseg<T>(System.Span`1<T>,Z0.BitPos`1<T>,Z0.BitPos`1<T>)
    IL_0012: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.gbits::bitseg<T>(Z0.Block256`1<T>&,System.Int32,System.Int32)
// byte bitseg<byte>(in Block256<byte> src, int firstidx, int lastidx)
// AggressiveInlining
byte bitseg<byte>(in Block256<byte> src, int firstidx, int lastidx)
{
    IL_0000: ldarg.0
    IL_0001: call System.Span`1<T> Z0.Block256`1<T>::get_Data()
    IL_0006: ldarg.1
    IL_0007: call Z0.BitPos`1<T> Z0.gbits::bitpos<T>(System.Int32)
    IL_000C: ldarg.2
    IL_000D: call Z0.BitPos`1<T> Z0.gbits::bitpos<T>(System.Int32)
    IL_0012: call T Z0.gbits::bitseg<T>(System.Span`1<T>,Z0.BitPos`1<T>,Z0.BitPos`1<T>)
    IL_0017: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.gbits::bitseg<T>(Z0.Block256`1<T>&,System.Int32,System.Int32)
// ushort bitseg<ushort>(in Block256<ushort> src, int firstidx, int lastidx)
// AggressiveInlining
ushort bitseg<ushort>(in Block256<ushort> src, int firstidx, int lastidx)
{
    IL_0000: ldarg.0
    IL_0001: call System.Span`1<T> Z0.Block256`1<T>::get_Data()
    IL_0006: ldarg.1
    IL_0007: call Z0.BitPos`1<T> Z0.gbits::bitpos<T>(System.Int32)
    IL_000C: ldarg.2
    IL_000D: call Z0.BitPos`1<T> Z0.gbits::bitpos<T>(System.Int32)
    IL_0012: call T Z0.gbits::bitseg<T>(System.Span`1<T>,Z0.BitPos`1<T>,Z0.BitPos`1<T>)
    IL_0017: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.gbits::bitseg<T>(Z0.Block256`1<T>&,System.Int32,System.Int32)
// uint bitseg<uint>(in Block256<uint> src, int firstidx, int lastidx)
// AggressiveInlining
uint bitseg<uint>(in Block256<uint> src, int firstidx, int lastidx)
{
    IL_0000: ldarg.0
    IL_0001: call System.Span`1<T> Z0.Block256`1<T>::get_Data()
    IL_0006: ldarg.1
    IL_0007: call Z0.BitPos`1<T> Z0.gbits::bitpos<T>(System.Int32)
    IL_000C: ldarg.2
    IL_000D: call Z0.BitPos`1<T> Z0.gbits::bitpos<T>(System.Int32)
    IL_0012: call T Z0.gbits::bitseg<T>(System.Span`1<T>,Z0.BitPos`1<T>,Z0.BitPos`1<T>)
    IL_0017: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.gbits::bitseg<T>(Z0.Block256`1<T>&,System.Int32,System.Int32)
// ulong bitseg<ulong>(in Block256<ulong> src, int firstidx, int lastidx)
// AggressiveInlining
ulong bitseg<ulong>(in Block256<ulong> src, int firstidx, int lastidx)
{
    IL_0000: ldarg.0
    IL_0001: call System.Span`1<T> Z0.Block256`1<T>::get_Data()
    IL_0006: ldarg.1
    IL_0007: call Z0.BitPos`1<T> Z0.gbits::bitpos<T>(System.Int32)
    IL_000C: ldarg.2
    IL_000D: call Z0.BitPos`1<T> Z0.gbits::bitpos<T>(System.Int32)
    IL_0012: call T Z0.gbits::bitseg<T>(System.Span`1<T>,Z0.BitPos`1<T>,Z0.BitPos`1<T>)
    IL_0017: ret
}
------------------------------------------------------------------------------------------------------------------------
