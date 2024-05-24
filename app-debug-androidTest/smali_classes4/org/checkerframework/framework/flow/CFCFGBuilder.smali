.class public Lorg/checkerframework/framework/flow/CFCFGBuilder;
.super Lorg/checkerframework/dataflow/cfg/CFGBuilder;
.source "CFCFGBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/framework/flow/CFCFGBuilder$CFCFGTranslationPhaseOne;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lorg/checkerframework/dataflow/cfg/CFGBuilder;-><init>()V

    return-void
.end method

.method public static assumeAssertionsActivatedForAssertTree(Lorg/checkerframework/framework/source/SourceChecker;Lcom/sun/source/tree/AssertTree;)Z
    .locals 7
    .param p0, "checker"    # Lorg/checkerframework/framework/source/SourceChecker;
    .param p1, "tree"    # Lcom/sun/source/tree/AssertTree;

    .line 71
    invoke-interface {p1}, Lcom/sun/source/tree/AssertTree;->getDetail()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    .line 72
    .local v0, "detail":Lcom/sun/source/tree/ExpressionTree;
    if-eqz v0, :cond_1

    .line 73
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "msg":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/checkerframework/framework/source/SourceChecker;->getSuppressWarningsKeys()Ljava/util/Collection;

    move-result-object v2

    .line 75
    .local v2, "warningKeys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 76
    .local v4, "warningKey":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "@AssumeAssertion("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 77
    .local v5, "key":Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 78
    const/4 v3, 0x1

    return v3

    .line 80
    .end local v4    # "warningKey":Ljava/lang/String;
    .end local v5    # "key":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 83
    .end local v1    # "msg":Ljava/lang/String;
    .end local v2    # "warningKeys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public static build(Lcom/sun/source/tree/CompilationUnitTree;Lorg/checkerframework/dataflow/cfg/UnderlyingAST;Lorg/checkerframework/common/basetype/BaseTypeChecker;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Ljavax/annotation/processing/ProcessingEnvironment;)Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;
    .locals 10
    .param p0, "root"    # Lcom/sun/source/tree/CompilationUnitTree;
    .param p1, "underlyingAST"    # Lorg/checkerframework/dataflow/cfg/UnderlyingAST;
    .param p2, "checker"    # Lorg/checkerframework/common/basetype/BaseTypeChecker;
    .param p3, "factory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .param p4, "env"    # Ljavax/annotation/processing/ProcessingEnvironment;

    .line 43
    const-string v0, "assumeAssertionsAreEnabled"

    invoke-virtual {p2, v0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->hasOption(Ljava/lang/String;)Z

    move-result v0

    .line 44
    .local v0, "assumeAssertionsEnabled":Z
    const-string v1, "assumeAssertionsAreDisabled"

    invoke-virtual {p2, v1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->hasOption(Ljava/lang/String;)Z

    move-result v8

    .line 45
    .local v8, "assumeAssertionsDisabled":Z
    if-eqz v0, :cond_1

    if-nez v8, :cond_0

    goto :goto_0

    .line 46
    :cond_0
    new-instance v1, Lorg/checkerframework/javacutil/UserError;

    const-string v2, "Assertions cannot be assumed to be enabled and disabled at the same time."

    invoke-direct {v1, v2}, Lorg/checkerframework/javacutil/UserError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 50
    :cond_1
    :goto_0
    new-instance v2, Lorg/checkerframework/framework/flow/CFTreeBuilder;

    invoke-direct {v2, p4}, Lorg/checkerframework/framework/flow/CFTreeBuilder;-><init>(Ljavax/annotation/processing/ProcessingEnvironment;)V

    .line 51
    .local v2, "builder":Lorg/checkerframework/framework/flow/CFTreeBuilder;
    new-instance v9, Lorg/checkerframework/framework/flow/CFCFGBuilder$CFCFGTranslationPhaseOne;

    move-object v1, v9

    move-object v3, p2

    move-object v4, p3

    move v5, v0

    move v6, v8

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lorg/checkerframework/framework/flow/CFCFGBuilder$CFCFGTranslationPhaseOne;-><init>(Lorg/checkerframework/framework/flow/CFTreeBuilder;Lorg/checkerframework/common/basetype/BaseTypeChecker;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;ZZLjavax/annotation/processing/ProcessingEnvironment;)V

    .line 59
    invoke-virtual {v9, p0, p1}, Lorg/checkerframework/framework/flow/CFCFGBuilder$CFCFGTranslationPhaseOne;->process(Lcom/sun/source/tree/CompilationUnitTree;Lorg/checkerframework/dataflow/cfg/UnderlyingAST;)Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;

    move-result-object v1

    .line 60
    .local v1, "phase1result":Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;
    invoke-static {v1}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseTwo;->process(Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;)Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;

    move-result-object v3

    .line 61
    .local v3, "phase2result":Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;
    invoke-static {v3}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseThree;->process(Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;)Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;

    move-result-object v4

    .line 62
    .local v4, "phase3result":Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;
    return-object v4
.end method
