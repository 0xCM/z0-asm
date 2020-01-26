// Id := 100663612, Name := T Z0.gbits::bitmap<T>(T,T,System.Byte,System.Byte)
// byte bitmap<byte>(byte src, byte dst, byte count, byte index)
// AggressiveInlining
byte bitmap<byte>(byte src, byte dst, byte count, byte index)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.3
    IL_0002: ldarg.2
    IL_0003: call T Z0.gbits::bitclear<T>(T,System.Byte,System.Byte)
    IL_0008: stloc.0
    IL_0009: ldarg.2
    IL_000A: ldloca.s V_2
    IL_000C: initobj T
    IL_0012: ldloc.2
    IL_0013: call T Z0.BitMask::lo<T>(System.Int32,T)
    IL_0018: ldarg.0
    IL_0019: call T Z0.gmath::and<T>(T,T)
    IL_001E: ldarg.3
    IL_001F: call T Z0.gmath::sll<T>(T,System.Byte)
    IL_0024: stloc.1
    IL_0025: ldloc.0
    IL_0026: ldloc.1
    IL_0027: call T Z0.gmath::or<T>(T,T)
    IL_002C: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663612, Name := T Z0.gbits::bitmap<T>(T,T,System.Byte,System.Byte)
// ushort bitmap<ushort>(ushort src, ushort dst, byte count, byte index)
// AggressiveInlining
ushort bitmap<ushort>(ushort src, ushort dst, byte count, byte index)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.3
    IL_0002: ldarg.2
    IL_0003: call T Z0.gbits::bitclear<T>(T,System.Byte,System.Byte)
    IL_0008: stloc.0
    IL_0009: ldarg.2
    IL_000A: ldloca.s V_2
    IL_000C: initobj T
    IL_0012: ldloc.2
    IL_0013: call T Z0.BitMask::lo<T>(System.Int32,T)
    IL_0018: ldarg.0
    IL_0019: call T Z0.gmath::and<T>(T,T)
    IL_001E: ldarg.3
    IL_001F: call T Z0.gmath::sll<T>(T,System.Byte)
    IL_0024: stloc.1
    IL_0025: ldloc.0
    IL_0026: ldloc.1
    IL_0027: call T Z0.gmath::or<T>(T,T)
    IL_002C: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663612, Name := T Z0.gbits::bitmap<T>(T,T,System.Byte,System.Byte)
// uint bitmap<uint>(uint src, uint dst, byte count, byte index)
// AggressiveInlining
uint bitmap<uint>(uint src, uint dst, byte count, byte index)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.3
    IL_0002: ldarg.2
    IL_0003: call T Z0.gbits::bitclear<T>(T,System.Byte,System.Byte)
    IL_0008: stloc.0
    IL_0009: ldarg.2
    IL_000A: ldloca.s V_2
    IL_000C: initobj T
    IL_0012: ldloc.2
    IL_0013: call T Z0.BitMask::lo<T>(System.Int32,T)
    IL_0018: ldarg.0
    IL_0019: call T Z0.gmath::and<T>(T,T)
    IL_001E: ldarg.3
    IL_001F: call T Z0.gmath::sll<T>(T,System.Byte)
    IL_0024: stloc.1
    IL_0025: ldloc.0
    IL_0026: ldloc.1
    IL_0027: call T Z0.gmath::or<T>(T,T)
    IL_002C: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663612, Name := T Z0.gbits::bitmap<T>(T,T,System.Byte,System.Byte)
// ulong bitmap<ulong>(ulong src, ulong dst, byte count, byte index)
// AggressiveInlining
ulong bitmap<ulong>(ulong src, ulong dst, byte count, byte index)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.3
    IL_0002: ldarg.2
    IL_0003: call T Z0.gbits::bitclear<T>(T,System.Byte,System.Byte)
    IL_0008: stloc.0
    IL_0009: ldarg.2
    IL_000A: ldloca.s V_2
    IL_000C: initobj T
    IL_0012: ldloc.2
    IL_0013: call T Z0.BitMask::lo<T>(System.Int32,T)
    IL_0018: ldarg.0
    IL_0019: call T Z0.gmath::and<T>(T,T)
    IL_001E: ldarg.3
    IL_001F: call T Z0.gmath::sll<T>(T,System.Byte)
    IL_0024: stloc.1
    IL_0025: ldloc.0
    IL_0026: ldloc.1
    IL_0027: call T Z0.gmath::or<T>(T,T)
    IL_002C: ret
}
------------------------------------------------------------------------------------------------------------------------
