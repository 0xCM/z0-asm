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
------------------------------------------------------------------------------------------------------------------------
// Id := 100663452, Name := System.Runtime.Intrinsics.Vector128`1<System.Int16> Z0.dinx::vabs(System.Runtime.Intrinsics.Vector128`1<System.Int16>)
// Vector128<Int16> vabs(Vector128<Int16> src)
// AggressiveInlining
Vector128<Int16> vabs(Vector128<Int16> src)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> System.Runtime.Intrinsics.X86.Ssse3::Abs(System.Runtime.Intrinsics.Vector128`1<System.Int16>)
    IL_0006: call System.Runtime.Intrinsics.Vector128`1<System.Int16> zfunc::v16i<System.UInt16>(System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
    IL_000B: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663453, Name := System.Runtime.Intrinsics.Vector128`1<System.Int32> Z0.dinx::vabs(System.Runtime.Intrinsics.Vector128`1<System.Int32>)
// Vector128<int> vabs(Vector128<int> src)
// AggressiveInlining
Vector128<int> vabs(Vector128<int> src)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> System.Runtime.Intrinsics.X86.Ssse3::Abs(System.Runtime.Intrinsics.Vector128`1<System.Int32>)
    IL_0006: call System.Runtime.Intrinsics.Vector128`1<System.Int32> zfunc::v32i<System.UInt32>(System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_000B: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663454, Name := System.Runtime.Intrinsics.Vector128`1<System.Int64> Z0.dinx::vabs(System.Runtime.Intrinsics.Vector128`1<System.Int64>)
// Vector128<long> vabs(Vector128<long> src)
// AggressiveInlining
Vector128<long> vabs(Vector128<long> src)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.s 63
    IL_0003: call System.Runtime.Intrinsics.Vector128`1<System.Int64> Z0.dinx::vsrl(System.Runtime.Intrinsics.Vector128`1<System.Int64>,System.Byte)
    IL_0008: call System.Runtime.Intrinsics.Vector128`1<System.Int64> Z0.dinx::vnegate(System.Runtime.Intrinsics.Vector128`1<System.Int64>)
    IL_000D: stloc.0
    IL_000E: ldloc.0
    IL_000F: ldarg.0
    IL_0010: call System.Runtime.Intrinsics.Vector128`1<System.Int64> Z0.dinx::vxor(System.Runtime.Intrinsics.Vector128`1<System.Int64>,System.Runtime.Intrinsics.Vector128`1<System.Int64>)
    IL_0015: ldloc.0
    IL_0016: call System.Runtime.Intrinsics.Vector128`1<System.Int64> Z0.dinx::vsub(System.Runtime.Intrinsics.Vector128`1<System.Int64>,System.Runtime.Intrinsics.Vector128`1<System.Int64>)
    IL_001B: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663455, Name := System.Runtime.Intrinsics.Vector256`1<System.SByte> Z0.dinx::vabs(System.Runtime.Intrinsics.Vector256`1<System.SByte>)
// Vector256<sbyte> vabs(Vector256<sbyte> src)
// AggressiveInlining
Vector256<sbyte> vabs(Vector256<sbyte> src)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector256`1<System.Byte> System.Runtime.Intrinsics.X86.Avx2::Abs(System.Runtime.Intrinsics.Vector256`1<System.SByte>)
    IL_0006: call System.Runtime.Intrinsics.Vector256`1<System.SByte> zfunc::v8i<System.Byte>(System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_000B: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663456, Name := System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.dinx::vabs(System.Runtime.Intrinsics.Vector256`1<System.Int16>)
// Vector256<Int16> vabs(Vector256<Int16> src)
// AggressiveInlining
Vector256<Int16> vabs(Vector256<Int16> src)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> System.Runtime.Intrinsics.X86.Avx2::Abs(System.Runtime.Intrinsics.Vector256`1<System.Int16>)
    IL_0006: call System.Runtime.Intrinsics.Vector256`1<System.Int16> zfunc::v16i<System.UInt16>(System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
    IL_000B: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663457, Name := System.Runtime.Intrinsics.Vector256`1<System.Int32> Z0.dinx::vabs(System.Runtime.Intrinsics.Vector256`1<System.Int32>)
// Vector256<int> vabs(Vector256<int> src)
// AggressiveInlining
Vector256<int> vabs(Vector256<int> src)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> System.Runtime.Intrinsics.X86.Avx2::Abs(System.Runtime.Intrinsics.Vector256`1<System.Int32>)
    IL_0006: call System.Runtime.Intrinsics.Vector256`1<System.Int32> zfunc::v32i<System.UInt32>(System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_000B: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663458, Name := System.Runtime.Intrinsics.Vector256`1<System.Int64> Z0.dinx::vabs(System.Runtime.Intrinsics.Vector256`1<System.Int64>)
// Vector256<long> vabs(Vector256<long> src)
// AggressiveInlining
Vector256<long> vabs(Vector256<long> src)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.s 63
    IL_0003: call System.Runtime.Intrinsics.Vector256`1<System.Int64> Z0.dinx::vsrl(System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Byte)
    IL_0008: call System.Runtime.Intrinsics.Vector256`1<System.Int64> Z0.dinx::vnegate(System.Runtime.Intrinsics.Vector256`1<System.Int64>)
    IL_000D: stloc.0
    IL_000E: ldloc.0
    IL_000F: ldarg.0
    IL_0010: call System.Runtime.Intrinsics.Vector256`1<System.Int64> Z0.dinx::vxor(System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Runtime.Intrinsics.Vector256`1<System.Int64>)
    IL_0015: ldloc.0
    IL_0016: call System.Runtime.Intrinsics.Vector256`1<System.Int64> Z0.dinx::vsub(System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Runtime.Intrinsics.Vector256`1<System.Int64>)
    IL_001B: ret
}
------------------------------------------------------------------------------------------------------------------------
