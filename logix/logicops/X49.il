// Id := 100664407, Name := Z0.bit Z0.Logix.LogicOps::f49(Z0.bit,Z0.bit,Z0.bit)
// bit f49(bit a, bit b, bit c)
// AggressiveInlining
bit f49(bit a, bit b, bit c)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: ldarg.2
    IL_0003: call Z0.bit Z0.Logix.LogicOps::xor(Z0.bit,Z0.bit)
    IL_0008: ldarg.0
    IL_0009: ldarg.2
    IL_000A: call Z0.bit Z0.Logix.LogicOps::nor(Z0.bit,Z0.bit)
    IL_000F: call Z0.bit Z0.Logix.LogicOps::select(Z0.bit,Z0.bit,Z0.bit)
    IL_0014: ret
}
