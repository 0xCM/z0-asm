// Id := 100663528, Name := System.Runtime.Intrinsics.Vector128`1<System.Int16> Z0.dinx::vmuladj(System.Runtime.Intrinsics.Vector128`1<System.Byte>,System.Runtime.Intrinsics.Vector128`1<System.SByte>)
// Vector128<Int16> vmuladj(Vector128<byte> x, Vector128<sbyte> y)
// AggressiveInlining
Vector128<Int16> vmuladj(Vector128<byte> x, Vector128<sbyte> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.Int16> System.Runtime.Intrinsics.X86.Ssse3::MultiplyAddAdjacent(System.Runtime.Intrinsics.Vector128`1<System.Byte>,System.Runtime.Intrinsics.Vector128`1<System.SByte>)
    IL_0007: ret
}
