// Id := 100664171, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vselect(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
// Vector256<uint> vselect(Vector256<uint> x, Vector256<uint> y, Vector256<uint> z)
// AggressiveInlining
Vector256<uint> vselect(Vector256<uint> x, Vector256<uint> y, Vector256<uint> z)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vand(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_0007: ldarg.0
    IL_0008: ldarg.2
    IL_0009: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vnonimpl(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_000E: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vor(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_0013: ret
}
