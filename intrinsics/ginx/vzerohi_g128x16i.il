// Id := 100665271, Name := System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vzerohi<T>(System.Runtime.Intrinsics.Vector128`1<T>)
// Vector128<Int16> vzerohi<Int16>(Vector128<Int16> src)
// AggressiveInlining
Vector128<Int16> vzerohi<Int16>(Vector128<Int16> src)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> zfunc::v64u<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0006: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> System.Runtime.Intrinsics.X86.Sse2::MoveScalar(System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_000B: call System.Runtime.Intrinsics.Vector128`1<T> System.Runtime.Intrinsics.Vector128::As<System.UInt64,T>(System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_0010: ret
}
