// Id := 100663538, Name := System.SByte Z0.math::nonimpl(System.SByte,System.SByte)
// sbyte nonimpl(sbyte a, sbyte b)
// AggressiveInlining
sbyte nonimpl(sbyte a, sbyte b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.UInt32 System.Runtime.Intrinsics.X86.Bmi1::AndNot(System.UInt32,System.UInt32)
    IL_0007: conv.i1
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663539, Name := System.Byte Z0.math::nonimpl(System.Byte,System.Byte)
// byte nonimpl(byte a, byte b)
// AggressiveInlining
byte nonimpl(byte a, byte b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.UInt32 System.Runtime.Intrinsics.X86.Bmi1::AndNot(System.UInt32,System.UInt32)
    IL_0007: conv.u1
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663540, Name := System.Int16 Z0.math::nonimpl(System.Int16,System.Int16)
// Int16 nonimpl(Int16 a, Int16 b)
// AggressiveInlining
Int16 nonimpl(Int16 a, Int16 b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.UInt32 System.Runtime.Intrinsics.X86.Bmi1::AndNot(System.UInt32,System.UInt32)
    IL_0007: conv.i2
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663541, Name := System.UInt16 Z0.math::nonimpl(System.UInt16,System.UInt16)
// ushort nonimpl(ushort a, ushort b)
// AggressiveInlining
ushort nonimpl(ushort a, ushort b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.UInt32 System.Runtime.Intrinsics.X86.Bmi1::AndNot(System.UInt32,System.UInt32)
    IL_0007: conv.u2
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663542, Name := System.Int32 Z0.math::nonimpl(System.Int32,System.Int32)
// int nonimpl(int a, int b)
// AggressiveInlining
int nonimpl(int a, int b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.UInt32 System.Runtime.Intrinsics.X86.Bmi1::AndNot(System.UInt32,System.UInt32)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663543, Name := System.UInt32 Z0.math::nonimpl(System.UInt32,System.UInt32)
// uint nonimpl(uint a, uint b)
// AggressiveInlining
uint nonimpl(uint a, uint b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.UInt32 System.Runtime.Intrinsics.X86.Bmi1::AndNot(System.UInt32,System.UInt32)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663544, Name := System.Int64 Z0.math::nonimpl(System.Int64,System.Int64)
// long nonimpl(long a, long b)
// AggressiveInlining
long nonimpl(long a, long b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.UInt64 System.Runtime.Intrinsics.X86.Bmi1/X64::AndNot(System.UInt64,System.UInt64)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663545, Name := System.UInt64 Z0.math::nonimpl(System.UInt64,System.UInt64)
// ulong nonimpl(ulong a, ulong b)
// AggressiveInlining
ulong nonimpl(ulong a, ulong b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.UInt64 System.Runtime.Intrinsics.X86.Bmi1/X64::AndNot(System.UInt64,System.UInt64)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
