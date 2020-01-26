// Id := 100663514, Name := System.SByte Z0.math::cnonimpl(System.SByte,System.SByte)
// sbyte cnonimpl(sbyte a, sbyte b)
// AggressiveInlining
sbyte cnonimpl(sbyte a, sbyte b)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: call System.UInt32 System.Runtime.Intrinsics.X86.Bmi1::AndNot(System.UInt32,System.UInt32)
    IL_0007: conv.i1
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663515, Name := System.Byte Z0.math::cnonimpl(System.Byte,System.Byte)
// byte cnonimpl(byte a, byte b)
// AggressiveInlining
byte cnonimpl(byte a, byte b)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: call System.UInt32 System.Runtime.Intrinsics.X86.Bmi1::AndNot(System.UInt32,System.UInt32)
    IL_0007: conv.u1
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663516, Name := System.Int16 Z0.math::cnonimpl(System.Int16,System.Int16)
// short cnonimpl(short a, short b)
// AggressiveInlining
short cnonimpl(short a, short b)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: call System.UInt32 System.Runtime.Intrinsics.X86.Bmi1::AndNot(System.UInt32,System.UInt32)
    IL_0007: conv.i2
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663517, Name := System.UInt16 Z0.math::cnonimpl(System.UInt16,System.UInt16)
// ushort cnonimpl(ushort a, ushort b)
// AggressiveInlining
ushort cnonimpl(ushort a, ushort b)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: call System.UInt32 System.Runtime.Intrinsics.X86.Bmi1::AndNot(System.UInt32,System.UInt32)
    IL_0007: conv.u2
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663518, Name := System.Int32 Z0.math::cnonimpl(System.Int32,System.Int32)
// int cnonimpl(int a, int b)
// AggressiveInlining
int cnonimpl(int a, int b)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: call System.UInt32 System.Runtime.Intrinsics.X86.Bmi1::AndNot(System.UInt32,System.UInt32)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663519, Name := System.UInt32 Z0.math::cnonimpl(System.UInt32,System.UInt32)
// uint cnonimpl(uint a, uint b)
// AggressiveInlining
uint cnonimpl(uint a, uint b)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: call System.UInt32 System.Runtime.Intrinsics.X86.Bmi1::AndNot(System.UInt32,System.UInt32)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663520, Name := System.Int64 Z0.math::cnonimpl(System.Int64,System.Int64)
// long cnonimpl(long a, long b)
// AggressiveInlining
long cnonimpl(long a, long b)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: call System.UInt64 System.Runtime.Intrinsics.X86.Bmi1/X64::AndNot(System.UInt64,System.UInt64)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663521, Name := System.UInt64 Z0.math::cnonimpl(System.UInt64,System.UInt64)
// ulong cnonimpl(ulong a, ulong b)
// AggressiveInlining
ulong cnonimpl(ulong a, ulong b)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: call System.UInt64 System.Runtime.Intrinsics.X86.Bmi1/X64::AndNot(System.UInt64,System.UInt64)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
