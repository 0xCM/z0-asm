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
