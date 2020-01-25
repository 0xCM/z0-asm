// Id := 100663454, Name := Z0.Logix.LiteralExpr`1<T> Z0.Logix.CompareEval::eval<T>(Z0.Logix.IExpr`1<T>)
// LiteralExpr<ushort> eval<ushort>(IExpr<ushort> expr)
// IL
LiteralExpr<ushort> eval<ushort>(IExpr<ushort> expr)
{
    IL_0000: ldarg.0
    IL_0001: isinst Z0.Logix.IArithmeticExpr`1<T>
    IL_0006: stloc.0
    IL_0007: ldloc.0
    IL_0008: brfalse.s IL_0011
    IL_000A: ldloc.0
    IL_000B: call Z0.Logix.LiteralExpr`1<T> Z0.Logix.ArithExprEval::eval<T>(Z0.Logix.IArithmeticExpr`1<T>)
    IL_0010: ret
    IL_0011: ldarg.0
    IL_0012: call Z0.Logix.LiteralExpr`1<T> Z0.Logix.LogicEngine::eval<T>(Z0.Logix.IExpr`1<T>)
    IL_0017: ret
}
