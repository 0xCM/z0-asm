// Id := 100663673, Name := System.SByte Z0.dinx::vmovelo(System.Runtime.Intrinsics.Vector128`1<System.SByte>,Z0.N8)
// sbyte vmovelo(Vector128<sbyte> src, N8 w)
// AggressiveInlining
sbyte vmovelo(Vector128<sbyte> src, N8 w)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.Int32> zfunc::v32i<System.SByte>(System.Runtime.Intrinsics.Vector128`1<System.SByte>)
    IL_0006: call System.Int32 System.Runtime.Intrinsics.X86.Sse2::ConvertToInt32(System.Runtime.Intrinsics.Vector128`1<System.Int32>)
    IL_000B: conv.i1
    IL_000C: ret
}
