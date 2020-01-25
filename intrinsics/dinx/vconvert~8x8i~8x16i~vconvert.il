// Id := 100664717, Name := System.Runtime.Intrinsics.Vector128`1<System.Int16> Z0.dinx::vconvert(Z0.Block64`1<System.SByte>&,Z0.N128,System.Int16)
// Vector128<Int16> vconvert(in Block64<sbyte> src, N128 w, Int16 t)
// AggressiveInlining
Vector128<Int16> vconvert(in Block64<sbyte> src, N128 w, Int16 t)
{
    IL_0000: ldarg.0
    IL_0001: call System.SByte& Z0.Block64`1<System.SByte>::get_Head()
    IL_0006: call System.SByte* zfunc::constptr<System.SByte>(System.SByte&)
    IL_000B: call System.Runtime.Intrinsics.Vector128`1<System.Int16> System.Runtime.Intrinsics.X86.Sse41::ConvertToVector128Int16(System.SByte*)
    IL_0010: ret
}
