.class public Lorg/checkerframework/dataflow/cfg/CFGBuilder;
.super Ljava/lang/Object;
.source "CFGBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/dataflow/cfg/CFGBuilder$TreeInfo;,
        Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;,
        Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;,
        Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseTwo;,
        Lorg/checkerframework/dataflow/cfg/CFGBuilder$Tuple;,
        Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseThree;,
        Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;,
        Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeMap;,
        Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryStack;,
        Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyFrame;,
        Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryCatchFrame;,
        Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFrame;,
        Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;,
        Lorg/checkerframework/dataflow/cfg/CFGBuilder$UnconditionalJump;,
        Lorg/checkerframework/dataflow/cfg/CFGBuilder$ConditionalJump;,
        Lorg/checkerframework/dataflow/cfg/CFGBuilder$NodeWithExceptionsHolder;,
        Lorg/checkerframework/dataflow/cfg/CFGBuilder$NodeHolder;,
        Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1400(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Ljava/lang/Object;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 211
    invoke-static {p0, p1}, Lorg/checkerframework/dataflow/cfg/CFGBuilder;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static build(Lcom/sun/source/tree/CompilationUnitTree;Lcom/sun/source/tree/MethodTree;Lcom/sun/source/tree/ClassTree;Ljavax/annotation/processing/ProcessingEnvironment;)Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;
    .locals 2
    .param p0, "root"    # Lcom/sun/source/tree/CompilationUnitTree;
    .param p1, "tree"    # Lcom/sun/source/tree/MethodTree;
    .param p2, "classTree"    # Lcom/sun/source/tree/ClassTree;
    .param p3, "env"    # Ljavax/annotation/processing/ProcessingEnvironment;

    .line 274
    new-instance v0, Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;

    invoke-direct {v0, p1, p2}, Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;-><init>(Lcom/sun/source/tree/MethodTree;Lcom/sun/source/tree/ClassTree;)V

    .line 275
    .local v0, "underlyingAST":Lorg/checkerframework/dataflow/cfg/UnderlyingAST;
    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v1, p3}, Lorg/checkerframework/dataflow/cfg/CFGBuilder;->build(Lcom/sun/source/tree/CompilationUnitTree;Lorg/checkerframework/dataflow/cfg/UnderlyingAST;ZZLjavax/annotation/processing/ProcessingEnvironment;)Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;

    move-result-object v1

    return-object v1
.end method

.method public static build(Lcom/sun/source/tree/CompilationUnitTree;Lorg/checkerframework/dataflow/cfg/UnderlyingAST;Ljavax/annotation/processing/ProcessingEnvironment;)Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;
    .locals 1
    .param p0, "root"    # Lcom/sun/source/tree/CompilationUnitTree;
    .param p1, "underlyingAST"    # Lorg/checkerframework/dataflow/cfg/UnderlyingAST;
    .param p2, "env"    # Ljavax/annotation/processing/ProcessingEnvironment;

    .line 265
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder;->build(Lcom/sun/source/tree/CompilationUnitTree;Lorg/checkerframework/dataflow/cfg/UnderlyingAST;ZZLjavax/annotation/processing/ProcessingEnvironment;)Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;

    move-result-object v0

    return-object v0
.end method

