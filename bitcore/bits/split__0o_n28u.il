// Id := 100663541, Name := Z0.ConstPair`1<System.Byte> Z0.Bits::split(System.UInt16,Z0.N2)
// ConstPair<byte> split(ushort src, N2 n)
// AggressiveInlining
ConstPair<byte> split(ushort src, N2 n)
{
    IL_0000: ldarg.0
    IL_0001: conv.u1
    IL_0002: ldarg.0
    IL_0003: ldc.i4.8
    IL_0004: shr
    IL_0005: conv.u1
    IL_0006: newobj System.Void System.ValueTuple`2<System.Byte,System.Byte>::.ctor(System.Byte,System.Byte)
    IL_000B: call Z0.ConstPair`1<System.Byte> Z0.ConstPair`1<System.Byte>::op_Implicit(System.ValueTuple`2<System.Byte,System.Byte>)
    IL_0010: ret
}
