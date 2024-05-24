.class public Lorg/checkerframework/dataflow/cfg/CFGVisualizeLauncher;
.super Ljava/lang/Object;
.source "CFGVisualizeLauncher.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 17
    .param p0, "args"    # [Ljava/lang/String;

    .line 40
    move-object/from16 v0, p0

    new-instance v1, Lorg/checkerframework/dataflow/cfg/CFGVisualizeLauncher;

    invoke-direct {v1}, Lorg/checkerframework/dataflow/cfg/CFGVisualizeLauncher;-><init>()V

    .line 41
    .local v1, "cfgVisualizeLauncher":Lorg/checkerframework/dataflow/cfg/CFGVisualizeLauncher;
    array-length v2, v0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ge v2, v4, :cond_0

    .line 42
    invoke-virtual {v1}, Lorg/checkerframework/dataflow/cfg/CFGVisualizeLauncher;->printUsage()V

    .line 43
    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 45
    :cond_0
    const/4 v2, 0x0

    aget-object v9, v0, v2

    .line 46
    .local v9, "input":Ljava/lang/String;
    aget-object v10, v0, v3

    .line 47
    .local v10, "output":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v11, v5

    .line 48
    .local v11, "file":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->canRead()Z

    move-result v5

    if-nez v5, :cond_1

    .line 49
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot read input file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/checkerframework/dataflow/cfg/CFGVisualizeLauncher;->printError(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v1}, Lorg/checkerframework/dataflow/cfg/CFGVisualizeLauncher;->printUsage()V

    .line 51
    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 54
    :cond_1
    const-string v5, "test"

    .line 55
    .local v5, "method":Ljava/lang/String;
    const-string v6, "Test"

    .line 56
    .local v6, "clas":Ljava/lang/String;
    const/4 v7, 0x0

    .line 57
    .local v7, "pdf":Z
    const/4 v8, 0x0

    .line 58
    .local v8, "error":Z
    const/4 v12, 0x0

    .line 60
    .local v12, "verbose":Z
    const/4 v13, 0x2

    move v14, v7

    move v15, v8

    move/from16 v16, v12

    move-object v12, v5

    move v5, v13

    move-object v13, v6

    .end local v6    # "clas":Ljava/lang/String;
    .end local v7    # "pdf":Z
    .end local v8    # "error":Z
    .local v5, "i":I
    .local v12, "method":Ljava/lang/String;
    .local v13, "clas":Ljava/lang/String;
    .local v14, "pdf":Z
    .local v15, "error":Z
    .local v16, "verbose":Z
    :goto_0
    array-length v6, v0

    if-ge v5, v6, :cond_5

    .line 61
    aget-object v6, v0, v5

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_2
    goto :goto_1

    :sswitch_0
    const-string v7, "-verbose"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x3

    goto :goto_2

    :sswitch_1
    const-string v7, "-class"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v6, v4

    goto :goto_2

    :sswitch_2
    const-string v7, "-method"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v6, v3

    goto :goto_2

    :sswitch_3
    const-string v7, "-pdf"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v6, v2

    goto :goto_2

    :goto_1
    const/4 v6, -0x1

    :goto_2
    packed-switch v6, :pswitch_data_0

    .line 85
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown command line argument: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v0, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/checkerframework/dataflow/cfg/CFGVisualizeLauncher;->printError(Ljava/lang/String;)V

    .line 86
    const/4 v6, 0x1

    move v15, v6

    .end local v15    # "error":Z
    .local v6, "error":Z
    goto :goto_3

    .line 82
    .end local v6    # "error":Z
    .restart local v15    # "error":Z
    :pswitch_0
    const/4 v6, 0x1

    .line 83
    .end local v16    # "verbose":Z
    .local v6, "verbose":Z
    move/from16 v16, v6

    goto :goto_3

    .line 74
    .end local v6    # "verbose":Z
    .restart local v16    # "verbose":Z
    :pswitch_1
    array-length v6, v0

    sub-int/2addr v6, v3

    if-lt v5, v6, :cond_3

    .line 75
    const-string v6, "Did not find <name> after -class."

    invoke-virtual {v1, v6}, Lorg/checkerframework/dataflow/cfg/CFGVisualizeLauncher;->printError(Ljava/lang/String;)V

    .line 76
    goto :goto_3

    .line 78
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 79
    aget-object v6, v0, v5

    .line 80
    .end local v13    # "clas":Ljava/lang/String;
    .local v6, "clas":Ljava/lang/String;
    move-object v13, v6

    goto :goto_3

    .line 66
    .end local v6    # "clas":Ljava/lang/String;
    .restart local v13    # "clas":Ljava/lang/String;
    :pswitch_2
    array-length v6, v0

    sub-int/2addr v6, v3

    if-lt v5, v6, :cond_4

    .line 67
    const-string v6, "Did not find <name> after -method."

    invoke-virtual {v1, v6}, Lorg/checkerframework/dataflow/cfg/CFGVisualizeLauncher;->printError(Ljava/lang/String;)V

    .line 68
    goto :goto_3

    .line 70
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 71
    aget-object v6, v0, v5

    .line 72
    .end local v12    # "method":Ljava/lang/String;
    .local v6, "method":Ljava/lang/String;
    move-object v12, v6

    goto :goto_3

    .line 63
    .end local v6    # "method":Ljava/lang/String;
    .restart local v12    # "method":Ljava/lang/String;
    :pswitch_3
    const/4 v6, 0x1

    .line 64
    .end local v14    # "pdf":Z
    .local v6, "pdf":Z
    move v14, v6

    .line 60
    .end local v6    # "pdf":Z
    .restart local v14    # "pdf":Z
    :goto_3
    add-int/2addr v5, v3

    goto :goto_0

    .line 91
    .end local v5    # "i":I
    :cond_5
    if-eqz v15, :cond_6

    .line 92
    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 95
    :cond_6
    move-object v2, v1

    move-object v3, v9

    move-object v4, v10

    move-object v5, v12

    move-object v6, v13

    move v7, v14

    move/from16 v8, v16

    invoke-virtual/range {v2 .. v8}, Lorg/checkerframework/dataflow/cfg/CFGVisualizeLauncher;->generateDOTofCFGWithoutAnalysis(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 97
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1625a5 -> :sswitch_3
        0xc3e3b4e -> :sswitch_2
        0x526fbd6b -> :sswitch_1
        0x57825cb5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public generateDOTofCFG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLorg/checkerframework/dataflow/analysis/Analysis;)V
    .locals 6
    .param p1, "inputFile"    # Ljava/lang/String;
    .param p2, "outputDir"    # Ljava/lang/String;
    .param p3, "method"    # Ljava/lang/String;
    .param p4, "clas"    # Ljava/lang/String;
    .param p5, "pdf"    # Z
    .param p6, "verbose"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V::",
            "Lorg/checkerframework/dataflow/analysis/AbstractValue<",
            "TV;>;S::",
            "Lorg/checkerframework/dataflow/analysis/Store<",
            "TS;>;T::",
            "Lorg/checkerframework/dataflow/analysis/TransferFunction<",
            "TV;TS;>;>(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Lorg/checkerframework/dataflow/analysis/Analysis<",
            "TV;TS;TT;>;)V"
        }
    .end annotation

    .line 140
    .local p7, "analysis":Lorg/checkerframework/dataflow/analysis/Analysis;, "Lorg/checkerframework/dataflow/analysis/Analysis<TV;TS;TT;>;"
    invoke-virtual {p0, p1, p4, p3}, Lorg/checkerframework/dataflow/cfg/CFGVisualizeLauncher;->generateMethodCFG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;

    move-result-object v0

    .line 141
    .local v0, "cfg":Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;
    if-eqz p7, :cond_0

    .line 142
    invoke-virtual {p7, v0}, Lorg/checkerframework/dataflow/analysis/Analysis;->performAnalysis(Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;)V

    .line 145
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 146
    .local v1, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "outdir"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const-string v2, "verbose"

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    new-instance v2, Lorg/checkerframework/dataflow/cfg/DOTCFGVisualizer;

    invoke-direct {v2}, Lorg/checkerframework/dataflow/cfg/DOTCFGVisualizer;-><init>()V

    .line 150
    .local v2, "viz":Lorg/checkerframework/dataflow/cfg/CFGVisualizer;, "Lorg/checkerframework/dataflow/cfg/CFGVisualizer<TV;TS;TT;>;"
    invoke-interface {v2, v1}, Lorg/checkerframework/dataflow/cfg/CFGVisualizer;->init(Ljava/util/Map;)V

    .line 151
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;->getEntryBlock()Lorg/checkerframework/dataflow/cfg/block/SpecialBlock;

    move-result-object v3

    invoke-interface {v2, v0, v3, p7}, Lorg/checkerframework/dataflow/cfg/CFGVisualizer;->visualize(Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;Lorg/checkerframework/dataflow/cfg/block/Block;Lorg/checkerframework/dataflow/analysis/Analysis;)Ljava/util/Map;

    move-result-object v3

    .line 152
    .local v3, "res":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v2}, Lorg/checkerframework/dataflow/cfg/CFGVisualizer;->shutdown()V

    .line 154
    if-eqz p5, :cond_2

    if-eqz v3, :cond_2

    .line 155
    const-string v4, "dotFileName"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 156
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4}, Lorg/checkerframework/dataflow/cfg/CFGVisualizeLauncher;->producePDF(Ljava/lang/String;)V

    goto :goto_0

    .line 155
    :cond_1
    new-instance v4, Ljava/lang/AssertionError;

    const-string v5, "@AssumeAssertion(nullness): specification"

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 158
    :cond_2
    :goto_0
    return-void
