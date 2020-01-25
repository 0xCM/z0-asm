// Id := 100664103, Name := T Z0.gmath::ltz<T>(T,T)
// uint ltz<uint>(uint a, uint b)
// AggressiveInlining
uint ltz<uint>(uint a, uint b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call Z0.bit Z0.gmath::lt<T>(T,T)
    IL_0007: call System.UInt32 Z0.bit::op_Explicit(Z0.bit)
    IL_000C: ldloca.s V_0
    IL_000E: initobj T
    IL_0014: ldloc.0
    IL_0015: call T zfunc::convert<T>(System.UInt32,T)
    IL_001A: ldloca.s V_0
    IL_001C: initobj T
    IL_0022: ldloc.0
    IL_0023: call T Z0.gmath::ones<T>(T)
    IL_0028: call T Z0.gmath::mul<T>(T,T)
    IL_002D: ret
}
