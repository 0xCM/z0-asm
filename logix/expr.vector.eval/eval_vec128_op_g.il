// Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IOperator`1<System.Runtime.Intrinsics.Vector128`1<T>>)
// LiteralExpr<Vector128<byte>> eval<byte>(IOperator<Vector128<byte>> expr)
// IL
LiteralExpr<Vector128<byte>> eval<byte>(IOperator<Vector128<byte>> expr)
{
    IL_0000: ldarg.0
    IL_0001: isinst Z0.Logix.IUnaryBitwiseOp`1<System.Runtime.Intrinsics.Vector128`1<T>>
    IL_0006: stloc.0
    IL_0007: ldloc.0
    IL_0008: brtrue.s IL_0030
    IL_000A: ldarg.0
    IL_000B: isinst Z0.Logix.IBinaryBitwiseOp`1<System.Runtime.Intrinsics.Vector128`1<T>>
    IL_0010: stloc.1
    IL_0011: ldloc.1
    IL_0012: brtrue.s IL_0051
    IL_0014: ldarg.0
    IL_0015: isinst Z0.Logix.IShiftOp`1<System.Runtime.Intrinsics.Vector128`1<T>>
    IL_001A: stloc.2
    IL_001B: ldloc.2
    IL_001C: brtrue.s IL_0082
    IL_001E: ldarg.0
    IL_001F: isinst Z0.Logix.ITernaryBitwiseOp`1<System.Runtime.Intrinsics.Vector128`1<T>>
    IL_0024: stloc.3
    IL_0025: ldloc.3
    IL_0026: brtrue IL_00B3
    IL_002B: br IL_00F4
    IL_0030: ldloc.0
    IL_0031: callvirt Z0.UnaryBitLogicKind Z0.Logix.IOperator`2<System.Runtime.Intrinsics.Vector128`1<T>,Z0.UnaryBitLogicKind>::get_OpKind()
    IL_0036: ldloc.0
    IL_0037: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.IUnaryOp`1<Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>>::get_Arg()
    IL_003C: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_0041: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_0046: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorOpApi::eval<T>(Z0.UnaryBitLogicKind,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_004B: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::op_Implicit(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0050: ret
    IL_0051: ldloc.1
    IL_0052: callvirt Z0.BinaryBitLogicKind Z0.Logix.IOperator`2<System.Runtime.Intrinsics.Vector128`1<T>,Z0.BinaryBitLogicKind>::get_OpKind()
    IL_0057: ldloc.1
    IL_0058: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.IBinaryOp`1<Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>>::get_LeftArg()
    IL_005D: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_0062: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_0067: ldloc.1
    IL_0068: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.IBinaryOp`1<Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>>::get_RightArg()
    IL_006D: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_0072: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_0077: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorOpApi::eval<T>(Z0.BinaryBitLogicKind,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_007C: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::op_Implicit(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0081: ret
    IL_0082: ldloc.2
    IL_0083: callvirt Z0.ShiftOpKind Z0.Logix.IOperator`2<System.Runtime.Intrinsics.Vector128`1<T>,Z0.ShiftOpKind>::get_OpKind()
    IL_0088: ldloc.2
    IL_0089: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.IShiftOp`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Subject()
    IL_008E: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_0093: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_0098: ldloc.2
    IL_0099: callvirt Z0.Logix.IExpr`1<System.Byte> Z0.Logix.IShiftOp`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Offset()
    IL_009E: call Z0.Logix.LiteralExpr`1<System.Byte> Z0.Logix.ScalarExprEval::eval<System.Byte>(Z0.Logix.IExpr`1<System.Byte>)
    IL_00A3: callvirt System.Byte Z0.Logix.LiteralExpr`1<System.Byte>::get_Value()
    IL_00A8: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorOpApi::eval<T>(Z0.ShiftOpKind,System.Runtime.Intrinsics.Vector128`1<T>,System.Byte)
    IL_00AD: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::op_Implicit(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00B2: ret
    IL_00B3: ldloc.3
    IL_00B4: callvirt Z0.TernaryBitLogicKind Z0.Logix.IOperator`2<System.Runtime.Intrinsics.Vector128`1<T>,Z0.TernaryBitLogicKind>::get_OpKind()
    IL_00B9: ldloc.3
    IL_00BA: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.ITernaryOp`1<Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>>::get_FirstArg()
    IL_00BF: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_00C4: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_00C9: ldloc.3
    IL_00CA: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.ITernaryOp`1<Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>>::get_SecondArg()
    IL_00CF: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_00D4: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_00D9: ldloc.3
    IL_00DA: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.ITernaryOp`1<Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>>::get_ThirdArg()
    IL_00DF: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_00E4: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::op_Implicit(Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_00E9: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorOpApi::eval<T>(Z0.TernaryBitLogicKind,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00EE: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::op_Implicit(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00F3: ret
    IL_00F4: ldarg.0
    IL_00F5: callvirt System.Type System.Object::GetType()
    IL_00FA: callvirt System.String System.Reflection.MemberInfo::get_Name()
    IL_00FF: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_0104: throw
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IOperator`1<System.Runtime.Intrinsics.Vector128`1<T>>)
// LiteralExpr<Vector128<sbyte>> eval<sbyte>(IOperator<Vector128<sbyte>> expr)
// IL
LiteralExpr<Vector128<sbyte>> eval<sbyte>(IOperator<Vector128<sbyte>> expr)
{
    IL_0000: ldarg.0
    IL_0001: isinst Z0.Logix.IUnaryBitwiseOp`1<System.Runtime.Intrinsics.Vector128`1<T>>
    IL_0006: stloc.0
    IL_0007: ldloc.0
    IL_0008: brtrue.s IL_0030
    IL_000A: ldarg.0
    IL_000B: isinst Z0.Logix.IBinaryBitwiseOp`1<System.Runtime.Intrinsics.Vector128`1<T>>
    IL_0010: stloc.1
    IL_0011: ldloc.1
    IL_0012: brtrue.s IL_0051
    IL_0014: ldarg.0
    IL_0015: isinst Z0.Logix.IShiftOp`1<System.Runtime.Intrinsics.Vector128`1<T>>
    IL_001A: stloc.2
    IL_001B: ldloc.2
    IL_001C: brtrue.s IL_0082
    IL_001E: ldarg.0
    IL_001F: isinst Z0.Logix.ITernaryBitwiseOp`1<System.Runtime.Intrinsics.Vector128`1<T>>
    IL_0024: stloc.3
    IL_0025: ldloc.3
    IL_0026: brtrue IL_00B3
    IL_002B: br IL_00F4
    IL_0030: ldloc.0
    IL_0031: callvirt Z0.UnaryBitLogicKind Z0.Logix.IOperator`2<System.Runtime.Intrinsics.Vector128`1<T>,Z0.UnaryBitLogicKind>::get_OpKind()
    IL_0036: ldloc.0
    IL_0037: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.IUnaryOp`1<Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>>::get_Arg()
    IL_003C: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_0041: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_0046: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorOpApi::eval<T>(Z0.UnaryBitLogicKind,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_004B: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::op_Implicit(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0050: ret
    IL_0051: ldloc.1
    IL_0052: callvirt Z0.BinaryBitLogicKind Z0.Logix.IOperator`2<System.Runtime.Intrinsics.Vector128`1<T>,Z0.BinaryBitLogicKind>::get_OpKind()
    IL_0057: ldloc.1
    IL_0058: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.IBinaryOp`1<Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>>::get_LeftArg()
    IL_005D: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_0062: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_0067: ldloc.1
    IL_0068: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.IBinaryOp`1<Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>>::get_RightArg()
    IL_006D: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_0072: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_0077: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorOpApi::eval<T>(Z0.BinaryBitLogicKind,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_007C: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::op_Implicit(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0081: ret
    IL_0082: ldloc.2
    IL_0083: callvirt Z0.ShiftOpKind Z0.Logix.IOperator`2<System.Runtime.Intrinsics.Vector128`1<T>,Z0.ShiftOpKind>::get_OpKind()
    IL_0088: ldloc.2
    IL_0089: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.IShiftOp`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Subject()
    IL_008E: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_0093: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_0098: ldloc.2
    IL_0099: callvirt Z0.Logix.IExpr`1<System.Byte> Z0.Logix.IShiftOp`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Offset()
    IL_009E: call Z0.Logix.LiteralExpr`1<System.Byte> Z0.Logix.ScalarExprEval::eval<System.Byte>(Z0.Logix.IExpr`1<System.Byte>)
    IL_00A3: callvirt System.Byte Z0.Logix.LiteralExpr`1<System.Byte>::get_Value()
    IL_00A8: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorOpApi::eval<T>(Z0.ShiftOpKind,System.Runtime.Intrinsics.Vector128`1<T>,System.Byte)
    IL_00AD: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::op_Implicit(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00B2: ret
    IL_00B3: ldloc.3
    IL_00B4: callvirt Z0.TernaryBitLogicKind Z0.Logix.IOperator`2<System.Runtime.Intrinsics.Vector128`1<T>,Z0.TernaryBitLogicKind>::get_OpKind()
    IL_00B9: ldloc.3
    IL_00BA: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.ITernaryOp`1<Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>>::get_FirstArg()
    IL_00BF: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_00C4: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_00C9: ldloc.3
    IL_00CA: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.ITernaryOp`1<Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>>::get_SecondArg()
    IL_00CF: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_00D4: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_00D9: ldloc.3
    IL_00DA: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.ITernaryOp`1<Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>>::get_ThirdArg()
    IL_00DF: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_00E4: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::op_Implicit(Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_00E9: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorOpApi::eval<T>(Z0.TernaryBitLogicKind,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00EE: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::op_Implicit(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00F3: ret
    IL_00F4: ldarg.0
    IL_00F5: callvirt System.Type System.Object::GetType()
    IL_00FA: callvirt System.String System.Reflection.MemberInfo::get_Name()
    IL_00FF: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_0104: throw
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IOperator`1<System.Runtime.Intrinsics.Vector128`1<T>>)
// LiteralExpr<Vector128<ushort>> eval<ushort>(IOperator<Vector128<ushort>> expr)
// IL
LiteralExpr<Vector128<ushort>> eval<ushort>(IOperator<Vector128<ushort>> expr)
{
    IL_0000: ldarg.0
    IL_0001: isinst Z0.Logix.IUnaryBitwiseOp`1<System.Runtime.Intrinsics.Vector128`1<T>>
    IL_0006: stloc.0
    IL_0007: ldloc.0
    IL_0008: brtrue.s IL_0030
    IL_000A: ldarg.0
    IL_000B: isinst Z0.Logix.IBinaryBitwiseOp`1<System.Runtime.Intrinsics.Vector128`1<T>>
    IL_0010: stloc.1
    IL_0011: ldloc.1
    IL_0012: brtrue.s IL_0051
    IL_0014: ldarg.0
    IL_0015: isinst Z0.Logix.IShiftOp`1<System.Runtime.Intrinsics.Vector128`1<T>>
    IL_001A: stloc.2
    IL_001B: ldloc.2
    IL_001C: brtrue.s IL_0082
    IL_001E: ldarg.0
    IL_001F: isinst Z0.Logix.ITernaryBitwiseOp`1<System.Runtime.Intrinsics.Vector128`1<T>>
    IL_0024: stloc.3
    IL_0025: ldloc.3
    IL_0026: brtrue IL_00B3
    IL_002B: br IL_00F4
    IL_0030: ldloc.0
    IL_0031: callvirt Z0.UnaryBitLogicKind Z0.Logix.IOperator`2<System.Runtime.Intrinsics.Vector128`1<T>,Z0.UnaryBitLogicKind>::get_OpKind()
    IL_0036: ldloc.0
    IL_0037: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.IUnaryOp`1<Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>>::get_Arg()
    IL_003C: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_0041: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_0046: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorOpApi::eval<T>(Z0.UnaryBitLogicKind,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_004B: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::op_Implicit(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0050: ret
    IL_0051: ldloc.1
    IL_0052: callvirt Z0.BinaryBitLogicKind Z0.Logix.IOperator`2<System.Runtime.Intrinsics.Vector128`1<T>,Z0.BinaryBitLogicKind>::get_OpKind()
    IL_0057: ldloc.1
    IL_0058: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.IBinaryOp`1<Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>>::get_LeftArg()
    IL_005D: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_0062: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_0067: ldloc.1
    IL_0068: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.IBinaryOp`1<Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>>::get_RightArg()
    IL_006D: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_0072: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_0077: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorOpApi::eval<T>(Z0.BinaryBitLogicKind,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_007C: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::op_Implicit(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0081: ret
    IL_0082: ldloc.2
    IL_0083: callvirt Z0.ShiftOpKind Z0.Logix.IOperator`2<System.Runtime.Intrinsics.Vector128`1<T>,Z0.ShiftOpKind>::get_OpKind()
    IL_0088: ldloc.2
    IL_0089: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.IShiftOp`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Subject()
    IL_008E: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_0093: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_0098: ldloc.2
    IL_0099: callvirt Z0.Logix.IExpr`1<System.Byte> Z0.Logix.IShiftOp`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Offset()
    IL_009E: call Z0.Logix.LiteralExpr`1<System.Byte> Z0.Logix.ScalarExprEval::eval<System.Byte>(Z0.Logix.IExpr`1<System.Byte>)
    IL_00A3: callvirt System.Byte Z0.Logix.LiteralExpr`1<System.Byte>::get_Value()
    IL_00A8: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorOpApi::eval<T>(Z0.ShiftOpKind,System.Runtime.Intrinsics.Vector128`1<T>,System.Byte)
    IL_00AD: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::op_Implicit(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00B2: ret
    IL_00B3: ldloc.3
    IL_00B4: callvirt Z0.TernaryBitLogicKind Z0.Logix.IOperator`2<System.Runtime.Intrinsics.Vector128`1<T>,Z0.TernaryBitLogicKind>::get_OpKind()
    IL_00B9: ldloc.3
    IL_00BA: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.ITernaryOp`1<Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>>::get_FirstArg()
    IL_00BF: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_00C4: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_00C9: ldloc.3
    IL_00CA: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.ITernaryOp`1<Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>>::get_SecondArg()
    IL_00CF: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_00D4: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_00D9: ldloc.3
    IL_00DA: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.ITernaryOp`1<Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>>::get_ThirdArg()
    IL_00DF: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_00E4: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::op_Implicit(Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_00E9: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorOpApi::eval<T>(Z0.TernaryBitLogicKind,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00EE: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::op_Implicit(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00F3: ret
    IL_00F4: ldarg.0
    IL_00F5: callvirt System.Type System.Object::GetType()
    IL_00FA: callvirt System.String System.Reflection.MemberInfo::get_Name()
    IL_00FF: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_0104: throw
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IOperator`1<System.Runtime.Intrinsics.Vector128`1<T>>)
// LiteralExpr<Vector128<short>> eval<short>(IOperator<Vector128<short>> expr)
// IL
LiteralExpr<Vector128<short>> eval<short>(IOperator<Vector128<short>> expr)
{
    IL_0000: ldarg.0
    IL_0001: isinst Z0.Logix.IUnaryBitwiseOp`1<System.Runtime.Intrinsics.Vector128`1<T>>
    IL_0006: stloc.0
    IL_0007: ldloc.0
    IL_0008: brtrue.s IL_0030
    IL_000A: ldarg.0
    IL_000B: isinst Z0.Logix.IBinaryBitwiseOp`1<System.Runtime.Intrinsics.Vector128`1<T>>
    IL_0010: stloc.1
    IL_0011: ldloc.1
    IL_0012: brtrue.s IL_0051
    IL_0014: ldarg.0
    IL_0015: isinst Z0.Logix.IShiftOp`1<System.Runtime.Intrinsics.Vector128`1<T>>
    IL_001A: stloc.2
    IL_001B: ldloc.2
    IL_001C: brtrue.s IL_0082
    IL_001E: ldarg.0
    IL_001F: isinst Z0.Logix.ITernaryBitwiseOp`1<System.Runtime.Intrinsics.Vector128`1<T>>
    IL_0024: stloc.3
    IL_0025: ldloc.3
    IL_0026: brtrue IL_00B3
    IL_002B: br IL_00F4
    IL_0030: ldloc.0
    IL_0031: callvirt Z0.UnaryBitLogicKind Z0.Logix.IOperator`2<System.Runtime.Intrinsics.Vector128`1<T>,Z0.UnaryBitLogicKind>::get_OpKind()
    IL_0036: ldloc.0
    IL_0037: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.IUnaryOp`1<Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>>::get_Arg()
    IL_003C: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_0041: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_0046: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorOpApi::eval<T>(Z0.UnaryBitLogicKind,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_004B: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::op_Implicit(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0050: ret
    IL_0051: ldloc.1
    IL_0052: callvirt Z0.BinaryBitLogicKind Z0.Logix.IOperator`2<System.Runtime.Intrinsics.Vector128`1<T>,Z0.BinaryBitLogicKind>::get_OpKind()
    IL_0057: ldloc.1
    IL_0058: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.IBinaryOp`1<Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>>::get_LeftArg()
    IL_005D: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_0062: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_0067: ldloc.1
    IL_0068: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.IBinaryOp`1<Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>>::get_RightArg()
    IL_006D: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_0072: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_0077: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorOpApi::eval<T>(Z0.BinaryBitLogicKind,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_007C: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::op_Implicit(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0081: ret
    IL_0082: ldloc.2
    IL_0083: callvirt Z0.ShiftOpKind Z0.Logix.IOperator`2<System.Runtime.Intrinsics.Vector128`1<T>,Z0.ShiftOpKind>::get_OpKind()
    IL_0088: ldloc.2
    IL_0089: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.IShiftOp`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Subject()
    IL_008E: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_0093: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_0098: ldloc.2
    IL_0099: callvirt Z0.Logix.IExpr`1<System.Byte> Z0.Logix.IShiftOp`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Offset()
    IL_009E: call Z0.Logix.LiteralExpr`1<System.Byte> Z0.Logix.ScalarExprEval::eval<System.Byte>(Z0.Logix.IExpr`1<System.Byte>)
    IL_00A3: callvirt System.Byte Z0.Logix.LiteralExpr`1<System.Byte>::get_Value()
    IL_00A8: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorOpApi::eval<T>(Z0.ShiftOpKind,System.Runtime.Intrinsics.Vector128`1<T>,System.Byte)
    IL_00AD: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::op_Implicit(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00B2: ret
    IL_00B3: ldloc.3
    IL_00B4: callvirt Z0.TernaryBitLogicKind Z0.Logix.IOperator`2<System.Runtime.Intrinsics.Vector128`1<T>,Z0.TernaryBitLogicKind>::get_OpKind()
    IL_00B9: ldloc.3
    IL_00BA: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.ITernaryOp`1<Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>>::get_FirstArg()
    IL_00BF: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_00C4: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_00C9: ldloc.3
    IL_00CA: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.ITernaryOp`1<Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>>::get_SecondArg()
    IL_00CF: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_00D4: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_00D9: ldloc.3
    IL_00DA: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.ITernaryOp`1<Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>>::get_ThirdArg()
    IL_00DF: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_00E4: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::op_Implicit(Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_00E9: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorOpApi::eval<T>(Z0.TernaryBitLogicKind,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00EE: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::op_Implicit(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00F3: ret
    IL_00F4: ldarg.0
    IL_00F5: callvirt System.Type System.Object::GetType()
    IL_00FA: callvirt System.String System.Reflection.MemberInfo::get_Name()
    IL_00FF: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_0104: throw
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IOperator`1<System.Runtime.Intrinsics.Vector128`1<T>>)
// LiteralExpr<Vector128<uint>> eval<uint>(IOperator<Vector128<uint>> expr)
// IL
LiteralExpr<Vector128<uint>> eval<uint>(IOperator<Vector128<uint>> expr)
{
    IL_0000: ldarg.0
    IL_0001: isinst Z0.Logix.IUnaryBitwiseOp`1<System.Runtime.Intrinsics.Vector128`1<T>>
    IL_0006: stloc.0
    IL_0007: ldloc.0
    IL_0008: brtrue.s IL_0030
    IL_000A: ldarg.0
    IL_000B: isinst Z0.Logix.IBinaryBitwiseOp`1<System.Runtime.Intrinsics.Vector128`1<T>>
    IL_0010: stloc.1
    IL_0011: ldloc.1
    IL_0012: brtrue.s IL_0051
    IL_0014: ldarg.0
    IL_0015: isinst Z0.Logix.IShiftOp`1<System.Runtime.Intrinsics.Vector128`1<T>>
    IL_001A: stloc.2
    IL_001B: ldloc.2
    IL_001C: brtrue.s IL_0082
    IL_001E: ldarg.0
    IL_001F: isinst Z0.Logix.ITernaryBitwiseOp`1<System.Runtime.Intrinsics.Vector128`1<T>>
    IL_0024: stloc.3
    IL_0025: ldloc.3
    IL_0026: brtrue IL_00B3
    IL_002B: br IL_00F4
    IL_0030: ldloc.0
    IL_0031: callvirt Z0.UnaryBitLogicKind Z0.Logix.IOperator`2<System.Runtime.Intrinsics.Vector128`1<T>,Z0.UnaryBitLogicKind>::get_OpKind()
    IL_0036: ldloc.0
    IL_0037: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.IUnaryOp`1<Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>>::get_Arg()
    IL_003C: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_0041: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_0046: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorOpApi::eval<T>(Z0.UnaryBitLogicKind,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_004B: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::op_Implicit(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0050: ret
    IL_0051: ldloc.1
    IL_0052: callvirt Z0.BinaryBitLogicKind Z0.Logix.IOperator`2<System.Runtime.Intrinsics.Vector128`1<T>,Z0.BinaryBitLogicKind>::get_OpKind()
    IL_0057: ldloc.1
    IL_0058: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.IBinaryOp`1<Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>>::get_LeftArg()
    IL_005D: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_0062: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_0067: ldloc.1
    IL_0068: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.IBinaryOp`1<Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>>::get_RightArg()
    IL_006D: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_0072: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_0077: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorOpApi::eval<T>(Z0.BinaryBitLogicKind,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_007C: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::op_Implicit(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0081: ret
    IL_0082: ldloc.2
    IL_0083: callvirt Z0.ShiftOpKind Z0.Logix.IOperator`2<System.Runtime.Intrinsics.Vector128`1<T>,Z0.ShiftOpKind>::get_OpKind()
    IL_0088: ldloc.2
    IL_0089: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.IShiftOp`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Subject()
    IL_008E: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_0093: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_0098: ldloc.2
    IL_0099: callvirt Z0.Logix.IExpr`1<System.Byte> Z0.Logix.IShiftOp`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Offset()
    IL_009E: call Z0.Logix.LiteralExpr`1<System.Byte> Z0.Logix.ScalarExprEval::eval<System.Byte>(Z0.Logix.IExpr`1<System.Byte>)
    IL_00A3: callvirt System.Byte Z0.Logix.LiteralExpr`1<System.Byte>::get_Value()
    IL_00A8: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorOpApi::eval<T>(Z0.ShiftOpKind,System.Runtime.Intrinsics.Vector128`1<T>,System.Byte)
    IL_00AD: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::op_Implicit(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00B2: ret
    IL_00B3: ldloc.3
    IL_00B4: callvirt Z0.TernaryBitLogicKind Z0.Logix.IOperator`2<System.Runtime.Intrinsics.Vector128`1<T>,Z0.TernaryBitLogicKind>::get_OpKind()
    IL_00B9: ldloc.3
    IL_00BA: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.ITernaryOp`1<Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>>::get_FirstArg()
    IL_00BF: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_00C4: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_00C9: ldloc.3
    IL_00CA: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.ITernaryOp`1<Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>>::get_SecondArg()
    IL_00CF: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_00D4: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_00D9: ldloc.3
    IL_00DA: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.ITernaryOp`1<Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>>::get_ThirdArg()
    IL_00DF: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_00E4: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::op_Implicit(Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_00E9: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorOpApi::eval<T>(Z0.TernaryBitLogicKind,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00EE: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::op_Implicit(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00F3: ret
    IL_00F4: ldarg.0
    IL_00F5: callvirt System.Type System.Object::GetType()
    IL_00FA: callvirt System.String System.Reflection.MemberInfo::get_Name()
    IL_00FF: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_0104: throw
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IOperator`1<System.Runtime.Intrinsics.Vector128`1<T>>)
// LiteralExpr<Vector128<int>> eval<int>(IOperator<Vector128<int>> expr)
// IL
LiteralExpr<Vector128<int>> eval<int>(IOperator<Vector128<int>> expr)
{
    IL_0000: ldarg.0
    IL_0001: isinst Z0.Logix.IUnaryBitwiseOp`1<System.Runtime.Intrinsics.Vector128`1<T>>
    IL_0006: stloc.0
    IL_0007: ldloc.0
    IL_0008: brtrue.s IL_0030
    IL_000A: ldarg.0
    IL_000B: isinst Z0.Logix.IBinaryBitwiseOp`1<System.Runtime.Intrinsics.Vector128`1<T>>
    IL_0010: stloc.1
    IL_0011: ldloc.1
    IL_0012: brtrue.s IL_0051
    IL_0014: ldarg.0
    IL_0015: isinst Z0.Logix.IShiftOp`1<System.Runtime.Intrinsics.Vector128`1<T>>
    IL_001A: stloc.2
    IL_001B: ldloc.2
    IL_001C: brtrue.s IL_0082
    IL_001E: ldarg.0
    IL_001F: isinst Z0.Logix.ITernaryBitwiseOp`1<System.Runtime.Intrinsics.Vector128`1<T>>
    IL_0024: stloc.3
    IL_0025: ldloc.3
    IL_0026: brtrue IL_00B3
    IL_002B: br IL_00F4
    IL_0030: ldloc.0
    IL_0031: callvirt Z0.UnaryBitLogicKind Z0.Logix.IOperator`2<System.Runtime.Intrinsics.Vector128`1<T>,Z0.UnaryBitLogicKind>::get_OpKind()
    IL_0036: ldloc.0
    IL_0037: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.IUnaryOp`1<Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>>::get_Arg()
    IL_003C: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_0041: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_0046: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorOpApi::eval<T>(Z0.UnaryBitLogicKind,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_004B: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::op_Implicit(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0050: ret
    IL_0051: ldloc.1
    IL_0052: callvirt Z0.BinaryBitLogicKind Z0.Logix.IOperator`2<System.Runtime.Intrinsics.Vector128`1<T>,Z0.BinaryBitLogicKind>::get_OpKind()
    IL_0057: ldloc.1
    IL_0058: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.IBinaryOp`1<Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>>::get_LeftArg()
    IL_005D: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_0062: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_0067: ldloc.1
    IL_0068: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.IBinaryOp`1<Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>>::get_RightArg()
    IL_006D: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_0072: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_0077: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorOpApi::eval<T>(Z0.BinaryBitLogicKind,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_007C: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::op_Implicit(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0081: ret
    IL_0082: ldloc.2
    IL_0083: callvirt Z0.ShiftOpKind Z0.Logix.IOperator`2<System.Runtime.Intrinsics.Vector128`1<T>,Z0.ShiftOpKind>::get_OpKind()
    IL_0088: ldloc.2
    IL_0089: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.IShiftOp`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Subject()
    IL_008E: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_0093: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_0098: ldloc.2
    IL_0099: callvirt Z0.Logix.IExpr`1<System.Byte> Z0.Logix.IShiftOp`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Offset()
    IL_009E: call Z0.Logix.LiteralExpr`1<System.Byte> Z0.Logix.ScalarExprEval::eval<System.Byte>(Z0.Logix.IExpr`1<System.Byte>)
    IL_00A3: callvirt System.Byte Z0.Logix.LiteralExpr`1<System.Byte>::get_Value()
    IL_00A8: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorOpApi::eval<T>(Z0.ShiftOpKind,System.Runtime.Intrinsics.Vector128`1<T>,System.Byte)
    IL_00AD: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::op_Implicit(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00B2: ret
    IL_00B3: ldloc.3
    IL_00B4: callvirt Z0.TernaryBitLogicKind Z0.Logix.IOperator`2<System.Runtime.Intrinsics.Vector128`1<T>,Z0.TernaryBitLogicKind>::get_OpKind()
    IL_00B9: ldloc.3
    IL_00BA: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.ITernaryOp`1<Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>>::get_FirstArg()
    IL_00BF: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_00C4: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_00C9: ldloc.3
    IL_00CA: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.ITernaryOp`1<Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>>::get_SecondArg()
    IL_00CF: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_00D4: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_00D9: ldloc.3
    IL_00DA: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.ITernaryOp`1<Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>>::get_ThirdArg()
    IL_00DF: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_00E4: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::op_Implicit(Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_00E9: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorOpApi::eval<T>(Z0.TernaryBitLogicKind,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00EE: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::op_Implicit(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00F3: ret
    IL_00F4: ldarg.0
    IL_00F5: callvirt System.Type System.Object::GetType()
    IL_00FA: callvirt System.String System.Reflection.MemberInfo::get_Name()
    IL_00FF: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_0104: throw
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IOperator`1<System.Runtime.Intrinsics.Vector128`1<T>>)
// LiteralExpr<Vector128<ulong>> eval<ulong>(IOperator<Vector128<ulong>> expr)
// IL
LiteralExpr<Vector128<ulong>> eval<ulong>(IOperator<Vector128<ulong>> expr)
{
    IL_0000: ldarg.0
    IL_0001: isinst Z0.Logix.IUnaryBitwiseOp`1<System.Runtime.Intrinsics.Vector128`1<T>>
    IL_0006: stloc.0
    IL_0007: ldloc.0
    IL_0008: brtrue.s IL_0030
    IL_000A: ldarg.0
    IL_000B: isinst Z0.Logix.IBinaryBitwiseOp`1<System.Runtime.Intrinsics.Vector128`1<T>>
    IL_0010: stloc.1
    IL_0011: ldloc.1
    IL_0012: brtrue.s IL_0051
    IL_0014: ldarg.0
    IL_0015: isinst Z0.Logix.IShiftOp`1<System.Runtime.Intrinsics.Vector128`1<T>>
    IL_001A: stloc.2
    IL_001B: ldloc.2
    IL_001C: brtrue.s IL_0082
    IL_001E: ldarg.0
    IL_001F: isinst Z0.Logix.ITernaryBitwiseOp`1<System.Runtime.Intrinsics.Vector128`1<T>>
    IL_0024: stloc.3
    IL_0025: ldloc.3
    IL_0026: brtrue IL_00B3
    IL_002B: br IL_00F4
    IL_0030: ldloc.0
    IL_0031: callvirt Z0.UnaryBitLogicKind Z0.Logix.IOperator`2<System.Runtime.Intrinsics.Vector128`1<T>,Z0.UnaryBitLogicKind>::get_OpKind()
    IL_0036: ldloc.0
    IL_0037: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.IUnaryOp`1<Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>>::get_Arg()
    IL_003C: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_0041: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_0046: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorOpApi::eval<T>(Z0.UnaryBitLogicKind,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_004B: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::op_Implicit(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0050: ret
    IL_0051: ldloc.1
    IL_0052: callvirt Z0.BinaryBitLogicKind Z0.Logix.IOperator`2<System.Runtime.Intrinsics.Vector128`1<T>,Z0.BinaryBitLogicKind>::get_OpKind()
    IL_0057: ldloc.1
    IL_0058: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.IBinaryOp`1<Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>>::get_LeftArg()
    IL_005D: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_0062: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_0067: ldloc.1
    IL_0068: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.IBinaryOp`1<Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>>::get_RightArg()
    IL_006D: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_0072: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_0077: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorOpApi::eval<T>(Z0.BinaryBitLogicKind,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_007C: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::op_Implicit(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0081: ret
    IL_0082: ldloc.2
    IL_0083: callvirt Z0.ShiftOpKind Z0.Logix.IOperator`2<System.Runtime.Intrinsics.Vector128`1<T>,Z0.ShiftOpKind>::get_OpKind()
    IL_0088: ldloc.2
    IL_0089: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.IShiftOp`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Subject()
    IL_008E: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_0093: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_0098: ldloc.2
    IL_0099: callvirt Z0.Logix.IExpr`1<System.Byte> Z0.Logix.IShiftOp`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Offset()
    IL_009E: call Z0.Logix.LiteralExpr`1<System.Byte> Z0.Logix.ScalarExprEval::eval<System.Byte>(Z0.Logix.IExpr`1<System.Byte>)
    IL_00A3: callvirt System.Byte Z0.Logix.LiteralExpr`1<System.Byte>::get_Value()
    IL_00A8: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorOpApi::eval<T>(Z0.ShiftOpKind,System.Runtime.Intrinsics.Vector128`1<T>,System.Byte)
    IL_00AD: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::op_Implicit(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00B2: ret
    IL_00B3: ldloc.3
    IL_00B4: callvirt Z0.TernaryBitLogicKind Z0.Logix.IOperator`2<System.Runtime.Intrinsics.Vector128`1<T>,Z0.TernaryBitLogicKind>::get_OpKind()
    IL_00B9: ldloc.3
    IL_00BA: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.ITernaryOp`1<Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>>::get_FirstArg()
    IL_00BF: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_00C4: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_00C9: ldloc.3
    IL_00CA: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.ITernaryOp`1<Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>>::get_SecondArg()
    IL_00CF: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_00D4: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_00D9: ldloc.3
    IL_00DA: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.ITernaryOp`1<Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>>::get_ThirdArg()
    IL_00DF: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_00E4: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::op_Implicit(Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_00E9: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorOpApi::eval<T>(Z0.TernaryBitLogicKind,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00EE: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::op_Implicit(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00F3: ret
    IL_00F4: ldarg.0
    IL_00F5: callvirt System.Type System.Object::GetType()
    IL_00FA: callvirt System.String System.Reflection.MemberInfo::get_Name()
    IL_00FF: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_0104: throw
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IOperator`1<System.Runtime.Intrinsics.Vector128`1<T>>)
// LiteralExpr<Vector128<long>> eval<long>(IOperator<Vector128<long>> expr)
// IL
LiteralExpr<Vector128<long>> eval<long>(IOperator<Vector128<long>> expr)
{
    IL_0000: ldarg.0
    IL_0001: isinst Z0.Logix.IUnaryBitwiseOp`1<System.Runtime.Intrinsics.Vector128`1<T>>
    IL_0006: stloc.0
    IL_0007: ldloc.0
    IL_0008: brtrue.s IL_0030
    IL_000A: ldarg.0
    IL_000B: isinst Z0.Logix.IBinaryBitwiseOp`1<System.Runtime.Intrinsics.Vector128`1<T>>
    IL_0010: stloc.1
    IL_0011: ldloc.1
    IL_0012: brtrue.s IL_0051
    IL_0014: ldarg.0
    IL_0015: isinst Z0.Logix.IShiftOp`1<System.Runtime.Intrinsics.Vector128`1<T>>
    IL_001A: stloc.2
    IL_001B: ldloc.2
    IL_001C: brtrue.s IL_0082
    IL_001E: ldarg.0
    IL_001F: isinst Z0.Logix.ITernaryBitwiseOp`1<System.Runtime.Intrinsics.Vector128`1<T>>
    IL_0024: stloc.3
    IL_0025: ldloc.3
    IL_0026: brtrue IL_00B3
    IL_002B: br IL_00F4
    IL_0030: ldloc.0
    IL_0031: callvirt Z0.UnaryBitLogicKind Z0.Logix.IOperator`2<System.Runtime.Intrinsics.Vector128`1<T>,Z0.UnaryBitLogicKind>::get_OpKind()
    IL_0036: ldloc.0
    IL_0037: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.IUnaryOp`1<Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>>::get_Arg()
    IL_003C: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_0041: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_0046: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorOpApi::eval<T>(Z0.UnaryBitLogicKind,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_004B: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::op_Implicit(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0050: ret
    IL_0051: ldloc.1
    IL_0052: callvirt Z0.BinaryBitLogicKind Z0.Logix.IOperator`2<System.Runtime.Intrinsics.Vector128`1<T>,Z0.BinaryBitLogicKind>::get_OpKind()
    IL_0057: ldloc.1
    IL_0058: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.IBinaryOp`1<Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>>::get_LeftArg()
    IL_005D: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_0062: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_0067: ldloc.1
    IL_0068: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.IBinaryOp`1<Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>>::get_RightArg()
    IL_006D: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_0072: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_0077: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorOpApi::eval<T>(Z0.BinaryBitLogicKind,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_007C: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::op_Implicit(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0081: ret
    IL_0082: ldloc.2
    IL_0083: callvirt Z0.ShiftOpKind Z0.Logix.IOperator`2<System.Runtime.Intrinsics.Vector128`1<T>,Z0.ShiftOpKind>::get_OpKind()
    IL_0088: ldloc.2
    IL_0089: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.IShiftOp`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Subject()
    IL_008E: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_0093: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_0098: ldloc.2
    IL_0099: callvirt Z0.Logix.IExpr`1<System.Byte> Z0.Logix.IShiftOp`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Offset()
    IL_009E: call Z0.Logix.LiteralExpr`1<System.Byte> Z0.Logix.ScalarExprEval::eval<System.Byte>(Z0.Logix.IExpr`1<System.Byte>)
    IL_00A3: callvirt System.Byte Z0.Logix.LiteralExpr`1<System.Byte>::get_Value()
    IL_00A8: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorOpApi::eval<T>(Z0.ShiftOpKind,System.Runtime.Intrinsics.Vector128`1<T>,System.Byte)
    IL_00AD: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::op_Implicit(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00B2: ret
    IL_00B3: ldloc.3
    IL_00B4: callvirt Z0.TernaryBitLogicKind Z0.Logix.IOperator`2<System.Runtime.Intrinsics.Vector128`1<T>,Z0.TernaryBitLogicKind>::get_OpKind()
    IL_00B9: ldloc.3
    IL_00BA: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.ITernaryOp`1<Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>>::get_FirstArg()
    IL_00BF: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_00C4: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_00C9: ldloc.3
    IL_00CA: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.ITernaryOp`1<Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>>::get_SecondArg()
    IL_00CF: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_00D4: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_00D9: ldloc.3
    IL_00DA: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.ITernaryOp`1<Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>>::get_ThirdArg()
    IL_00DF: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_00E4: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::op_Implicit(Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_00E9: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorOpApi::eval<T>(Z0.TernaryBitLogicKind,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00EE: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::op_Implicit(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00F3: ret
    IL_00F4: ldarg.0
    IL_00F5: callvirt System.Type System.Object::GetType()
    IL_00FA: callvirt System.String System.Reflection.MemberInfo::get_Name()
    IL_00FF: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_0104: throw
}
------------------------------------------------------------------------------------------------------------------------
