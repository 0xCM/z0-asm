// Id := 100663955, Name := T Z0.gmath::one<T>(T)
// int one<int>(int t)
// AggressiveInlining
int one<int>(int t)
{
    IL_0000: ldloca.s V_0
    IL_0002: initobj T
    IL_0008: ldloc.0
    IL_0009: call T zfunc::one<T>(T)
    IL_000E: ret
}
