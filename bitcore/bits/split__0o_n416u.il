// Id := 100663545, Name := Z0.ConstQuad`1<System.UInt16> Z0.Bits::split(System.UInt64,Z0.N4)
// ConstQuad<ushort> split(ulong src, N4 n)
// AggressiveInlining
ConstQuad<ushort> split(ulong src, N4 n)
{
    IL_0000: ldarg.0
    IL_0001: conv.u2
    IL_0002: ldarg.0
    IL_0003: ldc.i4.s 16
    IL_0005: shr.un
    IL_0006: conv.u2
    IL_0007: ldarg.0
    IL_0008: ldc.i4.s 32
    IL_000A: shr.un
    IL_000B: conv.u2
    IL_000C: ldarg.0
    IL_000D: ldc.i4.s 48
    IL_000F: shr.un
    IL_0010: conv.u2
    IL_0011: newobj System.Void System.ValueTuple`4<System.UInt16,System.UInt16,System.UInt16,System.UInt16>::.ctor(System.UInt16,System.UInt16,System.UInt16,System.UInt16)
    IL_0016: call Z0.ConstQuad`1<System.UInt16> Z0.ConstQuad`1<System.UInt16>::op_Implicit(System.ValueTuple`4<System.UInt16,System.UInt16,System.UInt16,System.UInt16>)
    IL_001B: ret
}
