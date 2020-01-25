// Id := 100664536, Name := System.Runtime.Intrinsics.Vector128`1<System.Int32> Z0.dinx::vblendv(System.Runtime.Intrinsics.Vector128`1<System.Int32>,System.Runtime.Intrinsics.Vector128`1<System.Int32>,System.Runtime.Intrinsics.Vector128`1<System.Int32>)
// Vector128<int> vblendv(Vector128<int> x, Vector128<int> y, Vector128<int> spec)
// AggressiveInlining
Vector128<int> vblendv(Vector128<int> x, Vector128<int> y, Vector128<int> spec)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.Runtime.Intrinsics.Vector128`1<System.Int32> System.Runtime.Intrinsics.X86.Sse41::BlendVariable(System.Runtime.Intrinsics.Vector128`1<System.Int32>,System.Runtime.Intrinsics.Vector128`1<System.Int32>,System.Runtime.Intrinsics.Vector128`1<System.Int32>)
    IL_0008: ret
}
