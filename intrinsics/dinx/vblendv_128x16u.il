// Id := 100664535, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vblendv(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
// Vector128<ushort> vblendv(Vector128<ushort> x, Vector128<ushort> y, Vector128<ushort> spec)
// AggressiveInlining
Vector128<ushort> vblendv(Vector128<ushort> x, Vector128<ushort> y, Vector128<ushort> spec)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> System.Runtime.Intrinsics.X86.Sse41::BlendVariable(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
    IL_0008: ret
}
