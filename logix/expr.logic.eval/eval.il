// Z0.bit Z0.Logix.LogicExprEval::eval(Z0.Logix.ILogicExpr)
// bit eval(ILogicExpr expr)
// IL
bit eval(ILogicExpr expr)
{
    IL_0000: ldarg.0
    IL_0001: isinst Z0.Logix.ILogicVarExpr
    IL_0006: stloc.0
    IL_0007: ldloc.0
    IL_0008: brtrue.s IL_0036
    IL_000A: ldarg.0
    IL_000B: isinst Z0.Logix.IVariedLogicExpr
    IL_0010: stloc.1
    IL_0011: ldloc.1
    IL_0012: brtrue.s IL_0042
    IL_0014: ldarg.0
    IL_0015: isinst Z0.Logix.ILogicLiteral
    IL_001A: stloc.2
    IL_001B: ldloc.2
    IL_001C: brtrue.s IL_004E
    IL_001E: ldarg.0
    IL_001F: isinst Z0.Logix.ILogicOp
    IL_0024: stloc.3
    IL_0025: ldloc.3
    IL_0026: brtrue.s IL_0055
    IL_0028: ldarg.0
    IL_0029: isinst Z0.Logix.IComparisonExpr
    IL_002E: stloc.s V_4
    IL_0030: ldloc.s V_4
    IL_0032: brtrue.s IL_005C
    IL_0034: br.s IL_007F
    IL_0036: ldloc.0
    IL_0037: callvirt Z0.Logix.ILogicExpr Z0.Logix.ILogicVarExpr::get_Value()
    IL_003C: call Z0.bit Z0.Logix.LogicExprEval::eval(Z0.Logix.ILogicExpr)
    IL_0041: ret
    IL_0042: ldloc.1
    IL_0043: callvirt Z0.Logix.ILogicExpr Z0.Logix.IVariedLogicExpr::get_BaseExpr()
    IL_0048: call Z0.bit Z0.Logix.LogicExprEval::eval(Z0.Logix.ILogicExpr)
    IL_004D: ret
    IL_004E: ldloc.2
    IL_004F: callvirt Z0.bit Z0.Logix.ILogicLiteral::get_Value()
    IL_0054: ret
    IL_0055: ldloc.3
    IL_0056: call Z0.bit Z0.Logix.LogicExprEval::eval(Z0.Logix.ILogicOp)
    IL_005B: ret
    IL_005C: ldloc.s V_4
    IL_005E: callvirt Z0.Logix.ILogicExpr Z0.Logix.IComparisonExpr::get_Lhs()
    IL_0063: call Z0.bit Z0.Logix.LogicExprEval::eval(Z0.Logix.ILogicExpr)
    IL_0068: ldloc.s V_4
    IL_006A: callvirt Z0.Logix.ILogicExpr Z0.Logix.IComparisonExpr::get_Rhs()
    IL_006F: call Z0.bit Z0.Logix.LogicExprEval::eval(Z0.Logix.ILogicExpr)
    IL_0074: call System.Boolean Z0.bit::op_Equality(Z0.bit,Z0.bit)
    IL_0079: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_007E: ret
    IL_007F: ldarg.0
    IL_0080: callvirt System.Type System.Object::GetType()
    IL_0085: callvirt System.String System.Reflection.MemberInfo::get_Name()
    IL_008A: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_008F: throw
}
------------------------------------------------------------------------------------------------------------------------
// Z0.bit Z0.Logix.LogicExprEval::eval(Z0.Logix.ILogicOp)
// bit eval(ILogicOp expr)
// IL
bit eval(ILogicOp expr)
{
    IL_0000: ldarg.0
    IL_0001: isinst Z0.Logix.IUnaryLogicOp
    IL_0006: stloc.0
    IL_0007: ldloc.0
    IL_0008: brtrue.s IL_0020
    IL_000A: ldarg.0
    IL_000B: isinst Z0.Logix.IBinaryLogicOp
    IL_0010: stloc.1
    IL_0011: ldloc.1
    IL_0012: brtrue.s IL_0037
    IL_0014: ldarg.0
    IL_0015: isinst Z0.Logix.ITernaryLogicOp
    IL_001A: stloc.2
    IL_001B: ldloc.2
    IL_001C: brtrue.s IL_0059
    IL_001E: br.s IL_0086
    IL_0020: ldloc.0
    IL_0021: callvirt Z0.UnaryBitLogicKind Z0.Logix.ILogicOp`1<Z0.UnaryBitLogicKind>::get_OpKind()
    IL_0026: ldloc.0
    IL_0027: callvirt Z0.Logix.ILogicExpr Z0.Logix.IUnaryOp`1<Z0.Logix.ILogicExpr>::get_Arg()
    IL_002C: call Z0.bit Z0.Logix.LogicExprEval::eval(Z0.Logix.ILogicExpr)
    IL_0031: call Z0.bit Z0.Logix.LogicOpApi::eval(Z0.UnaryBitLogicKind,Z0.bit)
    IL_0036: ret
    IL_0037: ldloc.1
    IL_0038: callvirt Z0.BinaryBitLogicKind Z0.Logix.ILogicOp`1<Z0.BinaryBitLogicKind>::get_OpKind()
    IL_003D: ldloc.1
    IL_003E: callvirt Z0.Logix.ILogicExpr Z0.Logix.IBinaryOp`1<Z0.Logix.ILogicExpr>::get_LeftArg()
    IL_0043: call Z0.bit Z0.Logix.LogicExprEval::eval(Z0.Logix.ILogicExpr)
    IL_0048: ldloc.1
    IL_0049: callvirt Z0.Logix.ILogicExpr Z0.Logix.IBinaryOp`1<Z0.Logix.ILogicExpr>::get_RightArg()
    IL_004E: call Z0.bit Z0.Logix.LogicExprEval::eval(Z0.Logix.ILogicExpr)
    IL_0053: call Z0.bit Z0.Logix.LogicOpApi::eval(Z0.BinaryBitLogicKind,Z0.bit,Z0.bit)
    IL_0058: ret
    IL_0059: ldloc.2
    IL_005A: callvirt Z0.TernaryBitLogicKind Z0.Logix.ILogicOp`1<Z0.TernaryBitLogicKind>::get_OpKind()
    IL_005F: ldloc.2
    IL_0060: callvirt Z0.Logix.ILogicExpr Z0.Logix.ITernaryOp`1<Z0.Logix.ILogicExpr>::get_FirstArg()
    IL_0065: call Z0.bit Z0.Logix.LogicExprEval::eval(Z0.Logix.ILogicExpr)
    IL_006A: ldloc.2
    IL_006B: callvirt Z0.Logix.ILogicExpr Z0.Logix.ITernaryOp`1<Z0.Logix.ILogicExpr>::get_SecondArg()
    IL_0070: call Z0.bit Z0.Logix.LogicExprEval::eval(Z0.Logix.ILogicExpr)
    IL_0075: ldloc.2
    IL_0076: callvirt Z0.Logix.ILogicExpr Z0.Logix.ITernaryOp`1<Z0.Logix.ILogicExpr>::get_ThirdArg()
    IL_007B: call Z0.bit Z0.Logix.LogicExprEval::eval(Z0.Logix.ILogicExpr)
    IL_0080: call Z0.bit Z0.Logix.LogicOpApi::eval(Z0.TernaryBitLogicKind,Z0.bit,Z0.bit,Z0.bit)
    IL_0085: ret
    IL_0086: ldarg.0
    IL_0087: callvirt System.Type System.Object::GetType()
    IL_008C: callvirt System.String System.Reflection.MemberInfo::get_Name()
    IL_0091: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_0096: throw
}
------------------------------------------------------------------------------------------------------------------------
