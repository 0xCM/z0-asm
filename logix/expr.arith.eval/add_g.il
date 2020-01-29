// Z0.Logix.LiteralExpr`1<T> Z0.Logix.ArithExprEval::add<T>(Z0.Logix.IBinaryArithmeticOp`1<T>)
// LiteralExpr<byte> add<byte>(IBinaryArithmeticOp<byte> expr)
// IL
LiteralExpr<byte> add<byte>(IBinaryArithmeticOp<byte> expr)
{
    IL_0000: ldarg.0
    IL_0001: callvirt Z0.Logix.IExpr`1<T> Z0.Logix.IBinaryArithmeticOp`1<T>::get_LeftArg()
    IL_0006: call Z0.Logix.LiteralExpr`1<T> Z0.Logix.ArithExprEval::eval<T>(Z0.Logix.IExpr`1<T>)
    IL_000B: callvirt T Z0.Logix.LiteralExpr`1<T>::get_Value()
    IL_0010: ldarg.0
    IL_0011: callvirt Z0.Logix.IExpr`1<T> Z0.Logix.IBinaryArithmeticOp`1<T>::get_RightArg()
    IL_0016: call Z0.Logix.LiteralExpr`1<T> Z0.Logix.ArithExprEval::eval<T>(Z0.Logix.IExpr`1<T>)
    IL_001B: callvirt T Z0.Logix.LiteralExpr`1<T>::get_Value()
    IL_0020: call T Z0.Logix.ScalarOps::add<T>(T,T)
    IL_0025: call Z0.Logix.LiteralExpr`1<T> Z0.Logix.LiteralExpr`1<T>::op_Implicit(T)
    IL_002A: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Logix.LiteralExpr`1<T> Z0.Logix.ArithExprEval::add<T>(Z0.Logix.IBinaryArithmeticOp`1<T>)
// LiteralExpr<sbyte> add<sbyte>(IBinaryArithmeticOp<sbyte> expr)
// IL
LiteralExpr<sbyte> add<sbyte>(IBinaryArithmeticOp<sbyte> expr)
{
    IL_0000: ldarg.0
    IL_0001: callvirt Z0.Logix.IExpr`1<T> Z0.Logix.IBinaryArithmeticOp`1<T>::get_LeftArg()
    IL_0006: call Z0.Logix.LiteralExpr`1<T> Z0.Logix.ArithExprEval::eval<T>(Z0.Logix.IExpr`1<T>)
    IL_000B: callvirt T Z0.Logix.LiteralExpr`1<T>::get_Value()
    IL_0010: ldarg.0
    IL_0011: callvirt Z0.Logix.IExpr`1<T> Z0.Logix.IBinaryArithmeticOp`1<T>::get_RightArg()
    IL_0016: call Z0.Logix.LiteralExpr`1<T> Z0.Logix.ArithExprEval::eval<T>(Z0.Logix.IExpr`1<T>)
    IL_001B: callvirt T Z0.Logix.LiteralExpr`1<T>::get_Value()
    IL_0020: call T Z0.Logix.ScalarOps::add<T>(T,T)
    IL_0025: call Z0.Logix.LiteralExpr`1<T> Z0.Logix.LiteralExpr`1<T>::op_Implicit(T)
    IL_002A: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Logix.LiteralExpr`1<T> Z0.Logix.ArithExprEval::add<T>(Z0.Logix.IBinaryArithmeticOp`1<T>)
// LiteralExpr<ushort> add<ushort>(IBinaryArithmeticOp<ushort> expr)
// IL
LiteralExpr<ushort> add<ushort>(IBinaryArithmeticOp<ushort> expr)
{
    IL_0000: ldarg.0
    IL_0001: callvirt Z0.Logix.IExpr`1<T> Z0.Logix.IBinaryArithmeticOp`1<T>::get_LeftArg()
    IL_0006: call Z0.Logix.LiteralExpr`1<T> Z0.Logix.ArithExprEval::eval<T>(Z0.Logix.IExpr`1<T>)
    IL_000B: callvirt T Z0.Logix.LiteralExpr`1<T>::get_Value()
    IL_0010: ldarg.0
    IL_0011: callvirt Z0.Logix.IExpr`1<T> Z0.Logix.IBinaryArithmeticOp`1<T>::get_RightArg()
    IL_0016: call Z0.Logix.LiteralExpr`1<T> Z0.Logix.ArithExprEval::eval<T>(Z0.Logix.IExpr`1<T>)
    IL_001B: callvirt T Z0.Logix.LiteralExpr`1<T>::get_Value()
    IL_0020: call T Z0.Logix.ScalarOps::add<T>(T,T)
    IL_0025: call Z0.Logix.LiteralExpr`1<T> Z0.Logix.LiteralExpr`1<T>::op_Implicit(T)
    IL_002A: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Logix.LiteralExpr`1<T> Z0.Logix.ArithExprEval::add<T>(Z0.Logix.IBinaryArithmeticOp`1<T>)
