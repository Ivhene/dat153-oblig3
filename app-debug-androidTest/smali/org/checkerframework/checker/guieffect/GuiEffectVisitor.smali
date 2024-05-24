.class public Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;
.super Lorg/checkerframework/common/basetype/BaseTypeVisitor;
.source "GuiEffectVisitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/checker/guieffect/GuiEffectVisitor$GuiEffectOverrideChecker;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/common/basetype/BaseTypeVisitor<",
        "Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected final currentMethods:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/sun/source/tree/MethodTree;",
            ">;"
        }
    .end annotation
.end field

.field protected final debugSpew:Z

.field protected final effStack:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lorg/checkerframework/checker/guieffect/Effect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 43
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V
    .locals 2
    .param p1, "checker"    # Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 52
    invoke-direct {p0, p1}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V

    .line 53
    const-string v0, "debugSpew"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getLintOption(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;->debugSpew:Z

    .line 54
    if-eqz v0, :cond_0

    .line 55
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Running GuiEffectVisitor"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 57
    :cond_0
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;->effStack:Ljava/util/ArrayDeque;

    .line 58
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;->currentMethods:Ljava/util/ArrayDeque;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;)Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;

    .line 43
    iget-object v0, p0, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    return-object v0
.end method

.method static synthetic access$100(Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;)Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;

    .line 43
    iget-object v0, p0, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    return-object v0
.end method

.method static synthetic access$200(Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;)Lorg/checkerframework/common/basetype/BaseTypeChecker;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;

    .line 43
    iget-object v0, p0, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    return-object v0
.end method

