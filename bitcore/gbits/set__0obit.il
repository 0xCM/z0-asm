// Id := 100663671, Name := T Z0.gbits::set<T>(T,System.Int32,Z0.bit)
// int set<int>(int src, int pos, bit value)
// AggressiveInlining
int set<int>(int src, int pos, bit value)
{
    IL_0000: ldarg.2
    IL_0001: call System.Boolean Z0.bit::op_Implicit(Z0.bit)
    IL_0006: brfalse.s IL_0010
    IL_0008: ldarg.0
    IL_0009: ldarg.1
    IL_000A: call T Z0.gbits::enable<T>(T,System.Int32)
    IL_000F: ret
    IL_0010: ldarg.0
    IL_0011: ldarg.1
    IL_0012: call T Z0.gbits::disable<T>(T,System.Int32)
    IL_0017: ret
}
