// Id := 100664544, Name := Z0.bit Z0.Logix.ScalarOps::testc<T>(T)
// bit testc<ushort>(ushort a)
// AggressiveInlining
bit testc<ushort>(ushort a)
{
    IL_0000: ldarg.0
    IL_0001: call System.UInt32 Z0.gbits::pop<T>(T)
    IL_0006: conv.u8
    IL_0007: call System.Int32 zfunc::bitsize<T>()
    IL_000C: conv.i8
    IL_000D: ceq
    IL_000F: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_0014: ret
}
