// Id := 100664186, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vxnor(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
// Vector256<uint> vxnor(Vector256<uint> x, Vector256<uint> y)
// AggressiveInlining
Vector256<uint> vxnor(Vector256<uint> x, Vector256<uint> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> System.Runtime.Intrinsics.X86.Avx2::Xor(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_0007: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vnot(System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_000C: ret
}
