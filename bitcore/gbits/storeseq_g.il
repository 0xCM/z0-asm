// System.ReadOnlySpan`1<System.Byte> Z0.gbits::storeseq<T>(T)
// ReadOnlySpan<byte> storeseq<byte>(byte src)
// AggressiveInlining
ReadOnlySpan<byte> storeseq<byte>(byte src)
{
    IL_0000: ldarg.0
    IL_0001: call System.ReadOnlySpan`1<System.Byte> Z0.BitStore::bitseq<T>(T)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.ReadOnlySpan`1<System.Byte> Z0.gbits::storeseq<T>(T)
// ReadOnlySpan<byte> storeseq<ushort>(ushort src)
// AggressiveInlining
ReadOnlySpan<byte> storeseq<ushort>(ushort src)
{
    IL_0000: ldarg.0
    IL_0001: call System.ReadOnlySpan`1<System.Byte> Z0.BitStore::bitseq<T>(T)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.ReadOnlySpan`1<System.Byte> Z0.gbits::storeseq<T>(T)
// ReadOnlySpan<byte> storeseq<uint>(uint src)
// AggressiveInlining
ReadOnlySpan<byte> storeseq<uint>(uint src)
{
    IL_0000: ldarg.0
    IL_0001: call System.ReadOnlySpan`1<System.Byte> Z0.BitStore::bitseq<T>(T)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.ReadOnlySpan`1<System.Byte> Z0.gbits::storeseq<T>(T)
// ReadOnlySpan<byte> storeseq<ulong>(ulong src)
// AggressiveInlining
ReadOnlySpan<byte> storeseq<ulong>(ulong src)
{
    IL_0000: ldarg.0
    IL_0001: call System.ReadOnlySpan`1<System.Byte> Z0.BitStore::bitseq<T>(T)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Void Z0.gbits::storeseq<T>(T,System.Span`1<System.Byte>,System.Int32)
// void storeseq<byte>(byte src, Span<byte> dst, int offset)
// AggressiveInlining
void storeseq<byte>(byte src, Span<byte> dst, int offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.Void Z0.BitStore::bitseq<T>(T,System.Span`1<System.Byte>,System.Int32)
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Void Z0.gbits::storeseq<T>(T,System.Span`1<System.Byte>,System.Int32)
// void storeseq<ushort>(ushort src, Span<byte> dst, int offset)
// AggressiveInlining
void storeseq<ushort>(ushort src, Span<byte> dst, int offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.Void Z0.BitStore::bitseq<T>(T,System.Span`1<System.Byte>,System.Int32)
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Void Z0.gbits::storeseq<T>(T,System.Span`1<System.Byte>,System.Int32)
// void storeseq<uint>(uint src, Span<byte> dst, int offset)
// AggressiveInlining
void storeseq<uint>(uint src, Span<byte> dst, int offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.Void Z0.BitStore::bitseq<T>(T,System.Span`1<System.Byte>,System.Int32)
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Void Z0.gbits::storeseq<T>(T,System.Span`1<System.Byte>,System.Int32)
// void storeseq<ulong>(ulong src, Span<byte> dst, int offset)
// AggressiveInlining
void storeseq<ulong>(ulong src, Span<byte> dst, int offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.Void Z0.BitStore::bitseq<T>(T,System.Span`1<System.Byte>,System.Int32)
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
