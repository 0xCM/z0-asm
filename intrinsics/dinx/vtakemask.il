// System.UInt16 Z0.dinx::vtakemask(System.Runtime.Intrinsics.Vector128`1<System.Byte>)
// ushort vtakemask(Vector128<byte> src)
// AggressiveInlining
ushort vtakemask(Vector128<byte> src)
{
    IL_0000: ldarg.0
    IL_0001: call System.Int32 System.Runtime.Intrinsics.X86.Sse2::MoveMask(System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0006: conv.u2
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt16 Z0.dinx::vtakemask(System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
// ushort vtakemask(Vector128<ushort> src)
// AggressiveInlining
ushort vtakemask(Vector128<ushort> src)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.Byte> zfunc::v8u<System.UInt16>(System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
    IL_0006: call System.Int32 System.Runtime.Intrinsics.X86.Sse2::MoveMask(System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_000B: conv.u2
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt16 Z0.dinx::vtakemask(System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
// ushort vtakemask(Vector128<uint> src)
// AggressiveInlining
ushort vtakemask(Vector128<uint> src)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.Byte> zfunc::v8u<System.UInt32>(System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_0006: call System.Int32 System.Runtime.Intrinsics.X86.Sse2::MoveMask(System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_000B: conv.u2
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt16 Z0.dinx::vtakemask(System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
// ushort vtakemask(Vector128<ulong> src)
// AggressiveInlining
ushort vtakemask(Vector128<ulong> src)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.Byte> zfunc::v8u<System.UInt64>(System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_0006: call System.Int32 System.Runtime.Intrinsics.X86.Sse2::MoveMask(System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_000B: conv.u2
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt32 Z0.dinx::vtakemask(System.Runtime.Intrinsics.Vector256`1<System.Byte>)
// uint vtakemask(Vector256<byte> src)
// AggressiveInlining
uint vtakemask(Vector256<byte> src)
{
    IL_0000: ldarg.0
    IL_0001: call System.Int32 System.Runtime.Intrinsics.X86.Avx2::MoveMask(System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt32 Z0.dinx::vtakemask(System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
// uint vtakemask(Vector256<ushort> src)
// AggressiveInlining
uint vtakemask(Vector256<ushort> src)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector256`1<System.Byte> zfunc::v8u<System.UInt16>(System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
    IL_0006: call System.Int32 System.Runtime.Intrinsics.X86.Avx2::MoveMask(System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_000B: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt32 Z0.dinx::vtakemask(System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
// uint vtakemask(Vector256<uint> src)
// AggressiveInlining
uint vtakemask(Vector256<uint> src)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector256`1<System.Byte> zfunc::v8u<System.UInt32>(System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_0006: call System.Int32 System.Runtime.Intrinsics.X86.Avx2::MoveMask(System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_000B: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt32 Z0.dinx::vtakemask(System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
// uint vtakemask(Vector256<ulong> src)
// AggressiveInlining
uint vtakemask(Vector256<ulong> src)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector256`1<System.Byte> zfunc::v8u<System.UInt64>(System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_0006: call System.Int32 System.Runtime.Intrinsics.X86.Avx2::MoveMask(System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_000B: ret
}
------------------------------------------------------------------------------------------------------------------------
