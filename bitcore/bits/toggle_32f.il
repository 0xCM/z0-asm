// Id := 100663573, Name := System.Single Z0.Bits::toggle(System.Single,System.Int32)
// float toggle(float src, int pos)
// AggressiveInlining
float toggle(float src, int pos)
{
    IL_0000: ldarga.s src
    IL_0002: call System.Int32& System.Runtime.CompilerServices.Unsafe::As<System.Single,System.Int32>(System.Single&)
    IL_0007: stloc.0
    IL_0008: ldloc.0
    IL_0009: ldloc.0
    IL_000A: ldind.i4
    IL_000B: ldc.i4.1
    IL_000C: ldarg.1
    IL_000D: ldc.i4.s 31
    IL_000F: and
    IL_0010: shl
    IL_0011: xor
    IL_0012: stind.i4
    IL_0013: ldarg.0
    IL_0014: ret
}
