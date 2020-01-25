// Id := 100663792, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vbyteswap(System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
// Vector128<uint> vbyteswap(Vector128<uint> x)
// AggressiveInlining
Vector128<uint> vbyteswap(Vector128<uint> x)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N128 zfunc::get_n128()
    IL_0006: call Z0.N32 zfunc::get_n32()
    IL_000B: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.VData::byteswap<Z0.N32>(Z0.N128,Z0.N32)
    IL_0010: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vshuf16x8(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0015: ret
}
