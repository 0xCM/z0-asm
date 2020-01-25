// Id := 100663536, Name := System.UInt64 Z0.Bits::select(System.UInt64,System.UInt64)
// ulong select(ulong src, ulong spec)
// AggressiveInlining
ulong select(ulong src, ulong spec)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.UInt64 Z0.Bits::gather(System.UInt64,System.UInt64)
    IL_0007: ret
}
