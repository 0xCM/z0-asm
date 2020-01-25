// Id := 100665617, Name := System.UInt64& Z0.AsIn::uint64<T>(T&)
// ref ulong uint64<ulong>(in ulong src)
// AggressiveInlining
ref ulong uint64<ulong>(in ulong src)
{
    IL_0000: ldarg.0
    IL_0001: call T& Z0.AsIn::asRef<T>(T&)
    IL_0006: call System.UInt64& System.Runtime.CompilerServices.Unsafe::As<T,System.UInt64>(T&)
    IL_000B: ret
}
