// Id := 100663542, Name := Z0.ConstPair`1<System.UInt16> Z0.Bits::split(System.UInt32,Z0.N2)
// ConstPair<ushort> split(uint src, N2 n)
// AggressiveInlining
ConstPair<ushort> split(uint src, N2 n)
{
    IL_0000: ldarg.0
    IL_0001: conv.u2
    IL_0002: ldarg.0
    IL_0003: ldc.i4.s 16
    IL_0005: shr.un
    IL_0006: conv.u2
    IL_0007: newobj System.Void System.ValueTuple`2<System.UInt16,System.UInt16>::.ctor(System.UInt16,System.UInt16)
    IL_000C: call Z0.ConstPair`1<System.UInt16> Z0.ConstPair`1<System.UInt16>::op_Implicit(System.ValueTuple`2<System.UInt16,System.UInt16>)
    IL_0011: ret
}
