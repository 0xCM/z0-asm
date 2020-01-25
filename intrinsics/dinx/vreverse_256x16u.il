// Id := 100663892, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vreverse(System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
// Vector256<ushort> vreverse(Vector256<ushort> src)
// AggressiveInlining
Vector256<ushort> vreverse(Vector256<ushort> src)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vhi(System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
    IL_0006: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vreverse(System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
    IL_000B: ldarg.0
    IL_000C: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vlo(System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
    IL_0011: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vreverse(System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
    IL_0016: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vconcat(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
    IL_001B: ret
}
