// Id := 100663453, Name := System.Runtime.Intrinsics.Vector128`1<System.Int32> Z0.dinx::vabs(System.Runtime.Intrinsics.Vector128`1<System.Int32>)
// Vector128<int> vabs(Vector128<int> src)
// AggressiveInlining
Vector128<int> vabs(Vector128<int> src)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> System.Runtime.Intrinsics.X86.Ssse3::Abs(System.Runtime.Intrinsics.Vector128`1<System.Int32>)
    IL_0006: call System.Runtime.Intrinsics.Vector128`1<System.Int32> zfunc::v32i<System.UInt32>(System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_000B: ret
}
