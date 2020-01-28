// Id := 100663452, Name := Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.CompareEval::eval<T>(Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
// LiteralExpr<Vector128<byte>> eval<byte>(IComparisonExpr<Vector128<byte>> expr)
// IL
LiteralExpr<Vector128<byte>> eval<byte>(IComparisonExpr<Vector128<byte>> expr)
{
    IL_0000: ldarg.0
    IL_0001: callvirt Z0.ComparisonKind Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_ComparisonKind()
    IL_0006: ldarg.0
    IL_0007: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_LeftArg()
    IL_000C: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.CompareEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_0011: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_0016: ldarg.0
    IL_0017: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_RightArg()
    IL_001C: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.CompareEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_0021: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_0026: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOpApi::eval<T>(Z0.ComparisonKind,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_002B: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::op_Implicit(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0030: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663452, Name := Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.CompareEval::eval<T>(Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
// LiteralExpr<Vector128<sbyte>> eval<sbyte>(IComparisonExpr<Vector128<sbyte>> expr)
// IL
LiteralExpr<Vector128<sbyte>> eval<sbyte>(IComparisonExpr<Vector128<sbyte>> expr)
{
    IL_0000: ldarg.0
    IL_0001: callvirt Z0.ComparisonKind Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_ComparisonKind()
    IL_0006: ldarg.0
    IL_0007: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_LeftArg()
    IL_000C: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.CompareEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_0011: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_0016: ldarg.0
    IL_0017: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_RightArg()
    IL_001C: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.CompareEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_0021: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_0026: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOpApi::eval<T>(Z0.ComparisonKind,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_002B: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::op_Implicit(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0030: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663452, Name := Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.CompareEval::eval<T>(Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
// LiteralExpr<Vector128<ushort>> eval<ushort>(IComparisonExpr<Vector128<ushort>> expr)
// IL
LiteralExpr<Vector128<ushort>> eval<ushort>(IComparisonExpr<Vector128<ushort>> expr)
{
    IL_0000: ldarg.0
    IL_0001: callvirt Z0.ComparisonKind Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_ComparisonKind()
    IL_0006: ldarg.0
    IL_0007: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_LeftArg()
    IL_000C: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.CompareEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_0011: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_0016: ldarg.0
    IL_0017: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_RightArg()
    IL_001C: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.CompareEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_0021: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_0026: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOpApi::eval<T>(Z0.ComparisonKind,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_002B: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::op_Implicit(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0030: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663452, Name := Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.CompareEval::eval<T>(Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
// LiteralExpr<Vector128<short>> eval<short>(IComparisonExpr<Vector128<short>> expr)
// IL
LiteralExpr<Vector128<short>> eval<short>(IComparisonExpr<Vector128<short>> expr)
{
    IL_0000: ldarg.0
    IL_0001: callvirt Z0.ComparisonKind Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_ComparisonKind()
    IL_0006: ldarg.0
    IL_0007: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_LeftArg()
    IL_000C: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.CompareEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_0011: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_0016: ldarg.0
    IL_0017: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_RightArg()
    IL_001C: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.CompareEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_0021: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_0026: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOpApi::eval<T>(Z0.ComparisonKind,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_002B: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::op_Implicit(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0030: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663452, Name := Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.CompareEval::eval<T>(Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
// LiteralExpr<Vector128<uint>> eval<uint>(IComparisonExpr<Vector128<uint>> expr)
// IL
LiteralExpr<Vector128<uint>> eval<uint>(IComparisonExpr<Vector128<uint>> expr)
{
    IL_0000: ldarg.0
    IL_0001: callvirt Z0.ComparisonKind Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_ComparisonKind()
    IL_0006: ldarg.0
    IL_0007: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_LeftArg()
    IL_000C: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.CompareEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_0011: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_0016: ldarg.0
    IL_0017: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_RightArg()
    IL_001C: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.CompareEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_0021: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_0026: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOpApi::eval<T>(Z0.ComparisonKind,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_002B: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::op_Implicit(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0030: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663452, Name := Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.CompareEval::eval<T>(Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
// LiteralExpr<Vector128<int>> eval<int>(IComparisonExpr<Vector128<int>> expr)
// IL
LiteralExpr<Vector128<int>> eval<int>(IComparisonExpr<Vector128<int>> expr)
{
    IL_0000: ldarg.0
    IL_0001: callvirt Z0.ComparisonKind Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_ComparisonKind()
    IL_0006: ldarg.0
    IL_0007: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_LeftArg()
    IL_000C: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.CompareEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_0011: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_0016: ldarg.0
    IL_0017: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_RightArg()
    IL_001C: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.CompareEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_0021: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_0026: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOpApi::eval<T>(Z0.ComparisonKind,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_002B: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::op_Implicit(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0030: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663452, Name := Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.CompareEval::eval<T>(Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
// LiteralExpr<Vector128<long>> eval<long>(IComparisonExpr<Vector128<long>> expr)
// IL
LiteralExpr<Vector128<long>> eval<long>(IComparisonExpr<Vector128<long>> expr)
{
    IL_0000: ldarg.0
    IL_0001: callvirt Z0.ComparisonKind Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_ComparisonKind()
    IL_0006: ldarg.0
    IL_0007: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_LeftArg()
    IL_000C: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.CompareEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_0011: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_0016: ldarg.0
    IL_0017: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_RightArg()
    IL_001C: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.CompareEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_0021: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_0026: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOpApi::eval<T>(Z0.ComparisonKind,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_002B: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::op_Implicit(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0030: ret
}
------------------------------------------------------------------------------------------------------------------------
