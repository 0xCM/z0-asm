// Id := 100663339, Name := System.SByte Z0.math::clamp(System.SByte,System.SByte)
// sbyte clamp(sbyte src, sbyte max)
// AggressiveInlining
sbyte clamp(sbyte src, sbyte max)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: bgt.s IL_0006
    IL_0004: ldarg.0
    IL_0005: ret
    IL_0006: ldarg.1
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663340, Name := System.Byte Z0.math::clamp(System.Byte,System.Byte)
// byte clamp(byte src, byte max)
// AggressiveInlining
byte clamp(byte src, byte max)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: bgt.s IL_0006
    IL_0004: ldarg.0
    IL_0005: ret
    IL_0006: ldarg.1
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663341, Name := System.Int16 Z0.math::clamp(System.Int16,System.Int16)
// short clamp(short src, short max)
// AggressiveInlining
short clamp(short src, short max)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: bgt.s IL_0006
    IL_0004: ldarg.0
    IL_0005: ret
    IL_0006: ldarg.1
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663342, Name := System.UInt16 Z0.math::clamp(System.UInt16,System.UInt16)
// ushort clamp(ushort src, ushort max)
// AggressiveInlining
ushort clamp(ushort src, ushort max)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: bgt.s IL_0006
    IL_0004: ldarg.0
    IL_0005: ret
    IL_0006: ldarg.1
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663343, Name := System.Int32 Z0.math::clamp(System.Int32,System.Int32)
// int clamp(int src, int max)
// AggressiveInlining
int clamp(int src, int max)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: bgt.s IL_0006
    IL_0004: ldarg.0
    IL_0005: ret
    IL_0006: ldarg.1
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663344, Name := System.UInt32 Z0.math::clamp(System.UInt32,System.UInt32)
// uint clamp(uint src, uint max)
// AggressiveInlining
uint clamp(uint src, uint max)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: bgt.un.s IL_0006
    IL_0004: ldarg.0
    IL_0005: ret
    IL_0006: ldarg.1
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663345, Name := System.Int64 Z0.math::clamp(System.Int64,System.Int64)
// long clamp(long src, long max)
// AggressiveInlining
long clamp(long src, long max)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: bgt.s IL_0006
    IL_0004: ldarg.0
    IL_0005: ret
    IL_0006: ldarg.1
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663346, Name := System.UInt64 Z0.math::clamp(System.UInt64,System.UInt64)
// ulong clamp(ulong src, ulong max)
// AggressiveInlining
ulong clamp(ulong src, ulong max)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: bgt.un.s IL_0006
    IL_0004: ldarg.0
    IL_0005: ret
    IL_0006: ldarg.1
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
