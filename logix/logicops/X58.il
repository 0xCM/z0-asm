// Id := 100664422, Name := Z0.bit Z0.Logix.LogicOps::f58(Z0.bit,Z0.bit,Z0.bit)
// bit f58(bit a, bit b, bit c)
// AggressiveInlining
bit f58(bit a, bit b, bit c)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call Z0.bit Z0.Logix.LogicOps::or(Z0.bit,Z0.bit)
    IL_0007: ldarg.0
    IL_0008: ldarg.2
    IL_0009: call Z0.bit Z0.Logix.LogicOps::xor(Z0.bit,Z0.bit)
    IL_000E: call Z0.bit Z0.Logix.LogicOps::and(Z0.bit,Z0.bit)
    IL_0013: ret
}
