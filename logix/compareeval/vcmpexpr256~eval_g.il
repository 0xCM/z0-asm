// Id := 100663453, Name := Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector256`1<T>> Z0.Logix.CompareEval::eval<T>(Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector256`1<T>>)
// LiteralExpr<Vector256<ulong>> eval<ulong>(IComparisonExpr<Vector256<ulong>> expr)
// IL
LiteralExpr<Vector256<ulong>> eval<ulong>(IComparisonExpr<Vector256<ulong>> expr)
{
    IL_0000: ldarg.0
    IL_0001: callvirt Z0.ComparisonKind Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector256`1<T>>::get_ComparisonKind()
    IL_0006: ldarg.0
    IL_0007: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector256`1<T>> Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector256`1<T>>::get_LeftArg()
    IL_000C: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector256`1<T>> Z0.Logix.CompareEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector256`1<T>>)
    IL_0011: callvirt System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector256`1<T>>::get_Value()
    IL_0016: ldarg.0
    IL_0017: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector256`1<T>> Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector256`1<T>>::get_RightArg()
    IL_001C: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector256`1<T>> Z0.Logix.CompareEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector256`1<T>>)
    IL_0021: callvirt System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector256`1<T>>::get_Value()
    IL_0026: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOpApi::eval<T>(Z0.ComparisonKind,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_002B: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector256`1<T>> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector256`1<T>>::op_Implicit(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0030: ret
}
------------------------------------------------------------------------------------------------------------------------
