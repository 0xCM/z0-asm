// Id := 100665607, Name := System.Int32& Z0.AsIn::int32<T>(T&)
// ref int int32<ushort>(in ushort src)
// AggressiveInlining
ref int int32<ushort>(in ushort src)
{
    IL_0000: ldarg.0
    IL_0001: call T& Z0.AsIn::asRef<T>(T&)
    IL_0006: call System.Int32& System.Runtime.CompilerServices.Unsafe::As<T,System.Int32>(T&)
    IL_000B: ret
}
