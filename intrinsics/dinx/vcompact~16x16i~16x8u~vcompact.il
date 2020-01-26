// Id := 100664755, Name := System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vcompact(System.Runtime.Intrinsics.Vector256`1<System.Int16>,Z0.N128,System.Byte)
// Vector128<byte> vcompact(Vector256<Int16> src, N128 w, byte t)
// AggressiveInlining
Vector128<byte> vcompact(Vector256<Int16> src, N128 w, byte t)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.Int16> Z0.dinx::vlo(System.Runtime.Intrinsics.Vector256`1<System.Int16>)
    IL_0006: ldarg.0
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.Int16> Z0.dinx::vhi(System.Runtime.Intrinsics.Vector256`1<System.Int16>)
    IL_000C: call System.Runtime.Intrinsics.Vector128`1<System.SByte> Z0.dinx::vpackss(System.Runtime.Intrinsics.Vector128`1<System.Int16>,System.Runtime.Intrinsics.Vector128`1<System.Int16>)
    IL_0011: call System.Runtime.Intrinsics.Vector128`1<System.Byte> zfunc::v8u<System.SByte>(System.Runtime.Intrinsics.Vector128`1<System.SByte>)
    IL_0016: ret
}
------------------------------------------------------------------------------------------------------------------------
