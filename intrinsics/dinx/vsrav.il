// Id := 100664441, Name := System.Runtime.Intrinsics.Vector128`1<System.Int32> Z0.dinx::vsrav(System.Runtime.Intrinsics.Vector128`1<System.Int32>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
// Vector128<int> vsrav(Vector128<int> src, Vector128<uint> counts)
// AggressiveInlining
Vector128<int> vsrav(Vector128<int> src, Vector128<uint> counts)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.Int32> System.Runtime.Intrinsics.X86.Avx2::ShiftRightArithmeticVariable(System.Runtime.Intrinsics.Vector128`1<System.Int32>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664442, Name := System.Runtime.Intrinsics.Vector256`1<System.Int32> Z0.dinx::vsrav(System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
// Vector256<int> vsrav(Vector256<int> src, Vector256<uint> counts)
// AggressiveInlining
Vector256<int> vsrav(Vector256<int> src, Vector256<uint> counts)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.Int32> System.Runtime.Intrinsics.X86.Avx2::ShiftRightArithmeticVariable(System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
