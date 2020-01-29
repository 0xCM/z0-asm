// System.Void Z0.gmath::steps<T>(T,T,System.Int32,T&)
// void steps<byte>(byte first, byte step, int count, ref byte dst)
// AggressiveInlining
void steps<byte>(byte first, byte step, int count, ref byte dst)
{
    IL_0000: ldc.i4.0
    IL_0001: stloc.0
    IL_0002: br.s IL_002F
    IL_0004: ldarg.3
    IL_0005: ldloc.0
    IL_0006: call T& zfunc::seek<T>(T&,System.Int32)
    IL_000B: ldarg.0
    IL_000C: ldloc.0
    IL_000D: ldloca.s V_1
    IL_000F: initobj T
    IL_0015: ldloc.1
    IL_0016: call T zfunc::convert<T>(System.Int32,T)
    IL_001B: ldarg.1
    IL_001C: call T Z0.gmath::mul<T>(T,T)
    IL_0021: call T Z0.gmath::add<T>(T,T)
    IL_0026: stobj T
    IL_002B: ldloc.0
    IL_002C: ldc.i4.1
    IL_002D: add
    IL_002E: stloc.0
    IL_002F: ldloc.0
    IL_0030: ldarg.2
    IL_0031: blt.s IL_0004
    IL_0033: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Void Z0.gmath::steps<T>(T,T,System.Int32,T&)
// void steps<sbyte>(sbyte first, sbyte step, int count, ref sbyte dst)
// AggressiveInlining
void steps<sbyte>(sbyte first, sbyte step, int count, ref sbyte dst)
{
    IL_0000: ldc.i4.0
    IL_0001: stloc.0
    IL_0002: br.s IL_002F
    IL_0004: ldarg.3
    IL_0005: ldloc.0
    IL_0006: call T& zfunc::seek<T>(T&,System.Int32)
    IL_000B: ldarg.0
    IL_000C: ldloc.0
    IL_000D: ldloca.s V_1
    IL_000F: initobj T
    IL_0015: ldloc.1
    IL_0016: call T zfunc::convert<T>(System.Int32,T)
    IL_001B: ldarg.1
    IL_001C: call T Z0.gmath::mul<T>(T,T)
    IL_0021: call T Z0.gmath::add<T>(T,T)
    IL_0026: stobj T
    IL_002B: ldloc.0
    IL_002C: ldc.i4.1
    IL_002D: add
    IL_002E: stloc.0
    IL_002F: ldloc.0
    IL_0030: ldarg.2
    IL_0031: blt.s IL_0004
    IL_0033: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Void Z0.gmath::steps<T>(T,T,System.Int32,T&)
// void steps<ushort>(ushort first, ushort step, int count, ref ushort dst)
// AggressiveInlining
void steps<ushort>(ushort first, ushort step, int count, ref ushort dst)
{
    IL_0000: ldc.i4.0
    IL_0001: stloc.0
    IL_0002: br.s IL_002F
    IL_0004: ldarg.3
    IL_0005: ldloc.0
    IL_0006: call T& zfunc::seek<T>(T&,System.Int32)
    IL_000B: ldarg.0
    IL_000C: ldloc.0
    IL_000D: ldloca.s V_1
    IL_000F: initobj T
    IL_0015: ldloc.1
    IL_0016: call T zfunc::convert<T>(System.Int32,T)
    IL_001B: ldarg.1
    IL_001C: call T Z0.gmath::mul<T>(T,T)
    IL_0021: call T Z0.gmath::add<T>(T,T)
    IL_0026: stobj T
    IL_002B: ldloc.0
    IL_002C: ldc.i4.1
    IL_002D: add
    IL_002E: stloc.0
    IL_002F: ldloc.0
    IL_0030: ldarg.2
    IL_0031: blt.s IL_0004
    IL_0033: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Void Z0.gmath::steps<T>(T,T,System.Int32,T&)
// void steps<short>(short first, short step, int count, ref short dst)
// AggressiveInlining
void steps<short>(short first, short step, int count, ref short dst)
{
    IL_0000: ldc.i4.0
    IL_0001: stloc.0
    IL_0002: br.s IL_002F
    IL_0004: ldarg.3
    IL_0005: ldloc.0
    IL_0006: call T& zfunc::seek<T>(T&,System.Int32)
    IL_000B: ldarg.0
    IL_000C: ldloc.0
    IL_000D: ldloca.s V_1
    IL_000F: initobj T
    IL_0015: ldloc.1
    IL_0016: call T zfunc::convert<T>(System.Int32,T)
    IL_001B: ldarg.1
    IL_001C: call T Z0.gmath::mul<T>(T,T)
    IL_0021: call T Z0.gmath::add<T>(T,T)
    IL_0026: stobj T
    IL_002B: ldloc.0
    IL_002C: ldc.i4.1
    IL_002D: add
    IL_002E: stloc.0
    IL_002F: ldloc.0
    IL_0030: ldarg.2
    IL_0031: blt.s IL_0004
    IL_0033: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Void Z0.gmath::steps<T>(T,T,System.Int32,T&)
// void steps<uint>(uint first, uint step, int count, ref uint dst)
// AggressiveInlining
void steps<uint>(uint first, uint step, int count, ref uint dst)
{
    IL_0000: ldc.i4.0
    IL_0001: stloc.0
    IL_0002: br.s IL_002F
    IL_0004: ldarg.3
    IL_0005: ldloc.0
    IL_0006: call T& zfunc::seek<T>(T&,System.Int32)
    IL_000B: ldarg.0
    IL_000C: ldloc.0
    IL_000D: ldloca.s V_1
    IL_000F: initobj T
    IL_0015: ldloc.1
    IL_0016: call T zfunc::convert<T>(System.Int32,T)
    IL_001B: ldarg.1
    IL_001C: call T Z0.gmath::mul<T>(T,T)
    IL_0021: call T Z0.gmath::add<T>(T,T)
    IL_0026: stobj T
    IL_002B: ldloc.0
    IL_002C: ldc.i4.1
    IL_002D: add
    IL_002E: stloc.0
    IL_002F: ldloc.0
    IL_0030: ldarg.2
    IL_0031: blt.s IL_0004
    IL_0033: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Void Z0.gmath::steps<T>(T,T,System.Int32,T&)
// void steps<int>(int first, int step, int count, ref int dst)
// AggressiveInlining
void steps<int>(int first, int step, int count, ref int dst)
{
    IL_0000: ldc.i4.0
    IL_0001: stloc.0
    IL_0002: br.s IL_002F
    IL_0004: ldarg.3
    IL_0005: ldloc.0
    IL_0006: call T& zfunc::seek<T>(T&,System.Int32)
    IL_000B: ldarg.0
    IL_000C: ldloc.0
    IL_000D: ldloca.s V_1
    IL_000F: initobj T
    IL_0015: ldloc.1
    IL_0016: call T zfunc::convert<T>(System.Int32,T)
    IL_001B: ldarg.1
    IL_001C: call T Z0.gmath::mul<T>(T,T)
    IL_0021: call T Z0.gmath::add<T>(T,T)
    IL_0026: stobj T
    IL_002B: ldloc.0
    IL_002C: ldc.i4.1
    IL_002D: add
    IL_002E: stloc.0
    IL_002F: ldloc.0
    IL_0030: ldarg.2
    IL_0031: blt.s IL_0004
    IL_0033: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Void Z0.gmath::steps<T>(T,T,System.Int32,T&)
// void steps<ulong>(ulong first, ulong step, int count, ref ulong dst)
// AggressiveInlining
void steps<ulong>(ulong first, ulong step, int count, ref ulong dst)
{
    IL_0000: ldc.i4.0
    IL_0001: stloc.0
    IL_0002: br.s IL_002F
    IL_0004: ldarg.3
    IL_0005: ldloc.0
    IL_0006: call T& zfunc::seek<T>(T&,System.Int32)
    IL_000B: ldarg.0
    IL_000C: ldloc.0
    IL_000D: ldloca.s V_1
    IL_000F: initobj T
    IL_0015: ldloc.1
    IL_0016: call T zfunc::convert<T>(System.Int32,T)
    IL_001B: ldarg.1
    IL_001C: call T Z0.gmath::mul<T>(T,T)
    IL_0021: call T Z0.gmath::add<T>(T,T)
    IL_0026: stobj T
    IL_002B: ldloc.0
    IL_002C: ldc.i4.1
    IL_002D: add
    IL_002E: stloc.0
    IL_002F: ldloc.0
    IL_0030: ldarg.2
    IL_0031: blt.s IL_0004
    IL_0033: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Void Z0.gmath::steps<T>(T,T,System.Int32,T&)
// void steps<long>(long first, long step, int count, ref long dst)
// AggressiveInlining
void steps<long>(long first, long step, int count, ref long dst)
{
    IL_0000: ldc.i4.0
    IL_0001: stloc.0
    IL_0002: br.s IL_002F
    IL_0004: ldarg.3
    IL_0005: ldloc.0
    IL_0006: call T& zfunc::seek<T>(T&,System.Int32)
    IL_000B: ldarg.0
    IL_000C: ldloc.0
    IL_000D: ldloca.s V_1
    IL_000F: initobj T
    IL_0015: ldloc.1
    IL_0016: call T zfunc::convert<T>(System.Int32,T)
    IL_001B: ldarg.1
    IL_001C: call T Z0.gmath::mul<T>(T,T)
    IL_0021: call T Z0.gmath::add<T>(T,T)
    IL_0026: stobj T
    IL_002B: ldloc.0
    IL_002C: ldc.i4.1
    IL_002D: add
    IL_002E: stloc.0
    IL_002F: ldloc.0
    IL_0030: ldarg.2
    IL_0031: blt.s IL_0004
    IL_0033: ret
}
------------------------------------------------------------------------------------------------------------------------
