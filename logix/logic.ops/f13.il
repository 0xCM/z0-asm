// Id := 100664348, Name := Z0.bit Z0.Logix.LogicOps::f13(Z0.bit,Z0.bit,Z0.bit)
// bit f13(bit a, bit b, bit c)
// AggressiveInlining
bit f13(bit a, bit b, bit c)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: ldarg.2
    IL_0003: call Z0.bit Z0.Logix.LogicOps::and(Z0.bit,Z0.bit)
    IL_0008: call Z0.bit Z0.Logix.LogicOps::nor(Z0.bit,Z0.bit)
    IL_000D: ret
}
------------------------------------------------------------------------------------------------------------------------
