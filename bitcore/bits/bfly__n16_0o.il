// Id := 100663332, Name := System.UInt64 Z0.Bits::bfly(Z0.N16,System.UInt64)
// ulong bfly(N16 n, ulong x)
// AggressiveInlining
ulong bfly(N16 n, ulong x)
{
    IL_0000: ldarg.1
    IL_0001: ldc.i8 281474976645120
    IL_000A: ldc.i4.s 16
    IL_000C: call System.UInt64 Z0.Bits::bfly<System.UInt64>(System.UInt64,System.UInt64,System.Byte)
    IL_0011: ret
}
