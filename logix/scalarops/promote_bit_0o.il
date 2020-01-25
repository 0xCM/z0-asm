// Id := 100664543, Name := T Z0.Logix.ScalarOps::promote<T>(Z0.bit)
// long promote<long>(bit src)
// AggressiveInlining
long promote<long>(bit src)
{
    IL_0000: ldarg.0
    IL_0001: call System.Boolean Z0.bit::op_Implicit(Z0.bit)
    IL_0006: brtrue.s IL_0012
    IL_0008: ldloca.s V_0
    IL_000A: initobj T
    IL_0010: ldloc.0
    IL_0011: ret
    IL_0012: call T Z0.Logix.ScalarOps::ones<T>()
    IL_0017: ret
}
