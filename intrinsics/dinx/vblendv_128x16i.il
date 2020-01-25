// Id := 100664534, Name := System.Runtime.Intrinsics.Vector128`1<System.Int16> Z0.dinx::vblendv(System.Runtime.Intrinsics.Vector128`1<System.Int16>,System.Runtime.Intrinsics.Vector128`1<System.Int16>,System.Runtime.Intrinsics.Vector128`1<System.Int16>)
// Vector128<Int16> vblendv(Vector128<Int16> x, Vector128<Int16> y, Vector128<Int16> spec)
// AggressiveInlining
Vector128<Int16> vblendv(Vector128<Int16> x, Vector128<Int16> y, Vector128<Int16> spec)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.Runtime.Intrinsics.Vector128`1<System.Int16> System.Runtime.Intrinsics.X86.Sse41::BlendVariable(System.Runtime.Intrinsics.Vector128`1<System.Int16>,System.Runtime.Intrinsics.Vector128`1<System.Int16>,System.Runtime.Intrinsics.Vector128`1<System.Int16>)
    IL_0008: ret
}
