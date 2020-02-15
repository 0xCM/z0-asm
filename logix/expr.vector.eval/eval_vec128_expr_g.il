// Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
// LiteralExpr<Vector128<byte>> eval<byte>(IExpr<Vector128<byte>> expr)
// IL
LiteralExpr<Vector128<byte>> eval<byte>(IExpr<Vector128<byte>> expr)
{
    IL_0000: ldarg.0
    IL_0001: isinst Z0.Logix.ILiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>
    IL_0006: stloc.0
    IL_0007: ldloc.0
    IL_0008: brtrue.s IL_0036
    IL_000A: ldarg.0
    IL_000B: isinst Z0.Logix.IVarExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>
    IL_0010: stloc.1
    IL_0011: ldloc.1
    IL_0012: brtrue.s IL_0042
    IL_0014: ldarg.0
    IL_0015: isinst Z0.Logix.IVariedExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>
    IL_001A: stloc.2
    IL_001B: ldloc.2
    IL_001C: brtrue.s IL_004E
    IL_001E: ldarg.0
    IL_001F: isinst Z0.Logix.IOperator`1<System.Runtime.Intrinsics.Vector128`1<T>>
    IL_0024: stloc.3
    IL_0025: ldloc.3
    IL_0026: brtrue.s IL_005A
    IL_0028: ldarg.0
    IL_0029: isinst Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>
    IL_002E: stloc.s V_4
    IL_0030: ldloc.s V_4
    IL_0032: brtrue.s IL_0061
    IL_0034: br.s IL_008E
    IL_0036: ldloc.0
    IL_0037: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.ILiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_003C: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::op_Implicit(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0041: ret
    IL_0042: ldloc.1
    IL_0043: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.IVarExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_0048: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_004D: ret
    IL_004E: ldloc.2
    IL_004F: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.IVariedExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_BaseExpr()
    IL_0054: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_0059: ret
    IL_005A: ldloc.3
    IL_005B: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IOperator`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_0060: ret
    IL_0061: ldloc.s V_4
    IL_0063: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_LeftArg()
    IL_0068: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_006D: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_0072: ldloc.s V_4
    IL_0074: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_RightArg()
    IL_0079: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_007E: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_0083: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vxnor<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0088: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::op_Implicit(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_008D: ret
    IL_008E: ldarg.0
    IL_008F: callvirt System.Type System.Object::GetType()
    IL_0094: callvirt System.String System.Reflection.MemberInfo::get_Name()
    IL_0099: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_009E: throw
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
// LiteralExpr<Vector128<sbyte>> eval<sbyte>(IExpr<Vector128<sbyte>> expr)
// IL
LiteralExpr<Vector128<sbyte>> eval<sbyte>(IExpr<Vector128<sbyte>> expr)
{
    IL_0000: ldarg.0
    IL_0001: isinst Z0.Logix.ILiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>
    IL_0006: stloc.0
    IL_0007: ldloc.0
    IL_0008: brtrue.s IL_0036
    IL_000A: ldarg.0
    IL_000B: isinst Z0.Logix.IVarExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>
    IL_0010: stloc.1
    IL_0011: ldloc.1
    IL_0012: brtrue.s IL_0042
    IL_0014: ldarg.0
    IL_0015: isinst Z0.Logix.IVariedExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>
    IL_001A: stloc.2
    IL_001B: ldloc.2
    IL_001C: brtrue.s IL_004E
    IL_001E: ldarg.0
    IL_001F: isinst Z0.Logix.IOperator`1<System.Runtime.Intrinsics.Vector128`1<T>>
    IL_0024: stloc.3
    IL_0025: ldloc.3
    IL_0026: brtrue.s IL_005A
    IL_0028: ldarg.0
    IL_0029: isinst Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>
    IL_002E: stloc.s V_4
    IL_0030: ldloc.s V_4
    IL_0032: brtrue.s IL_0061
    IL_0034: br.s IL_008E
    IL_0036: ldloc.0
    IL_0037: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.ILiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_003C: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::op_Implicit(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0041: ret
    IL_0042: ldloc.1
    IL_0043: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.IVarExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_0048: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_004D: ret
    IL_004E: ldloc.2
    IL_004F: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.IVariedExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_BaseExpr()
    IL_0054: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_0059: ret
    IL_005A: ldloc.3
    IL_005B: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IOperator`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_0060: ret
    IL_0061: ldloc.s V_4
    IL_0063: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_LeftArg()
    IL_0068: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_006D: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_0072: ldloc.s V_4
    IL_0074: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_RightArg()
    IL_0079: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_007E: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_0083: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vxnor<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0088: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::op_Implicit(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_008D: ret
    IL_008E: ldarg.0
    IL_008F: callvirt System.Type System.Object::GetType()
    IL_0094: callvirt System.String System.Reflection.MemberInfo::get_Name()
    IL_0099: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_009E: throw
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
// LiteralExpr<Vector128<ushort>> eval<ushort>(IExpr<Vector128<ushort>> expr)
// IL
LiteralExpr<Vector128<ushort>> eval<ushort>(IExpr<Vector128<ushort>> expr)
{
    IL_0000: ldarg.0
    IL_0001: isinst Z0.Logix.ILiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>
    IL_0006: stloc.0
    IL_0007: ldloc.0
    IL_0008: brtrue.s IL_0036
    IL_000A: ldarg.0
    IL_000B: isinst Z0.Logix.IVarExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>
    IL_0010: stloc.1
    IL_0011: ldloc.1
    IL_0012: brtrue.s IL_0042
    IL_0014: ldarg.0
    IL_0015: isinst Z0.Logix.IVariedExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>
    IL_001A: stloc.2
    IL_001B: ldloc.2
    IL_001C: brtrue.s IL_004E
    IL_001E: ldarg.0
    IL_001F: isinst Z0.Logix.IOperator`1<System.Runtime.Intrinsics.Vector128`1<T>>
    IL_0024: stloc.3
    IL_0025: ldloc.3
    IL_0026: brtrue.s IL_005A
    IL_0028: ldarg.0
    IL_0029: isinst Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>
    IL_002E: stloc.s V_4
    IL_0030: ldloc.s V_4
    IL_0032: brtrue.s IL_0061
    IL_0034: br.s IL_008E
    IL_0036: ldloc.0
    IL_0037: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.ILiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_003C: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::op_Implicit(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0041: ret
    IL_0042: ldloc.1
    IL_0043: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.IVarExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_0048: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_004D: ret
    IL_004E: ldloc.2
    IL_004F: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.IVariedExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_BaseExpr()
    IL_0054: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_0059: ret
    IL_005A: ldloc.3
    IL_005B: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IOperator`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_0060: ret
    IL_0061: ldloc.s V_4
    IL_0063: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_LeftArg()
    IL_0068: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_006D: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_0072: ldloc.s V_4
    IL_0074: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_RightArg()
    IL_0079: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_007E: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_0083: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vxnor<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0088: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::op_Implicit(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_008D: ret
    IL_008E: ldarg.0
    IL_008F: callvirt System.Type System.Object::GetType()
    IL_0094: callvirt System.String System.Reflection.MemberInfo::get_Name()
    IL_0099: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_009E: throw
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
// LiteralExpr<Vector128<short>> eval<short>(IExpr<Vector128<short>> expr)
// IL
LiteralExpr<Vector128<short>> eval<short>(IExpr<Vector128<short>> expr)
{
    IL_0000: ldarg.0
    IL_0001: isinst Z0.Logix.ILiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>
    IL_0006: stloc.0
    IL_0007: ldloc.0
    IL_0008: brtrue.s IL_0036
    IL_000A: ldarg.0
    IL_000B: isinst Z0.Logix.IVarExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>
    IL_0010: stloc.1
    IL_0011: ldloc.1
    IL_0012: brtrue.s IL_0042
    IL_0014: ldarg.0
    IL_0015: isinst Z0.Logix.IVariedExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>
    IL_001A: stloc.2
    IL_001B: ldloc.2
    IL_001C: brtrue.s IL_004E
    IL_001E: ldarg.0
    IL_001F: isinst Z0.Logix.IOperator`1<System.Runtime.Intrinsics.Vector128`1<T>>
    IL_0024: stloc.3
    IL_0025: ldloc.3
    IL_0026: brtrue.s IL_005A
    IL_0028: ldarg.0
    IL_0029: isinst Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>
    IL_002E: stloc.s V_4
    IL_0030: ldloc.s V_4
    IL_0032: brtrue.s IL_0061
    IL_0034: br.s IL_008E
    IL_0036: ldloc.0
    IL_0037: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.ILiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_003C: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::op_Implicit(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0041: ret
    IL_0042: ldloc.1
    IL_0043: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.IVarExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_0048: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_004D: ret
    IL_004E: ldloc.2
    IL_004F: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.IVariedExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_BaseExpr()
    IL_0054: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_0059: ret
    IL_005A: ldloc.3
    IL_005B: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IOperator`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_0060: ret
    IL_0061: ldloc.s V_4
    IL_0063: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_LeftArg()
    IL_0068: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_006D: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_0072: ldloc.s V_4
    IL_0074: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_RightArg()
    IL_0079: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_007E: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_0083: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vxnor<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0088: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::op_Implicit(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_008D: ret
    IL_008E: ldarg.0
    IL_008F: callvirt System.Type System.Object::GetType()
    IL_0094: callvirt System.String System.Reflection.MemberInfo::get_Name()
    IL_0099: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_009E: throw
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
// LiteralExpr<Vector128<uint>> eval<uint>(IExpr<Vector128<uint>> expr)
// IL
LiteralExpr<Vector128<uint>> eval<uint>(IExpr<Vector128<uint>> expr)
{
    IL_0000: ldarg.0
    IL_0001: isinst Z0.Logix.ILiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>
    IL_0006: stloc.0
    IL_0007: ldloc.0
    IL_0008: brtrue.s IL_0036
    IL_000A: ldarg.0
    IL_000B: isinst Z0.Logix.IVarExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>
    IL_0010: stloc.1
    IL_0011: ldloc.1
    IL_0012: brtrue.s IL_0042
    IL_0014: ldarg.0
    IL_0015: isinst Z0.Logix.IVariedExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>
    IL_001A: stloc.2
    IL_001B: ldloc.2
    IL_001C: brtrue.s IL_004E
    IL_001E: ldarg.0
    IL_001F: isinst Z0.Logix.IOperator`1<System.Runtime.Intrinsics.Vector128`1<T>>
    IL_0024: stloc.3
    IL_0025: ldloc.3
    IL_0026: brtrue.s IL_005A
    IL_0028: ldarg.0
    IL_0029: isinst Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>
    IL_002E: stloc.s V_4
    IL_0030: ldloc.s V_4
    IL_0032: brtrue.s IL_0061
    IL_0034: br.s IL_008E
    IL_0036: ldloc.0
    IL_0037: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.ILiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_003C: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::op_Implicit(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0041: ret
    IL_0042: ldloc.1
    IL_0043: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.IVarExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_0048: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_004D: ret
    IL_004E: ldloc.2
    IL_004F: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.IVariedExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_BaseExpr()
    IL_0054: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_0059: ret
    IL_005A: ldloc.3
    IL_005B: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IOperator`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_0060: ret
    IL_0061: ldloc.s V_4
    IL_0063: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_LeftArg()
    IL_0068: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_006D: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_0072: ldloc.s V_4
    IL_0074: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_RightArg()
    IL_0079: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_007E: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_0083: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vxnor<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0088: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::op_Implicit(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_008D: ret
    IL_008E: ldarg.0
    IL_008F: callvirt System.Type System.Object::GetType()
    IL_0094: callvirt System.String System.Reflection.MemberInfo::get_Name()
    IL_0099: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_009E: throw
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
// LiteralExpr<Vector128<int>> eval<int>(IExpr<Vector128<int>> expr)
// IL
LiteralExpr<Vector128<int>> eval<int>(IExpr<Vector128<int>> expr)
{
    IL_0000: ldarg.0
    IL_0001: isinst Z0.Logix.ILiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>
    IL_0006: stloc.0
    IL_0007: ldloc.0
    IL_0008: brtrue.s IL_0036
    IL_000A: ldarg.0
    IL_000B: isinst Z0.Logix.IVarExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>
    IL_0010: stloc.1
    IL_0011: ldloc.1
    IL_0012: brtrue.s IL_0042
    IL_0014: ldarg.0
    IL_0015: isinst Z0.Logix.IVariedExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>
    IL_001A: stloc.2
    IL_001B: ldloc.2
    IL_001C: brtrue.s IL_004E
    IL_001E: ldarg.0
    IL_001F: isinst Z0.Logix.IOperator`1<System.Runtime.Intrinsics.Vector128`1<T>>
    IL_0024: stloc.3
    IL_0025: ldloc.3
    IL_0026: brtrue.s IL_005A
    IL_0028: ldarg.0
    IL_0029: isinst Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>
    IL_002E: stloc.s V_4
    IL_0030: ldloc.s V_4
    IL_0032: brtrue.s IL_0061
    IL_0034: br.s IL_008E
    IL_0036: ldloc.0
    IL_0037: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.ILiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_003C: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::op_Implicit(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0041: ret
    IL_0042: ldloc.1
    IL_0043: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.IVarExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_0048: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_004D: ret
    IL_004E: ldloc.2
    IL_004F: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.IVariedExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_BaseExpr()
    IL_0054: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_0059: ret
    IL_005A: ldloc.3
    IL_005B: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IOperator`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_0060: ret
    IL_0061: ldloc.s V_4
    IL_0063: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_LeftArg()
    IL_0068: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_006D: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_0072: ldloc.s V_4
    IL_0074: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_RightArg()
    IL_0079: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_007E: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_0083: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vxnor<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0088: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::op_Implicit(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_008D: ret
    IL_008E: ldarg.0
    IL_008F: callvirt System.Type System.Object::GetType()
    IL_0094: callvirt System.String System.Reflection.MemberInfo::get_Name()
    IL_0099: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_009E: throw
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
// LiteralExpr<Vector128<ulong>> eval<ulong>(IExpr<Vector128<ulong>> expr)
// IL
LiteralExpr<Vector128<ulong>> eval<ulong>(IExpr<Vector128<ulong>> expr)
{
    IL_0000: ldarg.0
    IL_0001: isinst Z0.Logix.ILiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>
    IL_0006: stloc.0
    IL_0007: ldloc.0
    IL_0008: brtrue.s IL_0036
    IL_000A: ldarg.0
    IL_000B: isinst Z0.Logix.IVarExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>
    IL_0010: stloc.1
    IL_0011: ldloc.1
    IL_0012: brtrue.s IL_0042
    IL_0014: ldarg.0
    IL_0015: isinst Z0.Logix.IVariedExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>
    IL_001A: stloc.2
    IL_001B: ldloc.2
    IL_001C: brtrue.s IL_004E
    IL_001E: ldarg.0
    IL_001F: isinst Z0.Logix.IOperator`1<System.Runtime.Intrinsics.Vector128`1<T>>
    IL_0024: stloc.3
    IL_0025: ldloc.3
    IL_0026: brtrue.s IL_005A
    IL_0028: ldarg.0
    IL_0029: isinst Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>
    IL_002E: stloc.s V_4
    IL_0030: ldloc.s V_4
    IL_0032: brtrue.s IL_0061
    IL_0034: br.s IL_008E
    IL_0036: ldloc.0
    IL_0037: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.ILiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_003C: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::op_Implicit(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0041: ret
    IL_0042: ldloc.1
    IL_0043: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.IVarExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_0048: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_004D: ret
    IL_004E: ldloc.2
    IL_004F: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.IVariedExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_BaseExpr()
    IL_0054: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_0059: ret
    IL_005A: ldloc.3
    IL_005B: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IOperator`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_0060: ret
    IL_0061: ldloc.s V_4
    IL_0063: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_LeftArg()
    IL_0068: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_006D: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_0072: ldloc.s V_4
    IL_0074: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_RightArg()
    IL_0079: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_007E: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_0083: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vxnor<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0088: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::op_Implicit(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_008D: ret
    IL_008E: ldarg.0
    IL_008F: callvirt System.Type System.Object::GetType()
    IL_0094: callvirt System.String System.Reflection.MemberInfo::get_Name()
    IL_0099: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_009E: throw
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
// LiteralExpr<Vector128<long>> eval<long>(IExpr<Vector128<long>> expr)
// IL
LiteralExpr<Vector128<long>> eval<long>(IExpr<Vector128<long>> expr)
{
    IL_0000: ldarg.0
    IL_0001: isinst Z0.Logix.ILiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>
    IL_0006: stloc.0
    IL_0007: ldloc.0
    IL_0008: brtrue.s IL_0036
    IL_000A: ldarg.0
    IL_000B: isinst Z0.Logix.IVarExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>
    IL_0010: stloc.1
    IL_0011: ldloc.1
    IL_0012: brtrue.s IL_0042
    IL_0014: ldarg.0
    IL_0015: isinst Z0.Logix.IVariedExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>
    IL_001A: stloc.2
    IL_001B: ldloc.2
    IL_001C: brtrue.s IL_004E
    IL_001E: ldarg.0
    IL_001F: isinst Z0.Logix.IOperator`1<System.Runtime.Intrinsics.Vector128`1<T>>
    IL_0024: stloc.3
    IL_0025: ldloc.3
    IL_0026: brtrue.s IL_005A
    IL_0028: ldarg.0
    IL_0029: isinst Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>
    IL_002E: stloc.s V_4
    IL_0030: ldloc.s V_4
    IL_0032: brtrue.s IL_0061
    IL_0034: br.s IL_008E
    IL_0036: ldloc.0
    IL_0037: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.ILiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_003C: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::op_Implicit(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0041: ret
    IL_0042: ldloc.1
    IL_0043: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.IVarExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_0048: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_004D: ret
    IL_004E: ldloc.2
    IL_004F: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.IVariedExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_BaseExpr()
    IL_0054: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_0059: ret
    IL_005A: ldloc.3
    IL_005B: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IOperator`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_0060: ret
    IL_0061: ldloc.s V_4
    IL_0063: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_LeftArg()
    IL_0068: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_006D: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_0072: ldloc.s V_4
    IL_0074: callvirt Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.IComparisonExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_RightArg()
    IL_0079: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorExprEval::eval<T>(Z0.Logix.IExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>)
    IL_007E: callvirt System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::get_Value()
    IL_0083: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vxnor<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0088: call Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.LiteralExpr`1<System.Runtime.Intrinsics.Vector128`1<T>>::op_Implicit(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_008D: ret
    IL_008E: ldarg.0
    IL_008F: callvirt System.Type System.Object::GetType()
    IL_0094: callvirt System.String System.Reflection.MemberInfo::get_Name()
    IL_0099: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_009E: throw
}
------------------------------------------------------------------------------------------------------------------------
