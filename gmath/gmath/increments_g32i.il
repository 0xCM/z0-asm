// Id := 100664136, Name := System.Void Z0.gmath::increments<T>(System.Int32,T&)
// void increments<long>(int count, ref long dst)
// AggressiveInlining
void increments<long>(int count, ref long dst)
{
    IL_0000: ldc.i4.0
    IL_0001: stloc.0
    IL_0002: br.s IL_0023
    IL_0004: ldarg.1
    IL_0005: ldloc.0
    IL_0006: call T& zfunc::seek<T>(T&,System.Int32)
    IL_000B: ldloc.0
    IL_000C: ldloca.s V_1
    IL_000E: initobj T
    IL_0014: ldloc.1
    IL_0015: call T zfunc::convert<T>(System.Int32,T)
    IL_001A: stobj T
    IL_001F: ldloc.0
    IL_0020: ldc.i4.1
    IL_0021: add
    IL_0022: stloc.0
    IL_0023: ldloc.0
    IL_0024: ldarg.0
    IL_0025: blt.s IL_0004
    IL_0027: ret
}
