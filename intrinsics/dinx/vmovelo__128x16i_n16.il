// Id := 100663675, Name := System.Int16 Z0.dinx::vmovelo(System.Runtime.Intrinsics.Vector128`1<System.Int16>,Z0.N16)
// Int16 vmovelo(Vector128<Int16> src, N16 w)
// AggressiveInlining
Int16 vmovelo(Vector128<Int16> src, N16 w)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.Int32> zfunc::v32i<System.Int16>(System.Runtime.Intrinsics.Vector128`1<System.Int16>)
    IL_0006: call System.Int32 System.Runtime.Intrinsics.X86.Sse2::ConvertToInt32(System.Runtime.Intrinsics.Vector128`1<System.Int32>)
    IL_000B: conv.i2
    IL_000C: ret
}
