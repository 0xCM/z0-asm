// Id := 100665612, Name := System.Double& Z0.AsIn::float64<T>(T&)
// ref double float64<ushort>(in ushort src)
// AggressiveInlining
ref double float64<ushort>(in ushort src)
{
    IL_0000: ldarg.0
    IL_0001: call T& Z0.AsIn::asRef<T>(T&)
    IL_0006: call System.Double& System.Runtime.CompilerServices.Unsafe::As<T,System.Double>(T&)
    IL_000B: ret
}
