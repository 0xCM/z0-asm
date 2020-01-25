// Id := 100663803, Name := System.Runtime.Intrinsics.Vector128`1<System.Int64> Z0.dinx::vperm16x8(System.Runtime.Intrinsics.Vector128`1<System.Int64>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
// Vector128<long> vperm16x8(Vector128<long> src, Vector128<byte> spec)
// AggressiveInlining
Vector128<long> vperm16x8(Vector128<long> src, Vector128<byte> spec)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.Byte> zfunc::v8u<System.Int64>(System.Runtime.Intrinsics.Vector128`1<System.Int64>)
    IL_0006: ldarg.1
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.Byte> System.Runtime.Intrinsics.X86.Ssse3::Shuffle(System.Runtime.Intrinsics.Vector128`1<System.Byte>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_000C: call System.Runtime.Intrinsics.Vector128`1<System.Int64> zfunc::v64i<System.Byte>(System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0011: ret
}
