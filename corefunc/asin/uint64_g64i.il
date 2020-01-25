// Id := 100665610, Name := System.UInt64& Z0.AsIn::uint64<T>(T&)
// ref ulong uint64<long>(in long src)
// AggressiveInlining
ref ulong uint64<long>(in long src)
{
    IL_0000: ldarg.0
    IL_0001: call T& Z0.AsIn::asRef<T>(T&)
    IL_0006: call System.UInt64& System.Runtime.CompilerServices.Unsafe::As<T,System.UInt64>(T&)
    IL_000B: ret
}
