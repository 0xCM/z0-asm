// Id := 100664532, Name := T Z0.Logix.ScalarOps::ones<T>()
// long ones<long>()
// AggressiveInlining
long ones<long>()
{
    IL_0000: ldloca.s V_0
    IL_0002: initobj T
    IL_0008: ldloc.0
    IL_0009: call T Z0.gmath::maxval<T>(T)
    IL_000E: ret
}