.method private scanUp(Lcom/sun/source/util/TreePath;)V
    .locals 11
    .param p1, "path"    # Lcom/sun/source/util/TreePath;

    .line 464
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v0

    .line 465
    .local v0, "tree":Lcom/sun/source/tree/Tree;
    sget-object v1, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    invoke-interface {v0}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-string v2, "assignment.type.incompatible"

    packed-switch v1, :pswitch_data_0

    .line 546
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;->scanUp(Lcom/sun/source/util/TreePath;)V

    goto/16 :goto_3

    .line 543
    :pswitch_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 539
    :pswitch_1
    return-void

    .line 502
    :pswitch_2
    move-object v1, v0

    check-cast v1, Lcom/sun/source/tree/ReturnTree;

    .line 503
    .local v1, "returnTree":Lcom/sun/source/tree/ReturnTree;
    invoke-interface {v1}, Lcom/sun/source/tree/ReturnTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v2

    invoke-interface {v2}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v2

    sget-object v3, Lcom/sun/source/tree/Tree$Kind;->NEW_CLASS:Lcom/sun/source/tree/Tree$Kind;

    if-eq v2, v3, :cond_0

    .line 504
    invoke-interface {v1}, Lcom/sun/source/tree/ReturnTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v2

    invoke-interface {v2}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v2

    sget-object v3, Lcom/sun/source/tree/Tree$Kind;->LAMBDA_EXPRESSION:Lcom/sun/source/tree/Tree$Kind;

    if-ne v2, v3, :cond_7

    .line 505
    :cond_0
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->enclosingMethodOrLambda(Lcom/sun/source/util/TreePath;)Lcom/sun/source/tree/Tree;

    move-result-object v2

    .line 506
    .local v2, "enclosing":Lcom/sun/source/tree/Tree;
    const/4 v3, 0x0

    .line 507
    .local v3, "ret":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-interface {v2}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v4

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->METHOD:Lcom/sun/source/tree/Tree$Kind;

    if-ne v4, v5, :cond_2

    .line 508
    move-object v4, v2

    check-cast v4, Lcom/sun/source/tree/MethodTree;

    .line 509
    .local v4, "enclosingMethod":Lcom/sun/source/tree/MethodTree;
    invoke-virtual {p0, v2}, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;->validateTypeOf(Lcom/sun/source/tree/Tree;)Z

    move-result v5

    .line 510
    .local v5, "valid":Z
    if-eqz v5, :cond_1

    .line 511
    iget-object v6, p0, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v6, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;

    invoke-virtual {v6, v4, v1}, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->getMethodReturnType(Lcom/sun/source/tree/MethodTree;Lcom/sun/source/tree/ReturnTree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    .line 513
    .end local v4    # "enclosingMethod":Lcom/sun/source/tree/MethodTree;
    .end local v5    # "valid":Z
    :cond_1
    goto :goto_0

    .line 514
    :cond_2
    iget-object v4, p0, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v4, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;

    move-object v5, v2

    check-cast v5, Lcom/sun/source/tree/LambdaExpressionTree;

    .line 516
    invoke-virtual {v4, v5}, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->getFunctionTypeFromTree(Lcom/sun/source/tree/LambdaExpressionTree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    move-result-object v4

    .line 517
    invoke-virtual {v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReturnType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    .line 520
    :goto_0
    if-eqz v3, :cond_3

    .line 521
    iget-object v4, p0, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    .line 522
    invoke-virtual {v4}, Lorg/checkerframework/framework/type/VisitorState;->getAssignmentContext()Lorg/checkerframework/javacutil/Pair;

    move-result-object v4

    .line 524
    .local v4, "preAssCtxt":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    :try_start_0
    iget-object v5, p0, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-static {v1, v3}, Lorg/checkerframework/javacutil/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/javacutil/Pair;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/checkerframework/framework/type/VisitorState;->setAssignmentContext(Lorg/checkerframework/javacutil/Pair;)V

    .line 525
    iget-object v5, p0, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v5, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;

    .line 527
    invoke-interface {v1}, Lcom/sun/source/tree/ReturnTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v5

    .line 528
    invoke-interface {v1}, Lcom/sun/source/tree/ReturnTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v6

    const-string v7, "return.type.incompatible"

    .line 525
    invoke-virtual {p0, v3, v5, v6, v7}, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;->commonAssignmentCheck(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/Tree;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 531
    iget-object v5, p0, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-virtual {v5, v4}, Lorg/checkerframework/framework/type/VisitorState;->setAssignmentContext(Lorg/checkerframework/javacutil/Pair;)V

    .line 532
    goto :goto_1

    .line 531
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-virtual {v6, v4}, Lorg/checkerframework/framework/type/VisitorState;->setAssignmentContext(Lorg/checkerframework/javacutil/Pair;)V

    throw v5

    .line 534
    .end local v2    # "enclosing":Lcom/sun/source/tree/Tree;
    .end local v3    # "ret":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v4    # "preAssCtxt":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    :cond_3
    :goto_1
    goto/16 :goto_3

    .line 483
    .end local v1    # "returnTree":Lcom/sun/source/tree/ReturnTree;
    :pswitch_3
    move-object v1, v0

    check-cast v1, Lcom/sun/source/tree/MethodInvocationTree;

    .line 484
    .local v1, "invocationTree":Lcom/sun/source/tree/MethodInvocationTree;
    invoke-interface {v1}, Lcom/sun/source/tree/MethodInvocationTree;->getArguments()Ljava/util/List;

    move-result-object v2

    .line 485
    .local v2, "args":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/ExpressionTree;>;"
    iget-object v3, p0, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v3, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;

    invoke-virtual {v3, v1}, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->methodFromUse(Lcom/sun/source/tree/MethodInvocationTree;)Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;

    move-result-object v3

    .line 486
    .local v3, "mType":Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;
    iget-object v4, v3, Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;->executableType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    .line 487
    .local v4, "invokedMethod":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    iget-object v5, p0, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    .line 489
    invoke-interface {v1}, Lcom/sun/source/tree/MethodInvocationTree;->getArguments()Ljava/util/List;

    move-result-object v6

    .line 488
    invoke-static {v5, v4, v6}, Lorg/checkerframework/framework/util/AnnotatedTypes;->expandVarArgs(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 490
    .local v5, "argsTypes":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_6

    .line 491
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sun/source/tree/ExpressionTree;

    invoke-interface {v7}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v7

    sget-object v8, Lcom/sun/source/tree/Tree$Kind;->NEW_CLASS:Lcom/sun/source/tree/Tree$Kind;

    if-eq v7, v8, :cond_4

    .line 492
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sun/source/tree/ExpressionTree;

    invoke-interface {v7}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v7

    sget-object v8, Lcom/sun/source/tree/Tree$Kind;->LAMBDA_EXPRESSION:Lcom/sun/source/tree/Tree$Kind;

    if-ne v7, v8, :cond_5

    .line 493
    :cond_4
    nop

    .line 494
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    iget-object v8, p0, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v8, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;

    .line 495
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sun/source/tree/Tree;

    invoke-virtual {v8, v9}, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v8

    .line 496
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sun/source/tree/Tree;

    .line 493
    const-string v10, "argument.type.incompatible"

    invoke-virtual {p0, v7, v8, v9, v10}, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;->commonAssignmentCheck(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/Tree;Ljava/lang/String;)V

    .line 490
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 500
    .end local v6    # "i":I
    :cond_6
    goto :goto_3

    .line 475
    .end local v1    # "invocationTree":Lcom/sun/source/tree/MethodInvocationTree;
    .end local v2    # "args":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/ExpressionTree;>;"
    .end local v3    # "mType":Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;
    .end local v4    # "invokedMethod":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .end local v5    # "argsTypes":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    :pswitch_4
    move-object v1, v0

    check-cast v1, Lcom/sun/source/tree/VariableTree;

    .line 476
    .local v1, "variableTree":Lcom/sun/source/tree/VariableTree;
    iget-object v3, p0, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v3, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;

    .line 477
    invoke-virtual {v3, v1}, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    iget-object v4, p0, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v4, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;

    .line 478
    invoke-interface {v1}, Lcom/sun/source/tree/VariableTree;->getInitializer()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v4

    .line 479
    invoke-interface {v1}, Lcom/sun/source/tree/VariableTree;->getInitializer()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v5

    .line 476
    invoke-virtual {p0, v3, v4, v5, v2}, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;->commonAssignmentCheck(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/Tree;Ljava/lang/String;)V

    .line 481
    goto :goto_3

    .line 467
    .end local v1    # "variableTree":Lcom/sun/source/tree/VariableTree;
    :pswitch_5
    move-object v1, v0

    check-cast v1, Lcom/sun/source/tree/AssignmentTree;

    .line 468
    .local v1, "assignmentTree":Lcom/sun/source/tree/AssignmentTree;
    iget-object v3, p0, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v3, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;

    .line 469
    invoke-interface {v1}, Lcom/sun/source/tree/AssignmentTree;->getVariable()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    iget-object v4, p0, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v4, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;

    .line 470
    invoke-interface {v1}, Lcom/sun/source/tree/AssignmentTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v4

    .line 471
    invoke-interface {v1}, Lcom/sun/source/tree/AssignmentTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v5

    .line 468
    invoke-virtual {p0, v3, v4, v5, v2}, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;->commonAssignmentCheck(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/Tree;Ljava/lang/String;)V

    .line 473
    nop

    .line 548
    .end local v1    # "assignmentTree":Lcom/sun/source/tree/AssignmentTree;
    :cond_7
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected checkConstructorResult(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Ljavax/lang/model/element/ExecutableElement;)V
    .locals 0
    .param p1, "constructorType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .param p2, "constructorElement"    # Ljavax/lang/model/element/ExecutableElement;

    .line 240
    return-void
.end method

.method protected checkExtendsImplements(Lcom/sun/source/tree/ClassTree;)V
    .locals 0
    .param p1, "classTree"    # Lcom/sun/source/tree/ClassTree;

    .line 234
    return-void
.end method

.method protected checkMethodInvocability(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Lcom/sun/source/tree/MethodInvocationTree;)V
    .locals 0
    .param p1, "method"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .param p2, "node"    # Lcom/sun/source/tree/MethodInvocationTree;

    .line 78
    return-void
.end method

.method protected createOverrideChecker(Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/common/basetype/BaseTypeVisitor$OverrideChecker;
    .locals 10
    .param p1, "overriderTree"    # Lcom/sun/source/tree/Tree;
    .param p2, "overrider"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .param p3, "overridingType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p4, "overridingReturnType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p5, "overridden"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .param p6, "overriddenType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p7, "overriddenReturnType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/Tree;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ")",
            "Lorg/checkerframework/common/basetype/BaseTypeVisitor<",
            "Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;",
            ">.OverrideChecker;"
        }
    .end annotation

    .line 170
    new-instance v9, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor$GuiEffectOverrideChecker;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor$GuiEffectOverrideChecker;-><init>(Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    return-object v9
.end method

.method protected createTypeFactory()Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;
    .locals 3

    .line 63
    new-instance v0, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;

    iget-object v1, p0, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    iget-boolean v2, p0, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;->debugSpew:Z

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;Z)V

    return-object v0
.end method

.method protected bridge synthetic createTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;->createTypeFactory()Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;

    move-result-object v0

    return-object v0
.end method

.method protected getExceptionParameterLowerBoundAnnotations()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "+",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;->elements:Ljavax/lang/model/util/Elements;

    const-class v1, Lorg/checkerframework/checker/guieffect/qual/AlwaysSafe;

    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public isValidUse(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lcom/sun/source/tree/Tree;)Z
    .locals 5
    .param p1, "declarationType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p2, "useType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p3, "tree"    # Lcom/sun/source/tree/Tree;

    .line 190
    const-class v0, Lorg/checkerframework/checker/guieffect/qual/AlwaysSafe;

    .line 191
    invoke-virtual {p2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lorg/checkerframework/checker/guieffect/qual/PolyUI;

    .line 192
    invoke-virtual {p2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v0, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;

    .line 194
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getUnderlyingType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v1

    invoke-interface {v1}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/TypeElement;

    .line 193
    invoke-virtual {v0, v1}, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->isPolymorphicType(Ljavax/lang/model/element/TypeElement;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lorg/checkerframework/checker/guieffect/qual/UI;

    .line 195
    invoke-virtual {p2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lorg/checkerframework/checker/guieffect/qual/UI;

    .line 196
    invoke-virtual {p1, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 197
    .local v0, "ret":Z
    :goto_1
    iget-boolean v1, p0, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;->debugSpew:Z

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    .line 198
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "use: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 199
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "use safe: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lorg/checkerframework/checker/guieffect/qual/AlwaysSafe;

    invoke-virtual {p2, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 200
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "use poly: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lorg/checkerframework/checker/guieffect/qual/PolyUI;

    invoke-virtual {p2, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 201
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "use ui: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lorg/checkerframework/checker/guieffect/qual/UI;

    invoke-virtual {p2, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 202
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "declaration safe: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lorg/checkerframework/checker/guieffect/qual/AlwaysSafe;

    .line 203
    invoke-virtual {p1, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 202
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 204
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "declaration poly: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v3, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;

    .line 207
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getUnderlyingType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v4

    invoke-interface {v4}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v4

    check-cast v4, Ljavax/lang/model/element/TypeElement;

    .line 206
    invoke-virtual {v3, v4}, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->isPolymorphicType(Ljavax/lang/model/element/TypeElement;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 204
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 208
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "declaration ui: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lorg/checkerframework/checker/guieffect/qual/UI;

    invoke-virtual {p1, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 209
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "declaration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 211
    :cond_2
    return v0
.end method

.method public bridge synthetic visitLambdaExpression(Lcom/sun/source/tree/LambdaExpressionTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;->visitLambdaExpression(Lcom/sun/source/tree/LambdaExpressionTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitLambdaExpression(Lcom/sun/source/tree/LambdaExpressionTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "node"    # Lcom/sun/source/tree/LambdaExpressionTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 216
    invoke-super {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitLambdaExpression(Lcom/sun/source/tree/LambdaExpressionTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    .line 219
    .local v0, "v":Ljava/lang/Void;
    iget-object v1, p0, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v1, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;

    invoke-virtual {v1, p1}, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->isDirectlyMarkedUIThroughInference(Lcom/sun/source/tree/Tree;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 221
    iget-object v1, p0, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/VisitorState;->getPath()Lcom/sun/source/util/TreePath;

    move-result-object v1

    .line 222
    .local v1, "path":Lcom/sun/source/util/TreePath;
    :goto_0
    invoke-virtual {v1}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v2

    if-eq v2, p1, :cond_1

    .line 223
    invoke-virtual {v1}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v2

    invoke-interface {v2}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v2

    sget-object v3, Lcom/sun/source/tree/Tree$Kind;->COMPILATION_UNIT:Lcom/sun/source/tree/Tree$Kind;

    if-eq v2, v3, :cond_0

    .line 224
    invoke-virtual {v1}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v1

    goto :goto_0

    .line 223
    :cond_0
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 226
    :cond_1
    invoke-direct {p0, v1}, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;->scanUp(Lcom/sun/source/util/TreePath;)V

    .line 228
    .end local v1    # "path":Lcom/sun/source/util/TreePath;
    :cond_2
    return-object v0
.end method

.method public bridge synthetic visitMethod(Lcom/sun/source/tree/MethodTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;->visitMethod(Lcom/sun/source/tree/MethodTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitMethod(Lcom/sun/source/tree/MethodTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9
    .param p1, "node"    # Lcom/sun/source/tree/MethodTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 372
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromDeclaration(Lcom/sun/source/tree/MethodTree;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v0

    .line 373
    .local v0, "methElt":Ljavax/lang/model/element/ExecutableElement;
    iget-boolean v1, p0, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;->debugSpew:Z

    if-eqz v1, :cond_0

    .line 374
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\nVisiting method "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 378
    :cond_0
    if-eqz v0, :cond_7

    .line 380
    iget-object v1, p0, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v1, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;

    const-class v2, Lorg/checkerframework/checker/guieffect/qual/UIEffect;

    invoke-virtual {v1, v0, v2}, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->getDeclAnnotation(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 381
    .local v1, "targetUIP":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v2, p0, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v2, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;

    const-class v3, Lorg/checkerframework/checker/guieffect/qual/SafeEffect;

    invoke-virtual {v2, v0, v3}, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->getDeclAnnotation(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    .line 382
    .local v2, "targetSafeP":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v3, p0, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v3, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;

    const-class v4, Lorg/checkerframework/checker/guieffect/qual/PolyUIEffect;

    invoke-virtual {v3, v0, v4}, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->getDeclAnnotation(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    .line 383
    .local v3, "targetPolyP":Ljavax/lang/model/element/AnnotationMirror;
    invoke-interface {v0}, Ljavax/lang/model/element/ExecutableElement;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v4

    check-cast v4, Ljavax/lang/model/element/TypeElement;

    .line 385
    .local v4, "targetClassElt":Ljavax/lang/model/element/TypeElement;
    const/4 v5, 0x0

    if-eqz v1, :cond_1

    if-nez v2, :cond_2

    if-nez v3, :cond_2

    :cond_1
    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    .line 387
    :cond_2
    iget-object v6, p0, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const-string v7, "annotations.conflicts"

    new-array v8, v5, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v7

    invoke-virtual {v6, v7, p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 389
    :cond_3
    if-eqz v3, :cond_4

    iget-object v6, p0, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v6, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;

    invoke-virtual {v6, v4}, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->isPolymorphicType(Ljavax/lang/model/element/TypeElement;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 390
    iget-object v6, p0, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const-string v7, "polymorphism.invalid"

    new-array v8, v5, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v7

    invoke-virtual {v6, v7, p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 392
    :cond_4
    if-eqz v1, :cond_5

    iget-object v6, p0, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v6, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;

    invoke-virtual {v6, v4}, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->isUIType(Ljavax/lang/model/element/TypeElement;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 393
    iget-object v6, p0, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const-string v7, "effects.redundant.uitype"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v7, v5}, Lorg/checkerframework/framework/source/Result;->warning(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v5

    invoke-virtual {v6, v5, p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 399
    :cond_5
    iget-object v5, p0, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v5, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;

    .line 401
    invoke-interface {v0}, Ljavax/lang/model/element/ExecutableElement;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v6

    check-cast v6, Ljavax/lang/model/element/TypeElement;

    .line 400
    const/4 v7, 0x1

    invoke-virtual {v5, v6, v0, v7, p1}, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->findInheritedEffectRange(Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/element/ExecutableElement;ZLcom/sun/source/tree/Tree;)Lorg/checkerframework/checker/guieffect/Effect$EffectRange;

    move-result-object v5

    .line 419
    .local v5, "range":Lorg/checkerframework/checker/guieffect/Effect$EffectRange;
    iget-object v6, p0, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;->currentMethods:Ljava/util/ArrayDeque;

    invoke-virtual {v6, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 426
    iget-object v6, p0, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;->effStack:Ljava/util/ArrayDeque;

    iget-object v7, p0, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v7, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;

    invoke-virtual {v7, v0}, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->getDeclaredEffect(Ljavax/lang/model/element/ExecutableElement;)Lorg/checkerframework/checker/guieffect/Effect;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 427
    iget-boolean v6, p0, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;->debugSpew:Z

    if-eqz v6, :cond_6

    .line 428
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Pushing "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;->effStack:Ljava/util/ArrayDeque;

    .line 429
    invoke-virtual {v8}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " onto the stack when checking "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 428
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 432
    :cond_6
    invoke-super {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitMethod(Lcom/sun/source/tree/MethodTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v6

    .line 433
    .local v6, "ret":Ljava/lang/Void;
    iget-object v7, p0, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;->currentMethods:Ljava/util/ArrayDeque;

    invoke-virtual {v7}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 434
    iget-object v7, p0, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;->effStack:Ljava/util/ArrayDeque;

    invoke-virtual {v7}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 435
    return-object v6

    .line 378
    .end local v1    # "targetUIP":Ljavax/lang/model/element/AnnotationMirror;
    .end local v2    # "targetSafeP":Ljavax/lang/model/element/AnnotationMirror;
    .end local v3    # "targetPolyP":Ljavax/lang/model/element/AnnotationMirror;
    .end local v4    # "targetClassElt":Ljavax/lang/model/element/TypeElement;
    .end local v5    # "range":Lorg/checkerframework/checker/guieffect/Effect$EffectRange;
    .end local v6    # "ret":Ljava/lang/Void;
    :cond_7
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public bridge synthetic visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;->visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 18
    .param p1, "node"    # Lcom/sun/source/tree/MethodInvocationTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 245
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;->debugSpew:Z

    if-eqz v2, :cond_0

    .line 246
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "For invocation "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;->currentMethods:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/source/tree/MethodTree;

    invoke-interface {v4}, Lcom/sun/source/tree/MethodTree;->getName()Ljavax/lang/model/element/Name;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 250
    :cond_0
    invoke-static/range {p1 .. p1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromUse(Lcom/sun/source/tree/MethodInvocationTree;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v2

    .line 251
    .local v2, "methodElt":Ljavax/lang/model/element/ExecutableElement;
    iget-boolean v3, v0, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;->debugSpew:Z

    if-eqz v3, :cond_1

    .line 252
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "methodElt found"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 255
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;->getCurrentPath()Lcom/sun/source/util/TreePath;

    move-result-object v3

    invoke-static {v3}, Lorg/checkerframework/javacutil/TreeUtils;->enclosingMethodOrLambda(Lcom/sun/source/util/TreePath;)Lcom/sun/source/tree/Tree;

    move-result-object v3

    .line 256
    .local v3, "callerTree":Lcom/sun/source/tree/Tree;
    if-nez v3, :cond_3

    .line 258
    iget-boolean v4, v0, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;->debugSpew:Z

    if-eqz v4, :cond_2

    .line 259
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "No enclosing method: likely static initializer"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 261
    :cond_2
    invoke-super/range {p0 .. p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v4

    return-object v4

    .line 263
    :cond_3
    iget-boolean v4, v0, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;->debugSpew:Z

    if-eqz v4, :cond_4

    .line 264
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "callerTree found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 267
    :cond_4
    iget-object v4, v0, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v4, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;

    iget-object v5, v0, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    .line 269
    invoke-virtual {v5}, Lorg/checkerframework/framework/type/VisitorState;->getMethodReceiver()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v5

    .line 268
    invoke-virtual {v4, v1, v5, v2}, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->getComputedEffectAtCallsite(Lcom/sun/source/tree/MethodInvocationTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljavax/lang/model/element/ExecutableElement;)Lorg/checkerframework/checker/guieffect/Effect;

    move-result-object v4

    .line 271
    .local v4, "targetEffect":Lorg/checkerframework/checker/guieffect/Effect;
    const/4 v5, 0x0

    .line 272
    .local v5, "callerEffect":Lorg/checkerframework/checker/guieffect/Effect;
    invoke-interface {v3}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v6

    sget-object v7, Lcom/sun/source/tree/Tree$Kind;->METHOD:Lcom/sun/source/tree/Tree$Kind;

    if-ne v6, v7, :cond_f

    .line 273
    move-object v6, v3

    check-cast v6, Lcom/sun/source/tree/MethodTree;

    invoke-static {v6}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromDeclaration(Lcom/sun/source/tree/MethodTree;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v6

    .line 274
    .local v6, "callerElt":Ljavax/lang/model/element/ExecutableElement;
    iget-boolean v7, v0, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;->debugSpew:Z

    if-eqz v7, :cond_5

    .line 275
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v8, "callerElt found"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 278
    :cond_5
    iget-object v7, v0, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v7, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;

    invoke-virtual {v7, v6}, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->getDeclaredEffect(Ljavax/lang/model/element/ExecutableElement;)Lorg/checkerframework/checker/guieffect/Effect;

    move-result-object v5

    .line 279
    iget-object v7, v0, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    .line 280
    invoke-virtual {v7}, Lorg/checkerframework/framework/type/VisitorState;->getClassType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v7

    invoke-virtual {v7}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getUnderlyingType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v7

    .line 281
    .local v7, "callerReceiverType":Ljavax/lang/model/type/DeclaredType;
    if-eqz v7, :cond_e

    .line 282
    invoke-interface {v7}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v8

    check-cast v8, Ljavax/lang/model/element/TypeElement;

    .line 286
    .local v8, "callerReceiverElt":Ljavax/lang/model/element/TypeElement;
    invoke-static {v7}, Lorg/checkerframework/javacutil/TypesUtils;->isAnonymous(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v9

    if-eqz v9, :cond_b

    iget-object v9, v0, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;->effStack:Ljava/util/ArrayDeque;

    .line 288
    invoke-virtual {v9}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/checkerframework/checker/guieffect/Effect;

    invoke-virtual {v9}, Lorg/checkerframework/checker/guieffect/Effect;->isUI()Z

    move-result v9

    if-nez v9, :cond_a

    iget-object v9, v0, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v9, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;

    .line 290
    invoke-virtual {v9, v8}, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->fromElement(Ljavax/lang/model/element/TypeElement;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v9

    const-class v10, Lorg/checkerframework/checker/guieffect/qual/AlwaysSafe;

    invoke-virtual {v9, v10}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v9

    if-nez v9, :cond_9

    iget-object v9, v0, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v9, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;

    .line 291
    invoke-virtual {v9, v8}, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->fromElement(Ljavax/lang/model/element/TypeElement;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v9

    const-class v10, Lorg/checkerframework/checker/guieffect/qual/UI;

    invoke-virtual {v9, v10}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 292
    const/4 v9, 0x0

    .line 294
    .local v9, "overridesPolymorphic":Z
    iget-object v10, v0, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;->elements:Ljavax/lang/model/util/Elements;

    iget-object v11, v0, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    .line 295
    invoke-static {v10, v11, v6}, Lorg/checkerframework/framework/util/AnnotatedTypes;->overriddenMethods(Ljavax/lang/model/util/Elements;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Ljavax/lang/model/element/ExecutableElement;)Ljava/util/Map;

    move-result-object v10

    .line 297
    .local v10, "overriddenMethods":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljavax/lang/model/element/ExecutableElement;>;"
    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 298
    .local v12, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljavax/lang/model/element/ExecutableElement;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 299
    .local v13, "overriddenType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    iget-object v14, v0, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;->types:Ljavax/lang/model/util/Types;

    iget-object v15, v0, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    .line 301
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v17, v2

    .end local v2    # "methodElt":Ljavax/lang/model/element/ExecutableElement;
    .local v17, "methodElt":Ljavax/lang/model/element/ExecutableElement;
    move-object/from16 v2, v16

    check-cast v2, Ljavax/lang/model/element/ExecutableElement;

    .line 300
    invoke-static {v14, v15, v13, v2}, Lorg/checkerframework/framework/util/AnnotatedTypes;->asMemberOf(Ljavax/lang/model/util/Types;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/ExecutableElement;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    move-result-object v2

    .line 302
    .local v2, "overriddenMethod":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    iget-object v14, v0, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v14, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;

    .line 303
    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getElement()Ljavax/lang/model/element/ExecutableElement;

    move-result-object v15

    move-object/from16 v16, v2

    .end local v2    # "overriddenMethod":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .local v16, "overriddenMethod":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    const-class v2, Lorg/checkerframework/checker/guieffect/qual/PolyUIEffect;

    .line 302
    invoke-virtual {v14, v15, v2}, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->getDeclAnnotation(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, v0, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v2, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;

    .line 306
    invoke-virtual {v13}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getUnderlyingType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v14

    invoke-interface {v14}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v14

    const-class v15, Lorg/checkerframework/checker/guieffect/qual/PolyUIType;

    .line 305
    invoke-virtual {v2, v14, v15}, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->getDeclAnnotation(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 309
    const/4 v9, 0x1

    .line 310
    goto :goto_1

    .line 312
    .end local v12    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljavax/lang/model/element/ExecutableElement;>;"
    .end local v13    # "overriddenType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .end local v16    # "overriddenMethod":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    :cond_6
    move-object/from16 v2, v17

    goto :goto_0

    .line 297
    .end local v17    # "methodElt":Ljavax/lang/model/element/ExecutableElement;
    .local v2, "methodElt":Ljavax/lang/model/element/ExecutableElement;
    :cond_7
    move-object/from16 v17, v2

    .line 316
    .end local v2    # "methodElt":Ljavax/lang/model/element/ExecutableElement;
    .restart local v17    # "methodElt":Ljavax/lang/model/element/ExecutableElement;
    :goto_1
    if-eqz v9, :cond_c

    invoke-virtual {v4}, Lorg/checkerframework/checker/guieffect/Effect;->isUI()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 318
    iget-object v2, v0, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v2, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;

    invoke-virtual {v2, v8}, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->constrainAnonymousClassToUI(Ljavax/lang/model/element/TypeElement;)V

    .line 321
    iget-object v2, v0, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v2, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;

    invoke-virtual {v2, v6}, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->getDeclaredEffect(Ljavax/lang/model/element/ExecutableElement;)Lorg/checkerframework/checker/guieffect/Effect;

    move-result-object v2

    .line 322
    .end local v5    # "callerEffect":Lorg/checkerframework/checker/guieffect/Effect;
    .local v2, "callerEffect":Lorg/checkerframework/checker/guieffect/Effect;
    iget-object v5, v0, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;->effStack:Ljava/util/ArrayDeque;

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 323
    iget-object v5, v0, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;->effStack:Ljava/util/ArrayDeque;

    invoke-virtual {v5, v2}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    move-object v5, v2

    goto :goto_2

    .line 291
    .end local v9    # "overridesPolymorphic":Z
    .end local v10    # "overriddenMethods":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljavax/lang/model/element/ExecutableElement;>;"
    .end local v17    # "methodElt":Ljavax/lang/model/element/ExecutableElement;
    .local v2, "methodElt":Ljavax/lang/model/element/ExecutableElement;
    .restart local v5    # "callerEffect":Lorg/checkerframework/checker/guieffect/Effect;
    :cond_8
    move-object/from16 v17, v2

    .end local v2    # "methodElt":Ljavax/lang/model/element/ExecutableElement;
    .restart local v17    # "methodElt":Ljavax/lang/model/element/ExecutableElement;
    goto :goto_2

    .line 290
    .end local v17    # "methodElt":Ljavax/lang/model/element/ExecutableElement;
    .restart local v2    # "methodElt":Ljavax/lang/model/element/ExecutableElement;
    :cond_9
    move-object/from16 v17, v2

    .end local v2    # "methodElt":Ljavax/lang/model/element/ExecutableElement;
    .restart local v17    # "methodElt":Ljavax/lang/model/element/ExecutableElement;
    goto :goto_2

    .line 288
    .end local v17    # "methodElt":Ljavax/lang/model/element/ExecutableElement;
    .restart local v2    # "methodElt":Ljavax/lang/model/element/ExecutableElement;
    :cond_a
    move-object/from16 v17, v2

    .end local v2    # "methodElt":Ljavax/lang/model/element/ExecutableElement;
    .restart local v17    # "methodElt":Ljavax/lang/model/element/ExecutableElement;
    goto :goto_2

    .line 286
    .end local v17    # "methodElt":Ljavax/lang/model/element/ExecutableElement;
    .restart local v2    # "methodElt":Ljavax/lang/model/element/ExecutableElement;
    :cond_b
    move-object/from16 v17, v2

    .line 329
    .end local v2    # "methodElt":Ljavax/lang/model/element/ExecutableElement;
    .restart local v17    # "methodElt":Ljavax/lang/model/element/ExecutableElement;
    :cond_c
    :goto_2
    iget-object v2, v0, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;->currentMethods:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_10

    iget-object v2, v0, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;->effStack:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/checker/guieffect/Effect;

    invoke-virtual {v5, v2}, Lorg/checkerframework/checker/guieffect/Effect;->equals(Lorg/checkerframework/checker/guieffect/Effect;)Z

    move-result v2

    if-eqz v2, :cond_d

    goto :goto_3

    :cond_d
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 281
    .end local v8    # "callerReceiverElt":Ljavax/lang/model/element/TypeElement;
    .end local v17    # "methodElt":Ljavax/lang/model/element/ExecutableElement;
    .restart local v2    # "methodElt":Ljavax/lang/model/element/ExecutableElement;
    :cond_e
    move-object/from16 v17, v2

    .end local v2    # "methodElt":Ljavax/lang/model/element/ExecutableElement;
    .restart local v17    # "methodElt":Ljavax/lang/model/element/ExecutableElement;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 330
    .end local v6    # "callerElt":Ljavax/lang/model/element/ExecutableElement;
    .end local v7    # "callerReceiverType":Ljavax/lang/model/type/DeclaredType;
    .end local v17    # "methodElt":Ljavax/lang/model/element/ExecutableElement;
    .restart local v2    # "methodElt":Ljavax/lang/model/element/ExecutableElement;
    :cond_f
    move-object/from16 v17, v2

    .end local v2    # "methodElt":Ljavax/lang/model/element/ExecutableElement;
    .restart local v17    # "methodElt":Ljavax/lang/model/element/ExecutableElement;
    invoke-interface {v3}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v2

    sget-object v6, Lcom/sun/source/tree/Tree$Kind;->LAMBDA_EXPRESSION:Lcom/sun/source/tree/Tree$Kind;

    if-ne v2, v6, :cond_10

    .line 331
    iget-object v2, v0, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v2, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;

    move-object v6, v3

    check-cast v6, Lcom/sun/source/tree/LambdaExpressionTree;

    .line 332
    invoke-virtual {v2, v6}, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->getInferedEffectForLambdaExpression(Lcom/sun/source/tree/LambdaExpressionTree;)Lorg/checkerframework/checker/guieffect/Effect;

    move-result-object v5

    .line 336
    invoke-virtual {v4}, Lorg/checkerframework/checker/guieffect/Effect;->isUI()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {v5}, Lorg/checkerframework/checker/guieffect/Effect;->isPoly()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 337
    iget-object v2, v0, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v2, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;

    move-object v6, v3

    check-cast v6, Lcom/sun/source/tree/LambdaExpressionTree;

    invoke-virtual {v2, v6}, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->constrainLambdaToUI(Lcom/sun/source/tree/LambdaExpressionTree;)V

    .line 338
    new-instance v2, Lorg/checkerframework/checker/guieffect/Effect;

    const-class v6, Lorg/checkerframework/checker/guieffect/qual/UIEffect;

    invoke-direct {v2, v6}, Lorg/checkerframework/checker/guieffect/Effect;-><init>(Ljava/lang/Class;)V

    move-object v5, v2

    goto :goto_4

    .line 330
    :cond_10
    :goto_3
    nop

    .line 341
    :cond_11
    :goto_4
    if-eqz v5, :cond_14

    .line 343
    invoke-static {v4, v5}, Lorg/checkerframework/checker/guieffect/Effect;->lessThanOrEqualTo(Lorg/checkerframework/checker/guieffect/Effect;Lorg/checkerframework/checker/guieffect/Effect;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 344
    iget-object v2, v0, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const-string v6, "call.invalid.ui"

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v6

    invoke-virtual {v2, v6, v1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 345
    iget-boolean v2, v0, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;->debugSpew:Z

    if-eqz v2, :cond_12

    .line 346
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Issuing error for node: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 349
    :cond_12
    iget-boolean v2, v0, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;->debugSpew:Z

    if-eqz v2, :cond_13

    .line 350
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Successfully finished main non-recursive checkinv of invocation "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 353
    :cond_13
    invoke-super/range {p0 .. p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v2

    return-object v2

    .line 341
    :cond_14
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method public bridge synthetic visitNewClass(Lcom/sun/source/tree/NewClassTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;->visitNewClass(Lcom/sun/source/tree/NewClassTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitNewClass(Lcom/sun/source/tree/NewClassTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "node"    # Lcom/sun/source/tree/NewClassTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 440
    invoke-super {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitNewClass(Lcom/sun/source/tree/NewClassTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    .line 443
    .local v0, "v":Ljava/lang/Void;
    iget-object v1, p0, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v1, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;

    invoke-virtual {v1, p1}, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->isDirectlyMarkedUIThroughInference(Lcom/sun/source/tree/Tree;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 445
    iget-object v1, p0, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/VisitorState;->getPath()Lcom/sun/source/util/TreePath;

    move-result-object v1

    .line 446
    .local v1, "path":Lcom/sun/source/util/TreePath;
    :goto_0
    invoke-virtual {v1}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v2

    if-eq v2, p1, :cond_1

    .line 447
    invoke-virtual {v1}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v2

    invoke-interface {v2}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v2

    sget-object v3, Lcom/sun/source/tree/Tree$Kind;->COMPILATION_UNIT:Lcom/sun/source/tree/Tree$Kind;

    if-eq v2, v3, :cond_0

    .line 448
    invoke-virtual {v1}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v1

    goto :goto_0

    .line 447
    :cond_0
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 450
    :cond_1
    iget-object v2, p0, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-virtual {v2}, Lorg/checkerframework/framework/type/VisitorState;->getPath()Lcom/sun/source/util/TreePath;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/checkerframework/checker/guieffect/GuiEffectVisitor;->scanUp(Lcom/sun/source/util/TreePath;)V

    .line 452
    .end local v1    # "path":Lcom/sun/source/util/TreePath;
    :cond_2
    return-object v0
.end method
