// Id := 100664803, Name := System.Runtime.Intrinsics.Vector128`1<System.Int32> Z0.dinx::vconvert(System.Runtime.Intrinsics.Vector128`1<System.SByte>,Z0.N128,System.Int32)
// Vector128<int> vconvert(Vector128<sbyte> src, N128 w, int t)
// AggressiveInlining
Vector128<int> vconvert(Vector128<sbyte> src, N128 w, int t)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.Int32> System.Runtime.Intrinsics.X86.Sse41::ConvertToVector128Int32(System.Runtime.Intrinsics.Vector128`1<System.SByte>)
    IL_0006: ret
}
