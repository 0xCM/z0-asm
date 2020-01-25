// Id := 100664635, Name := Z0.bit Z0.dinx::vnonz(System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
// bit vnonz(Vector128<ushort> src)
// AggressiveInlining
bit vnonz(Vector128<ushort> src)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.0
    IL_0002: call System.Boolean System.Runtime.Intrinsics.X86.Sse41::TestZ(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
    IL_0007: ldc.i4.0
    IL_0008: ceq
    IL_000A: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_000F: ret
}
