// Id := 100663419, Name := System.Byte Z0.Bits::mix(Z0.N0,System.Byte,System.Byte)
// byte mix(N0 parity, byte x, byte y)
// AggressiveInlining
byte mix(N0 parity, byte x, byte y)
{
    IL_0000: ldc.i4.s 85
    IL_0002: stloc.0
    IL_0003: ldarg.1
    IL_0004: ldloc.0
    IL_0005: call System.Byte Z0.Bits::select(System.Byte,System.Byte)
    IL_000A: ldc.i4.s 85
    IL_000C: call System.Byte Z0.Bits::project(System.Byte,System.Byte)
    IL_0011: stloc.1
    IL_0012: ldarg.2
    IL_0013: ldloc.0
    IL_0014: call System.Byte Z0.Bits::select(System.Byte,System.Byte)
    IL_0019: ldc.i4 170
    IL_001E: call System.Byte Z0.Bits::project(System.Byte,System.Byte)
    IL_0023: stloc.2
    IL_0024: ldloc.1
    IL_0025: ldloc.2
    IL_0026: or
    IL_0027: stloc.3
    IL_0028: ldloc.3
    IL_0029: conv.u1
    IL_002A: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663420, Name := System.Byte Z0.Bits::mix(Z0.N1,System.Byte,System.Byte)
// byte mix(N1 parity, byte x, byte y)
// AggressiveInlining
byte mix(N1 parity, byte x, byte y)
{
    IL_0000: ldc.i4 170
    IL_0005: stloc.0
    IL_0006: ldarg.1
    IL_0007: ldloc.0
    IL_0008: call System.Byte Z0.Bits::select(System.Byte,System.Byte)
    IL_000D: ldc.i4.s 85
    IL_000F: call System.Byte Z0.Bits::project(System.Byte,System.Byte)
    IL_0014: stloc.1
    IL_0015: ldarg.2
    IL_0016: ldloc.0
    IL_0017: call System.Byte Z0.Bits::select(System.Byte,System.Byte)
    IL_001C: ldc.i4 170
    IL_0021: call System.Byte Z0.Bits::project(System.Byte,System.Byte)
    IL_0026: stloc.2
    IL_0027: ldloc.1
    IL_0028: ldloc.2
    IL_0029: or
    IL_002A: stloc.3
    IL_002B: ldloc.3
    IL_002C: conv.u1
    IL_002D: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663421, Name := System.UInt16 Z0.Bits::mix(Z0.N0,System.UInt16,System.UInt16)
// ushort mix(N0 parity, ushort x, ushort y)
// AggressiveInlining
ushort mix(N0 parity, ushort x, ushort y)
{
    IL_0000: ldc.i4 21845
    IL_0005: stloc.0
    IL_0006: ldarg.1
    IL_0007: ldloc.0
    IL_0008: call System.UInt16 Z0.Bits::select(System.UInt16,System.UInt16)
    IL_000D: ldc.i4 21845
    IL_0012: call System.UInt16 Z0.Bits::project(System.UInt16,System.UInt16)
    IL_0017: stloc.1
    IL_0018: ldarg.2
    IL_0019: ldloc.0
    IL_001A: call System.UInt16 Z0.Bits::select(System.UInt16,System.UInt16)
    IL_001F: ldc.i4 43690
    IL_0024: call System.UInt16 Z0.Bits::project(System.UInt16,System.UInt16)
    IL_0029: stloc.2
    IL_002A: ldloc.1
    IL_002B: ldloc.2
    IL_002C: or
    IL_002D: stloc.3
    IL_002E: ldloc.3
    IL_002F: conv.u2
    IL_0030: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663422, Name := System.UInt16 Z0.Bits::mix(Z0.N1,System.UInt16,System.UInt16)
// ushort mix(N1 parity, ushort x, ushort y)
// AggressiveInlining
ushort mix(N1 parity, ushort x, ushort y)
{
    IL_0000: ldc.i4 43690
    IL_0005: stloc.0
    IL_0006: ldarg.1
    IL_0007: ldloc.0
    IL_0008: call System.UInt16 Z0.Bits::select(System.UInt16,System.UInt16)
    IL_000D: ldc.i4 21845
    IL_0012: call System.UInt16 Z0.Bits::project(System.UInt16,System.UInt16)
    IL_0017: stloc.1
    IL_0018: ldarg.2
    IL_0019: ldloc.0
    IL_001A: call System.UInt16 Z0.Bits::select(System.UInt16,System.UInt16)
    IL_001F: ldc.i4 43690
    IL_0024: call System.UInt16 Z0.Bits::project(System.UInt16,System.UInt16)
    IL_0029: stloc.2
    IL_002A: ldloc.1
    IL_002B: ldloc.2
    IL_002C: or
    IL_002D: stloc.3
    IL_002E: ldloc.3
    IL_002F: conv.u2
    IL_0030: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663423, Name := System.UInt32 Z0.Bits::mix(Z0.N0,System.UInt32,System.UInt32)
// uint mix(N0 parity, uint x, uint y)
// AggressiveInlining
uint mix(N0 parity, uint x, uint y)
{
    IL_0000: ldc.i4 1431655765
    IL_0005: stloc.0
    IL_0006: ldarg.1
    IL_0007: ldloc.0
    IL_0008: call System.UInt32 Z0.Bits::select(System.UInt32,System.UInt32)
    IL_000D: ldc.i4 1431655765
    IL_0012: call System.UInt32 Z0.Bits::project(System.UInt32,System.UInt32)
    IL_0017: stloc.1
    IL_0018: ldarg.2
    IL_0019: ldloc.0
    IL_001A: call System.UInt32 Z0.Bits::select(System.UInt32,System.UInt32)
    IL_001F: ldc.i4 -1431655766
    IL_0024: call System.UInt32 Z0.Bits::project(System.UInt32,System.UInt32)
    IL_0029: stloc.2
    IL_002A: ldloc.1
    IL_002B: ldloc.2
    IL_002C: or
    IL_002D: stloc.3
    IL_002E: ldloc.3
    IL_002F: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663424, Name := System.UInt32 Z0.Bits::mix(Z0.N1,System.UInt32,System.UInt32)
// uint mix(N1 parity, uint x, uint y)
// AggressiveInlining
uint mix(N1 parity, uint x, uint y)
{
    IL_0000: ldc.i4 -1431655766
    IL_0005: stloc.0
    IL_0006: ldarg.1
    IL_0007: ldloc.0
    IL_0008: call System.UInt32 Z0.Bits::select(System.UInt32,System.UInt32)
    IL_000D: ldc.i4 1431655765
    IL_0012: call System.UInt32 Z0.Bits::project(System.UInt32,System.UInt32)
    IL_0017: stloc.1
    IL_0018: ldarg.2
    IL_0019: ldloc.0
    IL_001A: call System.UInt32 Z0.Bits::select(System.UInt32,System.UInt32)
    IL_001F: ldc.i4 -1431655766
    IL_0024: call System.UInt32 Z0.Bits::project(System.UInt32,System.UInt32)
    IL_0029: stloc.2
    IL_002A: ldloc.1
    IL_002B: ldloc.2
    IL_002C: or
    IL_002D: stloc.3
    IL_002E: ldloc.3
    IL_002F: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663425, Name := System.UInt64 Z0.Bits::mix(Z0.N0,System.UInt64,System.UInt64)
// ulong mix(N0 parity, ulong x, ulong y)
// AggressiveInlining
ulong mix(N0 parity, ulong x, ulong y)
{
    IL_0000: ldc.i8 6148914691236517205
    IL_0009: stloc.0
    IL_000A: ldarg.1
    IL_000B: ldloc.0
    IL_000C: call System.UInt64 Z0.Bits::select(System.UInt64,System.UInt64)
    IL_0011: ldc.i8 6148914691236517205
    IL_001A: call System.UInt64 Z0.Bits::project(System.UInt64,System.UInt64)
    IL_001F: stloc.1
    IL_0020: ldarg.2
    IL_0021: ldloc.0
    IL_0022: call System.UInt64 Z0.Bits::select(System.UInt64,System.UInt64)
    IL_0027: ldc.i8 -6148914691236517206
    IL_0030: call System.UInt64 Z0.Bits::project(System.UInt64,System.UInt64)
    IL_0035: stloc.2
    IL_0036: ldloc.1
    IL_0037: ldloc.2
    IL_0038: or
    IL_0039: stloc.3
    IL_003A: ldloc.3
    IL_003B: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663426, Name := System.UInt64 Z0.Bits::mix(Z0.N1,System.UInt64,System.UInt64)
// ulong mix(N1 parity, ulong x, ulong y)
// AggressiveInlining
ulong mix(N1 parity, ulong x, ulong y)
{
    IL_0000: ldc.i8 -6148914691236517206
    IL_0009: stloc.0
    IL_000A: ldarg.1
    IL_000B: ldloc.0
    IL_000C: call System.UInt64 Z0.Bits::select(System.UInt64,System.UInt64)
    IL_0011: ldc.i8 6148914691236517205
    IL_001A: call System.UInt64 Z0.Bits::project(System.UInt64,System.UInt64)
    IL_001F: stloc.1
    IL_0020: ldarg.2
    IL_0021: ldloc.0
    IL_0022: call System.UInt64 Z0.Bits::select(System.UInt64,System.UInt64)
    IL_0027: ldc.i8 -6148914691236517206
    IL_0030: call System.UInt64 Z0.Bits::project(System.UInt64,System.UInt64)
    IL_0035: stloc.2
    IL_0036: ldloc.1
    IL_0037: ldloc.2
    IL_0038: or
    IL_0039: stloc.3
    IL_003A: ldloc.3
    IL_003B: ret
}
------------------------------------------------------------------------------------------------------------------------
