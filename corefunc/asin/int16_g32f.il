// Id := 100665612, Name := System.Int16& Z0.AsIn::int16<T>(T&)
// ref Int16& int16<float>(in float src)
// AggressiveInlining
ref Int16& int16<float>(in float src)
{
    IL_0000: ldarg.0
    IL_0001: call T& Z0.AsIn::asRef<T>(T&)
    IL_0006: call System.Int16& System.Runtime.CompilerServices.Unsafe::As<T,System.Int16>(T&)
    IL_000B: ret
}
