// Id := 100663605, Name := System.ReadOnlySpan`1<System.Char> Z0.gbits::bitchars<T>(T&)
// ReadOnlySpan<Char> bitchars<Int16>(in Int16 src)
// AggressiveInlining
ReadOnlySpan<Char> bitchars<Int16>(in Int16 src)
{
    IL_0000: call System.Int32 zfunc::bitsize<T>()
    IL_0005: newarr System.Char
    IL_000A: stloc.0
    IL_000B: ldarg.0
    IL_000C: ldobj T
    IL_0011: ldloc.0
    IL_0012: call System.Span`1<System.Char> System.Span`1<System.Char>::op_Implicit(System.Char[])
    IL_0017: ldc.i4.0
    IL_0018: call System.Void Z0.gbits::bitchars<T>(T,System.Span`1<System.Char>,System.Int32)
    IL_001D: ldloc.0
    IL_001E: call System.ReadOnlySpan`1<System.Char> System.ReadOnlySpan`1<System.Char>::op_Implicit(System.Char[])
    IL_0023: ret
}
