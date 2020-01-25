// Id := 100665608, Name := System.UInt32& Z0.AsIn::uint32<T>(T&)
// ref uint uint32<Int16>(in Int16 src)
// AggressiveInlining
ref uint uint32<Int16>(in Int16 src)
{
    IL_0000: ldarg.0
    IL_0001: call T& Z0.AsIn::asRef<T>(T&)
    IL_0006: call System.UInt32& System.Runtime.CompilerServices.Unsafe::As<T,System.UInt32>(T&)
    IL_000B: ret
}
