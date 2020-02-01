// System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vrotrx(System.Runtime.Intrinsics.Vector128`1<System.Byte>,Z0.N8)
// Vector128<byte> vrotrx(Vector128<byte> src, N8 count)
// AggressiveInlining
Vector128<byte> vrotrx(Vector128<byte> src, N8 count)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N128 zfunc::get_n128()
    IL_0006: ldarg.1
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.VData::rotr(Z0.N128,Z0.N8)
    IL_000C: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vshuf16x8(System.Runtime.Intrinsics.Vector128`1<System.Byte>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0011: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vrotrx(System.Runtime.Intrinsics.Vector128`1<System.Byte>,Z0.N16)
// Vector128<byte> vrotrx(Vector128<byte> src, N16 count)
// AggressiveInlining
Vector128<byte> vrotrx(Vector128<byte> src, N16 count)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N128 zfunc::get_n128()
    IL_0006: ldarg.1
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.VData::rotr(Z0.N128,Z0.N16)
    IL_000C: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vshuf16x8(System.Runtime.Intrinsics.Vector128`1<System.Byte>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0011: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vrotrx(System.Runtime.Intrinsics.Vector128`1<System.Byte>,Z0.N24)
// Vector128<byte> vrotrx(Vector128<byte> src, N24 count)
// AggressiveInlining
Vector128<byte> vrotrx(Vector128<byte> src, N24 count)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N128 zfunc::get_n128()
    IL_0006: ldarg.1
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.VData::rotr(Z0.N128,Z0.N24)
    IL_000C: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vshuf16x8(System.Runtime.Intrinsics.Vector128`1<System.Byte>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0011: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vrotrx(System.Runtime.Intrinsics.Vector128`1<System.Byte>,Z0.N32)
// Vector128<byte> vrotrx(Vector128<byte> src, N32 count)
// AggressiveInlining
Vector128<byte> vrotrx(Vector128<byte> src, N32 count)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N128 zfunc::get_n128()
    IL_0006: ldarg.1
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.VData::rotr(Z0.N128,Z0.N32)
    IL_000C: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vshuf16x8(System.Runtime.Intrinsics.Vector128`1<System.Byte>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0011: ret
}
------------------------------------------------------------------------------------------------------------------------
