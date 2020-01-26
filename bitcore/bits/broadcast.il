// Id := 100663357, Name := System.UInt16 Z0.Bits::broadcast(System.Byte,Z0.N16)
// ushort broadcast(byte src, N16 w)
// AggressiveInlining
ushort broadcast(byte src, N16 w)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.Bits::vbroadcast(System.Byte)
    IL_0006: call System.UInt16 zfunc::vfirst<System.Byte,System.UInt16>(System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_000B: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663358, Name := System.UInt32 Z0.Bits::broadcast(System.Byte,Z0.N32)
// uint broadcast(byte src, N32 w)
// AggressiveInlining
uint broadcast(byte src, N32 w)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.Bits::vbroadcast(System.Byte)
    IL_0006: call System.UInt32 zfunc::vfirst<System.Byte,System.UInt32>(System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_000B: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663359, Name := System.UInt64 Z0.Bits::broadcast(System.Byte,Z0.N64)
// ulong broadcast(byte src, N64 w)
// AggressiveInlining
ulong broadcast(byte src, N64 w)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.Bits::vbroadcast(System.Byte)
    IL_0006: call System.UInt64 zfunc::vfirst<System.Byte,System.UInt64>(System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_000B: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663360, Name := System.UInt32 Z0.Bits::broadcast(System.UInt16,Z0.N32)
// uint broadcast(ushort src, N32 w)
// AggressiveInlining
uint broadcast(ushort src, N32 w)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.Bits::vbroadcast(System.UInt16)
    IL_0006: call System.UInt32 zfunc::vfirst<System.UInt16,System.UInt32>(System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
    IL_000B: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663361, Name := System.UInt64 Z0.Bits::broadcast(System.UInt16,Z0.N64)
// ulong broadcast(ushort src, N64 w)
// AggressiveInlining
ulong broadcast(ushort src, N64 w)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.Bits::vbroadcast(System.UInt16)
    IL_0006: call System.UInt64 zfunc::vfirst<System.UInt16,System.UInt64>(System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
    IL_000B: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663362, Name := System.UInt64 Z0.Bits::broadcast(System.UInt32,Z0.N64)
// ulong broadcast(uint src, N64 w)
// AggressiveInlining
ulong broadcast(uint src, N64 w)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.Bits::vbroadcast(System.UInt32)
    IL_0006: call System.UInt64 zfunc::vfirst<System.UInt32,System.UInt64>(System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_000B: ret
}
------------------------------------------------------------------------------------------------------------------------
