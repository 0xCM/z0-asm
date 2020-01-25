// Id := 100664748, Name := Z0.Vector512`1<System.UInt16> Z0.dinx::vconvert(Z0.Block256`1<System.Byte>&,Z0.N512,System.UInt16)
// Vector512<ushort> vconvert(in Block256<byte> src, N512 w, ushort t)
// AggressiveInlining
Vector512<ushort> vconvert(in Block256<byte> src, N512 w, ushort t)
{
    IL_0000: ldarg.0
    IL_0001: call System.Byte& Z0.Block256`1<System.Byte>::get_Head()
    IL_0006: call System.Byte* zfunc::constptr<System.Byte>(System.Byte&)
    IL_000B: call System.Runtime.Intrinsics.Vector256`1<System.Int16> System.Runtime.Intrinsics.X86.Avx2::ConvertToVector256Int16(System.Byte*)
    IL_0010: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> zfunc::v16u<System.Int16>(System.Runtime.Intrinsics.Vector256`1<System.Int16>)
    IL_0015: ldarg.0
    IL_0016: call System.Byte& Z0.Block256`1<System.Byte>::get_Head()
    IL_001B: ldc.i4.s 16
    IL_001D: call System.Byte* zfunc::constptr<System.Byte>(System.Byte&,System.Int32)
    IL_0022: call System.Runtime.Intrinsics.Vector256`1<System.Int16> System.Runtime.Intrinsics.X86.Avx2::ConvertToVector256Int16(System.Byte*)
    IL_0027: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> zfunc::v16u<System.Int16>(System.Runtime.Intrinsics.Vector256`1<System.Int16>)
    IL_002C: newobj System.Void System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>>::.ctor(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
    IL_0031: call Z0.Vector512`1<System.UInt16> Z0.Vector512`1<System.UInt16>::op_Implicit(System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>>)
    IL_0036: ret
}
