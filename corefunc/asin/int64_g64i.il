// Id := 100665609, Name := System.Int64& Z0.AsIn::int64<T>(T&)
// ref long int64<long>(in long src)
// AggressiveInlining
ref long int64<long>(in long src)
{
    IL_0000: ldarg.0
    IL_0001: call T& Z0.AsIn::asRef<T>(T&)
    IL_0006: call System.Int64& System.Runtime.CompilerServices.Unsafe::As<T,System.Int64>(T&)
    IL_000B: ret
}
