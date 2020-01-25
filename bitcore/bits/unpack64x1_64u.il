// Id := 100663584, Name := System.Void Z0.Bits::unpack64x1(System.UInt64,System.UInt64&)
// void unpack64x1(ulong src, ref ulong dst)
// AggressiveInlining
void unpack64x1(ulong src, ref ulong dst)
{
    IL_0000: ldarg.0
    IL_0001: conv.u4
    IL_0002: ldarg.1
    IL_0003: call System.Void Z0.Bits::unpack32x1(System.UInt32,System.UInt64&)
    IL_0008: ldarg.0
    IL_0009: ldc.i4.s 32
    IL_000B: shr.un
    IL_000C: conv.u4
    IL_000D: ldarg.1
    IL_000E: ldc.i4.s 32
    IL_0010: conv.i8
    IL_0011: call System.UInt64& zfunc::seekb<System.UInt64>(System.UInt64&,System.Int64)
    IL_0016: call System.Void Z0.Bits::unpack32x1(System.UInt32,System.UInt64&)
    IL_001B: ret
}
