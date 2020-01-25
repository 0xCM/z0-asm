// Id := 100663873, Name := System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vperm8x32(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
// Vector256<byte> vperm8x32(Vector256<byte> src, Vector256<uint> spec)
// AggressiveInlining
Vector256<byte> vperm8x32(Vector256<byte> src, Vector256<uint> spec)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> zfunc::v32u<System.Byte>(System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_0006: ldarg.1
    IL_0007: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> System.Runtime.Intrinsics.X86.Avx2::PermuteVar8x32(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<System.Byte> zfunc::v8u<System.UInt32>(System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_0011: ret
}
