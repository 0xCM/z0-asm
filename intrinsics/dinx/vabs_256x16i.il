// Id := 100663456, Name := System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.dinx::vabs(System.Runtime.Intrinsics.Vector256`1<System.Int16>)
// Vector256<Int16> vabs(Vector256<Int16> src)
// AggressiveInlining
Vector256<Int16> vabs(Vector256<Int16> src)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> System.Runtime.Intrinsics.X86.Avx2::Abs(System.Runtime.Intrinsics.Vector256`1<System.Int16>)
    IL_0006: call System.Runtime.Intrinsics.Vector256`1<System.Int16> zfunc::v16i<System.UInt16>(System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
    IL_000B: ret
}
