// Id := 100663474, Name := Z0.Sign Z0.math::signum(System.SByte)
// Sign:int signum(sbyte src)
// AggressiveInlining
Sign:int signum(sbyte src)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.Sign Z0.math::signum(System.Int32)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663475, Name := Z0.Sign Z0.math::signum(System.Byte)
// Sign:int signum(byte src)
// AggressiveInlining
Sign:int signum(byte src)
{
    IL_0000: ldarg.0
    IL_0001: brtrue.s IL_0005
    IL_0003: ldc.i4.m1
    IL_0004: ret
    IL_0005: ldc.i4.1
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663476, Name := Z0.Sign Z0.math::signum(System.Int16)
// Sign:int signum(Int16 src)
// AggressiveInlining
Sign:int signum(Int16 src)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.Sign Z0.math::signum(System.Int32)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663477, Name := Z0.Sign Z0.math::signum(System.UInt16)
// Sign:int signum(ushort src)
// AggressiveInlining
Sign:int signum(ushort src)
{
    IL_0000: ldarg.0
    IL_0001: brtrue.s IL_0005
    IL_0003: ldc.i4.m1
    IL_0004: ret
    IL_0005: ldc.i4.1
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663478, Name := Z0.Sign Z0.math::signum(System.Int32)
// Sign:int signum(int src)
// AggressiveInlining
Sign:int signum(int src)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.s 31
    IL_0003: shr
    IL_0004: ldarg.0
    IL_0005: call System.UInt32 Z0.math::negate(System.UInt32)
    IL_000A: ldc.i4.s 31
    IL_000C: shr.un
    IL_000D: or
    IL_000E: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663479, Name := Z0.Sign Z0.math::signum(System.UInt32)
// Sign:int signum(uint src)
// AggressiveInlining
Sign:int signum(uint src)
{
    IL_0000: ldarg.0
    IL_0001: brtrue.s IL_0005
    IL_0003: ldc.i4.m1
    IL_0004: ret
    IL_0005: ldc.i4.1
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663480, Name := Z0.Sign Z0.math::signum(System.Int64)
// Sign:int signum(long src)
// AggressiveInlining
Sign:int signum(long src)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.s 63
    IL_0003: shr
    IL_0004: ldarg.0
    IL_0005: call System.UInt64 Z0.math::negate(System.UInt64)
    IL_000A: ldc.i4.s 63
    IL_000C: shr.un
    IL_000D: or
    IL_000E: conv.i4
    IL_000F: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663481, Name := Z0.Sign Z0.math::signum(System.UInt64)
// Sign:int signum(ulong src)
// AggressiveInlining
Sign:int signum(ulong src)
{
    IL_0000: ldarg.0
    IL_0001: brtrue.s IL_0005
    IL_0003: ldc.i4.m1
    IL_0004: ret
    IL_0005: ldc.i4.1
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
