// Z0.BitMatrix4 Z0.BitMatrix::and(Z0.BitMatrix4&,Z0.BitMatrix4&)
// BitMatrix4 and(in BitMatrix4 A, in BitMatrix4 B)
// AggressiveInlining
BitMatrix4 and(in BitMatrix4 A, in BitMatrix4 B)
{
    IL_0000: ldarg.0
    IL_0001: ldobj Z0.BitMatrix4
    IL_0006: call System.UInt16 Z0.BitMatrix4::op_Explicit(Z0.BitMatrix4)
    IL_000B: ldarg.1
    IL_000C: ldobj Z0.BitMatrix4
    IL_0011: call System.UInt16 Z0.BitMatrix4::op_Explicit(Z0.BitMatrix4)
    IL_0016: call System.UInt16 Z0.math::and(System.UInt16,System.UInt16)
    IL_001B: call Z0.BitMatrix4 Z0.BitMatrix4::From(System.UInt16)
    IL_0020: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.BitMatrix8 Z0.BitMatrix::and(Z0.BitMatrix8&,Z0.BitMatrix8&)
// BitMatrix8 and(in BitMatrix8 A, in BitMatrix8 B)
// AggressiveInlining
BitMatrix8 and(in BitMatrix8 A, in BitMatrix8 B)
{
    IL_0000: call Z0.N8 zfunc::get_n8()
    IL_0005: ldloca.s V_1
    IL_0007: initobj Z0.bit
    IL_000D: ldloc.1
    IL_000E: call Z0.BitMatrix8 Z0.BitMatrix::alloc(Z0.N8,Z0.bit)
    IL_0013: stloc.0
    IL_0014: ldarg.0
    IL_0015: call System.Byte& Z0.BitMatrix8::get_Head()
    IL_001A: ldarg.1
    IL_001B: call System.Byte& Z0.BitMatrix8::get_Head()
    IL_0020: ldloca.s V_0
    IL_0022: call System.Byte& Z0.BitMatrix8::get_Head()
    IL_0027: call System.Void Z0.BitSquare::and<System.Byte>(System.Byte&,System.Byte&,System.Byte&)
    IL_002C: ldloc.0
    IL_002D: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.BitMatrix8& modreq(System.Runtime.InteropServices.InAttribute) Z0.BitMatrix::and(Z0.BitMatrix8&,Z0.BitMatrix8&,Z0.BitMatrix8&)
// ref BitMatrix8 and(in BitMatrix8 A, in BitMatrix8 B, in BitMatrix8 dst)
// AggressiveInlining
ref BitMatrix8 and(in BitMatrix8 A, in BitMatrix8 B, in BitMatrix8 dst)
{
    IL_0000: ldarg.0
    IL_0001: call System.Byte& Z0.BitMatrix8::get_Head()
    IL_0006: ldarg.1
    IL_0007: call System.Byte& Z0.BitMatrix8::get_Head()
    IL_000C: ldarg.2
    IL_000D: call System.Byte& Z0.BitMatrix8::get_Head()
    IL_0012: call System.Void Z0.BitSquare::and<System.Byte>(System.Byte&,System.Byte&,System.Byte&)
    IL_0017: ldarg.2
    IL_0018: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.BitMatrix16 Z0.BitMatrix::and(Z0.BitMatrix16&,Z0.BitMatrix16&)
// BitMatrix16 and(in BitMatrix16 A, in BitMatrix16 B)
// AggressiveInlining
BitMatrix16 and(in BitMatrix16 A, in BitMatrix16 B)
{
    IL_0000: call Z0.N16 zfunc::get_n16()
    IL_0005: ldloca.s V_1
    IL_0007: initobj Z0.bit
    IL_000D: ldloc.1
    IL_000E: call Z0.BitMatrix16 Z0.BitMatrix::alloc(Z0.N16,Z0.bit)
    IL_0013: stloc.0
    IL_0014: ldarg.0
    IL_0015: call System.UInt16& Z0.BitMatrix16::get_Head()
    IL_001A: ldarg.1
    IL_001B: call System.UInt16& Z0.BitMatrix16::get_Head()
    IL_0020: ldloca.s V_0
    IL_0022: call System.UInt16& Z0.BitMatrix16::get_Head()
    IL_0027: call System.Void Z0.BitSquare::and<System.UInt16>(System.UInt16&,System.UInt16&,System.UInt16&)
    IL_002C: ldloc.0
    IL_002D: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.BitMatrix16& modreq(System.Runtime.InteropServices.InAttribute) Z0.BitMatrix::and(Z0.BitMatrix16&,Z0.BitMatrix16&,Z0.BitMatrix16&)
// ref BitMatrix16 and(in BitMatrix16 A, in BitMatrix16 B, in BitMatrix16 dst)
// AggressiveInlining
ref BitMatrix16 and(in BitMatrix16 A, in BitMatrix16 B, in BitMatrix16 dst)
{
    IL_0000: ldarg.0
    IL_0001: call System.UInt16& Z0.BitMatrix16::get_Head()
    IL_0006: ldarg.1
    IL_0007: call System.UInt16& Z0.BitMatrix16::get_Head()
    IL_000C: ldarg.2
    IL_000D: call System.UInt16& Z0.BitMatrix16::get_Head()
    IL_0012: call System.Void Z0.BitSquare::and<System.UInt16>(System.UInt16&,System.UInt16&,System.UInt16&)
    IL_0017: ldarg.2
    IL_0018: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.BitMatrix32 Z0.BitMatrix::and(Z0.BitMatrix32&,Z0.BitMatrix32&)
// BitMatrix32 and(in BitMatrix32 A, in BitMatrix32 B)
// AggressiveInlining
BitMatrix32 and(in BitMatrix32 A, in BitMatrix32 B)
{
    IL_0000: call Z0.N32 zfunc::get_n32()
    IL_0005: ldloca.s V_1
    IL_0007: initobj Z0.bit
    IL_000D: ldloc.1
    IL_000E: call Z0.BitMatrix32 Z0.BitMatrix::alloc(Z0.N32,Z0.bit)
    IL_0013: stloc.0
    IL_0014: ldarg.0
    IL_0015: call System.UInt32& Z0.BitMatrix32::get_Head()
    IL_001A: ldarg.1
    IL_001B: call System.UInt32& Z0.BitMatrix32::get_Head()
    IL_0020: ldloca.s V_0
    IL_0022: call System.UInt32& Z0.BitMatrix32::get_Head()
    IL_0027: call System.Void Z0.BitSquare::and<System.UInt32>(System.UInt32&,System.UInt32&,System.UInt32&)
    IL_002C: ldloc.0
    IL_002D: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.BitMatrix32& modreq(System.Runtime.InteropServices.InAttribute) Z0.BitMatrix::and(Z0.BitMatrix32&,Z0.BitMatrix32&,Z0.BitMatrix32&)
// ref BitMatrix32 and(in BitMatrix32 A, in BitMatrix32 B, in BitMatrix32 Z)
// AggressiveInlining
ref BitMatrix32 and(in BitMatrix32 A, in BitMatrix32 B, in BitMatrix32 Z)
{
    IL_0000: ldarg.0
    IL_0001: call System.UInt32& Z0.BitMatrix32::get_Head()
    IL_0006: ldarg.1
    IL_0007: call System.UInt32& Z0.BitMatrix32::get_Head()
    IL_000C: ldarg.2
    IL_000D: call System.UInt32& Z0.BitMatrix32::get_Head()
    IL_0012: call System.Void Z0.BitSquare::and<System.UInt32>(System.UInt32&,System.UInt32&,System.UInt32&)
    IL_0017: ldarg.2
    IL_0018: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.BitMatrix64 Z0.BitMatrix::and(Z0.BitMatrix64&,Z0.BitMatrix64&)
// BitMatrix64 and(in BitMatrix64 A, in BitMatrix64 B)
// AggressiveInlining
BitMatrix64 and(in BitMatrix64 A, in BitMatrix64 B)
{
    IL_0000: call Z0.N64 zfunc::get_n64()
    IL_0005: ldloca.s V_1
    IL_0007: initobj Z0.bit
    IL_000D: ldloc.1
    IL_000E: call Z0.BitMatrix64 Z0.BitMatrix::alloc(Z0.N64,Z0.bit)
    IL_0013: stloc.0
    IL_0014: ldarg.0
    IL_0015: call System.UInt64& Z0.BitMatrix64::get_Head()
    IL_001A: ldarg.1
    IL_001B: call System.UInt64& Z0.BitMatrix64::get_Head()
    IL_0020: ldloca.s V_0
    IL_0022: call System.UInt64& Z0.BitMatrix64::get_Head()
    IL_0027: call System.Void Z0.BitSquare::and<System.UInt64>(System.UInt64&,System.UInt64&,System.UInt64&)
    IL_002C: ldloc.0
    IL_002D: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.BitMatrix64& modreq(System.Runtime.InteropServices.InAttribute) Z0.BitMatrix::and(Z0.BitMatrix64&,Z0.BitMatrix64&,Z0.BitMatrix64&)
// ref BitMatrix64 and(in BitMatrix64 A, in BitMatrix64 B, in BitMatrix64 dst)
// AggressiveInlining
ref BitMatrix64 and(in BitMatrix64 A, in BitMatrix64 B, in BitMatrix64 dst)
{
    IL_0000: ldarg.0
    IL_0001: call System.UInt64& Z0.BitMatrix64::get_Head()
    IL_0006: ldarg.1
    IL_0007: call System.UInt64& Z0.BitMatrix64::get_Head()
    IL_000C: ldarg.2
    IL_000D: call System.UInt64& Z0.BitMatrix64::get_Head()
    IL_0012: call System.Void Z0.BitSquare::and<System.UInt64>(System.UInt64&,System.UInt64&,System.UInt64&)
    IL_0017: ldarg.2
    IL_0018: ret
}
------------------------------------------------------------------------------------------------------------------------
