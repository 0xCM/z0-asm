// Id := 100664355, Name := Z0.bit Z0.Logix.LogicOps::f15(Z0.bit,Z0.bit,Z0.bit)
// bit f15(bit a, bit b, bit c)
// AggressiveInlining
bit f15(bit a, bit b, bit c)
{
    IL_0000: ldarg.2
    IL_0001: ldarg.0
    IL_0002: ldarg.1
    IL_0003: call Z0.bit Z0.Logix.LogicOps::and(Z0.bit,Z0.bit)
    IL_0008: call Z0.bit Z0.Logix.LogicOps::nor(Z0.bit,Z0.bit)
    IL_000D: ret
}
