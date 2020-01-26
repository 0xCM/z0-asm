// Id := 100663436, Name := System.Int32 Z0.Bits::ntz(System.Byte)
// int ntz(byte src)
// AggressiveInlining
int ntz(byte src)
{
    IL_0000: ldarg.0
    IL_0001: brfalse.s IL_000A
    IL_0003: ldarg.0
    IL_0004: call System.UInt32 System.Runtime.Intrinsics.X86.Bmi1::TrailingZeroCount(System.UInt32)
    IL_0009: ret
    IL_000A: ldc.i4.8
    IL_000B: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663437, Name := System.Int32 Z0.Bits::ntz(System.Int16)
// int ntz(Int16 src)
// AggressiveInlining
int ntz(Int16 src)
{
    IL_0000: ldarg.0
    IL_0001: brfalse.s IL_000A
    IL_0003: ldarg.0
    IL_0004: call System.UInt32 System.Runtime.Intrinsics.X86.Bmi1::TrailingZeroCount(System.UInt32)
    IL_0009: ret
    IL_000A: ldc.i4.s 16
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663438, Name := System.Int32 Z0.Bits::ntz(System.UInt16)
// int ntz(ushort src)
// AggressiveInlining
int ntz(ushort src)
{
    IL_0000: ldarg.0
    IL_0001: brfalse.s IL_000A
    IL_0003: ldarg.0
    IL_0004: call System.UInt32 System.Runtime.Intrinsics.X86.Bmi1::TrailingZeroCount(System.UInt32)
    IL_0009: ret
    IL_000A: ldc.i4.s 16
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663439, Name := System.Int32 Z0.Bits::ntz(System.Int32)
// int ntz(int src)
// AggressiveInlining
int ntz(int src)
{
    IL_0000: ldarg.0
    IL_0001: call System.UInt32 System.Runtime.Intrinsics.X86.Bmi1::TrailingZeroCount(System.UInt32)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663440, Name := System.Int32 Z0.Bits::ntz(System.UInt32)
// int ntz(uint src)
// AggressiveInlining
int ntz(uint src)
{
    IL_0000: ldarg.0
    IL_0001: call System.UInt32 System.Runtime.Intrinsics.X86.Bmi1::TrailingZeroCount(System.UInt32)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663441, Name := System.Int32 Z0.Bits::ntz(System.Int64)
// int ntz(long src)
// AggressiveInlining
int ntz(long src)
{
    IL_0000: ldarg.0
    IL_0001: call System.UInt64 System.Runtime.Intrinsics.X86.Bmi1/X64::TrailingZeroCount(System.UInt64)
    IL_0006: conv.i4
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663442, Name := System.Int32 Z0.Bits::ntz(System.UInt64)
// int ntz(ulong src)
// AggressiveInlining
int ntz(ulong src)
{
    IL_0000: ldarg.0
    IL_0001: call System.UInt64 System.Runtime.Intrinsics.X86.Bmi1/X64::TrailingZeroCount(System.UInt64)
    IL_0006: conv.i4
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663435, Name := System.Int32 Z0.Bits::ntz(System.SByte)
// int ntz(sbyte src)
// AggressiveInlining
int ntz(sbyte src)
{
    IL_0000: ldarg.0
    IL_0001: brfalse.s IL_000A
    IL_0003: ldarg.0
    IL_0004: call System.UInt32 System.Runtime.Intrinsics.X86.Bmi1::TrailingZeroCount(System.UInt32)
    IL_0009: ret
    IL_000A: ldc.i4.8
    IL_000B: ret
}
------------------------------------------------------------------------------------------------------------------------
