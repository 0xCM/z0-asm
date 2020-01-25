// Id := 100663535, Name := System.UInt64 Z0.Bits::project(System.UInt64,System.UInt64)
// ulong project(ulong src, ulong spec)
// AggressiveInlining
ulong project(ulong src, ulong spec)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.UInt64 Z0.Bits::scatter(System.UInt64,System.UInt64)
    IL_0007: ret
}
