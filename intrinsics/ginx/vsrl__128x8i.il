// Id := 100665402, Name := System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vsrl<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Byte)
// Vector128<sbyte> vsrl<sbyte>(Vector128<sbyte> x, byte count)
// AggressiveInlining
Vector128<sbyte> vsrl<sbyte>(Vector128<sbyte> x, byte count)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vsrl_u<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Byte)
    IL_0007: ret
}
