// Id := 100664081, Name := System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOpApi::eval<T>(Z0.BinaryBitLogicKind,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector128<long> eval<long>(BinaryBitLogicKind:byte kind, Vector128<long> a, Vector128<long> b)
// IL
Vector128<long> eval<long>(BinaryBitLogicKind:byte kind, Vector128<long> a, Vector128<long> b)
{
    IL_0000: ldarg.0
    IL_0001: switch(IL_0053,IL_005B,IL_00C3,IL_008B,IL_00B3,IL_0093,IL_007B,IL_006B,IL_0073,IL_0083,IL_00A3,IL_00AB,IL_009B,IL_00BB,IL_0063,IL_004B)
    IL_0046: br IL_00CB
    IL_004B: ldarg.1
    IL_004C: ldarg.2
    IL_004D: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::true<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0052: ret
    IL_0053: ldarg.1
    IL_0054: ldarg.2
    IL_0055: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::false<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_005A: ret
    IL_005B: ldarg.1
    IL_005C: ldarg.2
    IL_005D: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::and<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0062: ret
    IL_0063: ldarg.1
    IL_0064: ldarg.2
    IL_0065: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::nand<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_006A: ret
    IL_006B: ldarg.1
    IL_006C: ldarg.2
    IL_006D: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::or<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0072: ret
    IL_0073: ldarg.1
    IL_0074: ldarg.2
    IL_0075: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::nor<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_007A: ret
    IL_007B: ldarg.1
    IL_007C: ldarg.2
    IL_007D: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::xor<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0082: ret
    IL_0083: ldarg.1
    IL_0084: ldarg.2
    IL_0085: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::xnor<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_008A: ret
    IL_008B: ldarg.1
    IL_008C: ldarg.2
    IL_008D: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::left<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0092: ret
    IL_0093: ldarg.1
    IL_0094: ldarg.2
    IL_0095: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::right<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_009A: ret
    IL_009B: ldarg.1
    IL_009C: ldarg.2
    IL_009D: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::lnot<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00A2: ret
    IL_00A3: ldarg.1
    IL_00A4: ldarg.2
    IL_00A5: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::rnot<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00AA: ret
    IL_00AB: ldarg.1
    IL_00AC: ldarg.2
    IL_00AD: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::impl<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00B2: ret
    IL_00B3: ldarg.1
    IL_00B4: ldarg.2
    IL_00B5: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::nonimpl<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00BA: ret
    IL_00BB: ldarg.1
    IL_00BC: ldarg.2
    IL_00BD: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::cimpl<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00C2: ret
    IL_00C3: ldarg.1
    IL_00C4: ldarg.2
    IL_00C5: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::cnonimpl<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00CA: ret
    IL_00CB: ldarg.0
    IL_00CC: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.BinaryBitLogicKind)
    IL_00D1: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_00D6: throw
}
