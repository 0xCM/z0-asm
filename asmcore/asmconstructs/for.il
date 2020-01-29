// System.Void Z0.AsmSpecs.AsmConstructs::for_min_max(System.Int32,System.Int32,System.Action`1<System.Int32>)
// void for_min_max(int i0, int i1, Action<int> f)
// NoInlining
void for_min_max(int i0, int i1, Action<int> f)
{
    IL_0000: ldarg.0
    IL_0001: stloc.0
    IL_0002: br.s IL_000F
    IL_0004: ldarg.2
    IL_0005: ldloc.0
    IL_0006: callvirt System.Void System.Action`1<System.Int32>::Invoke(System.Int32)
    IL_000B: ldloc.0
    IL_000C: ldc.i4.1
    IL_000D: add
    IL_000E: stloc.0
    IL_000F: ldloc.0
    IL_0010: ldarg.1
    IL_0011: blt.s IL_0004
    IL_0013: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Int32 Z0.AsmSpecs.AsmConstructs::for_min_max()
// int for_min_max()
// NoInlining
int for_min_max()
{
    IL_0000: newobj System.Void Z0.AsmSpecs.AsmConstructs/<>c__DisplayClass1_0::.ctor()
    IL_0005: stloc.0
    IL_0006: ldloc.0
    IL_0007: ldc.i4.0
    IL_0008: stfld System.Int32 Z0.AsmSpecs.AsmConstructs/<>c__DisplayClass1_0::sum
    IL_000D: ldc.i4.0
    IL_000E: ldc.i4.8
    IL_000F: ldloc.0
    IL_0010: ldftn System.Void Z0.AsmSpecs.AsmConstructs/<>c__DisplayClass1_0::<for_min_max>b__0(System.Int32)
    IL_0016: newobj System.Void System.Action`1<System.Int32>::.ctor(System.Object,System.IntPtr)
    IL_001B: call System.Void Z0.AsmSpecs.AsmConstructs::for_min_max(System.Int32,System.Int32,System.Action`1<System.Int32>)
    IL_0020: ldloc.0
    IL_0021: ldfld System.Int32 Z0.AsmSpecs.AsmConstructs/<>c__DisplayClass1_0::sum
    IL_0026: ret
}
------------------------------------------------------------------------------------------------------------------------
