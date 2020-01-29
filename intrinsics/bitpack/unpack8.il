// Id := 100666162, Name := Z0.Block64`1<System.Byte>& modreq(System.Runtime.InteropServices.InAttribute) Z0.BitPack::unpack8(System.Byte,Z0.Block64`1<System.Byte>&,System.Int32)
// ref Block64<byte> unpack8(byte packed, in Block64<byte> unpacked, int block)
// AggressiveInlining
ref Block64<byte> unpack8(byte packed, in Block64<byte> unpacked, int block)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.Span`1<System.Byte> Z0.Block64`1<System.Byte>::Block(System.Int32)
    IL_0008: call System.Void Z0.BitPack::unpack8(System.Byte,System.Span`1<System.Byte>)
    IL_000D: ldarg.1
    IL_000E: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100666163, Name := Z0.Block128`1<System.Byte>& modreq(System.Runtime.InteropServices.InAttribute) Z0.BitPack::unpack8(System.UInt16,Z0.Block128`1<System.Byte>&,System.Int32)
// ref Block128<byte> unpack8(ushort packed, in Block128<byte> unpacked, int block)
// AggressiveInlining
ref Block128<byte> unpack8(ushort packed, in Block128<byte> unpacked, int block)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.Span`1<System.Byte> Z0.Block128`1<System.Byte>::Block(System.Int32)
    IL_0008: call System.Void Z0.BitPack::unpack8(System.UInt16,System.Span`1<System.Byte>)
    IL_000D: ldarg.1
    IL_000E: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100666164, Name := Z0.Block256`1<System.Byte>& modreq(System.Runtime.InteropServices.InAttribute) Z0.BitPack::unpack8(System.UInt32,Z0.Block256`1<System.Byte>&,System.Int32)
// ref Block256<byte> unpack8(uint packed, in Block256<byte> unpacked, int block)
// AggressiveInlining
ref Block256<byte> unpack8(uint packed, in Block256<byte> unpacked, int block)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.Span`1<System.Byte> Z0.Block256`1<System.Byte>::Block(System.Int32)
    IL_0008: call System.Void Z0.BitPack::unpack8(System.UInt32,System.Span`1<System.Byte>)
    IL_000D: ldarg.1
    IL_000E: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100666165, Name := Z0.Block512`1<System.Byte>& modreq(System.Runtime.InteropServices.InAttribute) Z0.BitPack::unpack8(System.UInt64,Z0.Block512`1<System.Byte>&,System.Int32)
// ref Block512<byte> unpack8(ulong packed, in Block512<byte> unpacked, int block)
// AggressiveInlining
ref Block512<byte> unpack8(ulong packed, in Block512<byte> unpacked, int block)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.Span`1<System.Byte> Z0.Block512`1<System.Byte>::Block(System.Int32)
    IL_0008: call System.Void Z0.BitPack::unpack8(System.UInt64,System.Span`1<System.Byte>)
    IL_000D: ldarg.1
    IL_000E: ret
}
------------------------------------------------------------------------------------------------------------------------
