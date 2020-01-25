// Id := 100663676, Name := System.UInt16 Z0.dinx::vmovelo(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,Z0.N16)
// ushort vmovelo(Vector128<ushort> src, N16 w)
// AggressiveInlining
ushort vmovelo(Vector128<ushort> src, N16 w)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> zfunc::v32u<System.UInt16>(System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
    IL_0006: call System.UInt32 System.Runtime.Intrinsics.X86.Sse2::ConvertToUInt32(System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_000B: conv.u2
    IL_000C: ret
}
