// Id := 100663451, Name := Z0.bit Z0.Logix.CompareEval::eval<T>(Z0.Logix.IComparisonPred`1<T>)
// bit eval<byte>(IComparisonPred<byte> expr)
// IL
bit eval<byte>(IComparisonPred<byte> expr)
{
    IL_0000: ldarg.0
    IL_0001: callvirt Z0.ComparisonKind Z0.Logix.IComparisonExpr`1<T>::get_ComparisonKind()
    IL_0006: ldarg.0
    IL_0007: callvirt Z0.Logix.IExpr`1<T> Z0.Logix.IComparisonExpr`1<T>::get_LeftArg()
    IL_000C: call Z0.Logix.LiteralExpr`1<T> Z0.Logix.CompareEval::eval<T>(Z0.Logix.IExpr`1<T>)
    IL_0011: callvirt T Z0.Logix.LiteralExpr`1<T>::get_Value()
    IL_0016: ldarg.0
    IL_0017: callvirt Z0.Logix.IExpr`1<T> Z0.Logix.IComparisonExpr`1<T>::get_RightArg()
    IL_001C: call Z0.Logix.LiteralExpr`1<T> Z0.Logix.CompareEval::eval<T>(Z0.Logix.IExpr`1<T>)
    IL_0021: callvirt T Z0.Logix.LiteralExpr`1<T>::get_Value()
    IL_0026: call Z0.bit Z0.Logix.PredicateApi::eval<T>(Z0.ComparisonKind,T,T)
    IL_002B: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663451, Name := Z0.bit Z0.Logix.CompareEval::eval<T>(Z0.Logix.IComparisonPred`1<T>)
// bit eval<sbyte>(IComparisonPred<sbyte> expr)
// IL
bit eval<sbyte>(IComparisonPred<sbyte> expr)
{
    IL_0000: ldarg.0
    IL_0001: callvirt Z0.ComparisonKind Z0.Logix.IComparisonExpr`1<T>::get_ComparisonKind()
    IL_0006: ldarg.0
    IL_0007: callvirt Z0.Logix.IExpr`1<T> Z0.Logix.IComparisonExpr`1<T>::get_LeftArg()
    IL_000C: call Z0.Logix.LiteralExpr`1<T> Z0.Logix.CompareEval::eval<T>(Z0.Logix.IExpr`1<T>)
    IL_0011: callvirt T Z0.Logix.LiteralExpr`1<T>::get_Value()
    IL_0016: ldarg.0
    IL_0017: callvirt Z0.Logix.IExpr`1<T> Z0.Logix.IComparisonExpr`1<T>::get_RightArg()
    IL_001C: call Z0.Logix.LiteralExpr`1<T> Z0.Logix.CompareEval::eval<T>(Z0.Logix.IExpr`1<T>)
    IL_0021: callvirt T Z0.Logix.LiteralExpr`1<T>::get_Value()
    IL_0026: call Z0.bit Z0.Logix.PredicateApi::eval<T>(Z0.ComparisonKind,T,T)
    IL_002B: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663451, Name := Z0.bit Z0.Logix.CompareEval::eval<T>(Z0.Logix.IComparisonPred`1<T>)
// bit eval<ushort>(IComparisonPred<ushort> expr)
// IL
bit eval<ushort>(IComparisonPred<ushort> expr)
{
    IL_0000: ldarg.0
    IL_0001: callvirt Z0.ComparisonKind Z0.Logix.IComparisonExpr`1<T>::get_ComparisonKind()
    IL_0006: ldarg.0
    IL_0007: callvirt Z0.Logix.IExpr`1<T> Z0.Logix.IComparisonExpr`1<T>::get_LeftArg()
    IL_000C: call Z0.Logix.LiteralExpr`1<T> Z0.Logix.CompareEval::eval<T>(Z0.Logix.IExpr`1<T>)
    IL_0011: callvirt T Z0.Logix.LiteralExpr`1<T>::get_Value()
    IL_0016: ldarg.0
    IL_0017: callvirt Z0.Logix.IExpr`1<T> Z0.Logix.IComparisonExpr`1<T>::get_RightArg()
    IL_001C: call Z0.Logix.LiteralExpr`1<T> Z0.Logix.CompareEval::eval<T>(Z0.Logix.IExpr`1<T>)
    IL_0021: callvirt T Z0.Logix.LiteralExpr`1<T>::get_Value()
    IL_0026: call Z0.bit Z0.Logix.PredicateApi::eval<T>(Z0.ComparisonKind,T,T)
    IL_002B: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663451, Name := Z0.bit Z0.Logix.CompareEval::eval<T>(Z0.Logix.IComparisonPred`1<T>)
