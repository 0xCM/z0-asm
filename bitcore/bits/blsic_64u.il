// Id := 100663356, Name := System.UInt64 Z0.Bits::blsic(System.UInt64)
// ulong blsic(ulong src)
// AggressiveInlining
ulong blsic(ulong src)
{
    IL_0000: ldarg.0
    IL_0001: not
    IL_0002: ldarg.0
    IL_0003: ldc.i4.1
    IL_0004: conv.i8
    IL_0005: sub
    IL_0006: or
    IL_0007: ret
}
