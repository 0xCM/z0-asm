// Id := 100663387, Name := System.SByte Z0.math::gcd(System.SByte,System.SByte)
// sbyte gcd(sbyte a, sbyte b)
// AggressiveInlining
sbyte gcd(sbyte a, sbyte b)
{
    IL_0000: ldarg.0
    IL_0001: call System.SByte Z0.math::abs(System.SByte)
    IL_0006: stloc.0
    IL_0007: ldarg.1
    IL_0008: call System.SByte Z0.math::abs(System.SByte)
    IL_000D: stloc.1
    IL_000E: br.s IL_001C
    IL_0010: ldloc.0
    IL_0011: ldloc.1
    IL_0012: call System.SByte Z0.math::mod(System.SByte,System.SByte)
    IL_0017: stloc.2
    IL_0018: ldloc.1
    IL_0019: stloc.0
    IL_001A: ldloc.2
    IL_001B: stloc.1
    IL_001C: ldloc.1
    IL_001D: brtrue.s IL_0010
    IL_001F: ldloc.0
    IL_0020: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663388, Name := System.Byte Z0.math::gcd(System.Byte,System.Byte)
// byte gcd(byte a, byte b)
// AggressiveInlining
byte gcd(byte a, byte b)
{
    IL_0000: br.s IL_0010
    IL_0002: ldarg.0
    IL_0003: ldarg.1
    IL_0004: call System.Byte Z0.math::mod(System.Byte,System.Byte)
    IL_0009: stloc.0
    IL_000A: ldarg.1
    IL_000B: starg.s a
    IL_000D: ldloc.0
    IL_000E: starg.s b
    IL_0010: ldarg.1
    IL_0011: brtrue.s IL_0002
    IL_0013: ldarg.0
    IL_0014: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663389, Name := System.Int16 Z0.math::gcd(System.Int16,System.Int16)
// short gcd(short a, short b)
// AggressiveInlining
short gcd(short a, short b)
{
    IL_0000: ldarg.0
    IL_0001: call System.Int16 Z0.math::abs(System.Int16)
    IL_0006: stloc.0
    IL_0007: ldarg.1
    IL_0008: call System.Int16 Z0.math::abs(System.Int16)
    IL_000D: stloc.1
    IL_000E: br.s IL_001C
    IL_0010: ldloc.0
    IL_0011: ldloc.1
    IL_0012: call System.Int16 Z0.math::mod(System.Int16,System.Int16)
    IL_0017: stloc.2
    IL_0018: ldloc.1
    IL_0019: stloc.0
    IL_001A: ldloc.2
    IL_001B: stloc.1
    IL_001C: ldloc.1
    IL_001D: brtrue.s IL_0010
    IL_001F: ldloc.0
    IL_0020: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663390, Name := System.UInt16 Z0.math::gcd(System.UInt16,System.UInt16)
// ushort gcd(ushort a, ushort b)
// AggressiveInlining
ushort gcd(ushort a, ushort b)
{
    IL_0000: br.s IL_0010
    IL_0002: ldarg.0
    IL_0003: ldarg.1
    IL_0004: call System.UInt16 Z0.math::mod(System.UInt16,System.UInt16)
    IL_0009: stloc.0
    IL_000A: ldarg.1
    IL_000B: starg.s a
    IL_000D: ldloc.0
    IL_000E: starg.s b
    IL_0010: ldarg.1
    IL_0011: brtrue.s IL_0002
    IL_0013: ldarg.0
    IL_0014: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663391, Name := System.Int32 Z0.math::gcd(System.Int32,System.Int32)
// int gcd(int a, int b)
// AggressiveInlining
int gcd(int a, int b)
{
    IL_0000: ldarg.0
    IL_0001: call System.Int32 Z0.math::abs(System.Int32)
    IL_0006: stloc.0
    IL_0007: ldarg.1
    IL_0008: call System.Int32 Z0.math::abs(System.Int32)
    IL_000D: stloc.1
    IL_000E: br.s IL_001C
    IL_0010: ldloc.0
    IL_0011: ldloc.1
    IL_0012: call System.Int32 Z0.math::mod(System.Int32,System.Int32)
    IL_0017: stloc.2
    IL_0018: ldloc.1
    IL_0019: stloc.0
    IL_001A: ldloc.2
    IL_001B: stloc.1
    IL_001C: ldloc.1
    IL_001D: brtrue.s IL_0010
    IL_001F: ldloc.0
    IL_0020: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663392, Name := System.UInt32 Z0.math::gcd(System.UInt32,System.UInt32)
// uint gcd(uint a, uint b)
// AggressiveInlining
uint gcd(uint a, uint b)
{
    IL_0000: br.s IL_000C
    IL_0002: ldarg.0
    IL_0003: ldarg.1
    IL_0004: rem.un
    IL_0005: stloc.0
    IL_0006: ldarg.1
    IL_0007: starg.s a
    IL_0009: ldloc.0
    IL_000A: starg.s b
    IL_000C: ldarg.1
    IL_000D: brtrue.s IL_0002
    IL_000F: ldarg.0
    IL_0010: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663393, Name := System.Int64 Z0.math::gcd(System.Int64,System.Int64)
// long gcd(long a, long b)
// AggressiveInlining
long gcd(long a, long b)
{
    IL_0000: ldarg.0
    IL_0001: call System.Int64 Z0.math::abs(System.Int64)
    IL_0006: stloc.0
    IL_0007: ldarg.1
    IL_0008: call System.Int64 Z0.math::abs(System.Int64)
    IL_000D: stloc.1
    IL_000E: br.s IL_001C
    IL_0010: ldloc.0
    IL_0011: ldloc.1
    IL_0012: call System.Int64 Z0.math::mod(System.Int64,System.Int64)
    IL_0017: stloc.2
    IL_0018: ldloc.1
    IL_0019: stloc.0
    IL_001A: ldloc.2
    IL_001B: stloc.1
    IL_001C: ldloc.1
    IL_001D: brtrue.s IL_0010
    IL_001F: ldloc.0
    IL_0020: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663394, Name := System.UInt64 Z0.math::gcd(System.UInt64,System.UInt64)
// ulong gcd(ulong a, ulong b)
// AggressiveInlining
ulong gcd(ulong a, ulong b)
{
    IL_0000: br.s IL_000C
    IL_0002: ldarg.0
    IL_0003: ldarg.1
    IL_0004: rem.un
    IL_0005: stloc.0
    IL_0006: ldarg.1
    IL_0007: starg.s a
    IL_0009: ldloc.0
    IL_000A: starg.s b
    IL_000C: ldarg.1
    IL_000D: brtrue.s IL_0002
    IL_000F: ldarg.0
    IL_0010: ret
}
------------------------------------------------------------------------------------------------------------------------
