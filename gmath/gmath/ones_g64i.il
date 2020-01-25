// Id := 100663956, Name := T Z0.gmath::ones<T>(T)
// long ones<long>(long t)
// AggressiveInlining
long ones<long>(long t)
{
    IL_0000: ldloca.s V_0
    IL_0002: initobj T
    IL_0008: ldloc.0
    IL_0009: call T zfunc::ones<T>(T)
    IL_000E: ret
}
