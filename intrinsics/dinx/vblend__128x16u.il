// Id := 100664515, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vblend(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
// Vector128<ushort> vblend(Vector128<ushort> x, Vector128<ushort> y, Vector128<byte> spec)
// AggressiveInlining
Vector128<ushort> vblend(Vector128<ushort> x, Vector128<ushort> y, Vector128<byte> spec)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> zfunc::v16u<System.Byte>(System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0008: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> System.Runtime.Intrinsics.X86.Sse41::BlendVariable(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
    IL_000D: ret
}
