// Id := 100665603, Name := System.SByte& Z0.AsIn::int8<T>(T&)
// ref sbyte int8<double>(in double src)
// AggressiveInlining
ref sbyte int8<double>(in double src)
{
    IL_0000: ldarg.0
    IL_0001: call T& Z0.AsIn::asRef<T>(T&)
    IL_0006: call System.SByte& System.Runtime.CompilerServices.Unsafe::As<T,System.SByte>(T&)
    IL_000B: ret
}
