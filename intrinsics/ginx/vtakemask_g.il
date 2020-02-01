// System.UInt16 Z0.ginx::vtakemask<T>(System.Runtime.Intrinsics.Vector128`1<T>)
// ushort vtakemask<byte>(Vector128<byte> src)
// AggressiveInlining
ushort vtakemask<byte>(Vector128<byte> src)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.Byte> zfunc::v8u<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0006: call System.Int32 System.Runtime.Intrinsics.X86.Sse2::MoveMask(System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_000B: conv.u2
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt16 Z0.ginx::vtakemask<T>(System.Runtime.Intrinsics.Vector128`1<T>)
// ushort vtakemask<ushort>(Vector128<ushort> src)
// AggressiveInlining
ushort vtakemask<ushort>(Vector128<ushort> src)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.Byte> zfunc::v8u<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0006: call System.Int32 System.Runtime.Intrinsics.X86.Sse2::MoveMask(System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_000B: conv.u2
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt16 Z0.ginx::vtakemask<T>(System.Runtime.Intrinsics.Vector128`1<T>)
// ushort vtakemask<uint>(Vector128<uint> src)
// AggressiveInlining
ushort vtakemask<uint>(Vector128<uint> src)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.Byte> zfunc::v8u<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0006: call System.Int32 System.Runtime.Intrinsics.X86.Sse2::MoveMask(System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_000B: conv.u2
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt16 Z0.ginx::vtakemask<T>(System.Runtime.Intrinsics.Vector128`1<T>)
// ushort vtakemask<ulong>(Vector128<ulong> src)
// AggressiveInlining
ushort vtakemask<ulong>(Vector128<ulong> src)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.Byte> zfunc::v8u<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0006: call System.Int32 System.Runtime.Intrinsics.X86.Sse2::MoveMask(System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_000B: conv.u2
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt32 Z0.ginx::vtakemask<T>(System.Runtime.Intrinsics.Vector256`1<T>)
// uint vtakemask<byte>(Vector256<byte> src)
// AggressiveInlining
uint vtakemask<byte>(Vector256<byte> src)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector256`1<System.Byte> zfunc::v8u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0006: call System.Int32 System.Runtime.Intrinsics.X86.Avx2::MoveMask(System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_000B: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt32 Z0.ginx::vtakemask<T>(System.Runtime.Intrinsics.Vector256`1<T>)
// uint vtakemask<ushort>(Vector256<ushort> src)
// AggressiveInlining
uint vtakemask<ushort>(Vector256<ushort> src)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector256`1<System.Byte> zfunc::v8u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0006: call System.Int32 System.Runtime.Intrinsics.X86.Avx2::MoveMask(System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_000B: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt32 Z0.ginx::vtakemask<T>(System.Runtime.Intrinsics.Vector256`1<T>)
// uint vtakemask<uint>(Vector256<uint> src)
// AggressiveInlining
uint vtakemask<uint>(Vector256<uint> src)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector256`1<System.Byte> zfunc::v8u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0006: call System.Int32 System.Runtime.Intrinsics.X86.Avx2::MoveMask(System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_000B: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt32 Z0.ginx::vtakemask<T>(System.Runtime.Intrinsics.Vector256`1<T>)
// uint vtakemask<ulong>(Vector256<ulong> src)
// AggressiveInlining
uint vtakemask<ulong>(Vector256<ulong> src)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector256`1<System.Byte> zfunc::v8u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0006: call System.Int32 System.Runtime.Intrinsics.X86.Avx2::MoveMask(System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_000B: ret
}
------------------------------------------------------------------------------------------------------------------------