.method public static build(Lcom/sun/source/tree/CompilationUnitTree;Lorg/checkerframework/dataflow/cfg/UnderlyingAST;ZZLjavax/annotation/processing/ProcessingEnvironment;)Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;
    .locals 7
    .param p0, "root"    # Lcom/sun/source/tree/CompilationUnitTree;
    .param p1, "underlyingAST"    # Lorg/checkerframework/dataflow/cfg/UnderlyingAST;
    .param p2, "assumeAssertionsEnabled"    # Z
    .param p3, "assumeAssertionsDisabled"    # Z
    .param p4, "env"    # Ljavax/annotation/processing/ProcessingEnvironment;

    .line 222
    new-instance v1, Lorg/checkerframework/javacutil/trees/TreeBuilder;

    invoke-direct {v1, p4}, Lorg/checkerframework/javacutil/trees/TreeBuilder;-><init>(Ljavax/annotation/processing/ProcessingEnvironment;)V

    .line 223
    .local v1, "builder":Lorg/checkerframework/javacutil/trees/TreeBuilder;
    new-instance v2, Lorg/checkerframework/javacutil/BasicAnnotationProvider;

    invoke-direct {v2}, Lorg/checkerframework/javacutil/BasicAnnotationProvider;-><init>()V

    .line 224
    .local v2, "annotationProvider":Lorg/checkerframework/javacutil/AnnotationProvider;
    new-instance v6, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;

    move-object v0, v6

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;-><init>(Lorg/checkerframework/javacutil/trees/TreeBuilder;Lorg/checkerframework/javacutil/AnnotationProvider;ZZLjavax/annotation/processing/ProcessingEnvironment;)V

    .line 231
    invoke-virtual {v6, p0, p1}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->process(Lcom/sun/source/tree/CompilationUnitTree;Lorg/checkerframework/dataflow/cfg/UnderlyingAST;)Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;

    move-result-object v0

    .line 232
    .local v0, "phase1result":Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;
    invoke-static {v0}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseTwo;->process(Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;)Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;

    move-result-object v3

    .line 233
    .local v3, "phase2result":Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;
    invoke-static {v3}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseThree;->process(Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;)Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;

    move-result-object v4

    .line 234
    .local v4, "phase3result":Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;
    return-object v4
.end method

.method public static build(Lcom/sun/source/util/TreePath;Lorg/checkerframework/dataflow/cfg/UnderlyingAST;ZZLjavax/annotation/processing/ProcessingEnvironment;)Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;
    .locals 7
    .param p0, "bodyPath"    # Lcom/sun/source/util/TreePath;
    .param p1, "underlyingAST"    # Lorg/checkerframework/dataflow/cfg/UnderlyingAST;
    .param p2, "assumeAssertionsEnabled"    # Z
    .param p3, "assumeAssertionsDisabled"    # Z
    .param p4, "env"    # Ljavax/annotation/processing/ProcessingEnvironment;

    .line 247
    new-instance v1, Lorg/checkerframework/javacutil/trees/TreeBuilder;

    invoke-direct {v1, p4}, Lorg/checkerframework/javacutil/trees/TreeBuilder;-><init>(Ljavax/annotation/processing/ProcessingEnvironment;)V

    .line 248
    .local v1, "builder":Lorg/checkerframework/javacutil/trees/TreeBuilder;
    new-instance v2, Lorg/checkerframework/javacutil/BasicAnnotationProvider;

    invoke-direct {v2}, Lorg/checkerframework/javacutil/BasicAnnotationProvider;-><init>()V

    .line 249
    .local v2, "annotationProvider":Lorg/checkerframework/javacutil/AnnotationProvider;
    new-instance v6, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;

    move-object v0, v6

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;-><init>(Lorg/checkerframework/javacutil/trees/TreeBuilder;Lorg/checkerframework/javacutil/AnnotationProvider;ZZLjavax/annotation/processing/ProcessingEnvironment;)V

    .line 256
    invoke-virtual {v6, p0, p1}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->process(Lcom/sun/source/util/TreePath;Lorg/checkerframework/dataflow/cfg/UnderlyingAST;)Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;

    move-result-object v0

    .line 257
    .local v0, "phase1result":Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;
    invoke-static {v0}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseTwo;->process(Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;)Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;

    move-result-object v3

    .line 258
    .local v3, "phase2result":Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;
    invoke-static {v3}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseThree;->process(Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;)Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;

    move-result-object v4

    .line 259
    .local v4, "phase3result":Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;
    return-object v4
.end method

