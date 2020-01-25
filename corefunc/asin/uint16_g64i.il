// Id := 100665613, Name := System.UInt16& Z0.AsIn::uint16<T>(T&)
// ref ushort uint16<long>(in long src)
// AggressiveInlining
ref ushort uint16<long>(in long src)
{
    IL_0000: ldarg.0
    IL_0001: call T& Z0.AsIn::asRef<T>(T&)
    IL_0006: call System.UInt16& System.Runtime.CompilerServices.Unsafe::As<T,System.UInt16>(T&)
    IL_000B: ret
}