.end method

.method protected generateDOTofCFGWithoutAnalysis(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 8
    .param p1, "inputFile"    # Ljava/lang/String;
    .param p2, "outputDir"    # Ljava/lang/String;
    .param p3, "method"    # Ljava/lang/String;
    .param p4, "clas"    # Ljava/lang/String;
    .param p5, "pdf"    # Z
    .param p6, "verbose"    # Z

    .line 116
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lorg/checkerframework/dataflow/cfg/CFGVisualizeLauncher;->generateDOTofCFG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLorg/checkerframework/dataflow/analysis/Analysis;)V

    .line 117
    return-void
.end method

.method protected generateMethodCFG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;
    .locals 10
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "clas"    # Ljava/lang/String;
    .param p3, "method"    # Ljava/lang/String;

    .line 170
    new-instance v0, Lorg/checkerframework/dataflow/cfg/CFGProcessor;

    invoke-direct {v0, p2, p3}, Lorg/checkerframework/dataflow/cfg/CFGProcessor;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .local v0, "cfgProcessor":Lorg/checkerframework/dataflow/cfg/CFGProcessor;
    new-instance v1, Lcom/sun/tools/javac/util/Context;

    invoke-direct {v1}, Lcom/sun/tools/javac/util/Context;-><init>()V

    .line 173
    .local v1, "context":Lcom/sun/tools/javac/util/Context;
    invoke-static {v1}, Lcom/sun/tools/javac/util/Options;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Options;

    move-result-object v2

    const-string v3, "compilePolicy"

    const-string v4, "ATTR_ONLY"

    invoke-virtual {v2, v3, v4}, Lcom/sun/tools/javac/util/Options;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    new-instance v2, Lcom/sun/tools/javac/main/JavaCompiler;

    invoke-direct {v2, v1}, Lcom/sun/tools/javac/main/JavaCompiler;-><init>(Lcom/sun/tools/javac/util/Context;)V

    .line 176
    .local v2, "javac":Lcom/sun/tools/javac/main/JavaCompiler;
    const-class v3, Ljavax/tools/JavaFileManager;

    invoke-virtual {v1, v3}, Lcom/sun/tools/javac/util/Context;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/tools/javac/file/JavacFileManager;

    .line 178
    .local v3, "fileManager":Lcom/sun/tools/javac/file/JavacFileManager;
    nop

    .line 179
    invoke-static {p1}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/tools/javac/file/JavacFileManager;->getJavaFileObjectsFromStrings(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/tools/JavaFileObject;

    .line 181
    .local v4, "l":Ljavax/tools/JavaFileObject;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 185
    .local v5, "err":Ljava/io/PrintStream;
    :try_start_0
    new-instance v6, Ljava/io/PrintStream;

    new-instance v7, Lorg/checkerframework/dataflow/cfg/CFGVisualizeLauncher$1;

    invoke-direct {v7, p0}, Lorg/checkerframework/dataflow/cfg/CFGVisualizeLauncher$1;-><init>(Lorg/checkerframework/dataflow/cfg/CFGVisualizeLauncher;)V

    invoke-direct {v6, v7}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {v6}, Ljava/lang/System;->setErr(Ljava/io/PrintStream;)V

    .line 191
    invoke-static {v4}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v6

    invoke-static {p2}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v7

    invoke-static {v0}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v8

    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v9

    invoke-virtual {v2, v6, v7, v8, v9}, Lcom/sun/tools/javac/main/JavaCompiler;->compile(Ljava/util/Collection;Ljava/util/Collection;Ljava/lang/Iterable;Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 192
    :catchall_0
    move-exception v6

    .line 195
    :goto_0
    invoke-static {v5}, Ljava/lang/System;->setErr(Ljava/io/PrintStream;)V

    .line 196
    nop

    .line 198
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/CFGProcessor;->getCFGProcessResult()Lorg/checkerframework/dataflow/cfg/CFGProcessor$CFGProcessResult;

    move-result-object v6

    .line 200
    .local v6, "res":Lorg/checkerframework/dataflow/cfg/CFGProcessor$CFGProcessResult;
    const/4 v7, 0x1

    if-nez v6, :cond_0

    .line 201
    const-string v8, "internal error in type processor! method typeProcessOver() doesn\'t get called."

    invoke-virtual {p0, v8}, Lorg/checkerframework/dataflow/cfg/CFGVisualizeLauncher;->printError(Ljava/lang/String;)V

    .line 203
    invoke-static {v7}, Ljava/lang/System;->exit(I)V

    .line 206
    :cond_0
    invoke-virtual {v6}, Lorg/checkerframework/dataflow/cfg/CFGProcessor$CFGProcessResult;->isSuccess()Z

    move-result v8

    if-nez v8, :cond_1

    .line 207
    invoke-virtual {v6}, Lorg/checkerframework/dataflow/cfg/CFGProcessor$CFGProcessResult;->getErrMsg()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/checkerframework/dataflow/cfg/CFGVisualizeLauncher;->printError(Ljava/lang/String;)V

    .line 208
    invoke-static {v7}, Ljava/lang/System;->exit(I)V

    .line 211
    :cond_1
    invoke-virtual {v6}, Lorg/checkerframework/dataflow/cfg/CFGProcessor$CFGProcessResult;->getCFG()Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;

    move-result-object v7

    return-object v7
.end method

.method protected generateStringOfCFG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/checkerframework/dataflow/analysis/Analysis;)Ljava/util/Map;
    .locals 4
    .param p1, "inputFile"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "clas"    # Ljava/lang/String;
    .param p4, "verbose"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V::",
            "Lorg/checkerframework/dataflow/analysis/AbstractValue<",
            "TV;>;S::",
            "Lorg/checkerframework/dataflow/analysis/Store<",
            "TS;>;T::",
            "Lorg/checkerframework/dataflow/analysis/TransferFunction<",
            "TV;TS;>;>(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lorg/checkerframework/dataflow/analysis/Analysis<",
            "TV;TS;TT;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 249
    .local p5, "analysis":Lorg/checkerframework/dataflow/analysis/Analysis;, "Lorg/checkerframework/dataflow/analysis/Analysis<TV;TS;TT;>;"
    invoke-virtual {p0, p1, p3, p2}, Lorg/checkerframework/dataflow/cfg/CFGVisualizeLauncher;->generateMethodCFG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;

    move-result-object v0

    .line 250
    .local v0, "cfg":Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;
    if-eqz p5, :cond_0

    .line 251
    invoke-virtual {p5, v0}, Lorg/checkerframework/dataflow/analysis/Analysis;->performAnalysis(Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;)V

    .line 254
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 255
    .local v1, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "verbose"

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    new-instance v2, Lorg/checkerframework/dataflow/cfg/StringCFGVisualizer;

    invoke-direct {v2}, Lorg/checkerframework/dataflow/cfg/StringCFGVisualizer;-><init>()V

    .line 258
    .local v2, "viz":Lorg/checkerframework/dataflow/cfg/CFGVisualizer;, "Lorg/checkerframework/dataflow/cfg/CFGVisualizer<TV;TS;TT;>;"
    invoke-interface {v2, v1}, Lorg/checkerframework/dataflow/cfg/CFGVisualizer;->init(Ljava/util/Map;)V

    .line 259
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;->getEntryBlock()Lorg/checkerframework/dataflow/cfg/block/SpecialBlock;

    move-result-object v3

    invoke-interface {v2, v0, v3, p5}, Lorg/checkerframework/dataflow/cfg/CFGVisualizer;->visualize(Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;Lorg/checkerframework/dataflow/cfg/block/Block;Lorg/checkerframework/dataflow/analysis/Analysis;)Ljava/util/Map;

    move-result-object v3

    .line 260
    .local v3, "res":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v2}, Lorg/checkerframework/dataflow/cfg/CFGVisualizer;->shutdown()V

    .line 261
    return-object v3
