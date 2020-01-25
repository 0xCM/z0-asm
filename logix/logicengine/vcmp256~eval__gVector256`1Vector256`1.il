// Id := 100663462, Name := Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector256`1<T>> Z0.Logix.LogicEngine::eval<T>(Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector256`1<T>>)
// LiteralExpr<Vector256<double>> eval<double>(IComparisonExpr<Vector256<double>> expr)
// IL
LiteralExpr<Vector256<double>> eval<double>(IComparisonExpr<Vector256<double>> expr)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector256`1<T>> Z0.Logix.CompareEval::eval<T>(Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector256`1<T>>)
    IL_0006: ret
}
