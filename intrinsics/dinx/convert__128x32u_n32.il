// Id := 100664795, Name := System.UInt32 Z0.dinx::convert(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,Z0.N32,System.UInt32)
// uint convert(Vector128<uint> src, N32 w, uint t)
// AggressiveInlining
uint convert(Vector128<uint> src, N32 w, uint t)
{
    IL_0000: ldarg.0
    IL_0001: call System.UInt32 System.Runtime.Intrinsics.X86.Sse2::ConvertToUInt32(System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_0006: ret
}
