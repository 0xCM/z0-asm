// Z0.Logix.LiteralExpr`1<T> Z0.Logix.CmpExprEval::eval<T>(Z0.Logix.IComparisonExpr`1<T>)
// LiteralExpr<byte> eval<byte>(IComparisonExpr<byte> expr)
// IL
LiteralExpr<byte> eval<byte>(IComparisonExpr<byte> expr)
{
    IL_0000: ldarg.0
    IL_0001: callvirt Z0.ComparisonKind Z0.Logix.IComparisonExpr`1<T>::get_ComparisonKind()
    IL_0006: ldarg.0
    IL_0007: callvirt Z0.Logix.IExpr`1<T> Z0.Logix.IComparisonExpr`1<T>::get_LeftArg()
    IL_000C: call Z0.Logix.LiteralExpr`1<T> Z0.Logix.CmpExprEval::eval<T>(Z0.Logix.IExpr`1<T>)
    IL_0011: callvirt T Z0.Logix.LiteralExpr`1<T>::get_Value()
    IL_0016: ldarg.0
    IL_0017: callvirt Z0.Logix.IExpr`1<T> Z0.Logix.IComparisonExpr`1<T>::get_RightArg()
    IL_001C: call Z0.Logix.LiteralExpr`1<T> Z0.Logix.CmpExprEval::eval<T>(Z0.Logix.IExpr`1<T>)
    IL_0021: callvirt T Z0.Logix.LiteralExpr`1<T>::get_Value()
    IL_0026: call T Z0.Logix.ScalarOpApi::eval<T>(Z0.ComparisonKind,T,T)
    IL_002B: call Z0.Logix.LiteralExpr`1<T> Z0.Logix.LiteralExpr`1<T>::op_Implicit(T)
    IL_0030: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Logix.LiteralExpr`1<T> Z0.Logix.CmpExprEval::eval<T>(Z0.Logix.IComparisonExpr`1<T>)
// LiteralExpr<sbyte> eval<sbyte>(IComparisonExpr<sbyte> expr)
// IL
LiteralExpr<sbyte> eval<sbyte>(IComparisonExpr<sbyte> expr)
{
    IL_0000: ldarg.0
    IL_0001: callvirt Z0.ComparisonKind Z0.Logix.IComparisonExpr`1<T>::get_ComparisonKind()
    IL_0006: ldarg.0
    IL_0007: callvirt Z0.Logix.IExpr`1<T> Z0.Logix.IComparisonExpr`1<T>::get_LeftArg()
    IL_000C: call Z0.Logix.LiteralExpr`1<T> Z0.Logix.CmpExprEval::eval<T>(Z0.Logix.IExpr`1<T>)
    IL_0011: callvirt T Z0.Logix.LiteralExpr`1<T>::get_Value()
    IL_0016: ldarg.0
    IL_0017: callvirt Z0.Logix.IExpr`1<T> Z0.Logix.IComparisonExpr`1<T>::get_RightArg()
    IL_001C: call Z0.Logix.LiteralExpr`1<T> Z0.Logix.CmpExprEval::eval<T>(Z0.Logix.IExpr`1<T>)
    IL_0021: callvirt T Z0.Logix.LiteralExpr`1<T>::get_Value()
    IL_0026: call T Z0.Logix.ScalarOpApi::eval<T>(Z0.ComparisonKind,T,T)
    IL_002B: call Z0.Logix.LiteralExpr`1<T> Z0.Logix.LiteralExpr`1<T>::op_Implicit(T)
    IL_0030: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Logix.LiteralExpr`1<T> Z0.Logix.CmpExprEval::eval<T>(Z0.Logix.IComparisonExpr`1<T>)
// LiteralExpr<ushort> eval<ushort>(IComparisonExpr<ushort> expr)
// IL
LiteralExpr<ushort> eval<ushort>(IComparisonExpr<ushort> expr)
{
    IL_0000: ldarg.0
    IL_0001: callvirt Z0.ComparisonKind Z0.Logix.IComparisonExpr`1<T>::get_ComparisonKind()
    IL_0006: ldarg.0
    IL_0007: callvirt Z0.Logix.IExpr`1<T> Z0.Logix.IComparisonExpr`1<T>::get_LeftArg()
    IL_000C: call Z0.Logix.LiteralExpr`1<T> Z0.Logix.CmpExprEval::eval<T>(Z0.Logix.IExpr`1<T>)
    IL_0011: callvirt T Z0.Logix.LiteralExpr`1<T>::get_Value()
    IL_0016: ldarg.0
    IL_0017: callvirt Z0.Logix.IExpr`1<T> Z0.Logix.IComparisonExpr`1<T>::get_RightArg()
    IL_001C: call Z0.Logix.LiteralExpr`1<T> Z0.Logix.CmpExprEval::eval<T>(Z0.Logix.IExpr`1<T>)
    IL_0021: callvirt T Z0.Logix.LiteralExpr`1<T>::get_Value()
    IL_0026: call T Z0.Logix.ScalarOpApi::eval<T>(Z0.ComparisonKind,T,T)
    IL_002B: call Z0.Logix.LiteralExpr`1<T> Z0.Logix.LiteralExpr`1<T>::op_Implicit(T)
    IL_0030: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Logix.LiteralExpr`1<T> Z0.Logix.CmpExprEval::eval<T>(Z0.Logix.IComparisonExpr`1<T>)
// LiteralExpr<short> eval<short>(IComparisonExpr<short> expr)
// IL
LiteralExpr<short> eval<short>(IComparisonExpr<short> expr)
{
    IL_0000: ldarg.0
    IL_0001: callvirt Z0.ComparisonKind Z0.Logix.IComparisonExpr`1<T>::get_ComparisonKind()
    IL_0006: ldarg.0
    IL_0007: callvirt Z0.Logix.IExpr`1<T> Z0.Logix.IComparisonExpr`1<T>::get_LeftArg()
    IL_000C: call Z0.Logix.LiteralExpr`1<T> Z0.Logix.CmpExprEval::eval<T>(Z0.Logix.IExpr`1<T>)
    IL_0011: callvirt T Z0.Logix.LiteralExpr`1<T>::get_Value()
    IL_0016: ldarg.0
    IL_0017: callvirt Z0.Logix.IExpr`1<T> Z0.Logix.IComparisonExpr`1<T>::get_RightArg()
    IL_001C: call Z0.Logix.LiteralExpr`1<T> Z0.Logix.CmpExprEval::eval<T>(Z0.Logix.IExpr`1<T>)
    IL_0021: callvirt T Z0.Logix.LiteralExpr`1<T>::get_Value()
    IL_0026: call T Z0.Logix.ScalarOpApi::eval<T>(Z0.ComparisonKind,T,T)
    IL_002B: call Z0.Logix.LiteralExpr`1<T> Z0.Logix.LiteralExpr`1<T>::op_Implicit(T)
    IL_0030: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Logix.LiteralExpr`1<T> Z0.Logix.CmpExprEval::eval<T>(Z0.Logix.IComparisonExpr`1<T>)
// LiteralExpr<uint> eval<uint>(IComparisonExpr<uint> expr)
// IL
LiteralExpr<uint> eval<uint>(IComparisonExpr<uint> expr)
{
    IL_0000: ldarg.0
    IL_0001: callvirt Z0.ComparisonKind Z0.Logix.IComparisonExpr`1<T>::get_ComparisonKind()
    IL_0006: ldarg.0
    IL_0007: callvirt Z0.Logix.IExpr`1<T> Z0.Logix.IComparisonExpr`1<T>::get_LeftArg()
    IL_000C: call Z0.Logix.LiteralExpr`1<T> Z0.Logix.CmpExprEval::eval<T>(Z0.Logix.IExpr`1<T>)
    IL_0011: callvirt T Z0.Logix.LiteralExpr`1<T>::get_Value()
    IL_0016: ldarg.0
    IL_0017: callvirt Z0.Logix.IExpr`1<T> Z0.Logix.IComparisonExpr`1<T>::get_RightArg()
    IL_001C: call Z0.Logix.LiteralExpr`1<T> Z0.Logix.CmpExprEval::eval<T>(Z0.Logix.IExpr`1<T>)
    IL_0021: callvirt T Z0.Logix.LiteralExpr`1<T>::get_Value()
    IL_0026: call T Z0.Logix.ScalarOpApi::eval<T>(Z0.ComparisonKind,T,T)
    IL_002B: call Z0.Logix.LiteralExpr`1<T> Z0.Logix.LiteralExpr`1<T>::op_Implicit(T)
    IL_0030: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Logix.LiteralExpr`1<T> Z0.Logix.CmpExprEval::eval<T>(Z0.Logix.IComparisonExpr`1<T>)
// LiteralExpr<int> eval<int>(IComparisonExpr<int> expr)
// IL
LiteralExpr<int> eval<int>(IComparisonExpr<int> expr)
{
    IL_0000: ldarg.0
    IL_0001: callvirt Z0.ComparisonKind Z0.Logix.IComparisonExpr`1<T>::get_ComparisonKind()
    IL_0006: ldarg.0
    IL_0007: callvirt Z0.Logix.IExpr`1<T> Z0.Logix.IComparisonExpr`1<T>::get_LeftArg()
    IL_000C: call Z0.Logix.LiteralExpr`1<T> Z0.Logix.CmpExprEval::eval<T>(Z0.Logix.IExpr`1<T>)
    IL_0011: callvirt T Z0.Logix.LiteralExpr`1<T>::get_Value()
    IL_0016: ldarg.0
    IL_0017: callvirt Z0.Logix.IExpr`1<T> Z0.Logix.IComparisonExpr`1<T>::get_RightArg()
    IL_001C: call Z0.Logix.LiteralExpr`1<T> Z0.Logix.CmpExprEval::eval<T>(Z0.Logix.IExpr`1<T>)
    IL_0021: callvirt T Z0.Logix.LiteralExpr`1<T>::get_Value()
    IL_0026: call T Z0.Logix.ScalarOpApi::eval<T>(Z0.ComparisonKind,T,T)
    IL_002B: call Z0.Logix.LiteralExpr`1<T> Z0.Logix.LiteralExpr`1<T>::op_Implicit(T)
    IL_0030: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Logix.LiteralExpr`1<T> Z0.Logix.CmpExprEval::eval<T>(Z0.Logix.IComparisonExpr`1<T>)
// LiteralExpr<long> eval<long>(IComparisonExpr<long> expr)
// IL
LiteralExpr<long> eval<long>(IComparisonExpr<long> expr)
{
    IL_0000: ldarg.0
    IL_0001: callvirt Z0.ComparisonKind Z0.Logix.IComparisonExpr`1<T>::get_ComparisonKind()
    IL_0006: ldarg.0
    IL_0007: callvirt Z0.Logix.IExpr`1<T> Z0.Logix.IComparisonExpr`1<T>::get_LeftArg()
    IL_000C: call Z0.Logix.LiteralExpr`1<T> Z0.Logix.CmpExprEval::eval<T>(Z0.Logix.IExpr`1<T>)
    IL_0011: callvirt T Z0.Logix.LiteralExpr`1<T>::get_Value()
    IL_0016: ldarg.0
    IL_0017: callvirt Z0.Logix.IExpr`1<T> Z0.Logix.IComparisonExpr`1<T>::get_RightArg()
    IL_001C: call Z0.Logix.LiteralExpr`1<T> Z0.Logix.CmpExprEval::eval<T>(Z0.Logix.IExpr`1<T>)
    IL_0021: callvirt T Z0.Logix.LiteralExpr`1<T>::get_Value()
    IL_0026: call T Z0.Logix.ScalarOpApi::eval<T>(Z0.ComparisonKind,T,T)
    IL_002B: call Z0.Logix.LiteralExpr`1<T> Z0.Logix.LiteralExpr`1<T>::op_Implicit(T)
    IL_0030: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.CmpExprEval::eval<T>(Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
// LiteralExpr<Vector128<byte>> eval<byte>(IComparisonExpr<Vector128<byte>> expr)
// IL
LiteralExpr<Vector128<byte>> eval<byte>(IComparisonExpr<Vector128<byte>> expr)
{
    IL_0000: ldarg.0
    IL_0001: callvirt Z0.ComparisonKind Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_ComparisonKind()
    IL_0006: ldarg.0
    IL_0007: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_LeftArg()
    IL_000C: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.CmpExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_0011: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_0016: ldarg.0
    IL_0017: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_RightArg()
    IL_001C: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.CmpExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_0021: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_0026: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorOpApi::eval<T>(Z0.ComparisonKind,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_002B: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::op_Implicit(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0030: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.CmpExprEval::eval<T>(Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
// LiteralExpr<Vector128<sbyte>> eval<sbyte>(IComparisonExpr<Vector128<sbyte>> expr)
// IL
LiteralExpr<Vector128<sbyte>> eval<sbyte>(IComparisonExpr<Vector128<sbyte>> expr)
{
    IL_0000: ldarg.0
    IL_0001: callvirt Z0.ComparisonKind Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_ComparisonKind()
    IL_0006: ldarg.0
    IL_0007: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_LeftArg()
    IL_000C: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.CmpExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_0011: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_0016: ldarg.0
    IL_0017: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_RightArg()
    IL_001C: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.CmpExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_0021: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_0026: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorOpApi::eval<T>(Z0.ComparisonKind,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_002B: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::op_Implicit(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0030: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.CmpExprEval::eval<T>(Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
// LiteralExpr<Vector128<ushort>> eval<ushort>(IComparisonExpr<Vector128<ushort>> expr)
// IL
LiteralExpr<Vector128<ushort>> eval<ushort>(IComparisonExpr<Vector128<ushort>> expr)
{
    IL_0000: ldarg.0
    IL_0001: callvirt Z0.ComparisonKind Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_ComparisonKind()
    IL_0006: ldarg.0
    IL_0007: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_LeftArg()
    IL_000C: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.CmpExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_0011: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_0016: ldarg.0
    IL_0017: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_RightArg()
    IL_001C: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.CmpExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_0021: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_0026: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorOpApi::eval<T>(Z0.ComparisonKind,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_002B: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::op_Implicit(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0030: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.CmpExprEval::eval<T>(Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
// LiteralExpr<Vector128<short>> eval<short>(IComparisonExpr<Vector128<short>> expr)
// IL
LiteralExpr<Vector128<short>> eval<short>(IComparisonExpr<Vector128<short>> expr)
{
    IL_0000: ldarg.0
    IL_0001: callvirt Z0.ComparisonKind Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_ComparisonKind()
    IL_0006: ldarg.0
    IL_0007: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_LeftArg()
    IL_000C: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.CmpExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_0011: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_0016: ldarg.0
    IL_0017: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_RightArg()
    IL_001C: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.CmpExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_0021: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_0026: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorOpApi::eval<T>(Z0.ComparisonKind,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_002B: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::op_Implicit(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0030: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.CmpExprEval::eval<T>(Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
// LiteralExpr<Vector128<uint>> eval<uint>(IComparisonExpr<Vector128<uint>> expr)
// IL
LiteralExpr<Vector128<uint>> eval<uint>(IComparisonExpr<Vector128<uint>> expr)
{
    IL_0000: ldarg.0
    IL_0001: callvirt Z0.ComparisonKind Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_ComparisonKind()
    IL_0006: ldarg.0
    IL_0007: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_LeftArg()
    IL_000C: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.CmpExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_0011: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_0016: ldarg.0
    IL_0017: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_RightArg()
    IL_001C: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.CmpExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_0021: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_0026: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorOpApi::eval<T>(Z0.ComparisonKind,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_002B: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::op_Implicit(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0030: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.CmpExprEval::eval<T>(Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
// LiteralExpr<Vector128<int>> eval<int>(IComparisonExpr<Vector128<int>> expr)
// IL
LiteralExpr<Vector128<int>> eval<int>(IComparisonExpr<Vector128<int>> expr)
{
    IL_0000: ldarg.0
    IL_0001: callvirt Z0.ComparisonKind Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_ComparisonKind()
    IL_0006: ldarg.0
    IL_0007: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_LeftArg()
    IL_000C: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.CmpExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_0011: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_0016: ldarg.0
    IL_0017: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_RightArg()
    IL_001C: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.CmpExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_0021: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_0026: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorOpApi::eval<T>(Z0.ComparisonKind,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_002B: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::op_Implicit(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0030: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.CmpExprEval::eval<T>(Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
// LiteralExpr<Vector128<long>> eval<long>(IComparisonExpr<Vector128<long>> expr)
// IL
LiteralExpr<Vector128<long>> eval<long>(IComparisonExpr<Vector128<long>> expr)
{
    IL_0000: ldarg.0
    IL_0001: callvirt Z0.ComparisonKind Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_ComparisonKind()
    IL_0006: ldarg.0
    IL_0007: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_LeftArg()
    IL_000C: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.CmpExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_0011: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_0016: ldarg.0
    IL_0017: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_RightArg()
    IL_001C: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.CmpExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_0021: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_0026: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorOpApi::eval<T>(Z0.ComparisonKind,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_002B: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::op_Implicit(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0030: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector256`1<T>> Z0.Logix.CmpExprEval::eval<T>(Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector256`1<T>>)
// LiteralExpr<Vector256<byte>> eval<byte>(IComparisonExpr<Vector256<byte>> expr)
// IL
LiteralExpr<Vector256<byte>> eval<byte>(IComparisonExpr<Vector256<byte>> expr)
{
    IL_0000: ldarg.0
    IL_0001: callvirt Z0.ComparisonKind Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector256`1<T>>::get_ComparisonKind()
    IL_0006: ldarg.0
    IL_0007: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector256`1<T>> Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector256`1<T>>::get_LeftArg()
    IL_000C: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector256`1<T>> Z0.Logix.CmpExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector256`1<T>>)
    IL_0011: callvirt System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector256`1<T>>::get_Value()
    IL_0016: ldarg.0
    IL_0017: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector256`1<T>> Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector256`1<T>>::get_RightArg()
    IL_001C: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector256`1<T>> Z0.Logix.CmpExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector256`1<T>>)
    IL_0021: callvirt System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector256`1<T>>::get_Value()
    IL_0026: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorOpApi::eval<T>(Z0.ComparisonKind,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_002B: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector256`1<T>> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector256`1<T>>::op_Implicit(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0030: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector256`1<T>> Z0.Logix.CmpExprEval::eval<T>(Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector256`1<T>>)
// LiteralExpr<Vector256<sbyte>> eval<sbyte>(IComparisonExpr<Vector256<sbyte>> expr)
// IL
LiteralExpr<Vector256<sbyte>> eval<sbyte>(IComparisonExpr<Vector256<sbyte>> expr)
{
    IL_0000: ldarg.0
    IL_0001: callvirt Z0.ComparisonKind Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector256`1<T>>::get_ComparisonKind()
    IL_0006: ldarg.0
    IL_0007: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector256`1<T>> Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector256`1<T>>::get_LeftArg()
    IL_000C: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector256`1<T>> Z0.Logix.CmpExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector256`1<T>>)
    IL_0011: callvirt System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector256`1<T>>::get_Value()
    IL_0016: ldarg.0
    IL_0017: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector256`1<T>> Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector256`1<T>>::get_RightArg()
    IL_001C: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector256`1<T>> Z0.Logix.CmpExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector256`1<T>>)
    IL_0021: callvirt System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector256`1<T>>::get_Value()
    IL_0026: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorOpApi::eval<T>(Z0.ComparisonKind,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_002B: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector256`1<T>> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector256`1<T>>::op_Implicit(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0030: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector256`1<T>> Z0.Logix.CmpExprEval::eval<T>(Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector256`1<T>>)
// LiteralExpr<Vector256<ushort>> eval<ushort>(IComparisonExpr<Vector256<ushort>> expr)
// IL
LiteralExpr<Vector256<ushort>> eval<ushort>(IComparisonExpr<Vector256<ushort>> expr)
{
    IL_0000: ldarg.0
    IL_0001: callvirt Z0.ComparisonKind Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector256`1<T>>::get_ComparisonKind()
    IL_0006: ldarg.0
    IL_0007: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector256`1<T>> Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector256`1<T>>::get_LeftArg()
    IL_000C: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector256`1<T>> Z0.Logix.CmpExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector256`1<T>>)
    IL_0011: callvirt System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector256`1<T>>::get_Value()
    IL_0016: ldarg.0
    IL_0017: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector256`1<T>> Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector256`1<T>>::get_RightArg()
    IL_001C: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector256`1<T>> Z0.Logix.CmpExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector256`1<T>>)
    IL_0021: callvirt System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector256`1<T>>::get_Value()
    IL_0026: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorOpApi::eval<T>(Z0.ComparisonKind,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_002B: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector256`1<T>> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector256`1<T>>::op_Implicit(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0030: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector256`1<T>> Z0.Logix.CmpExprEval::eval<T>(Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector256`1<T>>)
// LiteralExpr<Vector256<short>> eval<short>(IComparisonExpr<Vector256<short>> expr)
// IL
LiteralExpr<Vector256<short>> eval<short>(IComparisonExpr<Vector256<short>> expr)
{
    IL_0000: ldarg.0
    IL_0001: callvirt Z0.ComparisonKind Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector256`1<T>>::get_ComparisonKind()
    IL_0006: ldarg.0
    IL_0007: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector256`1<T>> Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector256`1<T>>::get_LeftArg()
    IL_000C: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector256`1<T>> Z0.Logix.CmpExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector256`1<T>>)
    IL_0011: callvirt System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector256`1<T>>::get_Value()
    IL_0016: ldarg.0
    IL_0017: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector256`1<T>> Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector256`1<T>>::get_RightArg()
    IL_001C: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector256`1<T>> Z0.Logix.CmpExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector256`1<T>>)
    IL_0021: callvirt System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector256`1<T>>::get_Value()
    IL_0026: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorOpApi::eval<T>(Z0.ComparisonKind,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_002B: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector256`1<T>> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector256`1<T>>::op_Implicit(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0030: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector256`1<T>> Z0.Logix.CmpExprEval::eval<T>(Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector256`1<T>>)
// LiteralExpr<Vector256<uint>> eval<uint>(IComparisonExpr<Vector256<uint>> expr)
// IL
LiteralExpr<Vector256<uint>> eval<uint>(IComparisonExpr<Vector256<uint>> expr)
{
    IL_0000: ldarg.0
    IL_0001: callvirt Z0.ComparisonKind Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector256`1<T>>::get_ComparisonKind()
    IL_0006: ldarg.0
    IL_0007: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector256`1<T>> Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector256`1<T>>::get_LeftArg()
    IL_000C: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector256`1<T>> Z0.Logix.CmpExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector256`1<T>>)
    IL_0011: callvirt System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector256`1<T>>::get_Value()
    IL_0016: ldarg.0
    IL_0017: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector256`1<T>> Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector256`1<T>>::get_RightArg()
    IL_001C: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector256`1<T>> Z0.Logix.CmpExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector256`1<T>>)
    IL_0021: callvirt System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector256`1<T>>::get_Value()
    IL_0026: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorOpApi::eval<T>(Z0.ComparisonKind,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_002B: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector256`1<T>> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector256`1<T>>::op_Implicit(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0030: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector256`1<T>> Z0.Logix.CmpExprEval::eval<T>(Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector256`1<T>>)
// LiteralExpr<Vector256<int>> eval<int>(IComparisonExpr<Vector256<int>> expr)
// IL
LiteralExpr<Vector256<int>> eval<int>(IComparisonExpr<Vector256<int>> expr)
{
    IL_0000: ldarg.0
    IL_0001: callvirt Z0.ComparisonKind Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector256`1<T>>::get_ComparisonKind()
    IL_0006: ldarg.0
    IL_0007: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector256`1<T>> Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector256`1<T>>::get_LeftArg()
    IL_000C: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector256`1<T>> Z0.Logix.CmpExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector256`1<T>>)
    IL_0011: callvirt System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector256`1<T>>::get_Value()
    IL_0016: ldarg.0
    IL_0017: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector256`1<T>> Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector256`1<T>>::get_RightArg()
    IL_001C: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector256`1<T>> Z0.Logix.CmpExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector256`1<T>>)
    IL_0021: callvirt System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector256`1<T>>::get_Value()
    IL_0026: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorOpApi::eval<T>(Z0.ComparisonKind,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_002B: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector256`1<T>> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector256`1<T>>::op_Implicit(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0030: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector256`1<T>> Z0.Logix.CmpExprEval::eval<T>(Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector256`1<T>>)
// LiteralExpr<Vector256<long>> eval<long>(IComparisonExpr<Vector256<long>> expr)
// IL
LiteralExpr<Vector256<long>> eval<long>(IComparisonExpr<Vector256<long>> expr)
{
    IL_0000: ldarg.0
    IL_0001: callvirt Z0.ComparisonKind Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector256`1<T>>::get_ComparisonKind()
    IL_0006: ldarg.0
    IL_0007: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector256`1<T>> Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector256`1<T>>::get_LeftArg()
    IL_000C: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector256`1<T>> Z0.Logix.CmpExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector256`1<T>>)
    IL_0011: callvirt System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector256`1<T>>::get_Value()
    IL_0016: ldarg.0
    IL_0017: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector256`1<T>> Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector256`1<T>>::get_RightArg()
    IL_001C: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector256`1<T>> Z0.Logix.CmpExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector256`1<T>>)
    IL_0021: callvirt System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector256`1<T>>::get_Value()
    IL_0026: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorOpApi::eval<T>(Z0.ComparisonKind,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_002B: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector256`1<T>> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector256`1<T>>::op_Implicit(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0030: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Logix.LiteralExpr`1<T> Z0.Logix.CmpExprEval::eval<T>(Z0.Logix.IExpr`1<T>)
// LiteralExpr<byte> eval<byte>(IExpr<byte> expr)
// IL
LiteralExpr<byte> eval<byte>(IExpr<byte> expr)
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
------------------------------------------------------------------------------------------------------------------------
// Z0.Logix.LiteralExpr`1<T> Z0.Logix.CmpExprEval::eval<T>(Z0.Logix.IExpr`1<T>)
// LiteralExpr<sbyte> eval<sbyte>(IExpr<sbyte> expr)
// IL
LiteralExpr<sbyte> eval<sbyte>(IExpr<sbyte> expr)
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
------------------------------------------------------------------------------------------------------------------------
// Z0.Logix.LiteralExpr`1<T> Z0.Logix.CmpExprEval::eval<T>(Z0.Logix.IExpr`1<T>)
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
------------------------------------------------------------------------------------------------------------------------
// Z0.Logix.LiteralExpr`1<T> Z0.Logix.CmpExprEval::eval<T>(Z0.Logix.IExpr`1<T>)
// LiteralExpr<short> eval<short>(IExpr<short> expr)
// IL
LiteralExpr<short> eval<short>(IExpr<short> expr)
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
------------------------------------------------------------------------------------------------------------------------
// Z0.Logix.LiteralExpr`1<T> Z0.Logix.CmpExprEval::eval<T>(Z0.Logix.IExpr`1<T>)
// LiteralExpr<uint> eval<uint>(IExpr<uint> expr)
// IL
LiteralExpr<uint> eval<uint>(IExpr<uint> expr)
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
------------------------------------------------------------------------------------------------------------------------
// Z0.Logix.LiteralExpr`1<T> Z0.Logix.CmpExprEval::eval<T>(Z0.Logix.IExpr`1<T>)
// LiteralExpr<int> eval<int>(IExpr<int> expr)
// IL
LiteralExpr<int> eval<int>(IExpr<int> expr)
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
------------------------------------------------------------------------------------------------------------------------
// Z0.Logix.LiteralExpr`1<T> Z0.Logix.CmpExprEval::eval<T>(Z0.Logix.IExpr`1<T>)
// LiteralExpr<long> eval<long>(IExpr<long> expr)
// IL
LiteralExpr<long> eval<long>(IExpr<long> expr)
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
------------------------------------------------------------------------------------------------------------------------
// Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.CmpExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
// LiteralExpr<Vector128<byte>> eval<byte>(IExpr<Vector128<byte>> expr)
// IL
LiteralExpr<Vector128<byte>> eval<byte>(IExpr<Vector128<byte>> expr)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.LogicEngine::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.CmpExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
// LiteralExpr<Vector128<sbyte>> eval<sbyte>(IExpr<Vector128<sbyte>> expr)
// IL
LiteralExpr<Vector128<sbyte>> eval<sbyte>(IExpr<Vector128<sbyte>> expr)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.LogicEngine::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.CmpExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
// LiteralExpr<Vector128<ushort>> eval<ushort>(IExpr<Vector128<ushort>> expr)
// IL
LiteralExpr<Vector128<ushort>> eval<ushort>(IExpr<Vector128<ushort>> expr)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.LogicEngine::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.CmpExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
// LiteralExpr<Vector128<short>> eval<short>(IExpr<Vector128<short>> expr)
// IL
LiteralExpr<Vector128<short>> eval<short>(IExpr<Vector128<short>> expr)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.LogicEngine::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.CmpExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
// LiteralExpr<Vector128<uint>> eval<uint>(IExpr<Vector128<uint>> expr)
// IL
LiteralExpr<Vector128<uint>> eval<uint>(IExpr<Vector128<uint>> expr)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.LogicEngine::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.CmpExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
// LiteralExpr<Vector128<int>> eval<int>(IExpr<Vector128<int>> expr)
// IL
LiteralExpr<Vector128<int>> eval<int>(IExpr<Vector128<int>> expr)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.LogicEngine::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.CmpExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
// LiteralExpr<Vector128<long>> eval<long>(IExpr<Vector128<long>> expr)
// IL
LiteralExpr<Vector128<long>> eval<long>(IExpr<Vector128<long>> expr)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.LogicEngine::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector256`1<T>> Z0.Logix.CmpExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector256`1<T>>)
// LiteralExpr<Vector256<byte>> eval<byte>(IExpr<Vector256<byte>> expr)
// IL
LiteralExpr<Vector256<byte>> eval<byte>(IExpr<Vector256<byte>> expr)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector256`1<T>> Z0.Logix.LogicEngine::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector256`1<T>>)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector256`1<T>> Z0.Logix.CmpExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector256`1<T>>)
// LiteralExpr<Vector256<sbyte>> eval<sbyte>(IExpr<Vector256<sbyte>> expr)
// IL
LiteralExpr<Vector256<sbyte>> eval<sbyte>(IExpr<Vector256<sbyte>> expr)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector256`1<T>> Z0.Logix.LogicEngine::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector256`1<T>>)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector256`1<T>> Z0.Logix.CmpExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector256`1<T>>)
// LiteralExpr<Vector256<ushort>> eval<ushort>(IExpr<Vector256<ushort>> expr)
// IL
LiteralExpr<Vector256<ushort>> eval<ushort>(IExpr<Vector256<ushort>> expr)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector256`1<T>> Z0.Logix.LogicEngine::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector256`1<T>>)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector256`1<T>> Z0.Logix.CmpExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector256`1<T>>)
// LiteralExpr<Vector256<short>> eval<short>(IExpr<Vector256<short>> expr)
// IL
LiteralExpr<Vector256<short>> eval<short>(IExpr<Vector256<short>> expr)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector256`1<T>> Z0.Logix.LogicEngine::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector256`1<T>>)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector256`1<T>> Z0.Logix.CmpExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector256`1<T>>)
// LiteralExpr<Vector256<uint>> eval<uint>(IExpr<Vector256<uint>> expr)
// IL
LiteralExpr<Vector256<uint>> eval<uint>(IExpr<Vector256<uint>> expr)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector256`1<T>> Z0.Logix.LogicEngine::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector256`1<T>>)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector256`1<T>> Z0.Logix.CmpExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector256`1<T>>)
// LiteralExpr<Vector256<int>> eval<int>(IExpr<Vector256<int>> expr)
// IL
LiteralExpr<Vector256<int>> eval<int>(IExpr<Vector256<int>> expr)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector256`1<T>> Z0.Logix.LogicEngine::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector256`1<T>>)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector256`1<T>> Z0.Logix.CmpExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector256`1<T>>)
// LiteralExpr<Vector256<long>> eval<long>(IExpr<Vector256<long>> expr)
// IL
LiteralExpr<Vector256<long>> eval<long>(IExpr<Vector256<long>> expr)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector256`1<T>> Z0.Logix.LogicEngine::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector256`1<T>>)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
