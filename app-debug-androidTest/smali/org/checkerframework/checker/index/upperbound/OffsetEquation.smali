.class public Lorg/checkerframework/checker/index/upperbound/OffsetEquation;
.super Ljava/lang/Object;
.source "OffsetEquation.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final NEG_1:Lorg/checkerframework/checker/index/upperbound/OffsetEquation;

.field public static final ONE:Lorg/checkerframework/checker/index/upperbound/OffsetEquation;

.field public static final ZERO:Lorg/checkerframework/checker/index/upperbound/OffsetEquation;


# instance fields
.field private final addedTerms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private error:Ljava/lang/String;

.field private intValue:I

.field private final subtractedTerms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    nop

    .line 35
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->createOffsetForInt(I)Lorg/checkerframework/checker/index/upperbound/OffsetEquation;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->ZERO:Lorg/checkerframework/checker/index/upperbound/OffsetEquation;

    .line 36
    const/4 v0, -0x1

    invoke-static {v0}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->createOffsetForInt(I)Lorg/checkerframework/checker/index/upperbound/OffsetEquation;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->NEG_1:Lorg/checkerframework/checker/index/upperbound/OffsetEquation;

    .line 37
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->createOffsetForInt(I)Lorg/checkerframework/checker/index/upperbound/OffsetEquation;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->ONE:Lorg/checkerframework/checker/index/upperbound/OffsetEquation;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->intValue:I

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->error:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->addedTerms:Ljava/util/List;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->subtractedTerms:Ljava/util/List;

    .line 47
    return-void
.end method

.method private constructor <init>(Lorg/checkerframework/checker/index/upperbound/OffsetEquation;)V
    .locals 2
    .param p1, "other"    # Lorg/checkerframework/checker/index/upperbound/OffsetEquation;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->intValue:I

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->error:Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->addedTerms:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->addedTerms:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->subtractedTerms:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->subtractedTerms:Ljava/util/List;

    .line 52
    iget-object v0, p1, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->error:Ljava/lang/String;

    iput-object v0, p0, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->error:Ljava/lang/String;

    .line 53
    iget v0, p1, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->intValue:I

    iput v0, p0, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->intValue:I

    .line 54
    return-void
.end method

.method private addInt(I)V
    .locals 1
    .param p1, "value"    # I

    .line 396
    iget v0, p0, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->intValue:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->intValue:I

    .line 397
    return-void
.end method