.method private static firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(TA;TA;)TA;"
        }
    .end annotation

    .line 4861
    .local p0, "first":Ljava/lang/Object;, "TA;"
    .local p1, "second":Ljava/lang/Object;, "TA;"
    if-eqz p0, :cond_0

    .line 4862
    return-object p0

    .line 4863
    :cond_0
    if-eqz p1, :cond_1

    .line 4864
    return-object p1

    .line 4866
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method protected static printBlocks(Ljava/util/Set;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/checkerframework/dataflow/cfg/block/Block;",
            ">;)V"
        }
    .end annotation

    .line 4879
    .local p0, "blocks":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/dataflow/cfg/block/Block;>;"
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/dataflow/cfg/block/Block;

    .line 4880
    .local v1, "b":Lorg/checkerframework/dataflow/cfg/block/Block;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 4881
    sget-object v2, Lorg/checkerframework/dataflow/cfg/CFGBuilder$1;->$SwitchMap$org$checkerframework$dataflow$cfg$block$Block$BlockType:[I

    invoke-interface {v1}, Lorg/checkerframework/dataflow/cfg/block/Block;->getType()Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;

    move-result-object v3

    invoke-virtual {v3}, Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const-string v3, " -> "

    const-string v4, "||"

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_3

    .line 4891
    :pswitch_0
    move-object v2, v1

    check-cast v2, Lorg/checkerframework/dataflow/cfg/block/SingleSuccessorBlockImpl;

    invoke-virtual {v2}, Lorg/checkerframework/dataflow/cfg/block/SingleSuccessorBlockImpl;->getSuccessor()Lorg/checkerframework/dataflow/cfg/block/Block;

    move-result-object v2

    .line 4892
    .local v2, "succ":Lorg/checkerframework/dataflow/cfg/block/Block;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :cond_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " {"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 4894
    move-object v3, v1

    check-cast v3, Lorg/checkerframework/dataflow/cfg/block/ExceptionBlockImpl;

    invoke-virtual {v3}, Lorg/checkerframework/dataflow/cfg/block/ExceptionBlockImpl;->getExceptionalSuccessors()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 4895
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavax/lang/model/type/TypeMirror;Ljava/util/Set<Lorg/checkerframework/dataflow/cfg/block/Block;>;>;"
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 4896
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavax/lang/model/type/TypeMirror;Ljava/util/Set<Lorg/checkerframework/dataflow/cfg/block/Block;>;>;"
    goto :goto_1

    .line 4897
    :cond_1
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 4898
    goto :goto_3

    .line 4902
    .end local v2    # "succ":Lorg/checkerframework/dataflow/cfg/block/Block;
    :pswitch_1
    move-object v2, v1

    check-cast v2, Lorg/checkerframework/dataflow/cfg/block/ConditionalBlockImpl;

    invoke-virtual {v2}, Lorg/checkerframework/dataflow/cfg/block/ConditionalBlockImpl;->getThenSuccessor()Lorg/checkerframework/dataflow/cfg/block/Block;

    move-result-object v2

    .line 4903
    .local v2, "tSucc":Lorg/checkerframework/dataflow/cfg/block/Block;
    move-object v3, v1

    check-cast v3, Lorg/checkerframework/dataflow/cfg/block/ConditionalBlockImpl;

    invoke-virtual {v3}, Lorg/checkerframework/dataflow/cfg/block/ConditionalBlockImpl;->getElseSuccessor()Lorg/checkerframework/dataflow/cfg/block/Block;

    move-result-object v3

    .line 4904
    .local v3, "eSucc":Lorg/checkerframework/dataflow/cfg/block/Block;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " -> T "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4906
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_2

    :cond_2
    move-object v7, v4

    :goto_2
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " F "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4908
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :cond_3
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4904
    invoke-virtual {v5, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 4909
    goto :goto_3

    .line 4885
    .end local v2    # "tSucc":Lorg/checkerframework/dataflow/cfg/block/Block;
    .end local v3    # "eSucc":Lorg/checkerframework/dataflow/cfg/block/Block;
    :pswitch_2
    move-object v2, v1

    check-cast v2, Lorg/checkerframework/dataflow/cfg/block/SingleSuccessorBlockImpl;

    invoke-virtual {v2}, Lorg/checkerframework/dataflow/cfg/block/SingleSuccessorBlockImpl;->getSuccessor()Lorg/checkerframework/dataflow/cfg/block/Block;

    move-result-object v2

    .line 4886
    .local v2, "succ":Lorg/checkerframework/dataflow/cfg/block/Block;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :cond_4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 4887
    nop

    .line 4912
    .end local v1    # "b":Lorg/checkerframework/dataflow/cfg/block/Block;
    .end local v2    # "succ":Lorg/checkerframework/dataflow/cfg/block/Block;
    :goto_3
    goto/16 :goto_0

    .line 4913
    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
