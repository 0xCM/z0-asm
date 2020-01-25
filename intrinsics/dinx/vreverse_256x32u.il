// Id := 100663894, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vreverse(System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
// Vector256<uint> vreverse(Vector256<uint> src)
// AggressiveInlining
Vector256<uint> vreverse(Vector256<uint> src)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::get_MRev256u32()
    IL_0006: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vperm8x32(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_000B: ret
}
