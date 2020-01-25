// Id := 100663793, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vbyteswap(System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
// Vector128<ulong> vbyteswap(Vector128<ulong> x)
// AggressiveInlining
Vector128<ulong> vbyteswap(Vector128<ulong> x)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N128 zfunc::get_n128()
    IL_0006: call Z0.N64 zfunc::get_n64()
    IL_000B: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.VData::byteswap<Z0.N64>(Z0.N128,Z0.N64)
    IL_0010: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vshuf16x8(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0015: ret
}
