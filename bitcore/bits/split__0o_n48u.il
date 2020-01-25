// Id := 100663543, Name := Z0.ConstQuad`1<System.Byte> Z0.Bits::split(System.UInt32,Z0.N4)
// ConstQuad<byte> split(uint src, N4 n)
// AggressiveInlining
ConstQuad<byte> split(uint src, N4 n)
{
    IL_0000: ldarg.0
    IL_0001: conv.u1
    IL_0002: ldarg.0
    IL_0003: ldc.i4.8
    IL_0004: shr.un
    IL_0005: conv.u1
    IL_0006: ldarg.0
    IL_0007: ldc.i4.s 16
    IL_0009: shr.un
    IL_000A: conv.u1
    IL_000B: ldarg.0
    IL_000C: ldc.i4.s 24
    IL_000E: shr.un
    IL_000F: conv.u1
    IL_0010: newobj System.Void System.ValueTuple`4<System.Byte,System.Byte,System.Byte,System.Byte>::.ctor(System.Byte,System.Byte,System.Byte,System.Byte)
    IL_0015: call Z0.ConstQuad`1<System.Byte> Z0.ConstQuad`1<System.Byte>::op_Implicit(System.ValueTuple`4<System.Byte,System.Byte,System.Byte,System.Byte>)
    IL_001A: ret
}
