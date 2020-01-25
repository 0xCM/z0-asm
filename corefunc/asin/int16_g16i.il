// Id := 100665605, Name := System.Int16& Z0.AsIn::int16<T>(T&)
// ref Int16& int16<Int16>(in Int16 src)
// AggressiveInlining
ref Int16& int16<Int16>(in Int16 src)
{
    IL_0000: ldarg.0
    IL_0001: call T& Z0.AsIn::asRef<T>(T&)
    IL_0006: call System.Int16& System.Runtime.CompilerServices.Unsafe::As<T,System.Int16>(T&)
    IL_000B: ret
}
