// Id := 100663626, Name := System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vbroadcast(Z0.N256,System.Byte,System.Byte)
// Vector256<byte> vbroadcast(N256 w, byte lo, byte hi)
// AggressiveInlining
Vector256<byte> vbroadcast(N256 w, byte lo, byte hi)
{
    IL_0000: call Z0.N128 zfunc::get_n128()
    IL_0005: ldarg.1
    IL_0006: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vbroadcast(Z0.N128,System.Byte)
    IL_000B: call Z0.N128 zfunc::get_n128()
    IL_0010: ldarg.2
    IL_0011: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vbroadcast(Z0.N128,System.Byte)
    IL_0016: call System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vconcat(System.Runtime.Intrinsics.Vector128`1<System.Byte>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_001B: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663627, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vbroadcast(Z0.N256,System.UInt16,System.UInt16)
// Vector256<ushort> vbroadcast(N256 w, ushort lo, ushort hi)
// AggressiveInlining
Vector256<ushort> vbroadcast(N256 w, ushort lo, ushort hi)
{
    IL_0000: call Z0.N128 zfunc::get_n128()
    IL_0005: ldarg.1
    IL_0006: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vbroadcast(Z0.N128,System.UInt16)
    IL_000B: call Z0.N128 zfunc::get_n128()
    IL_0010: ldarg.2
    IL_0011: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vbroadcast(Z0.N128,System.UInt16)
    IL_0016: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vconcat(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
    IL_001B: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663628, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vbroadcast(Z0.N256,System.UInt32,System.UInt32)
// Vector256<uint> vbroadcast(N256 w, uint lo, uint hi)
// AggressiveInlining
Vector256<uint> vbroadcast(N256 w, uint lo, uint hi)
{
    IL_0000: call Z0.N128 zfunc::get_n128()
    IL_0005: ldarg.1
    IL_0006: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vbroadcast(Z0.N128,System.UInt32)
    IL_000B: call Z0.N128 zfunc::get_n128()
    IL_0010: ldarg.2
    IL_0011: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vbroadcast(Z0.N128,System.UInt32)
    IL_0016: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vconcat(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_001B: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663629, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vbroadcast(Z0.N256,System.UInt64,System.UInt64)
// Vector256<ulong> vbroadcast(N256 w, ulong lo, ulong hi)
// AggressiveInlining
Vector256<ulong> vbroadcast(N256 w, ulong lo, ulong hi)
{
    IL_0000: call Z0.N128 zfunc::get_n128()
    IL_0005: ldarg.1
    IL_0006: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vbroadcast(Z0.N128,System.UInt64)
    IL_000B: call Z0.N128 zfunc::get_n128()
    IL_0010: ldarg.2
    IL_0011: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vbroadcast(Z0.N128,System.UInt64)
    IL_0016: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vconcat(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_001B: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663630, Name := System.Runtime.Intrinsics.Vector128`1<System.SByte> Z0.dinx::vbroadcast(Z0.N128,System.SByte)
// Vector128<sbyte> vbroadcast(N128 n, sbyte src)
// AggressiveInlining
Vector128<sbyte> vbroadcast(N128 n, sbyte src)
{
    IL_0000: ldarga.s src
    IL_0002: conv.u
    IL_0003: call System.Runtime.Intrinsics.Vector128`1<System.SByte> System.Runtime.Intrinsics.X86.Avx2::BroadcastScalarToVector128(System.SByte*)
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663631, Name := System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vbroadcast(Z0.N128,System.Byte)
// Vector128<byte> vbroadcast(N128 n, byte src)
// AggressiveInlining
Vector128<byte> vbroadcast(N128 n, byte src)
{
    IL_0000: ldarga.s src
    IL_0002: conv.u
    IL_0003: call System.Runtime.Intrinsics.Vector128`1<System.Byte> System.Runtime.Intrinsics.X86.Avx2::BroadcastScalarToVector128(System.Byte*)
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663632, Name := System.Runtime.Intrinsics.Vector128`1<System.Int16> Z0.dinx::vbroadcast(Z0.N128,System.Int16)
// Vector128<short> vbroadcast(N128 n, short src)
// AggressiveInlining
Vector128<short> vbroadcast(N128 n, short src)
{
    IL_0000: ldarga.s src
    IL_0002: conv.u
    IL_0003: call System.Runtime.Intrinsics.Vector128`1<System.Int16> System.Runtime.Intrinsics.X86.Avx2::BroadcastScalarToVector128(System.Int16*)
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663633, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vbroadcast(Z0.N128,System.UInt16)
// Vector128<ushort> vbroadcast(N128 n, ushort src)
// AggressiveInlining
Vector128<ushort> vbroadcast(N128 n, ushort src)
{
    IL_0000: ldarga.s src
    IL_0002: conv.u
    IL_0003: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> System.Runtime.Intrinsics.X86.Avx2::BroadcastScalarToVector128(System.UInt16*)
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663634, Name := System.Runtime.Intrinsics.Vector128`1<System.Int32> Z0.dinx::vbroadcast(Z0.N128,System.Int32)
// Vector128<int> vbroadcast(N128 n, int src)
// AggressiveInlining
Vector128<int> vbroadcast(N128 n, int src)
{
    IL_0000: ldarga.s src
    IL_0002: conv.u
    IL_0003: call System.Runtime.Intrinsics.Vector128`1<System.Int32> System.Runtime.Intrinsics.X86.Avx2::BroadcastScalarToVector128(System.Int32*)
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663635, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vbroadcast(Z0.N128,System.UInt32)
// Vector128<uint> vbroadcast(N128 n, uint src)
// AggressiveInlining
Vector128<uint> vbroadcast(N128 n, uint src)
{
    IL_0000: ldarga.s src
    IL_0002: conv.u
    IL_0003: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> System.Runtime.Intrinsics.X86.Avx2::BroadcastScalarToVector128(System.UInt32*)
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663636, Name := System.Runtime.Intrinsics.Vector128`1<System.Int64> Z0.dinx::vbroadcast(Z0.N128,System.Int64)
// Vector128<long> vbroadcast(N128 n, long src)
// AggressiveInlining
Vector128<long> vbroadcast(N128 n, long src)
{
    IL_0000: ldarga.s src
    IL_0002: conv.u
    IL_0003: call System.Runtime.Intrinsics.Vector128`1<System.Int64> System.Runtime.Intrinsics.X86.Avx2::BroadcastScalarToVector128(System.Int64*)
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663637, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vbroadcast(Z0.N128,System.UInt64)
// Vector128<ulong> vbroadcast(N128 n, ulong src)
// AggressiveInlining
Vector128<ulong> vbroadcast(N128 n, ulong src)
{
    IL_0000: ldarga.s src
    IL_0002: conv.u
    IL_0003: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> System.Runtime.Intrinsics.X86.Avx2::BroadcastScalarToVector128(System.UInt64*)
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663638, Name := System.Runtime.Intrinsics.Vector256`1<System.SByte> Z0.dinx::vbroadcast(Z0.N256,System.SByte)
// Vector256<sbyte> vbroadcast(N256 n, sbyte src)
// AggressiveInlining
Vector256<sbyte> vbroadcast(N256 n, sbyte src)
{
    IL_0000: ldarga.s src
    IL_0002: conv.u
    IL_0003: call System.Runtime.Intrinsics.Vector256`1<System.SByte> System.Runtime.Intrinsics.X86.Avx2::BroadcastScalarToVector256(System.SByte*)
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663639, Name := System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vbroadcast(Z0.N256,System.Byte)
// Vector256<byte> vbroadcast(N256 n, byte src)
// AggressiveInlining
Vector256<byte> vbroadcast(N256 n, byte src)
{
    IL_0000: ldarga.s src
    IL_0002: conv.u
    IL_0003: call System.Runtime.Intrinsics.Vector256`1<System.Byte> System.Runtime.Intrinsics.X86.Avx2::BroadcastScalarToVector256(System.Byte*)
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663640, Name := System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.dinx::vbroadcast(Z0.N256,System.Int16)
// Vector256<short> vbroadcast(N256 n, short src)
// AggressiveInlining
Vector256<short> vbroadcast(N256 n, short src)
{
    IL_0000: ldarga.s src
    IL_0002: conv.u
    IL_0003: call System.Runtime.Intrinsics.Vector256`1<System.Int16> System.Runtime.Intrinsics.X86.Avx2::BroadcastScalarToVector256(System.Int16*)
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663641, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vbroadcast(Z0.N256,System.UInt16)
// Vector256<ushort> vbroadcast(N256 n, ushort src)
// AggressiveInlining
Vector256<ushort> vbroadcast(N256 n, ushort src)
{
    IL_0000: ldarga.s src
    IL_0002: conv.u
    IL_0003: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> System.Runtime.Intrinsics.X86.Avx2::BroadcastScalarToVector256(System.UInt16*)
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663642, Name := System.Runtime.Intrinsics.Vector256`1<System.Int32> Z0.dinx::vbroadcast(Z0.N256,System.Int32)
// Vector256<int> vbroadcast(N256 n, int src)
// AggressiveInlining
Vector256<int> vbroadcast(N256 n, int src)
{
    IL_0000: ldarga.s src
    IL_0002: conv.u
    IL_0003: call System.Runtime.Intrinsics.Vector256`1<System.Int32> System.Runtime.Intrinsics.X86.Avx2::BroadcastScalarToVector256(System.Int32*)
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663643, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vbroadcast(Z0.N256,System.UInt32)
// Vector256<uint> vbroadcast(N256 n, uint src)
// AggressiveInlining
Vector256<uint> vbroadcast(N256 n, uint src)
{
    IL_0000: ldarga.s src
    IL_0002: conv.u
    IL_0003: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> System.Runtime.Intrinsics.X86.Avx2::BroadcastScalarToVector256(System.UInt32*)
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663644, Name := System.Runtime.Intrinsics.Vector256`1<System.Int64> Z0.dinx::vbroadcast(Z0.N256,System.Int64)
// Vector256<long> vbroadcast(N256 n, long src)
// AggressiveInlining
Vector256<long> vbroadcast(N256 n, long src)
{
    IL_0000: ldarga.s src
    IL_0002: conv.u
    IL_0003: call System.Runtime.Intrinsics.Vector256`1<System.Int64> System.Runtime.Intrinsics.X86.Avx2::BroadcastScalarToVector256(System.Int64*)
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663645, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vbroadcast(Z0.N256,System.UInt64)
// Vector256<ulong> vbroadcast(N256 n, ulong src)
// AggressiveInlining
Vector256<ulong> vbroadcast(N256 n, ulong src)
{
    IL_0000: ldarga.s src
    IL_0002: conv.u
    IL_0003: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> System.Runtime.Intrinsics.X86.Avx2::BroadcastScalarToVector256(System.UInt64*)
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
