.class public Lorg/checkerframework/dataflow/cfg/playground/ConstantPropagationPlayground;
.super Ljava/lang/Object;
.source "ConstantPropagationPlayground.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 13
    .param p0, "args"    # [Ljava/lang/String;

    .line 15
    const-string v8, "cfg-input.java"

    .line 16
    .local v8, "inputFile":Ljava/lang/String;
    const-string v9, "cfg"

    .line 17
    .local v9, "outputDir":Ljava/lang/String;
    const-string v10, "test"

    .line 18
    .local v10, "method":Ljava/lang/String;
    const-string v11, "Test"

    .line 21
    .local v11, "clazz":Ljava/lang/String;
    new-instance v0, Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationTransfer;

    invoke-direct {v0}, Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationTransfer;-><init>()V

    move-object v12, v0

    .line 22
    .local v12, "transfer":Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationTransfer;
    new-instance v7, Lorg/checkerframework/dataflow/analysis/Analysis;

    invoke-direct {v7, v12}, Lorg/checkerframework/dataflow/analysis/Analysis;-><init>(Lorg/checkerframework/dataflow/analysis/TransferFunction;)V

    .line 24
    .local v7, "analysis":Lorg/checkerframework/dataflow/analysis/Analysis;, "Lorg/checkerframework/dataflow/analysis/Analysis<Lorg/checkerframework/dataflow/constantpropagation/Constant;Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationStore;Lorg/checkerframework/dataflow/constantpropagation/ConstantPropagationTransfer;>;"
    new-instance v0, Lorg/checkerframework/dataflow/cfg/CFGVisualizeLauncher;

    invoke-direct {v0}, Lorg/checkerframework/dataflow/cfg/CFGVisualizeLauncher;-><init>()V

    .line 25
    .local v0, "cfgVisualizeLauncher":Lorg/checkerframework/dataflow/cfg/CFGVisualizeLauncher;
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v8

    move-object v2, v9

    move-object v3, v10

    move-object v4, v11

    invoke-virtual/range {v0 .. v7}, Lorg/checkerframework/dataflow/cfg/CFGVisualizeLauncher;->generateDOTofCFG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLorg/checkerframework/dataflow/analysis/Analysis;)V

    .line 27
    return-void
.end method
