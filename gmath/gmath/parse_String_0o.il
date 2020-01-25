// Id := 100664129, Name := T Z0.gmath::parse<T>(System.String)
// double parse<double>(string src)
// AggressiveInlining
double parse<double>(string src)
{
    IL_0000: ldarg.0
    IL_0001: ldloca.s V_0
    IL_0003: call Z0.bit Z0.gmath::parse<T>(System.String,T&)
    IL_0008: call System.Boolean Z0.bit::op_Implicit(Z0.bit)
    IL_000D: brfalse.s IL_0011
    IL_000F: ldloc.0
    IL_0010: ret
    IL_0011: ldarg.0
    IL_0012: call T Z0.gmath::ParseError<T>(System.String)
    IL_0017: ret
}