// bit eval<short>(IComparisonPred<short> expr)
// IL
bit eval<short>(IComparisonPred<short> expr)
{
    IL_0000: ldarg.0
    IL_0001: callvirt Z0.ComparisonKind Z0.Logix.IComparisonExpr`1<T>::get_ComparisonKind()
    IL_0006: ldarg.0
    IL_0007: callvirt Z0.Logix.IExpr`1<T> Z0.Logix.IComparisonExpr`1<T>::get_LeftArg()
    IL_000C: call Z0.Logix.LiteralExpr`1<T> Z0.Logix.CompareEval::eval<T>(Z0.Logix.IExpr`1<T>)
    IL_0011: callvirt T Z0.Logix.LiteralExpr`1<T>::get_Value()
    IL_0016: ldarg.0
    IL_0017: callvirt Z0.Logix.IExpr`1<T> Z0.Logix.IComparisonExpr`1<T>::get_RightArg()
    IL_001C: call Z0.Logix.LiteralExpr`1<T> Z0.Logix.CompareEval::eval<T>(Z0.Logix.IExpr`1<T>)
    IL_0021: callvirt T Z0.Logix.LiteralExpr`1<T>::get_Value()
    IL_0026: call Z0.bit Z0.Logix.PredicateApi::eval<T>(Z0.ComparisonKind,T,T)
    IL_002B: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663451, Name := Z0.bit Z0.Logix.CompareEval::eval<T>(Z0.Logix.IComparisonPred`1<T>)
// bit eval<uint>(IComparisonPred<uint> expr)
// IL
bit eval<uint>(IComparisonPred<uint> expr)
{
    IL_0000: ldarg.0
    IL_0001: callvirt Z0.ComparisonKind Z0.Logix.IComparisonExpr`1<T>::get_ComparisonKind()
    IL_0006: ldarg.0
    IL_0007: callvirt Z0.Logix.IExpr`1<T> Z0.Logix.IComparisonExpr`1<T>::get_LeftArg()
    IL_000C: call Z0.Logix.LiteralExpr`1<T> Z0.Logix.CompareEval::eval<T>(Z0.Logix.IExpr`1<T>)
    IL_0011: callvirt T Z0.Logix.LiteralExpr`1<T>::get_Value()
    IL_0016: ldarg.0
    IL_0017: callvirt Z0.Logix.IExpr`1<T> Z0.Logix.IComparisonExpr`1<T>::get_RightArg()
    IL_001C: call Z0.Logix.LiteralExpr`1<T> Z0.Logix.CompareEval::eval<T>(Z0.Logix.IExpr`1<T>)
    IL_0021: callvirt T Z0.Logix.LiteralExpr`1<T>::get_Value()
    IL_0026: call Z0.bit Z0.Logix.PredicateApi::eval<T>(Z0.ComparisonKind,T,T)
    IL_002B: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663451, Name := Z0.bit Z0.Logix.CompareEval::eval<T>(Z0.Logix.IComparisonPred`1<T>)
// bit eval<int>(IComparisonPred<int> expr)
// IL
bit eval<int>(IComparisonPred<int> expr)
{
    IL_0000: ldarg.0
    IL_0001: callvirt Z0.ComparisonKind Z0.Logix.IComparisonExpr`1<T>::get_ComparisonKind()
    IL_0006: ldarg.0
    IL_0007: callvirt Z0.Logix.IExpr`1<T> Z0.Logix.IComparisonExpr`1<T>::get_LeftArg()
    IL_000C: call Z0.Logix.LiteralExpr`1<T> Z0.Logix.CompareEval::eval<T>(Z0.Logix.IExpr`1<T>)
    IL_0011: callvirt T Z0.Logix.LiteralExpr`1<T>::get_Value()
    IL_0016: ldarg.0
    IL_0017: callvirt Z0.Logix.IExpr`1<T> Z0.Logix.IComparisonExpr`1<T>::get_RightArg()
    IL_001C: call Z0.Logix.LiteralExpr`1<T> Z0.Logix.CompareEval::eval<T>(Z0.Logix.IExpr`1<T>)
    IL_0021: callvirt T Z0.Logix.LiteralExpr`1<T>::get_Value()
    IL_0026: call Z0.bit Z0.Logix.PredicateApi::eval<T>(Z0.ComparisonKind,T,T)
    IL_002B: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663451, Name := Z0.bit Z0.Logix.CompareEval::eval<T>(Z0.Logix.IComparisonPred`1<T>)
// bit eval<long>(IComparisonPred<long> expr)
// IL
bit eval<long>(IComparisonPred<long> expr)
{
    IL_0000: ldarg.0
    IL_0001: callvirt Z0.ComparisonKind Z0.Logix.IComparisonExpr`1<T>::get_ComparisonKind()
    IL_0006: ldarg.0
    IL_0007: callvirt Z0.Logix.IExpr`1<T> Z0.Logix.IComparisonExpr`1<T>::get_LeftArg()
    IL_000C: call Z0.Logix.LiteralExpr`1<T> Z0.Logix.CompareEval::eval<T>(Z0.Logix.IExpr`1<T>)
    IL_0011: callvirt T Z0.Logix.LiteralExpr`1<T>::get_Value()
    IL_0016: ldarg.0
    IL_0017: callvirt Z0.Logix.IExpr`1<T> Z0.Logix.IComparisonExpr`1<T>::get_RightArg()
    IL_001C: call Z0.Logix.LiteralExpr`1<T> Z0.Logix.CompareEval::eval<T>(Z0.Logix.IExpr`1<T>)
    IL_0021: callvirt T Z0.Logix.LiteralExpr`1<T>::get_Value()
    IL_0026: call Z0.bit Z0.Logix.PredicateApi::eval<T>(Z0.ComparisonKind,T,T)
    IL_002B: ret
}
------------------------------------------------------------------------------------------------------------------------