// LiteralExpr<short> add<short>(IBinaryArithmeticOp<short> expr)
// IL
LiteralExpr<short> add<short>(IBinaryArithmeticOp<short> expr)
{
    IL_0000: ldarg.0
    IL_0001: callvirt Z0.Logix.IExpr`1<T> Z0.Logix.IBinaryArithmeticOp`1<T>::get_LeftArg()
    IL_0006: call Z0.Logix.LiteralExpr`1<T> Z0.Logix.ArithExprEval::eval<T>(Z0.Logix.IExpr`1<T>)
    IL_000B: callvirt T Z0.Logix.LiteralExpr`1<T>::get_Value()
    IL_0010: ldarg.0
    IL_0011: callvirt Z0.Logix.IExpr`1<T> Z0.Logix.IBinaryArithmeticOp`1<T>::get_RightArg()
    IL_0016: call Z0.Logix.LiteralExpr`1<T> Z0.Logix.ArithExprEval::eval<T>(Z0.Logix.IExpr`1<T>)
    IL_001B: callvirt T Z0.Logix.LiteralExpr`1<T>::get_Value()
    IL_0020: call T Z0.Logix.ScalarOps::add<T>(T,T)
    IL_0025: call Z0.Logix.LiteralExpr`1<T> Z0.Logix.LiteralExpr`1<T>::op_Implicit(T)
    IL_002A: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Logix.LiteralExpr`1<T> Z0.Logix.ArithExprEval::add<T>(Z0.Logix.IBinaryArithmeticOp`1<T>)
// LiteralExpr<uint> add<uint>(IBinaryArithmeticOp<uint> expr)
// IL
LiteralExpr<uint> add<uint>(IBinaryArithmeticOp<uint> expr)
{
    IL_0000: ldarg.0
    IL_0001: callvirt Z0.Logix.IExpr`1<T> Z0.Logix.IBinaryArithmeticOp`1<T>::get_LeftArg()
    IL_0006: call Z0.Logix.LiteralExpr`1<T> Z0.Logix.ArithExprEval::eval<T>(Z0.Logix.IExpr`1<T>)
    IL_000B: callvirt T Z0.Logix.LiteralExpr`1<T>::get_Value()
    IL_0010: ldarg.0
    IL_0011: callvirt Z0.Logix.IExpr`1<T> Z0.Logix.IBinaryArithmeticOp`1<T>::get_RightArg()
    IL_0016: call Z0.Logix.LiteralExpr`1<T> Z0.Logix.ArithExprEval::eval<T>(Z0.Logix.IExpr`1<T>)
    IL_001B: callvirt T Z0.Logix.LiteralExpr`1<T>::get_Value()
    IL_0020: call T Z0.Logix.ScalarOps::add<T>(T,T)
    IL_0025: call Z0.Logix.LiteralExpr`1<T> Z0.Logix.LiteralExpr`1<T>::op_Implicit(T)
    IL_002A: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Logix.LiteralExpr`1<T> Z0.Logix.ArithExprEval::add<T>(Z0.Logix.IBinaryArithmeticOp`1<T>)
