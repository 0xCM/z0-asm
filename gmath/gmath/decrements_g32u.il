// Id := 100664135, Name := System.Void Z0.gmath::decrements<T>(T,System.Int32,T&)
// void decrements<uint>(uint first, int count, ref uint dst)
// AggressiveInlining
void decrements<uint>(uint first, int count, ref uint dst)
{
    IL_0000: ldc.i4.0
    IL_0001: stloc.0
    IL_0002: br.s IL_0029
    IL_0004: ldarg.2
    IL_0005: ldloc.0
    IL_0006: call T& zfunc::seek<T>(T&,System.Int32)
    IL_000B: ldarg.0
    IL_000C: ldloc.0
    IL_000D: ldloca.s V_1
    IL_000F: initobj T
    IL_0015: ldloc.1
    IL_0016: call T zfunc::convert<T>(System.Int32,T)
    IL_001B: call T Z0.gmath::sub<T>(T,T)
    IL_0020: stobj T
    IL_0025: ldloc.0
    IL_0026: ldc.i4.1
    IL_0027: add
    IL_0028: stloc.0
    IL_0029: ldloc.0
    IL_002A: ldarg.1
    IL_002B: blt.s IL_0004
    IL_002D: ret
}
