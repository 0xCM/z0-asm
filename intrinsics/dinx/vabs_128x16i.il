// Id := 100663452, Name := System.Runtime.Intrinsics.Vector128`1<System.Int16> Z0.dinx::vabs(System.Runtime.Intrinsics.Vector128`1<System.Int16>)
// Vector128<Int16> vabs(Vector128<Int16> src)
// AggressiveInlining
Vector128<Int16> vabs(Vector128<Int16> src)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> System.Runtime.Intrinsics.X86.Ssse3::Abs(System.Runtime.Intrinsics.Vector128`1<System.Int16>)
    IL_0006: call System.Runtime.Intrinsics.Vector128`1<System.Int16> zfunc::v16i<System.UInt16>(System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
    IL_000B: ret
}
