// Id := 100663383, Name := System.Single Z0.Bits::enable(System.Single,System.Int32)
// float enable(float src, int pos)
// AggressiveInlining
float enable(float src, int pos)
{
    IL_0000: ldarg.0
    IL_0001: call System.Int32 System.BitConverter::SingleToInt32Bits(System.Single)
    IL_0006: stloc.0
    IL_0007: ldloc.0
    IL_0008: ldc.i4.1
    IL_0009: ldarg.1
    IL_000A: ldc.i4.s 31
    IL_000C: and
    IL_000D: shl
    IL_000E: or
    IL_000F: stloc.0
    IL_0010: ldloc.0
    IL_0011: call System.Single System.BitConverter::Int32BitsToSingle(System.Int32)
    IL_0016: starg.s src
    IL_0018: ldarg.0
    IL_0019: ret
}
