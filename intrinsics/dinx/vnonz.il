// Id := 100664632, Name := Z0.bit Z0.dinx::vnonz(System.Runtime.Intrinsics.Vector128`1<System.Byte>)
// bit vnonz(Vector128<byte> src)
// AggressiveInlining
bit vnonz(Vector128<byte> src)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.0
    IL_0002: call System.Boolean System.Runtime.Intrinsics.X86.Sse41::TestZ(System.Runtime.Intrinsics.Vector128`1<System.Byte>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0007: ldc.i4.0
    IL_0008: ceq
    IL_000A: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_000F: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664633, Name := Z0.bit Z0.dinx::vnonz(System.Runtime.Intrinsics.Vector128`1<System.SByte>)
// bit vnonz(Vector128<sbyte> src)
// AggressiveInlining
bit vnonz(Vector128<sbyte> src)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.0
    IL_0002: call System.Boolean System.Runtime.Intrinsics.X86.Sse41::TestZ(System.Runtime.Intrinsics.Vector128`1<System.SByte>,System.Runtime.Intrinsics.Vector128`1<System.SByte>)
    IL_0007: ldc.i4.0
    IL_0008: ceq
    IL_000A: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_000F: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664634, Name := Z0.bit Z0.dinx::vnonz(System.Runtime.Intrinsics.Vector128`1<System.Int16>)
// bit vnonz(Vector128<Int16> src)
// AggressiveInlining
bit vnonz(Vector128<Int16> src)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.0
    IL_0002: call System.Boolean System.Runtime.Intrinsics.X86.Sse41::TestZ(System.Runtime.Intrinsics.Vector128`1<System.Int16>,System.Runtime.Intrinsics.Vector128`1<System.Int16>)
    IL_0007: ldc.i4.0
    IL_0008: ceq
    IL_000A: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_000F: ret
}
------------------------------------------------------------------------------------------------------------------------
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
------------------------------------------------------------------------------------------------------------------------
// Id := 100664636, Name := Z0.bit Z0.dinx::vnonz(System.Runtime.Intrinsics.Vector128`1<System.Int32>)
// bit vnonz(Vector128<int> src)
// AggressiveInlining
bit vnonz(Vector128<int> src)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.0
    IL_0002: call System.Boolean System.Runtime.Intrinsics.X86.Sse41::TestZ(System.Runtime.Intrinsics.Vector128`1<System.Int32>,System.Runtime.Intrinsics.Vector128`1<System.Int32>)
    IL_0007: ldc.i4.0
    IL_0008: ceq
    IL_000A: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_000F: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664637, Name := Z0.bit Z0.dinx::vnonz(System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
// bit vnonz(Vector128<uint> src)
// AggressiveInlining
bit vnonz(Vector128<uint> src)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.0
    IL_0002: call System.Boolean System.Runtime.Intrinsics.X86.Sse41::TestZ(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_0007: ldc.i4.0
    IL_0008: ceq
    IL_000A: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_000F: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664638, Name := Z0.bit Z0.dinx::vnonz(System.Runtime.Intrinsics.Vector128`1<System.Int64>)
// bit vnonz(Vector128<long> src)
// AggressiveInlining
bit vnonz(Vector128<long> src)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.0
    IL_0002: call System.Boolean System.Runtime.Intrinsics.X86.Sse41::TestZ(System.Runtime.Intrinsics.Vector128`1<System.Int64>,System.Runtime.Intrinsics.Vector128`1<System.Int64>)
    IL_0007: ldc.i4.0
    IL_0008: ceq
    IL_000A: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_000F: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664639, Name := Z0.bit Z0.dinx::vnonz(System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
// bit vnonz(Vector128<ulong> src)
// AggressiveInlining
bit vnonz(Vector128<ulong> src)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.0
    IL_0002: call System.Boolean System.Runtime.Intrinsics.X86.Sse41::TestZ(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_0007: ldc.i4.0
    IL_0008: ceq
    IL_000A: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_000F: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664640, Name := Z0.bit Z0.dinx::vnonz(System.Runtime.Intrinsics.Vector128`1<System.Single>)
// bit vnonz(Vector128<float> src)
// AggressiveInlining
bit vnonz(Vector128<float> src)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.0
    IL_0002: call System.Boolean System.Runtime.Intrinsics.X86.Avx::TestZ(System.Runtime.Intrinsics.Vector128`1<System.Single>,System.Runtime.Intrinsics.Vector128`1<System.Single>)
    IL_0007: ldc.i4.0
    IL_0008: ceq
    IL_000A: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_000F: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664641, Name := Z0.bit Z0.dinx::vnonz(System.Runtime.Intrinsics.Vector128`1<System.Double>)
// bit vnonz(Vector128<double> src)
// AggressiveInlining
bit vnonz(Vector128<double> src)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.0
    IL_0002: call System.Boolean System.Runtime.Intrinsics.X86.Avx::TestZ(System.Runtime.Intrinsics.Vector128`1<System.Double>,System.Runtime.Intrinsics.Vector128`1<System.Double>)
    IL_0007: ldc.i4.0
    IL_0008: ceq
    IL_000A: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_000F: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664642, Name := Z0.bit Z0.dinx::vnonz(System.Runtime.Intrinsics.Vector256`1<System.Byte>)
// bit vnonz(Vector256<byte> src)
// AggressiveInlining
bit vnonz(Vector256<byte> src)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.0
    IL_0002: call System.Boolean System.Runtime.Intrinsics.X86.Avx::TestZ(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_0007: ldc.i4.0
    IL_0008: ceq
    IL_000A: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_000F: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664643, Name := Z0.bit Z0.dinx::vnonz(System.Runtime.Intrinsics.Vector256`1<System.SByte>)
// bit vnonz(Vector256<sbyte> src)
// AggressiveInlining
bit vnonz(Vector256<sbyte> src)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.0
    IL_0002: call System.Boolean System.Runtime.Intrinsics.X86.Avx::TestZ(System.Runtime.Intrinsics.Vector256`1<System.SByte>,System.Runtime.Intrinsics.Vector256`1<System.SByte>)
    IL_0007: ldc.i4.0
    IL_0008: ceq
    IL_000A: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_000F: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664644, Name := Z0.bit Z0.dinx::vnonz(System.Runtime.Intrinsics.Vector256`1<System.Int16>)
// bit vnonz(Vector256<Int16> src)
// AggressiveInlining
bit vnonz(Vector256<Int16> src)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.0
    IL_0002: call System.Boolean System.Runtime.Intrinsics.X86.Avx::TestZ(System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Runtime.Intrinsics.Vector256`1<System.Int16>)
    IL_0007: ldc.i4.0
    IL_0008: ceq
    IL_000A: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_000F: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664645, Name := Z0.bit Z0.dinx::vnonz(System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
// bit vnonz(Vector256<ushort> src)
// AggressiveInlining
bit vnonz(Vector256<ushort> src)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.0
    IL_0002: call System.Boolean System.Runtime.Intrinsics.X86.Avx::TestZ(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
    IL_0007: ldc.i4.0
    IL_0008: ceq
    IL_000A: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_000F: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664646, Name := Z0.bit Z0.dinx::vnonz(System.Runtime.Intrinsics.Vector256`1<System.Int32>)
// bit vnonz(Vector256<int> src)
// AggressiveInlining
bit vnonz(Vector256<int> src)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.0
    IL_0002: call System.Boolean System.Runtime.Intrinsics.X86.Avx::TestZ(System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.Int32>)
    IL_0007: ldc.i4.0
    IL_0008: ceq
    IL_000A: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_000F: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664647, Name := Z0.bit Z0.dinx::vnonz(System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
// bit vnonz(Vector256<uint> src)
// AggressiveInlining
bit vnonz(Vector256<uint> src)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.0
    IL_0002: call System.Boolean System.Runtime.Intrinsics.X86.Avx::TestZ(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_0007: ldc.i4.0
    IL_0008: ceq
    IL_000A: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_000F: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664648, Name := Z0.bit Z0.dinx::vnonz(System.Runtime.Intrinsics.Vector256`1<System.Int64>)
// bit vnonz(Vector256<long> src)
// AggressiveInlining
bit vnonz(Vector256<long> src)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.0
    IL_0002: call System.Boolean System.Runtime.Intrinsics.X86.Avx::TestZ(System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Runtime.Intrinsics.Vector256`1<System.Int64>)
    IL_0007: ldc.i4.0
    IL_0008: ceq
    IL_000A: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_000F: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664649, Name := Z0.bit Z0.dinx::vnonz(System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
// bit vnonz(Vector256<ulong> src)
// AggressiveInlining
bit vnonz(Vector256<ulong> src)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.0
    IL_0002: call System.Boolean System.Runtime.Intrinsics.X86.Avx::TestZ(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_0007: ldc.i4.0
    IL_0008: ceq
    IL_000A: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_000F: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664650, Name := Z0.bit Z0.dinx::vnonz(System.Runtime.Intrinsics.Vector256`1<System.Single>)
// bit vnonz(Vector256<float> src)
// AggressiveInlining
bit vnonz(Vector256<float> src)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.0
    IL_0002: call System.Boolean System.Runtime.Intrinsics.X86.Avx::TestZ(System.Runtime.Intrinsics.Vector256`1<System.Single>,System.Runtime.Intrinsics.Vector256`1<System.Single>)
    IL_0007: ldc.i4.0
    IL_0008: ceq
    IL_000A: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_000F: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664651, Name := Z0.bit Z0.dinx::vnonz(System.Runtime.Intrinsics.Vector256`1<System.Double>)
// bit vnonz(Vector256<double> src)
// AggressiveInlining
bit vnonz(Vector256<double> src)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.0
    IL_0002: call System.Boolean System.Runtime.Intrinsics.X86.Avx::TestZ(System.Runtime.Intrinsics.Vector256`1<System.Double>,System.Runtime.Intrinsics.Vector256`1<System.Double>)
    IL_0007: ldc.i4.0
    IL_0008: ceq
    IL_000A: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_000F: ret
}
------------------------------------------------------------------------------------------------------------------------
