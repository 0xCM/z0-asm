// Id := 100663604, Name := System.Void Z0.gbits::bitchars<T>(T,System.Span`1<System.Char>,System.Int32)
// void bitchars<double>(double src, Span<Char> dst, int offset)
// AggressiveInlining
void bitchars<double>(double src, Span<Char> dst, int offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.Void Z0.BitStore::bitchars<T>(T,System.Span`1<System.Char>,System.Int32)
    IL_0008: ret
}