.end method

.method protected printError(Ljava/lang/String;)V
    .locals 3
    .param p1, "string"    # Ljava/lang/String;

    .line 284
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERROR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 285
    return-void
.end method

.method protected printUsage()V
    .locals 2

    .line 266
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Generate the control flow graph of a Java method, represented as a DOT graph."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 268
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Parameters: <inputfile> <outputdir> [-method <name>] [-class <name>] [-pdf] [-verbose]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 270
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "    -pdf:     Also generate the PDF by invoking \'dot\'."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 271
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "    -method:  The method to generate the CFG for (defaults to \'test\')."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 273
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "    -class:   The class in which to find the method (defaults to \'Test\')."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 275
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "    -verbose: Show the verbose output (defaults to \'false\')."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 276
    return-void
.end method

.method protected producePDF(Ljava/lang/String;)V
    .locals 6
    .param p1, "file"    # Ljava/lang/String;

    .line 221
    const/4 v0, 0x1

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dot -Tpdf \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" -o \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".pdf\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 222
    .local v1, "command":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "/bin/sh"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "-c"

    aput-object v4, v3, v0

    const/4 v4, 0x2

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 223
    .local v2, "child":Ljava/lang/Process;
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    nop

    .end local v1    # "command":Ljava/lang/String;
    .end local v2    # "child":Ljava/lang/Process;
    goto :goto_1

    .line 224
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 225
    .local v1, "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 226
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 228
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method
