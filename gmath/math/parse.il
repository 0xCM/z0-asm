// Id := 100663776, Name := Z0.bit Z0.math::parse(System.String,System.SByte&)
// bit parse(string src, out sbyte dst)
// AggressiveInlining
bit parse(string src, out sbyte dst)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Boolean System.SByte::TryParse(System.String,System.SByte&)
    IL_0007: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663777, Name := Z0.bit Z0.math::parse(System.String,System.Byte&)
// bit parse(string src, out byte dst)
// AggressiveInlining
bit parse(string src, out byte dst)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Boolean System.Byte::TryParse(System.String,System.Byte&)
    IL_0007: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663778, Name := Z0.bit Z0.math::parse(System.String,System.Int16&)
// bit parse(string src, out short dst)
// AggressiveInlining
bit parse(string src, out short dst)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Boolean System.Int16::TryParse(System.String,System.Int16&)
    IL_0007: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663779, Name := Z0.bit Z0.math::parse(System.String,System.UInt16&)
// bit parse(string src, out ushort dst)
// AggressiveInlining
bit parse(string src, out ushort dst)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Boolean System.UInt16::TryParse(System.String,System.UInt16&)
    IL_0007: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663780, Name := Z0.bit Z0.math::parse(System.String,System.Int32&)
// bit parse(string src, out int dst)
// AggressiveInlining
bit parse(string src, out int dst)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Boolean System.Int32::TryParse(System.String,System.Int32&)
    IL_0007: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663781, Name := Z0.bit Z0.math::parse(System.String,System.UInt32&)
// bit parse(string src, out uint dst)
// AggressiveInlining
bit parse(string src, out uint dst)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Boolean System.UInt32::TryParse(System.String,System.UInt32&)
    IL_0007: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663782, Name := Z0.bit Z0.math::parse(System.String,System.Int64&)
// bit parse(string src, out long dst)
// AggressiveInlining
bit parse(string src, out long dst)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Boolean System.Int64::TryParse(System.String,System.Int64&)
    IL_0007: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663783, Name := Z0.bit Z0.math::parse(System.String,System.UInt64&)
// bit parse(string src, out ulong dst)
// AggressiveInlining
bit parse(string src, out ulong dst)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Boolean System.UInt64::TryParse(System.String,System.UInt64&)
    IL_0007: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663784, Name := Z0.bit Z0.math::parse(System.String,System.Single&)
// bit parse(string src, out float dst)
// AggressiveInlining
bit parse(string src, out float dst)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Boolean System.Single::TryParse(System.String,System.Single&)
    IL_0007: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
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
------------------------------------------------------------------------------------------------------------------------
