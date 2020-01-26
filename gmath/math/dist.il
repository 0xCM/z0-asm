// Id := 100663355, Name := System.UInt64 Z0.math::dist(System.Byte,System.Byte)
// ulong dist(byte a, byte b)
// AggressiveInlining
ulong dist(byte a, byte b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: bge.s IL_0009
    IL_0004: ldarg.1
    IL_0005: ldarg.0
    IL_0006: sub
    IL_0007: conv.i8
    IL_0008: ret
    IL_0009: ldarg.0
    IL_000A: ldarg.1
    IL_000B: sub
    IL_000C: conv.i8
    IL_000D: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663356, Name := System.UInt64 Z0.math::dist(System.SByte,System.SByte)
// ulong dist(sbyte a, sbyte b)
// AggressiveInlining
ulong dist(sbyte a, sbyte b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: bge.s IL_0009
    IL_0004: ldarg.1
    IL_0005: ldarg.0
    IL_0006: sub
    IL_0007: conv.i8
    IL_0008: ret
    IL_0009: ldarg.0
    IL_000A: ldarg.1
    IL_000B: sub
    IL_000C: conv.i8
    IL_000D: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663357, Name := System.UInt64 Z0.math::dist(System.Int16,System.Int16)
// ulong dist(short a, short b)
// AggressiveInlining
ulong dist(short a, short b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: bge.s IL_0009
    IL_0004: ldarg.1
    IL_0005: ldarg.0
    IL_0006: sub
    IL_0007: conv.i8
    IL_0008: ret
    IL_0009: ldarg.0
    IL_000A: ldarg.1
    IL_000B: sub
    IL_000C: conv.i8
    IL_000D: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663358, Name := System.UInt64 Z0.math::dist(System.UInt16,System.UInt16)
// ulong dist(ushort a, ushort b)
// AggressiveInlining
ulong dist(ushort a, ushort b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: bge.s IL_0009
    IL_0004: ldarg.1
    IL_0005: ldarg.0
    IL_0006: sub
    IL_0007: conv.i8
    IL_0008: ret
    IL_0009: ldarg.0
    IL_000A: ldarg.1
    IL_000B: sub
    IL_000C: conv.i8
    IL_000D: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663359, Name := System.UInt64 Z0.math::dist(System.Int32,System.Int32)
// ulong dist(int a, int b)
// AggressiveInlining
ulong dist(int a, int b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: bge.s IL_0009
    IL_0004: ldarg.1
    IL_0005: ldarg.0
    IL_0006: sub
    IL_0007: conv.i8
    IL_0008: ret
    IL_0009: ldarg.0
    IL_000A: ldarg.1
    IL_000B: sub
    IL_000C: conv.i8
    IL_000D: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663360, Name := System.UInt64 Z0.math::dist(System.UInt32,System.UInt32)
// ulong dist(uint a, uint b)
// AggressiveInlining
ulong dist(uint a, uint b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: bge.un.s IL_0009
    IL_0004: ldarg.1
    IL_0005: ldarg.0
    IL_0006: sub
    IL_0007: conv.u8
    IL_0008: ret
    IL_0009: ldarg.0
    IL_000A: ldarg.1
    IL_000B: sub
    IL_000C: conv.u8
    IL_000D: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663361, Name := System.UInt64 Z0.math::dist(System.Int64,System.Int64)
// ulong dist(long a, long b)
// AggressiveInlining
ulong dist(long a, long b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: bge.s IL_0008
    IL_0004: ldarg.1
    IL_0005: ldarg.0
    IL_0006: sub
    IL_0007: ret
    IL_0008: ldarg.0
    IL_0009: ldarg.1
    IL_000A: sub
    IL_000B: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663362, Name := System.UInt64 Z0.math::dist(System.UInt64,System.UInt64)
// ulong dist(ulong a, ulong b)
// AggressiveInlining
ulong dist(ulong a, ulong b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: bge.un.s IL_0008
    IL_0004: ldarg.1
    IL_0005: ldarg.0
    IL_0006: sub
    IL_0007: ret
    IL_0008: ldarg.0
    IL_0009: ldarg.1
    IL_000A: sub
    IL_000B: ret
}
------------------------------------------------------------------------------------------------------------------------
