// Id := 100663798, Name := System.Runtime.Intrinsics.Vector128`1<System.SByte> Z0.dinx::vperm16x8(System.Runtime.Intrinsics.Vector128`1<System.SByte>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
// Vector128<sbyte> vperm16x8(Vector128<sbyte> src, Vector128<byte> spec)
// AggressiveInlining
Vector128<sbyte> vperm16x8(Vector128<sbyte> src, Vector128<byte> spec)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.SByte> zfunc::v8i<System.Byte>(System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.SByte> System.Runtime.Intrinsics.X86.Ssse3::Shuffle(System.Runtime.Intrinsics.Vector128`1<System.SByte>,System.Runtime.Intrinsics.Vector128`1<System.SByte>)
    IL_000C: ret
}
