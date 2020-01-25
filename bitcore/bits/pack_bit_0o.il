// Id := 100663447, Name := System.UInt32 Z0.Bits::pack(Z0.bit,Z0.bit,Z0.bit,Z0.bit,Z0.bit,Z0.bit,Z0.bit,Z0.bit)
// uint pack(bit b0, bit b1, bit b2, bit b3, bit b4, bit b5, bit b6, bit b7)
// AggressiveInlining
uint pack(bit b0, bit b1, bit b2, bit b3, bit b4, bit b5, bit b6, bit b7)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: ldarg.3
    IL_0004: call System.UInt32 Z0.Bits::pack(Z0.bit,Z0.bit,Z0.bit,Z0.bit)
    IL_0009: stloc.0
    IL_000A: ldloc.0
    IL_000B: ldarg.s b4
    IL_000D: ldarg.s b5
    IL_000F: ldarg.s b6
    IL_0011: ldarg.s b7
    IL_0013: call System.UInt32 Z0.Bits::pack(Z0.bit,Z0.bit,Z0.bit,Z0.bit)
    IL_0018: ldc.i4.4
    IL_0019: shl
    IL_001A: or
    IL_001B: stloc.0
    IL_001C: ldloc.0
    IL_001D: ret
}
