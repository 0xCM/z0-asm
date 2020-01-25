// Id := 100663451, Name := System.Runtime.Intrinsics.Vector128`1<System.SByte> Z0.dinx::vabs(System.Runtime.Intrinsics.Vector128`1<System.SByte>)
// Vector128<sbyte> vabs(Vector128<sbyte> src)
// AggressiveInlining
Vector128<sbyte> vabs(Vector128<sbyte> src)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.Byte> System.Runtime.Intrinsics.X86.Ssse3::Abs(System.Runtime.Intrinsics.Vector128`1<System.SByte>)
    IL_0006: call System.Runtime.Intrinsics.Vector128`1<System.SByte> zfunc::v8i<System.Byte>(System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_000B: ret
}
