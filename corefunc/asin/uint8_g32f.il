// Id := 100665604, Name := System.Byte& Z0.AsIn::uint8<T>(T&)
// ref byte uint8<float>(in float src)
// AggressiveInlining
ref byte uint8<float>(in float src)
{
    IL_0000: ldarg.0
    IL_0001: call T& Z0.AsIn::asRef<T>(T&)
    IL_0006: call System.Byte& System.Runtime.CompilerServices.Unsafe::As<T,System.Byte>(T&)
    IL_000B: ret
}
