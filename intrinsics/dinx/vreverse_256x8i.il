// Id := 100663890, Name := System.Runtime.Intrinsics.Vector256`1<System.SByte> Z0.dinx::vreverse(System.Runtime.Intrinsics.Vector256`1<System.SByte>)
// Vector256<sbyte> vreverse(Vector256<sbyte> src)
// AggressiveInlining
Vector256<sbyte> vreverse(Vector256<sbyte> src)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.SByte> Z0.dinx::vhi(System.Runtime.Intrinsics.Vector256`1<System.SByte>)
    IL_0006: call System.Runtime.Intrinsics.Vector128`1<System.SByte> Z0.dinx::vreverse(System.Runtime.Intrinsics.Vector128`1<System.SByte>)
    IL_000B: ldarg.0
    IL_000C: call System.Runtime.Intrinsics.Vector128`1<System.SByte> Z0.dinx::vlo(System.Runtime.Intrinsics.Vector256`1<System.SByte>)
    IL_0011: call System.Runtime.Intrinsics.Vector128`1<System.SByte> Z0.dinx::vreverse(System.Runtime.Intrinsics.Vector128`1<System.SByte>)
    IL_0016: call System.Runtime.Intrinsics.Vector256`1<System.SByte> Z0.dinx::vconcat(System.Runtime.Intrinsics.Vector128`1<System.SByte>,System.Runtime.Intrinsics.Vector128`1<System.SByte>)
    IL_001B: ret
}
