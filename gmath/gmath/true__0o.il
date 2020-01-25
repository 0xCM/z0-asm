// Id := 100664028, Name := T Z0.gmath::true<T>()
// long true<long>()
// AggressiveInlining
long true<long>()
{
    IL_0000: ldloca.s V_0
    IL_0002: initobj T
    IL_0008: ldloc.0
    IL_0009: call T Z0.gmath::ones<T>(T)
    IL_000E: ret
}
