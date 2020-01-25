// Id := 100664379, Name := Z0.bit Z0.Logix.LogicOps::f2d(Z0.bit,Z0.bit,Z0.bit)
// bit f2d(bit a, bit b, bit c)
// AggressiveInlining
bit f2d(bit a, bit b, bit c)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call Z0.bit Z0.Logix.LogicOps::not(Z0.bit)
    IL_0008: call Z0.bit Z0.Logix.LogicOps::or(Z0.bit,Z0.bit)
    IL_000D: call Z0.bit Z0.Logix.LogicOps::xor(Z0.bit,Z0.bit)
    IL_0012: ret
}
