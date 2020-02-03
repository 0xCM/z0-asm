// System.Void Z0.gbits::bitchars<T>(T,System.Span`1<System.Char>,System.Int32)
// void bitchars<byte>(byte src, Span<char> dst, int offset)
// AggressiveInlining
void bitchars<byte>(byte src, Span<char> dst, int offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.Void Z0.BitStore::bitchars<T>(T,System.Span`1<System.Char>,System.Int32)
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Void Z0.gbits::bitchars<T>(T,System.Span`1<System.Char>,System.Int32)
// void bitchars<sbyte>(sbyte src, Span<char> dst, int offset)
// AggressiveInlining
void bitchars<sbyte>(sbyte src, Span<char> dst, int offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.Void Z0.BitStore::bitchars<T>(T,System.Span`1<System.Char>,System.Int32)
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Void Z0.gbits::bitchars<T>(T,System.Span`1<System.Char>,System.Int32)
// void bitchars<ushort>(ushort src, Span<char> dst, int offset)
// AggressiveInlining
void bitchars<ushort>(ushort src, Span<char> dst, int offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.Void Z0.BitStore::bitchars<T>(T,System.Span`1<System.Char>,System.Int32)
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Void Z0.gbits::bitchars<T>(T,System.Span`1<System.Char>,System.Int32)
// void bitchars<short>(short src, Span<char> dst, int offset)
// AggressiveInlining
void bitchars<short>(short src, Span<char> dst, int offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.Void Z0.BitStore::bitchars<T>(T,System.Span`1<System.Char>,System.Int32)
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Void Z0.gbits::bitchars<T>(T,System.Span`1<System.Char>,System.Int32)
// void bitchars<uint>(uint src, Span<char> dst, int offset)
// AggressiveInlining
void bitchars<uint>(uint src, Span<char> dst, int offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.Void Z0.BitStore::bitchars<T>(T,System.Span`1<System.Char>,System.Int32)
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Void Z0.gbits::bitchars<T>(T,System.Span`1<System.Char>,System.Int32)
// void bitchars<int>(int src, Span<char> dst, int offset)
// AggressiveInlining
void bitchars<int>(int src, Span<char> dst, int offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.Void Z0.BitStore::bitchars<T>(T,System.Span`1<System.Char>,System.Int32)
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Void Z0.gbits::bitchars<T>(T,System.Span`1<System.Char>,System.Int32)
// void bitchars<ulong>(ulong src, Span<char> dst, int offset)
// AggressiveInlining
void bitchars<ulong>(ulong src, Span<char> dst, int offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.Void Z0.BitStore::bitchars<T>(T,System.Span`1<System.Char>,System.Int32)
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Void Z0.gbits::bitchars<T>(T,System.Span`1<System.Char>,System.Int32)
// void bitchars<long>(long src, Span<char> dst, int offset)
// AggressiveInlining
void bitchars<long>(long src, Span<char> dst, int offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.Void Z0.BitStore::bitchars<T>(T,System.Span`1<System.Char>,System.Int32)
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Void Z0.gbits::bitchars<T>(T,System.Span`1<System.Char>,System.Int32)
// void bitchars<float>(float src, Span<char> dst, int offset)
// AggressiveInlining
void bitchars<float>(float src, Span<char> dst, int offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.Void Z0.BitStore::bitchars<T>(T,System.Span`1<System.Char>,System.Int32)
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Void Z0.gbits::bitchars<T>(T,System.Span`1<System.Char>,System.Int32)
// void bitchars<double>(double src, Span<char> dst, int offset)
// AggressiveInlining
void bitchars<double>(double src, Span<char> dst, int offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.Void Z0.BitStore::bitchars<T>(T,System.Span`1<System.Char>,System.Int32)
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.ReadOnlySpan`1<System.Char> Z0.gbits::bitchars<T>(T&)
// ReadOnlySpan<char> bitchars<byte>(in byte src)
// AggressiveInlining
ReadOnlySpan<char> bitchars<byte>(in byte src)
{
    IL_0000: call System.Int32 zfunc::bitsize<T>()
    IL_0005: newarr System.Char
    IL_000A: stloc.0
    IL_000B: ldarg.0
    IL_000C: ldobj T
    IL_0011: ldloc.0
    IL_0012: call System.Span`1<System.Char> System.Span`1<System.Char>::op_Implicit(System.Char[])
    IL_0017: ldc.i4.0
    IL_0018: call System.Void Z0.gbits::bitchars<T>(T,System.Span`1<System.Char>,System.Int32)
    IL_001D: ldloc.0
    IL_001E: call System.ReadOnlySpan`1<System.Char> System.ReadOnlySpan`1<System.Char>::op_Implicit(System.Char[])
    IL_0023: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.ReadOnlySpan`1<System.Char> Z0.gbits::bitchars<T>(T&)
// ReadOnlySpan<char> bitchars<sbyte>(in sbyte src)
// AggressiveInlining
ReadOnlySpan<char> bitchars<sbyte>(in sbyte src)
{
    IL_0000: call System.Int32 zfunc::bitsize<T>()
    IL_0005: newarr System.Char
    IL_000A: stloc.0
    IL_000B: ldarg.0
    IL_000C: ldobj T
    IL_0011: ldloc.0
    IL_0012: call System.Span`1<System.Char> System.Span`1<System.Char>::op_Implicit(System.Char[])
    IL_0017: ldc.i4.0
    IL_0018: call System.Void Z0.gbits::bitchars<T>(T,System.Span`1<System.Char>,System.Int32)
    IL_001D: ldloc.0
    IL_001E: call System.ReadOnlySpan`1<System.Char> System.ReadOnlySpan`1<System.Char>::op_Implicit(System.Char[])
    IL_0023: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.ReadOnlySpan`1<System.Char> Z0.gbits::bitchars<T>(T&)
// ReadOnlySpan<char> bitchars<ushort>(in ushort src)
// AggressiveInlining
ReadOnlySpan<char> bitchars<ushort>(in ushort src)
{
    IL_0000: call System.Int32 zfunc::bitsize<T>()
    IL_0005: newarr System.Char
    IL_000A: stloc.0
    IL_000B: ldarg.0
    IL_000C: ldobj T
    IL_0011: ldloc.0
    IL_0012: call System.Span`1<System.Char> System.Span`1<System.Char>::op_Implicit(System.Char[])
    IL_0017: ldc.i4.0
    IL_0018: call System.Void Z0.gbits::bitchars<T>(T,System.Span`1<System.Char>,System.Int32)
    IL_001D: ldloc.0
    IL_001E: call System.ReadOnlySpan`1<System.Char> System.ReadOnlySpan`1<System.Char>::op_Implicit(System.Char[])
    IL_0023: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.ReadOnlySpan`1<System.Char> Z0.gbits::bitchars<T>(T&)
// ReadOnlySpan<char> bitchars<short>(in short src)
// AggressiveInlining
ReadOnlySpan<char> bitchars<short>(in short src)
{
    IL_0000: call System.Int32 zfunc::bitsize<T>()
    IL_0005: newarr System.Char
    IL_000A: stloc.0
    IL_000B: ldarg.0
    IL_000C: ldobj T
    IL_0011: ldloc.0
    IL_0012: call System.Span`1<System.Char> System.Span`1<System.Char>::op_Implicit(System.Char[])
    IL_0017: ldc.i4.0
    IL_0018: call System.Void Z0.gbits::bitchars<T>(T,System.Span`1<System.Char>,System.Int32)
    IL_001D: ldloc.0
    IL_001E: call System.ReadOnlySpan`1<System.Char> System.ReadOnlySpan`1<System.Char>::op_Implicit(System.Char[])
    IL_0023: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.ReadOnlySpan`1<System.Char> Z0.gbits::bitchars<T>(T&)
// ReadOnlySpan<char> bitchars<uint>(in uint src)
// AggressiveInlining
ReadOnlySpan<char> bitchars<uint>(in uint src)
{
    IL_0000: call System.Int32 zfunc::bitsize<T>()
    IL_0005: newarr System.Char
    IL_000A: stloc.0
    IL_000B: ldarg.0
    IL_000C: ldobj T
    IL_0011: ldloc.0
    IL_0012: call System.Span`1<System.Char> System.Span`1<System.Char>::op_Implicit(System.Char[])
    IL_0017: ldc.i4.0
    IL_0018: call System.Void Z0.gbits::bitchars<T>(T,System.Span`1<System.Char>,System.Int32)
    IL_001D: ldloc.0
    IL_001E: call System.ReadOnlySpan`1<System.Char> System.ReadOnlySpan`1<System.Char>::op_Implicit(System.Char[])
    IL_0023: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.ReadOnlySpan`1<System.Char> Z0.gbits::bitchars<T>(T&)
// ReadOnlySpan<char> bitchars<int>(in int src)
// AggressiveInlining
ReadOnlySpan<char> bitchars<int>(in int src)
{
    IL_0000: call System.Int32 zfunc::bitsize<T>()
    IL_0005: newarr System.Char
    IL_000A: stloc.0
    IL_000B: ldarg.0
    IL_000C: ldobj T
    IL_0011: ldloc.0
    IL_0012: call System.Span`1<System.Char> System.Span`1<System.Char>::op_Implicit(System.Char[])
    IL_0017: ldc.i4.0
    IL_0018: call System.Void Z0.gbits::bitchars<T>(T,System.Span`1<System.Char>,System.Int32)
    IL_001D: ldloc.0
    IL_001E: call System.ReadOnlySpan`1<System.Char> System.ReadOnlySpan`1<System.Char>::op_Implicit(System.Char[])
    IL_0023: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.ReadOnlySpan`1<System.Char> Z0.gbits::bitchars<T>(T&)
// ReadOnlySpan<char> bitchars<ulong>(in ulong src)
// AggressiveInlining
ReadOnlySpan<char> bitchars<ulong>(in ulong src)
{
    IL_0000: call System.Int32 zfunc::bitsize<T>()
    IL_0005: newarr System.Char
    IL_000A: stloc.0
    IL_000B: ldarg.0
    IL_000C: ldobj T
    IL_0011: ldloc.0
    IL_0012: call System.Span`1<System.Char> System.Span`1<System.Char>::op_Implicit(System.Char[])
    IL_0017: ldc.i4.0
    IL_0018: call System.Void Z0.gbits::bitchars<T>(T,System.Span`1<System.Char>,System.Int32)
    IL_001D: ldloc.0
    IL_001E: call System.ReadOnlySpan`1<System.Char> System.ReadOnlySpan`1<System.Char>::op_Implicit(System.Char[])
    IL_0023: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.ReadOnlySpan`1<System.Char> Z0.gbits::bitchars<T>(T&)
// ReadOnlySpan<char> bitchars<long>(in long src)
// AggressiveInlining
ReadOnlySpan<char> bitchars<long>(in long src)
{
    IL_0000: call System.Int32 zfunc::bitsize<T>()
    IL_0005: newarr System.Char
    IL_000A: stloc.0
    IL_000B: ldarg.0
    IL_000C: ldobj T
    IL_0011: ldloc.0
    IL_0012: call System.Span`1<System.Char> System.Span`1<System.Char>::op_Implicit(System.Char[])
    IL_0017: ldc.i4.0
    IL_0018: call System.Void Z0.gbits::bitchars<T>(T,System.Span`1<System.Char>,System.Int32)
    IL_001D: ldloc.0
    IL_001E: call System.ReadOnlySpan`1<System.Char> System.ReadOnlySpan`1<System.Char>::op_Implicit(System.Char[])
    IL_0023: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.ReadOnlySpan`1<System.Char> Z0.gbits::bitchars<T>(T&)
// ReadOnlySpan<char> bitchars<float>(in float src)
// AggressiveInlining
ReadOnlySpan<char> bitchars<float>(in float src)
{
    IL_0000: call System.Int32 zfunc::bitsize<T>()
    IL_0005: newarr System.Char
    IL_000A: stloc.0
    IL_000B: ldarg.0
    IL_000C: ldobj T
    IL_0011: ldloc.0
    IL_0012: call System.Span`1<System.Char> System.Span`1<System.Char>::op_Implicit(System.Char[])
    IL_0017: ldc.i4.0
    IL_0018: call System.Void Z0.gbits::bitchars<T>(T,System.Span`1<System.Char>,System.Int32)
    IL_001D: ldloc.0
    IL_001E: call System.ReadOnlySpan`1<System.Char> System.ReadOnlySpan`1<System.Char>::op_Implicit(System.Char[])
    IL_0023: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.ReadOnlySpan`1<System.Char> Z0.gbits::bitchars<T>(T&)
// ReadOnlySpan<char> bitchars<double>(in double src)
// AggressiveInlining
ReadOnlySpan<char> bitchars<double>(in double src)
{
    IL_0000: call System.Int32 zfunc::bitsize<T>()
    IL_0005: newarr System.Char
    IL_000A: stloc.0
    IL_000B: ldarg.0
    IL_000C: ldobj T
    IL_0011: ldloc.0
    IL_0012: call System.Span`1<System.Char> System.Span`1<System.Char>::op_Implicit(System.Char[])
    IL_0017: ldc.i4.0
    IL_0018: call System.Void Z0.gbits::bitchars<T>(T,System.Span`1<System.Char>,System.Int32)
    IL_001D: ldloc.0
    IL_001E: call System.ReadOnlySpan`1<System.Char> System.ReadOnlySpan`1<System.Char>::op_Implicit(System.Char[])
    IL_0023: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Span`1<System.Char> Z0.gbits::bitchars<T>(System.ReadOnlySpan`1<T>,System.Nullable`1<System.Int32>)
// Span<char> bitchars<byte>(ReadOnlySpan<byte> src, int maxlen)
// AggressiveInlining
Span<char> bitchars<byte>(ReadOnlySpan<byte> src, int maxlen)
{
    IL_0000: call System.Int32 zfunc::bitsize<T>()
    IL_0005: stloc.0
    IL_0006: ldarga.s src
    IL_0008: call System.Int32 System.ReadOnlySpan`1<T>::get_Length()
    IL_000D: stloc.1
    IL_000E: ldloc.1
    IL_000F: ldloc.0
    IL_0010: mul
    IL_0011: newarr System.Char
    IL_0016: call System.Span`1<System.Char> System.Span`1<System.Char>::op_Implicit(System.Char[])
    IL_001B: stloc.2
    IL_001C: ldarg.0
    IL_001D: call T& modreq(System.Runtime.InteropServices.InAttribute) zfunc::head<T>(System.ReadOnlySpan`1<T>)
    IL_0022: stloc.3
    IL_0023: ldc.i4.0
    IL_0024: stloc.s V_4
    IL_0026: br.s IL_0045
    IL_0028: ldloc.3
    IL_0029: ldloc.s V_4
    IL_002B: call T& modreq(System.Runtime.InteropServices.InAttribute) zfunc::skip<T>(T&,System.Int32)
    IL_0030: call System.ReadOnlySpan`1<System.Char> Z0.gbits::bitchars<T>(T&)
    IL_0035: ldloc.2
    IL_0036: ldloc.s V_4
    IL_0038: ldloc.0
    IL_0039: mul
    IL_003A: call System.Void Z0.SpanExtend::CopyTo<System.Char>(System.ReadOnlySpan`1<System.Char>,System.Span`1<System.Char>,System.Int32)
    IL_003F: ldloc.s V_4
    IL_0041: ldc.i4.1
    IL_0042: add
    IL_0043: stloc.s V_4
    IL_0045: ldloc.s V_4
    IL_0047: ldloc.1
    IL_0048: blt.s IL_0028
    IL_004A: ldarga.s maxlen
    IL_004C: call System.Boolean System.Nullable`1<System.Int32>::get_HasValue()
    IL_0051: brfalse.s IL_0073
    IL_0053: ldloca.s V_2
    IL_0055: call System.Int32 System.Span`1<System.Char>::get_Length()
    IL_005A: ldarg.1
    IL_005B: stloc.s V_5
    IL_005D: ldloca.s V_5
    IL_005F: call System.Int32 System.Nullable`1<System.Int32>::GetValueOrDefault()
    IL_0064: clt
    IL_0066: ldc.i4.0
    IL_0067: ceq
    IL_0069: ldloca.s V_5
    IL_006B: call System.Boolean System.Nullable`1<System.Int32>::get_HasValue()
    IL_0070: and
    IL_0071: brtrue.s IL_0075
    IL_0073: ldloc.2
    IL_0074: ret
    IL_0075: ldloca.s V_2
    IL_0077: ldc.i4.0
    IL_0078: ldarga.s maxlen
    IL_007A: call System.Int32 System.Nullable`1<System.Int32>::get_Value()
    IL_007F: call System.Span`1<System.Char> System.Span`1<System.Char>::Slice(System.Int32,System.Int32)
    IL_0084: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Span`1<System.Char> Z0.gbits::bitchars<T>(System.ReadOnlySpan`1<T>,System.Nullable`1<System.Int32>)
// Span<char> bitchars<sbyte>(ReadOnlySpan<sbyte> src, int maxlen)
// AggressiveInlining
Span<char> bitchars<sbyte>(ReadOnlySpan<sbyte> src, int maxlen)
{
    IL_0000: call System.Int32 zfunc::bitsize<T>()
    IL_0005: stloc.0
    IL_0006: ldarga.s src
    IL_0008: call System.Int32 System.ReadOnlySpan`1<T>::get_Length()
    IL_000D: stloc.1
    IL_000E: ldloc.1
    IL_000F: ldloc.0
    IL_0010: mul
    IL_0011: newarr System.Char
    IL_0016: call System.Span`1<System.Char> System.Span`1<System.Char>::op_Implicit(System.Char[])
    IL_001B: stloc.2
    IL_001C: ldarg.0
    IL_001D: call T& modreq(System.Runtime.InteropServices.InAttribute) zfunc::head<T>(System.ReadOnlySpan`1<T>)
    IL_0022: stloc.3
    IL_0023: ldc.i4.0
    IL_0024: stloc.s V_4
    IL_0026: br.s IL_0045
    IL_0028: ldloc.3
    IL_0029: ldloc.s V_4
    IL_002B: call T& modreq(System.Runtime.InteropServices.InAttribute) zfunc::skip<T>(T&,System.Int32)
    IL_0030: call System.ReadOnlySpan`1<System.Char> Z0.gbits::bitchars<T>(T&)
    IL_0035: ldloc.2
    IL_0036: ldloc.s V_4
    IL_0038: ldloc.0
    IL_0039: mul
    IL_003A: call System.Void Z0.SpanExtend::CopyTo<System.Char>(System.ReadOnlySpan`1<System.Char>,System.Span`1<System.Char>,System.Int32)
    IL_003F: ldloc.s V_4
    IL_0041: ldc.i4.1
    IL_0042: add
    IL_0043: stloc.s V_4
    IL_0045: ldloc.s V_4
    IL_0047: ldloc.1
    IL_0048: blt.s IL_0028
    IL_004A: ldarga.s maxlen
    IL_004C: call System.Boolean System.Nullable`1<System.Int32>::get_HasValue()
    IL_0051: brfalse.s IL_0073
    IL_0053: ldloca.s V_2
    IL_0055: call System.Int32 System.Span`1<System.Char>::get_Length()
    IL_005A: ldarg.1
    IL_005B: stloc.s V_5
    IL_005D: ldloca.s V_5
    IL_005F: call System.Int32 System.Nullable`1<System.Int32>::GetValueOrDefault()
    IL_0064: clt
    IL_0066: ldc.i4.0
    IL_0067: ceq
    IL_0069: ldloca.s V_5
    IL_006B: call System.Boolean System.Nullable`1<System.Int32>::get_HasValue()
    IL_0070: and
    IL_0071: brtrue.s IL_0075
    IL_0073: ldloc.2
    IL_0074: ret
    IL_0075: ldloca.s V_2
    IL_0077: ldc.i4.0
    IL_0078: ldarga.s maxlen
    IL_007A: call System.Int32 System.Nullable`1<System.Int32>::get_Value()
    IL_007F: call System.Span`1<System.Char> System.Span`1<System.Char>::Slice(System.Int32,System.Int32)
    IL_0084: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Span`1<System.Char> Z0.gbits::bitchars<T>(System.ReadOnlySpan`1<T>,System.Nullable`1<System.Int32>)
// Span<char> bitchars<ushort>(ReadOnlySpan<ushort> src, int maxlen)
// AggressiveInlining
Span<char> bitchars<ushort>(ReadOnlySpan<ushort> src, int maxlen)
{
    IL_0000: call System.Int32 zfunc::bitsize<T>()
    IL_0005: stloc.0
    IL_0006: ldarga.s src
    IL_0008: call System.Int32 System.ReadOnlySpan`1<T>::get_Length()
    IL_000D: stloc.1
    IL_000E: ldloc.1
    IL_000F: ldloc.0
    IL_0010: mul
    IL_0011: newarr System.Char
    IL_0016: call System.Span`1<System.Char> System.Span`1<System.Char>::op_Implicit(System.Char[])
    IL_001B: stloc.2
    IL_001C: ldarg.0
    IL_001D: call T& modreq(System.Runtime.InteropServices.InAttribute) zfunc::head<T>(System.ReadOnlySpan`1<T>)
    IL_0022: stloc.3
    IL_0023: ldc.i4.0
    IL_0024: stloc.s V_4
    IL_0026: br.s IL_0045
    IL_0028: ldloc.3
    IL_0029: ldloc.s V_4
    IL_002B: call T& modreq(System.Runtime.InteropServices.InAttribute) zfunc::skip<T>(T&,System.Int32)
    IL_0030: call System.ReadOnlySpan`1<System.Char> Z0.gbits::bitchars<T>(T&)
    IL_0035: ldloc.2
    IL_0036: ldloc.s V_4
    IL_0038: ldloc.0
    IL_0039: mul
    IL_003A: call System.Void Z0.SpanExtend::CopyTo<System.Char>(System.ReadOnlySpan`1<System.Char>,System.Span`1<System.Char>,System.Int32)
    IL_003F: ldloc.s V_4
    IL_0041: ldc.i4.1
    IL_0042: add
    IL_0043: stloc.s V_4
    IL_0045: ldloc.s V_4
    IL_0047: ldloc.1
    IL_0048: blt.s IL_0028
    IL_004A: ldarga.s maxlen
    IL_004C: call System.Boolean System.Nullable`1<System.Int32>::get_HasValue()
    IL_0051: brfalse.s IL_0073
    IL_0053: ldloca.s V_2
    IL_0055: call System.Int32 System.Span`1<System.Char>::get_Length()
    IL_005A: ldarg.1
    IL_005B: stloc.s V_5
    IL_005D: ldloca.s V_5
    IL_005F: call System.Int32 System.Nullable`1<System.Int32>::GetValueOrDefault()
    IL_0064: clt
    IL_0066: ldc.i4.0
    IL_0067: ceq
    IL_0069: ldloca.s V_5
    IL_006B: call System.Boolean System.Nullable`1<System.Int32>::get_HasValue()
    IL_0070: and
    IL_0071: brtrue.s IL_0075
    IL_0073: ldloc.2
    IL_0074: ret
    IL_0075: ldloca.s V_2
    IL_0077: ldc.i4.0
    IL_0078: ldarga.s maxlen
    IL_007A: call System.Int32 System.Nullable`1<System.Int32>::get_Value()
    IL_007F: call System.Span`1<System.Char> System.Span`1<System.Char>::Slice(System.Int32,System.Int32)
    IL_0084: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Span`1<System.Char> Z0.gbits::bitchars<T>(System.ReadOnlySpan`1<T>,System.Nullable`1<System.Int32>)
// Span<char> bitchars<short>(ReadOnlySpan<short> src, int maxlen)
// AggressiveInlining
Span<char> bitchars<short>(ReadOnlySpan<short> src, int maxlen)
{
    IL_0000: call System.Int32 zfunc::bitsize<T>()
    IL_0005: stloc.0
    IL_0006: ldarga.s src
    IL_0008: call System.Int32 System.ReadOnlySpan`1<T>::get_Length()
    IL_000D: stloc.1
    IL_000E: ldloc.1
    IL_000F: ldloc.0
    IL_0010: mul
    IL_0011: newarr System.Char
    IL_0016: call System.Span`1<System.Char> System.Span`1<System.Char>::op_Implicit(System.Char[])
    IL_001B: stloc.2
    IL_001C: ldarg.0
    IL_001D: call T& modreq(System.Runtime.InteropServices.InAttribute) zfunc::head<T>(System.ReadOnlySpan`1<T>)
    IL_0022: stloc.3
    IL_0023: ldc.i4.0
    IL_0024: stloc.s V_4
    IL_0026: br.s IL_0045
    IL_0028: ldloc.3
    IL_0029: ldloc.s V_4
    IL_002B: call T& modreq(System.Runtime.InteropServices.InAttribute) zfunc::skip<T>(T&,System.Int32)
    IL_0030: call System.ReadOnlySpan`1<System.Char> Z0.gbits::bitchars<T>(T&)
    IL_0035: ldloc.2
    IL_0036: ldloc.s V_4
    IL_0038: ldloc.0
    IL_0039: mul
    IL_003A: call System.Void Z0.SpanExtend::CopyTo<System.Char>(System.ReadOnlySpan`1<System.Char>,System.Span`1<System.Char>,System.Int32)
    IL_003F: ldloc.s V_4
    IL_0041: ldc.i4.1
    IL_0042: add
    IL_0043: stloc.s V_4
    IL_0045: ldloc.s V_4
    IL_0047: ldloc.1
    IL_0048: blt.s IL_0028
    IL_004A: ldarga.s maxlen
    IL_004C: call System.Boolean System.Nullable`1<System.Int32>::get_HasValue()
    IL_0051: brfalse.s IL_0073
    IL_0053: ldloca.s V_2
    IL_0055: call System.Int32 System.Span`1<System.Char>::get_Length()
    IL_005A: ldarg.1
    IL_005B: stloc.s V_5
    IL_005D: ldloca.s V_5
    IL_005F: call System.Int32 System.Nullable`1<System.Int32>::GetValueOrDefault()
    IL_0064: clt
    IL_0066: ldc.i4.0
    IL_0067: ceq
    IL_0069: ldloca.s V_5
    IL_006B: call System.Boolean System.Nullable`1<System.Int32>::get_HasValue()
    IL_0070: and
    IL_0071: brtrue.s IL_0075
    IL_0073: ldloc.2
    IL_0074: ret
    IL_0075: ldloca.s V_2
    IL_0077: ldc.i4.0
    IL_0078: ldarga.s maxlen
    IL_007A: call System.Int32 System.Nullable`1<System.Int32>::get_Value()
    IL_007F: call System.Span`1<System.Char> System.Span`1<System.Char>::Slice(System.Int32,System.Int32)
    IL_0084: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Span`1<System.Char> Z0.gbits::bitchars<T>(System.ReadOnlySpan`1<T>,System.Nullable`1<System.Int32>)
// Span<char> bitchars<uint>(ReadOnlySpan<uint> src, int maxlen)
// AggressiveInlining
Span<char> bitchars<uint>(ReadOnlySpan<uint> src, int maxlen)
{
    IL_0000: call System.Int32 zfunc::bitsize<T>()
    IL_0005: stloc.0
    IL_0006: ldarga.s src
    IL_0008: call System.Int32 System.ReadOnlySpan`1<T>::get_Length()
    IL_000D: stloc.1
    IL_000E: ldloc.1
    IL_000F: ldloc.0
    IL_0010: mul
    IL_0011: newarr System.Char
    IL_0016: call System.Span`1<System.Char> System.Span`1<System.Char>::op_Implicit(System.Char[])
    IL_001B: stloc.2
    IL_001C: ldarg.0
    IL_001D: call T& modreq(System.Runtime.InteropServices.InAttribute) zfunc::head<T>(System.ReadOnlySpan`1<T>)
    IL_0022: stloc.3
    IL_0023: ldc.i4.0
    IL_0024: stloc.s V_4
    IL_0026: br.s IL_0045
    IL_0028: ldloc.3
    IL_0029: ldloc.s V_4
    IL_002B: call T& modreq(System.Runtime.InteropServices.InAttribute) zfunc::skip<T>(T&,System.Int32)
    IL_0030: call System.ReadOnlySpan`1<System.Char> Z0.gbits::bitchars<T>(T&)
    IL_0035: ldloc.2
    IL_0036: ldloc.s V_4
    IL_0038: ldloc.0
    IL_0039: mul
    IL_003A: call System.Void Z0.SpanExtend::CopyTo<System.Char>(System.ReadOnlySpan`1<System.Char>,System.Span`1<System.Char>,System.Int32)
    IL_003F: ldloc.s V_4
    IL_0041: ldc.i4.1
    IL_0042: add
    IL_0043: stloc.s V_4
    IL_0045: ldloc.s V_4
    IL_0047: ldloc.1
    IL_0048: blt.s IL_0028
    IL_004A: ldarga.s maxlen
    IL_004C: call System.Boolean System.Nullable`1<System.Int32>::get_HasValue()
    IL_0051: brfalse.s IL_0073
    IL_0053: ldloca.s V_2
    IL_0055: call System.Int32 System.Span`1<System.Char>::get_Length()
    IL_005A: ldarg.1
    IL_005B: stloc.s V_5
    IL_005D: ldloca.s V_5
    IL_005F: call System.Int32 System.Nullable`1<System.Int32>::GetValueOrDefault()
    IL_0064: clt
    IL_0066: ldc.i4.0
    IL_0067: ceq
    IL_0069: ldloca.s V_5
    IL_006B: call System.Boolean System.Nullable`1<System.Int32>::get_HasValue()
    IL_0070: and
    IL_0071: brtrue.s IL_0075
    IL_0073: ldloc.2
    IL_0074: ret
    IL_0075: ldloca.s V_2
    IL_0077: ldc.i4.0
    IL_0078: ldarga.s maxlen
    IL_007A: call System.Int32 System.Nullable`1<System.Int32>::get_Value()
    IL_007F: call System.Span`1<System.Char> System.Span`1<System.Char>::Slice(System.Int32,System.Int32)
    IL_0084: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Span`1<System.Char> Z0.gbits::bitchars<T>(System.ReadOnlySpan`1<T>,System.Nullable`1<System.Int32>)
// Span<char> bitchars<int>(ReadOnlySpan<int> src, int maxlen)
// AggressiveInlining
Span<char> bitchars<int>(ReadOnlySpan<int> src, int maxlen)
{
    IL_0000: call System.Int32 zfunc::bitsize<T>()
    IL_0005: stloc.0
    IL_0006: ldarga.s src
    IL_0008: call System.Int32 System.ReadOnlySpan`1<T>::get_Length()
    IL_000D: stloc.1
    IL_000E: ldloc.1
    IL_000F: ldloc.0
    IL_0010: mul
    IL_0011: newarr System.Char
    IL_0016: call System.Span`1<System.Char> System.Span`1<System.Char>::op_Implicit(System.Char[])
    IL_001B: stloc.2
    IL_001C: ldarg.0
    IL_001D: call T& modreq(System.Runtime.InteropServices.InAttribute) zfunc::head<T>(System.ReadOnlySpan`1<T>)
    IL_0022: stloc.3
    IL_0023: ldc.i4.0
    IL_0024: stloc.s V_4
    IL_0026: br.s IL_0045
    IL_0028: ldloc.3
    IL_0029: ldloc.s V_4
    IL_002B: call T& modreq(System.Runtime.InteropServices.InAttribute) zfunc::skip<T>(T&,System.Int32)
    IL_0030: call System.ReadOnlySpan`1<System.Char> Z0.gbits::bitchars<T>(T&)
    IL_0035: ldloc.2
    IL_0036: ldloc.s V_4
    IL_0038: ldloc.0
    IL_0039: mul
    IL_003A: call System.Void Z0.SpanExtend::CopyTo<System.Char>(System.ReadOnlySpan`1<System.Char>,System.Span`1<System.Char>,System.Int32)
    IL_003F: ldloc.s V_4
    IL_0041: ldc.i4.1
    IL_0042: add
    IL_0043: stloc.s V_4
    IL_0045: ldloc.s V_4
    IL_0047: ldloc.1
    IL_0048: blt.s IL_0028
    IL_004A: ldarga.s maxlen
    IL_004C: call System.Boolean System.Nullable`1<System.Int32>::get_HasValue()
    IL_0051: brfalse.s IL_0073
    IL_0053: ldloca.s V_2
    IL_0055: call System.Int32 System.Span`1<System.Char>::get_Length()
    IL_005A: ldarg.1
    IL_005B: stloc.s V_5
    IL_005D: ldloca.s V_5
    IL_005F: call System.Int32 System.Nullable`1<System.Int32>::GetValueOrDefault()
    IL_0064: clt
    IL_0066: ldc.i4.0
    IL_0067: ceq
    IL_0069: ldloca.s V_5
    IL_006B: call System.Boolean System.Nullable`1<System.Int32>::get_HasValue()
    IL_0070: and
    IL_0071: brtrue.s IL_0075
    IL_0073: ldloc.2
    IL_0074: ret
    IL_0075: ldloca.s V_2
    IL_0077: ldc.i4.0
    IL_0078: ldarga.s maxlen
    IL_007A: call System.Int32 System.Nullable`1<System.Int32>::get_Value()
    IL_007F: call System.Span`1<System.Char> System.Span`1<System.Char>::Slice(System.Int32,System.Int32)
    IL_0084: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Span`1<System.Char> Z0.gbits::bitchars<T>(System.ReadOnlySpan`1<T>,System.Nullable`1<System.Int32>)
// Span<char> bitchars<ulong>(ReadOnlySpan<ulong> src, int maxlen)
// AggressiveInlining
Span<char> bitchars<ulong>(ReadOnlySpan<ulong> src, int maxlen)
{
    IL_0000: call System.Int32 zfunc::bitsize<T>()
    IL_0005: stloc.0
    IL_0006: ldarga.s src
    IL_0008: call System.Int32 System.ReadOnlySpan`1<T>::get_Length()
    IL_000D: stloc.1
    IL_000E: ldloc.1
    IL_000F: ldloc.0
    IL_0010: mul
    IL_0011: newarr System.Char
    IL_0016: call System.Span`1<System.Char> System.Span`1<System.Char>::op_Implicit(System.Char[])
    IL_001B: stloc.2
    IL_001C: ldarg.0
    IL_001D: call T& modreq(System.Runtime.InteropServices.InAttribute) zfunc::head<T>(System.ReadOnlySpan`1<T>)
    IL_0022: stloc.3
    IL_0023: ldc.i4.0
    IL_0024: stloc.s V_4
    IL_0026: br.s IL_0045
    IL_0028: ldloc.3
    IL_0029: ldloc.s V_4
    IL_002B: call T& modreq(System.Runtime.InteropServices.InAttribute) zfunc::skip<T>(T&,System.Int32)
    IL_0030: call System.ReadOnlySpan`1<System.Char> Z0.gbits::bitchars<T>(T&)
    IL_0035: ldloc.2
    IL_0036: ldloc.s V_4
    IL_0038: ldloc.0
    IL_0039: mul
    IL_003A: call System.Void Z0.SpanExtend::CopyTo<System.Char>(System.ReadOnlySpan`1<System.Char>,System.Span`1<System.Char>,System.Int32)
    IL_003F: ldloc.s V_4
    IL_0041: ldc.i4.1
    IL_0042: add
    IL_0043: stloc.s V_4
    IL_0045: ldloc.s V_4
    IL_0047: ldloc.1
    IL_0048: blt.s IL_0028
    IL_004A: ldarga.s maxlen
    IL_004C: call System.Boolean System.Nullable`1<System.Int32>::get_HasValue()
    IL_0051: brfalse.s IL_0073
    IL_0053: ldloca.s V_2
    IL_0055: call System.Int32 System.Span`1<System.Char>::get_Length()
    IL_005A: ldarg.1
    IL_005B: stloc.s V_5
    IL_005D: ldloca.s V_5
    IL_005F: call System.Int32 System.Nullable`1<System.Int32>::GetValueOrDefault()
    IL_0064: clt
    IL_0066: ldc.i4.0
    IL_0067: ceq
    IL_0069: ldloca.s V_5
    IL_006B: call System.Boolean System.Nullable`1<System.Int32>::get_HasValue()
    IL_0070: and
    IL_0071: brtrue.s IL_0075
    IL_0073: ldloc.2
    IL_0074: ret
    IL_0075: ldloca.s V_2
    IL_0077: ldc.i4.0
    IL_0078: ldarga.s maxlen
    IL_007A: call System.Int32 System.Nullable`1<System.Int32>::get_Value()
    IL_007F: call System.Span`1<System.Char> System.Span`1<System.Char>::Slice(System.Int32,System.Int32)
    IL_0084: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Span`1<System.Char> Z0.gbits::bitchars<T>(System.ReadOnlySpan`1<T>,System.Nullable`1<System.Int32>)
// Span<char> bitchars<long>(ReadOnlySpan<long> src, int maxlen)
// AggressiveInlining
Span<char> bitchars<long>(ReadOnlySpan<long> src, int maxlen)
{
    IL_0000: call System.Int32 zfunc::bitsize<T>()
    IL_0005: stloc.0
    IL_0006: ldarga.s src
    IL_0008: call System.Int32 System.ReadOnlySpan`1<T>::get_Length()
    IL_000D: stloc.1
    IL_000E: ldloc.1
    IL_000F: ldloc.0
    IL_0010: mul
    IL_0011: newarr System.Char
    IL_0016: call System.Span`1<System.Char> System.Span`1<System.Char>::op_Implicit(System.Char[])
    IL_001B: stloc.2
    IL_001C: ldarg.0
    IL_001D: call T& modreq(System.Runtime.InteropServices.InAttribute) zfunc::head<T>(System.ReadOnlySpan`1<T>)
    IL_0022: stloc.3
    IL_0023: ldc.i4.0
    IL_0024: stloc.s V_4
    IL_0026: br.s IL_0045
    IL_0028: ldloc.3
    IL_0029: ldloc.s V_4
    IL_002B: call T& modreq(System.Runtime.InteropServices.InAttribute) zfunc::skip<T>(T&,System.Int32)
    IL_0030: call System.ReadOnlySpan`1<System.Char> Z0.gbits::bitchars<T>(T&)
    IL_0035: ldloc.2
    IL_0036: ldloc.s V_4
    IL_0038: ldloc.0
    IL_0039: mul
    IL_003A: call System.Void Z0.SpanExtend::CopyTo<System.Char>(System.ReadOnlySpan`1<System.Char>,System.Span`1<System.Char>,System.Int32)
    IL_003F: ldloc.s V_4
    IL_0041: ldc.i4.1
    IL_0042: add
    IL_0043: stloc.s V_4
    IL_0045: ldloc.s V_4
    IL_0047: ldloc.1
    IL_0048: blt.s IL_0028
    IL_004A: ldarga.s maxlen
    IL_004C: call System.Boolean System.Nullable`1<System.Int32>::get_HasValue()
    IL_0051: brfalse.s IL_0073
    IL_0053: ldloca.s V_2
    IL_0055: call System.Int32 System.Span`1<System.Char>::get_Length()
    IL_005A: ldarg.1
    IL_005B: stloc.s V_5
    IL_005D: ldloca.s V_5
    IL_005F: call System.Int32 System.Nullable`1<System.Int32>::GetValueOrDefault()
    IL_0064: clt
    IL_0066: ldc.i4.0
    IL_0067: ceq
    IL_0069: ldloca.s V_5
    IL_006B: call System.Boolean System.Nullable`1<System.Int32>::get_HasValue()
    IL_0070: and
    IL_0071: brtrue.s IL_0075
    IL_0073: ldloc.2
    IL_0074: ret
    IL_0075: ldloca.s V_2
    IL_0077: ldc.i4.0
    IL_0078: ldarga.s maxlen
    IL_007A: call System.Int32 System.Nullable`1<System.Int32>::get_Value()
    IL_007F: call System.Span`1<System.Char> System.Span`1<System.Char>::Slice(System.Int32,System.Int32)
    IL_0084: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Span`1<System.Char> Z0.gbits::bitchars<T>(System.ReadOnlySpan`1<T>,System.Nullable`1<System.Int32>)
// Span<char> bitchars<float>(ReadOnlySpan<float> src, int maxlen)
// AggressiveInlining
Span<char> bitchars<float>(ReadOnlySpan<float> src, int maxlen)
{
    IL_0000: call System.Int32 zfunc::bitsize<T>()
    IL_0005: stloc.0
    IL_0006: ldarga.s src
    IL_0008: call System.Int32 System.ReadOnlySpan`1<T>::get_Length()
    IL_000D: stloc.1
    IL_000E: ldloc.1
    IL_000F: ldloc.0
    IL_0010: mul
    IL_0011: newarr System.Char
    IL_0016: call System.Span`1<System.Char> System.Span`1<System.Char>::op_Implicit(System.Char[])
    IL_001B: stloc.2
    IL_001C: ldarg.0
    IL_001D: call T& modreq(System.Runtime.InteropServices.InAttribute) zfunc::head<T>(System.ReadOnlySpan`1<T>)
    IL_0022: stloc.3
    IL_0023: ldc.i4.0
    IL_0024: stloc.s V_4
    IL_0026: br.s IL_0045
    IL_0028: ldloc.3
    IL_0029: ldloc.s V_4
    IL_002B: call T& modreq(System.Runtime.InteropServices.InAttribute) zfunc::skip<T>(T&,System.Int32)
    IL_0030: call System.ReadOnlySpan`1<System.Char> Z0.gbits::bitchars<T>(T&)
    IL_0035: ldloc.2
    IL_0036: ldloc.s V_4
    IL_0038: ldloc.0
    IL_0039: mul
    IL_003A: call System.Void Z0.SpanExtend::CopyTo<System.Char>(System.ReadOnlySpan`1<System.Char>,System.Span`1<System.Char>,System.Int32)
    IL_003F: ldloc.s V_4
    IL_0041: ldc.i4.1
    IL_0042: add
    IL_0043: stloc.s V_4
    IL_0045: ldloc.s V_4
    IL_0047: ldloc.1
    IL_0048: blt.s IL_0028
    IL_004A: ldarga.s maxlen
    IL_004C: call System.Boolean System.Nullable`1<System.Int32>::get_HasValue()
    IL_0051: brfalse.s IL_0073
    IL_0053: ldloca.s V_2
    IL_0055: call System.Int32 System.Span`1<System.Char>::get_Length()
    IL_005A: ldarg.1
    IL_005B: stloc.s V_5
    IL_005D: ldloca.s V_5
    IL_005F: call System.Int32 System.Nullable`1<System.Int32>::GetValueOrDefault()
    IL_0064: clt
    IL_0066: ldc.i4.0
    IL_0067: ceq
    IL_0069: ldloca.s V_5
    IL_006B: call System.Boolean System.Nullable`1<System.Int32>::get_HasValue()
    IL_0070: and
    IL_0071: brtrue.s IL_0075
    IL_0073: ldloc.2
    IL_0074: ret
    IL_0075: ldloca.s V_2
    IL_0077: ldc.i4.0
    IL_0078: ldarga.s maxlen
    IL_007A: call System.Int32 System.Nullable`1<System.Int32>::get_Value()
    IL_007F: call System.Span`1<System.Char> System.Span`1<System.Char>::Slice(System.Int32,System.Int32)
    IL_0084: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Span`1<System.Char> Z0.gbits::bitchars<T>(System.ReadOnlySpan`1<T>,System.Nullable`1<System.Int32>)
// Span<char> bitchars<double>(ReadOnlySpan<double> src, int maxlen)
// AggressiveInlining
Span<char> bitchars<double>(ReadOnlySpan<double> src, int maxlen)
{
    IL_0000: call System.Int32 zfunc::bitsize<T>()
    IL_0005: stloc.0
    IL_0006: ldarga.s src
    IL_0008: call System.Int32 System.ReadOnlySpan`1<T>::get_Length()
    IL_000D: stloc.1
    IL_000E: ldloc.1
    IL_000F: ldloc.0
    IL_0010: mul
    IL_0011: newarr System.Char
    IL_0016: call System.Span`1<System.Char> System.Span`1<System.Char>::op_Implicit(System.Char[])
    IL_001B: stloc.2
    IL_001C: ldarg.0
    IL_001D: call T& modreq(System.Runtime.InteropServices.InAttribute) zfunc::head<T>(System.ReadOnlySpan`1<T>)
    IL_0022: stloc.3
    IL_0023: ldc.i4.0
    IL_0024: stloc.s V_4
    IL_0026: br.s IL_0045
    IL_0028: ldloc.3
    IL_0029: ldloc.s V_4
    IL_002B: call T& modreq(System.Runtime.InteropServices.InAttribute) zfunc::skip<T>(T&,System.Int32)
    IL_0030: call System.ReadOnlySpan`1<System.Char> Z0.gbits::bitchars<T>(T&)
    IL_0035: ldloc.2
    IL_0036: ldloc.s V_4
    IL_0038: ldloc.0
    IL_0039: mul
    IL_003A: call System.Void Z0.SpanExtend::CopyTo<System.Char>(System.ReadOnlySpan`1<System.Char>,System.Span`1<System.Char>,System.Int32)
    IL_003F: ldloc.s V_4
    IL_0041: ldc.i4.1
    IL_0042: add
    IL_0043: stloc.s V_4
    IL_0045: ldloc.s V_4
    IL_0047: ldloc.1
    IL_0048: blt.s IL_0028
    IL_004A: ldarga.s maxlen
    IL_004C: call System.Boolean System.Nullable`1<System.Int32>::get_HasValue()
    IL_0051: brfalse.s IL_0073
    IL_0053: ldloca.s V_2
    IL_0055: call System.Int32 System.Span`1<System.Char>::get_Length()
    IL_005A: ldarg.1
    IL_005B: stloc.s V_5
    IL_005D: ldloca.s V_5
    IL_005F: call System.Int32 System.Nullable`1<System.Int32>::GetValueOrDefault()
    IL_0064: clt
    IL_0066: ldc.i4.0
    IL_0067: ceq
    IL_0069: ldloca.s V_5
    IL_006B: call System.Boolean System.Nullable`1<System.Int32>::get_HasValue()
    IL_0070: and
    IL_0071: brtrue.s IL_0075
    IL_0073: ldloc.2
    IL_0074: ret
    IL_0075: ldloca.s V_2
    IL_0077: ldc.i4.0
    IL_0078: ldarga.s maxlen
    IL_007A: call System.Int32 System.Nullable`1<System.Int32>::get_Value()
    IL_007F: call System.Span`1<System.Char> System.Span`1<System.Char>::Slice(System.Int32,System.Int32)
    IL_0084: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Span`1<System.Char> Z0.gbits::bitchars<T>(System.Span`1<T>,System.Nullable`1<System.Int32>)
// Span<char> bitchars<byte>(Span<byte> src, int maxlen)
// AggressiveInlining
Span<char> bitchars<byte>(Span<byte> src, int maxlen)
{
    IL_0000: ldarg.0
    IL_0001: call System.ReadOnlySpan`1<T> Z0.SpanExtend::ReadOnly<T>(System.Span`1<T>)
    IL_0006: ldarg.1
    IL_0007: call System.Span`1<System.Char> Z0.gbits::bitchars<T>(System.ReadOnlySpan`1<T>,System.Nullable`1<System.Int32>)
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Span`1<System.Char> Z0.gbits::bitchars<T>(System.Span`1<T>,System.Nullable`1<System.Int32>)
// Span<char> bitchars<sbyte>(Span<sbyte> src, int maxlen)
// AggressiveInlining
Span<char> bitchars<sbyte>(Span<sbyte> src, int maxlen)
{
    IL_0000: ldarg.0
    IL_0001: call System.ReadOnlySpan`1<T> Z0.SpanExtend::ReadOnly<T>(System.Span`1<T>)
    IL_0006: ldarg.1
    IL_0007: call System.Span`1<System.Char> Z0.gbits::bitchars<T>(System.ReadOnlySpan`1<T>,System.Nullable`1<System.Int32>)
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Span`1<System.Char> Z0.gbits::bitchars<T>(System.Span`1<T>,System.Nullable`1<System.Int32>)
// Span<char> bitchars<ushort>(Span<ushort> src, int maxlen)
// AggressiveInlining
Span<char> bitchars<ushort>(Span<ushort> src, int maxlen)
{
    IL_0000: ldarg.0
    IL_0001: call System.ReadOnlySpan`1<T> Z0.SpanExtend::ReadOnly<T>(System.Span`1<T>)
    IL_0006: ldarg.1
    IL_0007: call System.Span`1<System.Char> Z0.gbits::bitchars<T>(System.ReadOnlySpan`1<T>,System.Nullable`1<System.Int32>)
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Span`1<System.Char> Z0.gbits::bitchars<T>(System.Span`1<T>,System.Nullable`1<System.Int32>)
// Span<char> bitchars<short>(Span<short> src, int maxlen)
// AggressiveInlining
Span<char> bitchars<short>(Span<short> src, int maxlen)
{
    IL_0000: ldarg.0
    IL_0001: call System.ReadOnlySpan`1<T> Z0.SpanExtend::ReadOnly<T>(System.Span`1<T>)
    IL_0006: ldarg.1
    IL_0007: call System.Span`1<System.Char> Z0.gbits::bitchars<T>(System.ReadOnlySpan`1<T>,System.Nullable`1<System.Int32>)
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Span`1<System.Char> Z0.gbits::bitchars<T>(System.Span`1<T>,System.Nullable`1<System.Int32>)
// Span<char> bitchars<uint>(Span<uint> src, int maxlen)
// AggressiveInlining
Span<char> bitchars<uint>(Span<uint> src, int maxlen)
{
    IL_0000: ldarg.0
    IL_0001: call System.ReadOnlySpan`1<T> Z0.SpanExtend::ReadOnly<T>(System.Span`1<T>)
    IL_0006: ldarg.1
    IL_0007: call System.Span`1<System.Char> Z0.gbits::bitchars<T>(System.ReadOnlySpan`1<T>,System.Nullable`1<System.Int32>)
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Span`1<System.Char> Z0.gbits::bitchars<T>(System.Span`1<T>,System.Nullable`1<System.Int32>)
// Span<char> bitchars<int>(Span<int> src, int maxlen)
// AggressiveInlining
Span<char> bitchars<int>(Span<int> src, int maxlen)
{
    IL_0000: ldarg.0
    IL_0001: call System.ReadOnlySpan`1<T> Z0.SpanExtend::ReadOnly<T>(System.Span`1<T>)
    IL_0006: ldarg.1
    IL_0007: call System.Span`1<System.Char> Z0.gbits::bitchars<T>(System.ReadOnlySpan`1<T>,System.Nullable`1<System.Int32>)
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Span`1<System.Char> Z0.gbits::bitchars<T>(System.Span`1<T>,System.Nullable`1<System.Int32>)
// Span<char> bitchars<ulong>(Span<ulong> src, int maxlen)
// AggressiveInlining
Span<char> bitchars<ulong>(Span<ulong> src, int maxlen)
{
    IL_0000: ldarg.0
    IL_0001: call System.ReadOnlySpan`1<T> Z0.SpanExtend::ReadOnly<T>(System.Span`1<T>)
    IL_0006: ldarg.1
    IL_0007: call System.Span`1<System.Char> Z0.gbits::bitchars<T>(System.ReadOnlySpan`1<T>,System.Nullable`1<System.Int32>)
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Span`1<System.Char> Z0.gbits::bitchars<T>(System.Span`1<T>,System.Nullable`1<System.Int32>)
// Span<char> bitchars<long>(Span<long> src, int maxlen)
// AggressiveInlining
Span<char> bitchars<long>(Span<long> src, int maxlen)
{
    IL_0000: ldarg.0
    IL_0001: call System.ReadOnlySpan`1<T> Z0.SpanExtend::ReadOnly<T>(System.Span`1<T>)
    IL_0006: ldarg.1
    IL_0007: call System.Span`1<System.Char> Z0.gbits::bitchars<T>(System.ReadOnlySpan`1<T>,System.Nullable`1<System.Int32>)
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Span`1<System.Char> Z0.gbits::bitchars<T>(System.Span`1<T>,System.Nullable`1<System.Int32>)
// Span<char> bitchars<float>(Span<float> src, int maxlen)
// AggressiveInlining
Span<char> bitchars<float>(Span<float> src, int maxlen)
{
    IL_0000: ldarg.0
    IL_0001: call System.ReadOnlySpan`1<T> Z0.SpanExtend::ReadOnly<T>(System.Span`1<T>)
    IL_0006: ldarg.1
    IL_0007: call System.Span`1<System.Char> Z0.gbits::bitchars<T>(System.ReadOnlySpan`1<T>,System.Nullable`1<System.Int32>)
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Span`1<System.Char> Z0.gbits::bitchars<T>(System.Span`1<T>,System.Nullable`1<System.Int32>)
// Span<char> bitchars<double>(Span<double> src, int maxlen)
// AggressiveInlining
Span<char> bitchars<double>(Span<double> src, int maxlen)
{
    IL_0000: ldarg.0
    IL_0001: call System.ReadOnlySpan`1<T> Z0.SpanExtend::ReadOnly<T>(System.Span`1<T>)
    IL_0006: ldarg.1
    IL_0007: call System.Span`1<System.Char> Z0.gbits::bitchars<T>(System.ReadOnlySpan`1<T>,System.Nullable`1<System.Int32>)
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
