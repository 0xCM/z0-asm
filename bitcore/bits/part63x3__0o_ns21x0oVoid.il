// Id := 100663465, Name := System.Void Z0.Bits::part63x3(System.UInt64,Z0.NatSpan`2<Z0.N21,System.Byte>&)
// void part63x3(ulong src, in NatSpan<N21,byte> dst)
// AggressiveInlining
void part63x3(ulong src, in NatSpan<N21,byte> dst)
{
    IL_0000: call Z0.N63 zfunc::get_n63()
    IL_0005: call System.UInt64 Z0.BitMask::lo<Z0.N63>(Z0.N63)
    IL_000A: ldarg.0
    IL_000B: and
    IL_000C: stloc.0
    IL_000D: ldarg.1
    IL_000E: ldc.i4.0
    IL_000F: call System.UInt64& Z0.NatSpan`2<Z0.N21,System.Byte>::Cell<System.UInt64>(System.Int32)
    IL_0014: ldloc.0
    IL_0015: ldc.i8 506381209866536711
    IL_001E: call System.UInt64 Z0.Bits::scatter(System.UInt64,System.UInt64)
    IL_0023: stind.i8
    IL_0024: ldarg.1
    IL_0025: ldc.i4.1
    IL_0026: call System.UInt64& Z0.NatSpan`2<Z0.N21,System.Byte>::Cell<System.UInt64>(System.Int32)
    IL_002B: ldloc.0
    IL_002C: ldc.i4.s 24
    IL_002E: shr.un
    IL_002F: ldc.i8 506381209866536711
    IL_0038: call System.UInt64 Z0.Bits::scatter(System.UInt64,System.UInt64)
    IL_003D: stind.i8
    IL_003E: ldarg.1
    IL_003F: ldc.i4.2
    IL_0040: call System.UInt64& Z0.NatSpan`2<Z0.N21,System.Byte>::Cell<System.UInt64>(System.Int32)
    IL_0045: ldloc.0
    IL_0046: ldc.i4.s 48
    IL_0048: shr.un
    IL_0049: ldc.i8 506381209866536711
    IL_0052: call System.UInt64 Z0.Bits::scatter(System.UInt64,System.UInt64)
    IL_0057: stind.i8
    IL_0058: ret
}
