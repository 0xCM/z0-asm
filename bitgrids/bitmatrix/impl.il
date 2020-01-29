// Id := 100664472, Name := Z0.BitMatrix8& Z0.BitMatrix::impl(Z0.BitMatrix8&,Z0.BitMatrix8&,Z0.BitMatrix8&)
// ref BitMatrix8 impl(in BitMatrix8 A, in BitMatrix8 B, ref BitMatrix8 Z)
// AggressiveInlining
ref BitMatrix8 impl(in BitMatrix8 A, in BitMatrix8 B, ref BitMatrix8 Z)
{
    IL_0000: ldarg.0
    IL_0001: call System.Byte& Z0.BitMatrix8::get_Head()
    IL_0006: ldarg.1
    IL_0007: call System.Byte& Z0.BitMatrix8::get_Head()
    IL_000C: ldarg.2
    IL_000D: call System.Byte& Z0.BitMatrix8::get_Head()
    IL_0012: call System.Void Z0.BitSquare::impl<System.Byte>(System.Byte&,System.Byte&,System.Byte&)
    IL_0017: ldarg.2
    IL_0018: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664473, Name := Z0.BitMatrix8 Z0.BitMatrix::impl(Z0.BitMatrix8&,Z0.BitMatrix8&)
// BitMatrix8 impl(in BitMatrix8 A, in BitMatrix8 B)
// AggressiveInlining
BitMatrix8 impl(in BitMatrix8 A, in BitMatrix8 B)
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
    IL_0027: call System.Void Z0.BitSquare::impl<System.Byte>(System.Byte&,System.Byte&,System.Byte&)
    IL_002C: ldloc.0
    IL_002D: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664474, Name := Z0.BitMatrix16& Z0.BitMatrix::impl(Z0.BitMatrix16&,Z0.BitMatrix16&,Z0.BitMatrix16&)
// ref BitMatrix16 impl(in BitMatrix16 A, in BitMatrix16 B, ref BitMatrix16 Z)
// AggressiveInlining
ref BitMatrix16 impl(in BitMatrix16 A, in BitMatrix16 B, ref BitMatrix16 Z)
{
    IL_0000: ldarg.0
    IL_0001: call System.UInt16& Z0.BitMatrix16::get_Head()
    IL_0006: ldarg.1
    IL_0007: call System.UInt16& Z0.BitMatrix16::get_Head()
    IL_000C: ldarg.2
    IL_000D: call System.UInt16& Z0.BitMatrix16::get_Head()
    IL_0012: call System.Void Z0.BitSquare::impl<System.UInt16>(System.UInt16&,System.UInt16&,System.UInt16&)
    IL_0017: ldarg.2
    IL_0018: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664475, Name := Z0.BitMatrix16 Z0.BitMatrix::impl(Z0.BitMatrix16&,Z0.BitMatrix16&)
// BitMatrix16 impl(in BitMatrix16 A, in BitMatrix16 B)
// AggressiveInlining
BitMatrix16 impl(in BitMatrix16 A, in BitMatrix16 B)
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
    IL_0027: call System.Void Z0.BitSquare::impl<System.UInt16>(System.UInt16&,System.UInt16&,System.UInt16&)
    IL_002C: ldloc.0
    IL_002D: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664476, Name := Z0.BitMatrix32& Z0.BitMatrix::impl(Z0.BitMatrix32&,Z0.BitMatrix32&,Z0.BitMatrix32&)
// ref BitMatrix32 impl(in BitMatrix32 A, in BitMatrix32 B, ref BitMatrix32 Z)
// AggressiveInlining
ref BitMatrix32 impl(in BitMatrix32 A, in BitMatrix32 B, ref BitMatrix32 Z)
{
    IL_0000: ldarg.0
    IL_0001: call System.UInt32& Z0.BitMatrix32::get_Head()
    IL_0006: ldarg.1
    IL_0007: call System.UInt32& Z0.BitMatrix32::get_Head()
    IL_000C: ldarg.2
    IL_000D: call System.UInt32& Z0.BitMatrix32::get_Head()
    IL_0012: call System.Void Z0.BitSquare::impl<System.UInt32>(System.UInt32&,System.UInt32&,System.UInt32&)
    IL_0017: ldarg.2
    IL_0018: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664477, Name := Z0.BitMatrix32 Z0.BitMatrix::impl(Z0.BitMatrix32&,Z0.BitMatrix32&)
// BitMatrix32 impl(in BitMatrix32 A, in BitMatrix32 B)
// AggressiveInlining
BitMatrix32 impl(in BitMatrix32 A, in BitMatrix32 B)
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
    IL_0027: call System.Void Z0.BitSquare::impl<System.UInt32>(System.UInt32&,System.UInt32&,System.UInt32&)
    IL_002C: ldloc.0
    IL_002D: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664478, Name := Z0.BitMatrix64& Z0.BitMatrix::impl(Z0.BitMatrix64&,Z0.BitMatrix64&,Z0.BitMatrix64&)
// ref BitMatrix64 impl(in BitMatrix64 A, in BitMatrix64 B, ref BitMatrix64 Z)
// AggressiveInlining
ref BitMatrix64 impl(in BitMatrix64 A, in BitMatrix64 B, ref BitMatrix64 Z)
{
    IL_0000: ldarg.0
    IL_0001: call System.UInt64& Z0.BitMatrix64::get_Head()
    IL_0006: ldarg.1
    IL_0007: call System.UInt64& Z0.BitMatrix64::get_Head()
    IL_000C: ldarg.2
    IL_000D: call System.UInt64& Z0.BitMatrix64::get_Head()
    IL_0012: call System.Void Z0.BitSquare::impl<System.UInt64>(System.UInt64&,System.UInt64&,System.UInt64&)
    IL_0017: ldarg.2
    IL_0018: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664479, Name := Z0.BitMatrix64 Z0.BitMatrix::impl(Z0.BitMatrix64&,Z0.BitMatrix64&)
// BitMatrix64 impl(in BitMatrix64 A, in BitMatrix64 B)
// AggressiveInlining
BitMatrix64 impl(in BitMatrix64 A, in BitMatrix64 B)
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
    IL_0027: call System.Void Z0.BitSquare::impl<System.UInt64>(System.UInt64&,System.UInt64&,System.UInt64&)
    IL_002C: ldloc.0
    IL_002D: ret
}
------------------------------------------------------------------------------------------------------------------------
