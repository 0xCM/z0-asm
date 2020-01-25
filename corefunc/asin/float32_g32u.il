// Id := 100665611, Name := System.Single& Z0.AsIn::float32<T>(T&)
// ref float float32<uint>(in uint src)
// AggressiveInlining
ref float float32<uint>(in uint src)
{
    IL_0000: ldarg.0
    IL_0001: call T& Z0.AsIn::asRef<T>(T&)
    IL_0006: call System.Single& System.Runtime.CompilerServices.Unsafe::As<T,System.Single>(T&)
    IL_000B: ret
}
