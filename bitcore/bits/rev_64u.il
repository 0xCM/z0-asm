// Id := 100663512, Name := System.UInt64 Z0.Bits::rev(System.UInt64)
// ulong rev(ulong src)
// AggressiveInlining
ulong rev(ulong src)
{
    IL_0000: ldarg.0
    IL_0001: call System.UInt32 Z0.Bits::hi(System.UInt64)
    IL_0006: call System.UInt32 Z0.Bits::rev(System.UInt32)
    IL_000B: stloc.0
    IL_000C: ldloca.s V_0
    IL_000E: ldarg.0
    IL_000F: call System.UInt32 Z0.Bits::lo(System.UInt64)
    IL_0014: call System.UInt32 Z0.Bits::rev(System.UInt32)
    IL_0019: stloc.1
    IL_001A: ldloca.s V_1
    IL_001C: call System.UInt64 Z0.Bits::concat(System.UInt32&,System.UInt32&)
    IL_0021: ret
}
