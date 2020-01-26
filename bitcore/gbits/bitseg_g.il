// Id := 100663619, Name := T Z0.gbits::bitseg<T>(Z0.Block256`1<T>&,System.Int32,System.Int32)
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
// Id := 100663619, Name := T Z0.gbits::bitseg<T>(Z0.Block256`1<T>&,System.Int32,System.Int32)
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
// Id := 100663619, Name := T Z0.gbits::bitseg<T>(Z0.Block256`1<T>&,System.Int32,System.Int32)
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
// Id := 100663619, Name := T Z0.gbits::bitseg<T>(Z0.Block256`1<T>&,System.Int32,System.Int32)
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