// LiteralExpr<int> add<int>(IBinaryArithmeticOp<int> expr)
// IL
LiteralExpr<int> add<int>(IBinaryArithmeticOp<int> expr)
{
    IL_0000: ldarg.0
    IL_0001: callvirt Z0.Logix.IExpr`1<T> Z0.Logix.IBinaryArithmeticOp`1<T>::get_LeftArg()
    IL_0006: call Z0.Logix.LiteralExpr`1<T> Z0.Logix.ArithExprEval::eval<T>(Z0.Logix.IExpr`1<T>)
    IL_000B: callvirt T Z0.Logix.LiteralExpr`1<T>::get_Value()
    IL_0010: ldarg.0
    IL_0011: callvirt Z0.Logix.IExpr`1<T> Z0.Logix.IBinaryArithmeticOp`1<T>::get_RightArg()
    IL_0016: call Z0.Logix.LiteralExpr`1<T> Z0.Logix.ArithExprEval::eval<T>(Z0.Logix.IExpr`1<T>)
    IL_001B: callvirt T Z0.Logix.LiteralExpr`1<T>::get_Value()
    IL_0020: call T Z0.Logix.ScalarOps::add<T>(T,T)
    IL_0025: call Z0.Logix.LiteralExpr`1<T> Z0.Logix.LiteralExpr`1<T>::op_Implicit(T)
    IL_002A: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Logix.LiteralExpr`1<T> Z0.Logix.ArithExprEval::add<T>(Z0.Logix.IBinaryArithmeticOp`1<T>)
// LiteralExpr<ulong> add<ulong>(IBinaryArithmeticOp<ulong> expr)
// IL
LiteralExpr<ulong> add<ulong>(IBinaryArithmeticOp<ulong> expr)
{
    IL_0000: ldarg.0
    IL_0001: callvirt Z0.Logix.IExpr`1<T> Z0.Logix.IBinaryArithmeticOp`1<T>::get_LeftArg()
    IL_0006: call Z0.Logix.LiteralExpr`1<T> Z0.Logix.ArithExprEval::eval<T>(Z0.Logix.IExpr`1<T>)
    IL_000B: callvirt T Z0.Logix.LiteralExpr`1<T>::get_Value()
    IL_0010: ldarg.0
    IL_0011: callvirt Z0.Logix.IExpr`1<T> Z0.Logix.IBinaryArithmeticOp`1<T>::get_RightArg()
    IL_0016: call Z0.Logix.LiteralExpr`1<T> Z0.Logix.ArithExprEval::eval<T>(Z0.Logix.IExpr`1<T>)
    IL_001B: callvirt T Z0.Logix.LiteralExpr`1<T>::get_Value()
    IL_0020: call T Z0.Logix.ScalarOps::add<T>(T,T)
    IL_0025: call Z0.Logix.LiteralExpr`1<T> Z0.Logix.LiteralExpr`1<T>::op_Implicit(T)
    IL_002A: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Logix.LiteralExpr`1<T> Z0.Logix.ArithExprEval::add<T>(Z0.Logix.IBinaryArithmeticOp`1<T>)
// LiteralExpr<long> add<long>(IBinaryArithmeticOp<long> expr)
// IL
LiteralExpr<long> add<long>(IBinaryArithmeticOp<long> expr)
{
    IL_0000: ldarg.0
    IL_0001: callvirt Z0.Logix.IExpr`1<T> Z0.Logix.IBinaryArithmeticOp`1<T>::get_LeftArg()
    IL_0006: call Z0.Logix.LiteralExpr`1<T> Z0.Logix.ArithExprEval::eval<T>(Z0.Logix.IExpr`1<T>)
    IL_000B: callvirt T Z0.Logix.LiteralExpr`1<T>::get_Value()
    IL_0010: ldarg.0
    IL_0011: callvirt Z0.Logix.IExpr`1<T> Z0.Logix.IBinaryArithmeticOp`1<T>::get_RightArg()
    IL_0016: call Z0.Logix.LiteralExpr`1<T> Z0.Logix.ArithExprEval::eval<T>(Z0.Logix.IExpr`1<T>)
    IL_001B: callvirt T Z0.Logix.LiteralExpr`1<T>::get_Value()
    IL_0020: call T Z0.Logix.ScalarOps::add<T>(T,T)
    IL_0025: call Z0.Logix.LiteralExpr`1<T> Z0.Logix.LiteralExpr`1<T>::op_Implicit(T)
    IL_002A: ret
}
------------------------------------------------------------------------------------------------------------------------
