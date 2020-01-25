// Id := 100663618, Name := T Z0.gbits::bitseg<T>(System.Span`1<T>,System.Int32,System.Int32)
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
