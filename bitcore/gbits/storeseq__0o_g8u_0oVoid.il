// Id := 100663621, Name := System.Void Z0.gbits::storeseq<T>(T,System.Span`1<System.Byte>,System.Int32)
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
