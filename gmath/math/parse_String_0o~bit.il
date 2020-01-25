// Id := 100663785, Name := Z0.bit Z0.math::parse(System.String,System.Double&)
// bit parse(string src, out double dst)
// AggressiveInlining
bit parse(string src, out double dst)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Boolean System.Double::TryParse(System.String,System.Double&)
    IL_0007: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_000C: ret
}
