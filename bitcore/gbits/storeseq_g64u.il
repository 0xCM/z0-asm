// Id := 100663620, Name := System.ReadOnlySpan`1<System.Byte> Z0.gbits::storeseq<T>(T)
// ReadOnlySpan<byte> storeseq<ulong>(ulong src)
// AggressiveInlining
ReadOnlySpan<byte> storeseq<ulong>(ulong src)
{
    IL_0000: ldarg.0
    IL_0001: call System.ReadOnlySpan`1<System.Byte> Z0.BitStore::bitseq<T>(T)
    IL_0006: ret
}