.method private addTerm(CLjava/lang/String;)V
    .locals 2
    .param p1, "operator"    # C
    .param p2, "term"    # Ljava/lang/String;

    .line 372
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 373
    invoke-static {p2}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->isInt(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x2d

    if-eqz v0, :cond_1

    .line 374
    invoke-static {p2}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 375
    .local v0, "literal":I
    if-ne p1, v1, :cond_0

    mul-int/lit8 v1, v0, -0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-direct {p0, v1}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->addInt(I)V

    .line 376
    return-void

    .line 378
    .end local v0    # "literal":I
    :cond_1
    if-ne p1, v1, :cond_3

    .line 379
    iget-object v0, p0, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->addedTerms:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 380
    iget-object v0, p0, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->addedTerms:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 382
    :cond_2
    iget-object v0, p0, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->subtractedTerms:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 384
    :cond_3
    const/16 v0, 0x2b

    if-ne p1, v0, :cond_5

    .line 385
    iget-object v0, p0, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->subtractedTerms:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 386
    iget-object v0, p0, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->subtractedTerms:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 388
    :cond_4
    iget-object v0, p0, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->addedTerms:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 393
    :goto_1
    return-void

    .line 391
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static createOffsetForInt(I)Lorg/checkerframework/checker/index/upperbound/OffsetEquation;
    .locals 1
    .param p0, "value"    # I

    .line 420
    new-instance v0, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;

    invoke-direct {v0}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;-><init>()V

    .line 421
    .local v0, "equation":Lorg/checkerframework/checker/index/upperbound/OffsetEquation;
    iput p0, v0, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->intValue:I

    .line 422
    return-object v0
.end method

.method public static createOffsetFromJavaExpression(Ljava/lang/String;)Lorg/checkerframework/checker/index/upperbound/OffsetEquation;
    .locals 8
    .param p0, "expressionEquation"    # Ljava/lang/String;

    .line 435
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 436
    new-instance v0, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;

    invoke-direct {v0}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;-><init>()V

    .line 437
    .local v0, "equation":Lorg/checkerframework/checker/index/upperbound/OffsetEquation;
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/16 v2, 0x2b

    if-eqz v1, :cond_0

    .line 438
    const-string v1, "0"

    invoke-direct {v0, v2, v1}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->addTerm(CLjava/lang/String;)V

    .line 439
    return-object v0

    .line 442
    :cond_0
    invoke-static {p0}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesError;->isExpressionError(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 443
    iput-object p0, v0, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->error:Ljava/lang/String;

    .line 444
    return-object v0

    .line 446
    :cond_1
    const/4 v1, 0x0

    const/16 v3, 0x2d

    invoke-static {p0, v3, v2, v1}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->indexOf(Ljava/lang/String;CCI)I

    move-result v1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_2

    .line 447
    invoke-direct {v0, v2, p0}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->addTerm(CLjava/lang/String;)V

    .line 448
    return-object v0

    .line 451
    :cond_2
    const/4 v1, 0x0

    .line 452
    .local v1, "index":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_6

    .line 453
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 454
    .local v5, "operator":C
    if-eq v5, v3, :cond_4

    if-ne v5, v2, :cond_3

    goto :goto_1

    .line 457
    :cond_3
    const/16 v5, 0x2b

    goto :goto_2

    .line 455
    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 460
    :goto_2
    invoke-static {p0, v3, v2, v1}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->indexOf(Ljava/lang/String;CCI)I

    move-result v6

    .line 462
    .local v6, "endIndex":I
    if-ne v6, v4, :cond_5

    .line 463
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 464
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .local v7, "subexpression":Ljava/lang/String;
    goto :goto_3

    .line 466
    .end local v7    # "subexpression":Ljava/lang/String;
    :cond_5
    invoke-virtual {p0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 469
    .restart local v7    # "subexpression":Ljava/lang/String;
    :goto_3
    invoke-direct {v0, v5, v7}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->addTerm(CLjava/lang/String;)V

    .line 470
    move v1, v6

    .line 471
    .end local v5    # "operator":C
    .end local v6    # "endIndex":I
    .end local v7    # "subexpression":Ljava/lang/String;
    goto :goto_0

    .line 472
    :cond_6
    return-object v0
.end method

.method public static createOffsetFromNode(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/javacutil/AnnotationProvider;C)Lorg/checkerframework/checker/index/upperbound/OffsetEquation;
    .locals 1
    .param p0, "node"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p1, "factory"    # Lorg/checkerframework/javacutil/AnnotationProvider;
    .param p2, "op"    # C

    .line 545
    const/16 v0, 0x2b

    if-eq p2, v0, :cond_1

    const/16 v0, 0x2d

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 546
    :cond_1
    :goto_0
    new-instance v0, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;

    invoke-direct {v0}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;-><init>()V

    .line 547
    .local v0, "eq":Lorg/checkerframework/checker/index/upperbound/OffsetEquation;
    invoke-static {p0, p1, v0, p2}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->createOffsetFromNode(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/checker/index/upperbound/OffsetEquation;C)V

    .line 548
    return-object v0
.end method

.method private static createOffsetFromNode(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/checker/index/upperbound/OffsetEquation;C)V
    .locals 3
    .param p0, "node"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p1, "factory"    # Lorg/checkerframework/javacutil/AnnotationProvider;
    .param p2, "eq"    # Lorg/checkerframework/checker/index/upperbound/OffsetEquation;
    .param p3, "op"    # C

    .line 553
    invoke-static {p1, p0}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v0

    .line 554
    .local v0, "r":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    instance-of v1, v0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Unknown;

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 570
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, p3, v1}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->addTerm(CLjava/lang/String;)V

    goto :goto_1

    .line 555
    :cond_1
    :goto_0
    instance-of v1, p0, Lorg/checkerframework/dataflow/cfg/node/NumericalAdditionNode;

    if-eqz v1, :cond_2

    .line 556
    move-object v1, p0

    check-cast v1, Lorg/checkerframework/dataflow/cfg/node/NumericalAdditionNode;

    .line 557
    invoke-virtual {v1}, Lorg/checkerframework/dataflow/cfg/node/NumericalAdditionNode;->getLeftOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    .line 556
    invoke-static {v1, p1, p2, p3}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->createOffsetFromNode(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/checker/index/upperbound/OffsetEquation;C)V

    .line 558
    move-object v1, p0

    check-cast v1, Lorg/checkerframework/dataflow/cfg/node/NumericalAdditionNode;

    .line 559
    invoke-virtual {v1}, Lorg/checkerframework/dataflow/cfg/node/NumericalAdditionNode;->getRightOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    .line 558
    invoke-static {v1, p1, p2, p3}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->createOffsetFromNode(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/checker/index/upperbound/OffsetEquation;C)V

    goto :goto_1

    .line 560
    :cond_2
    instance-of v1, p0, Lorg/checkerframework/dataflow/cfg/node/NumericalSubtractionNode;

    if-eqz v1, :cond_4

    .line 561
    move-object v1, p0

    check-cast v1, Lorg/checkerframework/dataflow/cfg/node/NumericalSubtractionNode;

    .line 562
    invoke-virtual {v1}, Lorg/checkerframework/dataflow/cfg/node/NumericalSubtractionNode;->getLeftOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    .line 561
    invoke-static {v1, p1, p2, p3}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->createOffsetFromNode(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/checker/index/upperbound/OffsetEquation;C)V

    .line 563
    const/16 v1, 0x2b

    if-ne p3, v1, :cond_3

    const/16 v1, 0x2d

    .line 564
    .local v1, "other":C
    :cond_3
    move-object v2, p0

    check-cast v2, Lorg/checkerframework/dataflow/cfg/node/NumericalSubtractionNode;

    .line 565
    invoke-virtual {v2}, Lorg/checkerframework/dataflow/cfg/node/NumericalSubtractionNode;->getRightOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v2

    .line 564
    invoke-static {v2, p1, p2, v1}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->createOffsetFromNode(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/checker/index/upperbound/OffsetEquation;C)V

    .line 566
    .end local v1    # "other":C
    goto :goto_1

    .line 567
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->error:Ljava/lang/String;

    .line 572
    :goto_1
    return-void
.end method

.method public static createOffsetFromNodesValue(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;C)Lorg/checkerframework/checker/index/upperbound/OffsetEquation;
    .locals 3
    .param p0, "node"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p1, "factory"    # Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;
    .param p2, "op"    # C

    .line 512
    const/16 v0, 0x2b

    const/16 v1, 0x2d

    if-eq p2, v0, :cond_1

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 513
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/Node;->getTree()Lcom/sun/source/tree/Tree;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/Node;->getTree()Lcom/sun/source/tree/Tree;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->isExpressionTree(Lcom/sun/source/tree/Tree;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 514
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/Node;->getTree()Lcom/sun/source/tree/Tree;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/checkerframework/common/value/ValueCheckerUtils;->getExactValue(Lcom/sun/source/tree/Tree;Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;)Ljava/lang/Long;

    move-result-object v0

    .line 515
    .local v0, "i":Ljava/lang/Long;
    if-eqz v0, :cond_3

    .line 516
    if-ne p2, v1, :cond_2

    .line 517
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    neg-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 519
    :cond_2
    new-instance v1, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;

    invoke-direct {v1}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;-><init>()V

    .line 520
    .local v1, "eq":Lorg/checkerframework/checker/index/upperbound/OffsetEquation;
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v2

    invoke-direct {v1, v2}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->addInt(I)V

    .line 521
    return-object v1

    .line 524
    .end local v0    # "i":Ljava/lang/Long;
    .end local v1    # "eq":Lorg/checkerframework/checker/index/upperbound/OffsetEquation;
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method private evalConstantTerm(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;)Ljava/lang/Integer;
    .locals 4
    .param p1, "termReceiver"    # Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .param p2, "factory"    # Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;

    .line 257
    instance-of v0, p1, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ValueLiteral;

    if-eqz v0, :cond_1

    .line 259
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ValueLiteral;

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ValueLiteral;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 260
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 261
    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    return-object v1

    .line 263
    .end local v0    # "value":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    :cond_1
    instance-of v0, p1, Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;

    if-eqz v0, :cond_2

    .line 266
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;

    .line 267
    .local v0, "call":Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;->getElement()Ljavax/lang/model/element/ExecutableElement;

    move-result-object v1

    invoke-interface {v1}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "length"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 268
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;->getReceiver()Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v1

    .line 269
    .local v1, "callReceiver":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    instance-of v2, v1, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ValueLiteral;

    if-eqz v2, :cond_3

    .line 270
    move-object v2, v1

    check-cast v2, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ValueLiteral;

    invoke-virtual {v2}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ValueLiteral;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 271
    .local v2, "value":Ljava/lang/Object;
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 272
    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    return-object v3

    .line 276
    .end local v0    # "call":Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;
    .end local v1    # "callReceiver":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .end local v2    # "value":Ljava/lang/Object;
    :cond_2
    if-eqz p2, :cond_3

    instance-of v0, p1, Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;

    if-eqz v0, :cond_3

    .line 277
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;->getElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    .line 278
    .local v0, "element":Ljavax/lang/model/element/Element;
    const-class v1, Lorg/checkerframework/common/value/ValueChecker;

    .line 280
    invoke-virtual {p2, v1}, Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;->getTypeFactoryOfSubchecker(Ljava/lang/Class;)Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    .line 279
    invoke-static {v0, v1}, Lorg/checkerframework/common/value/ValueCheckerUtils;->getExactValue(Ljavax/lang/model/element/Element;Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;)Ljava/lang/Long;

    move-result-object v1

    .line 282
    .local v1, "exactValue":Ljava/lang/Long;
    if-eqz v1, :cond_4

    .line 283
    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2

    .line 276
    .end local v0    # "element":Ljavax/lang/model/element/Element;
    .end local v1    # "exactValue":Ljava/lang/Long;
    :cond_3
    nop

    .line 287
    :cond_4
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getIntOffsetEquation(Ljava/util/Set;)Lorg/checkerframework/checker/index/upperbound/OffsetEquation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/checkerframework/checker/index/upperbound/OffsetEquation;",
            ">;)",
            "Lorg/checkerframework/checker/index/upperbound/OffsetEquation;"
        }
    .end annotation

    .line 406
    .local p0, "equationSet":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/checker/index/upperbound/OffsetEquation;>;"
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;

    .line 407
    .local v1, "eq":Lorg/checkerframework/checker/index/upperbound/OffsetEquation;
    invoke-virtual {v1}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->isInt()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 408
    return-object v1

    .line 410
    .end local v1    # "eq":Lorg/checkerframework/checker/index/upperbound/OffsetEquation;
    :cond_0
    goto :goto_0

    .line 411
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static indexOf(Ljava/lang/String;CCI)I
    .locals 3
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "a"    # C
    .param p2, "b"    # C
    .param p3, "index"    # I

    .line 488
    invoke-virtual {p0, p1, p3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 489
    .local v0, "aIndex":I
    invoke-virtual {p0, p2, p3}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 490
    .local v1, "bIndex":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 491
    return v1

    .line 492
    :cond_0
    if-ne v1, v2, :cond_1

    .line 493
    return v0

    .line 495
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2
.end method

.method private static isInt(Ljava/lang/String;)Z
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .line 476
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "[-+]?[0-9]+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private minus(Lorg/checkerframework/checker/index/upperbound/OffsetEquation;)V
    .locals 3
    .param p1, "eq"    # Lorg/checkerframework/checker/index/upperbound/OffsetEquation;

    .line 183
    iget v0, p1, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->intValue:I

    mul-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->addInt(I)V

    .line 184
    iget-object v0, p1, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->addedTerms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 185
    .local v1, "term":Ljava/lang/String;
    const/16 v2, 0x2d

    invoke-direct {p0, v2, v1}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->addTerm(CLjava/lang/String;)V

    .line 186
    .end local v1    # "term":Ljava/lang/String;
    goto :goto_0

    .line 187
    :cond_0
    iget-object v0, p1, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->subtractedTerms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 188
    .restart local v1    # "term":Ljava/lang/String;
    const/16 v2, 0x2b

    invoke-direct {p0, v2, v1}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->addTerm(CLjava/lang/String;)V

    .line 189
    .end local v1    # "term":Ljava/lang/String;
    goto :goto_1

    .line 190
    :cond_1
    return-void
.end method

.method private static parseInt(Ljava/lang/String;)I
    .locals 1
    .param p0, "intLiteral"    # Ljava/lang/String;

    .line 480
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    const/4 v0, 0x0

    return v0

    .line 483
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private plus(Lorg/checkerframework/checker/index/upperbound/OffsetEquation;)V
    .locals 3
    .param p1, "eq"    # Lorg/checkerframework/checker/index/upperbound/OffsetEquation;

    .line 173
    iget v0, p1, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->intValue:I

    invoke-direct {p0, v0}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->addInt(I)V

    .line 174
    iget-object v0, p1, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->addedTerms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 175
    .local v1, "term":Ljava/lang/String;
    const/16 v2, 0x2b

    invoke-direct {p0, v2, v1}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->addTerm(CLjava/lang/String;)V

    .line 176
    .end local v1    # "term":Ljava/lang/String;
    goto :goto_0

    .line 177
    :cond_0
    iget-object v0, p1, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->subtractedTerms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 178
    .restart local v1    # "term":Ljava/lang/String;
    const/16 v2, 0x2d

    invoke-direct {p0, v2, v1}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->addTerm(CLjava/lang/String;)V

    .line 179
    .end local v1    # "term":Ljava/lang/String;
    goto :goto_1

    .line 180
    :cond_1
    return-void
.end method

.method private standardizeAndViewpointAdaptExpressions(Ljava/util/List;ZLorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;Lcom/sun/source/util/TreePath;ZLorg/checkerframework/framework/type/AnnotatedTypeFactory;)V
    .locals 8
    .param p2, "subtract"    # Z
    .param p3, "context"    # Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;
    .param p4, "scope"    # Lcom/sun/source/util/TreePath;
    .param p5, "useLocalScope"    # Z
    .param p6, "factory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;",
            "Lcom/sun/source/util/TreePath;",
            "Z",
            "Lorg/checkerframework/framework/type/AnnotatedTypeFactory;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;
        }
    .end annotation

    .line 306
    .local p1, "terms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "length":I
    const/4 v1, 0x0

    .line 307
    .local v1, "j":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 308
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 309
    .local v3, "term":Ljava/lang/String;
    invoke-static {v3, p3, p4, p5}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil;->parse(Ljava/lang/String;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;Lcom/sun/source/util/TreePath;Z)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v4

    .line 310
    .local v4, "receiver":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    move-object v5, p6

    check-cast v5, Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;

    invoke-direct {p0, v4, v5}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->evalConstantTerm(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;)Ljava/lang/Integer;

    move-result-object v5

    .line 311
    .local v5, "termConstant":Ljava/lang/Integer;
    if-nez v5, :cond_0

    .line 312
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v1, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 313
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 314
    :cond_0
    if-eqz p2, :cond_1

    .line 315
    iget v6, p0, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->intValue:I

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sub-int/2addr v6, v7

    iput v6, p0, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->intValue:I

    goto :goto_1

    .line 317
    :cond_1
    iget v6, p0, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->intValue:I

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, p0, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->intValue:I

    .line 307
    .end local v3    # "term":Ljava/lang/String;
    .end local v4    # "receiver":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .end local v5    # "termConstant":Ljava/lang/Integer;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 321
    .end local v2    # "i":I
    :cond_2
    invoke-interface {p1, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 322
    return-void
.end method


# virtual methods
.method public copyAdd(CLorg/checkerframework/checker/index/upperbound/OffsetEquation;)Lorg/checkerframework/checker/index/upperbound/OffsetEquation;
    .locals 2
    .param p1, "op"    # C
    .param p2, "other"    # Lorg/checkerframework/checker/index/upperbound/OffsetEquation;

    .line 162
    const/16 v0, 0x2d

    const/16 v1, 0x2b

    if-eq p1, v0, :cond_1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 163
    :cond_1
    :goto_0
    new-instance v0, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;

    invoke-direct {v0, p0}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;-><init>(Lorg/checkerframework/checker/index/upperbound/OffsetEquation;)V

    .line 164
    .local v0, "copy":Lorg/checkerframework/checker/index/upperbound/OffsetEquation;
    if-ne p1, v1, :cond_2

    .line 165
    invoke-direct {v0, p2}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->plus(Lorg/checkerframework/checker/index/upperbound/OffsetEquation;)V

    goto :goto_1

    .line 167
    :cond_2
    invoke-direct {v0, p2}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->minus(Lorg/checkerframework/checker/index/upperbound/OffsetEquation;)V

    .line 169
    :goto_1
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 66
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 67
    return v0

    .line 69
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_3

    .line 73
    :cond_1
    move-object v2, p1

    check-cast v2, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;

    .line 75
    .local v2, "that":Lorg/checkerframework/checker/index/upperbound/OffsetEquation;
    iget v3, p0, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->intValue:I

    iget v4, v2, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->intValue:I

    if-eq v3, v4, :cond_2

    .line 76
    return v1

    .line 78
    :cond_2
    iget-object v3, p0, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->addedTerms:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, v2, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->addedTerms:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_8

    iget-object v3, p0, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->addedTerms:Ljava/util/List;

    iget-object v4, v2, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->addedTerms:Ljava/util/List;

    .line 79
    invoke-interface {v3, v4}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, v2, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->addedTerms:Ljava/util/List;

    iget-object v4, p0, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->addedTerms:Ljava/util/List;

    .line 80
    invoke-interface {v3, v4}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_2

    .line 83
    :cond_3
    iget-object v3, p0, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->subtractedTerms:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, v2, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->subtractedTerms:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_7

    iget-object v3, p0, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->subtractedTerms:Ljava/util/List;

    iget-object v4, v2, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->subtractedTerms:Ljava/util/List;

    .line 84
    invoke-interface {v3, v4}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, v2, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->subtractedTerms:Ljava/util/List;

    iget-object v4, p0, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->subtractedTerms:Ljava/util/List;

    .line 85
    invoke-interface {v3, v4}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1

    .line 88
    :cond_4
    iget-object v3, p0, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->error:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v0, v2, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->error:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_5
    iget-object v3, v2, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->error:Ljava/lang/String;

    if-nez v3, :cond_6

    goto :goto_0

    :cond_6
    move v0, v1

    :goto_0
    return v0

    .line 86
    :cond_7
    :goto_1
    return v1

    .line 81
    :cond_8
    :goto_2
    return v1

    .line 70
    .end local v2    # "that":Lorg/checkerframework/checker/index/upperbound/OffsetEquation;
    :cond_9
    :goto_3
    return v1
.end method

.method public getError()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->error:Ljava/lang/String;

    return-object v0
.end method

.method public getInt()I
    .locals 1

    .line 220
    iget v0, p0, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->intValue:I

    return v0
.end method

.method public hasError()Z
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->error:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 93
    iget-object v0, p0, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->addedTerms:Ljava/util/List;

    iget-object v1, p0, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->subtractedTerms:Ljava/util/List;

    iget v2, p0, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->intValue:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->error:Ljava/lang/String;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isInt()Z
    .locals 1

    .line 208
    iget-object v0, p0, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->addedTerms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->subtractedTerms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNegOne()Z
    .locals 2

    .line 229
    invoke-virtual {p0}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->isInt()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->getInt()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNegativeOrZero()Z
    .locals 1

    .line 247
    invoke-virtual {p0}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->isInt()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->getInt()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNonNegative()Z
    .locals 1

    .line 238
    invoke-virtual {p0}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->isInt()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->getInt()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public lessThanOrEqual(Lorg/checkerframework/checker/index/upperbound/OffsetEquation;)Z
    .locals 2
    .param p1, "other"    # Lorg/checkerframework/checker/index/upperbound/OffsetEquation;

    .line 199
    invoke-virtual {p0}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->isInt()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->isInt()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->intValue:I

    invoke-virtual {p1}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->getInt()I

    move-result v1

    if-le v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public removeSequenceLengths(Ljava/util/List;)Lorg/checkerframework/checker/index/upperbound/OffsetEquation;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/checkerframework/checker/index/upperbound/OffsetEquation;"
        }
    .end annotation

    .line 136
    .local p1, "sequences":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;

    invoke-direct {v0, p0}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;-><init>(Lorg/checkerframework/checker/index/upperbound/OffsetEquation;)V

    .line 137
    .local v0, "copy":Lorg/checkerframework/checker/index/upperbound/OffsetEquation;
    const/4 v1, 0x0

    .line 138
    .local v1, "simplified":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 139
    .local v3, "sequence":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".length"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 140
    .local v4, "arrayLen":Ljava/lang/String;
    iget-object v5, p0, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->addedTerms:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 141
    iget-object v5, v0, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->addedTerms:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 142
    const/4 v1, 0x1

    .line 144
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".length()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 145
    .local v5, "stringLen":Ljava/lang/String;
    iget-object v6, p0, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->addedTerms:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 146
    iget-object v6, v0, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->addedTerms:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 147
    const/4 v1, 0x1

    .line 149
    .end local v3    # "sequence":Ljava/lang/String;
    .end local v4    # "arrayLen":Ljava/lang/String;
    .end local v5    # "stringLen":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 150
    :cond_2
    if-eqz v1, :cond_3

    move-object v2, v0

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    return-object v2
.end method

.method public standardizeAndViewpointAdaptExpressions(Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;Lcom/sun/source/util/TreePath;Z)V
    .locals 1
    .param p1, "context"    # Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;
    .param p2, "scope"    # Lcom/sun/source/util/TreePath;
    .param p3, "useLocalScope"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;
        }
    .end annotation

    .line 360
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->standardizeAndViewpointAdaptExpressions(Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;Lcom/sun/source/util/TreePath;ZLorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    .line 361
    return-void
.end method

.method public standardizeAndViewpointAdaptExpressions(Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;Lcom/sun/source/util/TreePath;ZLorg/checkerframework/framework/type/AnnotatedTypeFactory;)V
    .locals 10
    .param p1, "context"    # Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;
    .param p2, "scope"    # Lcom/sun/source/util/TreePath;
    .param p3, "useLocalScope"    # Z
    .param p4, "factory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;
        }
    .end annotation

    .line 341
    iget-object v1, p0, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->addedTerms:Ljava/util/List;

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->standardizeAndViewpointAdaptExpressions(Ljava/util/List;ZLorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;Lcom/sun/source/util/TreePath;ZLorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    .line 343
    iget-object v4, p0, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->subtractedTerms:Ljava/util/List;

    const/4 v5, 0x1

    move-object v3, p0

    move-object v6, p1

    move-object v7, p2

    move v8, p3

    move-object v9, p4

    invoke-direct/range {v3 .. v9}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->standardizeAndViewpointAdaptExpressions(Ljava/util/List;ZLorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;Lcom/sun/source/util/TreePath;ZLorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    .line 345
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 98
    iget-object v0, p0, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->addedTerms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->subtractedTerms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget v0, p0, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->intValue:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 101
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->addedTerms:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 102
    .local v0, "sortedAdds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 104
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->subtractedTerms:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 105
    .local v1, "sortedSubs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 107
    const-string v2, " + "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    .line 108
    .local v2, "adds":Ljava/lang/String;
    const-string v3, " - "

    invoke-static {v3, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    .line 109
    .local v4, "minus":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 110
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 111
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 112
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 114
    :cond_2
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 115
    .local v3, "terms":Ljava/lang/String;
    iget v5, p0, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->intValue:I

    if-eqz v5, :cond_5

    .line 116
    if-lez v5, :cond_3

    const/16 v5, 0x2b

    goto :goto_1

    :cond_3
    const/16 v5, 0x2d

    .line 117
    .local v5, "op":C
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 118
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->intValue:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 120
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->intValue:I

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 123
    .end local v5    # "op":C
    :cond_5
    :goto_2
    return-object v3
.end method
