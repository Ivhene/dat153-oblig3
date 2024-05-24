.class public Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;
.super Lorg/checkerframework/checker/index/IndexAbstractTransfer;
.source "LowerBoundTransfer.java"


# instance fields
.field public final GTEN1:Ljavax/lang/model/element/AnnotationMirror;

.field public final NN:Ljavax/lang/model/element/AnnotationMirror;

.field public final POS:Ljavax/lang/model/element/AnnotationMirror;

.field public final UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

.field private aTypeFactory:Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;


# direct methods
.method public constructor <init>(Lorg/checkerframework/framework/flow/CFAnalysis;)V
    .locals 1
    .param p1, "analysis"    # Lorg/checkerframework/framework/flow/CFAnalysis;

    .line 178
    invoke-direct {p0, p1}, Lorg/checkerframework/checker/index/IndexAbstractTransfer;-><init>(Lorg/checkerframework/framework/flow/CFAnalysis;)V

    .line 179
    invoke-virtual {p1}, Lorg/checkerframework/framework/flow/CFAnalysis;->getTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;

    iput-object v0, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->aTypeFactory:Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;

    .line 181
    iget-object v0, v0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->GTEN1:Ljavax/lang/model/element/AnnotationMirror;

    iput-object v0, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->GTEN1:Ljavax/lang/model/element/AnnotationMirror;

    .line 182
    iget-object v0, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->aTypeFactory:Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->NN:Ljavax/lang/model/element/AnnotationMirror;

    iput-object v0, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->NN:Ljavax/lang/model/element/AnnotationMirror;

    .line 183
    iget-object v0, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->aTypeFactory:Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->POS:Ljavax/lang/model/element/AnnotationMirror;

    iput-object v0, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->POS:Ljavax/lang/model/element/AnnotationMirror;

    .line 184
    iget-object v0, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->aTypeFactory:Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    iput-object v0, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    .line 185
    return-void
.end method

.method private addAnnotationForLiteralDivideLeft(ILjavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 1
    .param p1, "val"    # I
    .param p2, "rightAnno"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 611
    if-nez p1, :cond_0

    .line 612
    iget-object v0, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->NN:Ljavax/lang/model/element/AnnotationMirror;

    return-object v0

    .line 613
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 614
    invoke-direct {p0, p2}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->isNonNegative(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 615
    iget-object v0, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->NN:Ljavax/lang/model/element/AnnotationMirror;

    return-object v0

    .line 618
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->GTEN1:Ljavax/lang/model/element/AnnotationMirror;

    return-object v0

    .line 621
    :cond_2
    iget-object v0, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    return-object v0
.end method

.method private addAnnotationForLiteralDivideRight(ILjavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 1
    .param p1, "val"    # I
    .param p2, "leftAnno"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 627
    if-nez p1, :cond_0

    .line 632
    iget-object v0, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->aTypeFactory:Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->BOTTOM:Ljavax/lang/model/element/AnnotationMirror;

    return-object v0

    .line 633
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 634
    return-object p2

    .line 635
    :cond_1
    const/4 v0, 0x2

    if-lt p1, v0, :cond_2

    .line 636
    invoke-direct {p0, p2}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->isNonNegative(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 637
    iget-object v0, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->NN:Ljavax/lang/model/element/AnnotationMirror;

    return-object v0

    .line 640
    :cond_2
    iget-object v0, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    return-object v0
.end method

.method private addAnnotationForLiteralRemainder(I)Ljavax/lang/model/element/AnnotationMirror;
    .locals 1
    .param p1, "val"    # I

    .line 699
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 702
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    return-object v0

    .line 700
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->NN:Ljavax/lang/model/element/AnnotationMirror;

    return-object v0
.end method

.method private anmAfterAddingOne(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 1
    .param p1, "oldAnm"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 360
    invoke-direct {p0, p1}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->isNonNegative(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->POS:Ljavax/lang/model/element/AnnotationMirror;

    return-object v0

    .line 362
    :cond_0
    invoke-direct {p0, p1}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->isGTEN1(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 363
    iget-object v0, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->NN:Ljavax/lang/model/element/AnnotationMirror;

    return-object v0

    .line 365
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    return-object v0
.end method

.method private anmAfterSubtractingOne(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 1
    .param p1, "oldAnm"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 349
    invoke-direct {p0, p1}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->isPositive(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->NN:Ljavax/lang/model/element/AnnotationMirror;

    return-object v0

    .line 351
    :cond_0
    invoke-direct {p0, p1}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->isNonNegative(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 352
    iget-object v0, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->GTEN1:Ljavax/lang/model/element/AnnotationMirror;

    return-object v0

    .line 354
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    return-object v0
.end method

.method private createNewResult(Lorg/checkerframework/dataflow/analysis/TransferResult;Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 3
    .param p2, "resultAnno"    # Ljavax/lang/model/element/AnnotationMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ")",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;"
        }
    .end annotation

    .line 923
    .local p1, "result":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    iget-object v0, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    .line 925
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getResultValue()Lorg/checkerframework/dataflow/analysis/AbstractValue;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/flow/CFValue;

    invoke-virtual {v1}, Lorg/checkerframework/framework/flow/CFValue;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    .line 924
    invoke-virtual {v0, p2, v1}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->createSingleAnnotationValue(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/flow/CFValue;

    .line 926
    .local v0, "newResultValue":Lorg/checkerframework/framework/flow/CFValue;
    new-instance v1, Lorg/checkerframework/dataflow/analysis/RegularTransferResult;

    invoke-virtual {p1}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getRegularStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/flow/CFStore;

    invoke-direct {v1, v0, v2}, Lorg/checkerframework/dataflow/analysis/RegularTransferResult;-><init>(Lorg/checkerframework/dataflow/analysis/AbstractValue;Lorg/checkerframework/dataflow/analysis/Store;)V

    return-object v1
.end method

.method private getAnnotationForAnd(Lorg/checkerframework/dataflow/cfg/node/BitwiseAndNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 3
    .param p1, "node"    # Lorg/checkerframework/dataflow/cfg/node/BitwiseAndNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/BitwiseAndNode;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;)",
            "Ljavax/lang/model/element/AnnotationMirror;"
        }
    .end annotation

    .line 796
    .local p2, "p":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/BitwiseAndNode;->getRightOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->getLowerBoundAnnotation(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 797
    .local v0, "rightAnno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-direct {p0, v0}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->isNonNegative(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 798
    iget-object v1, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->NN:Ljavax/lang/model/element/AnnotationMirror;

    return-object v1

    .line 801
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/BitwiseAndNode;->getLeftOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->getLowerBoundAnnotation(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 802
    .local v1, "leftAnno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-direct {p0, v1}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->isNonNegative(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 803
    iget-object v2, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->NN:Ljavax/lang/model/element/AnnotationMirror;

    return-object v2

    .line 805
    :cond_1
    iget-object v2, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    return-object v2
.end method

.method private getAnnotationForDivide(Lorg/checkerframework/dataflow/cfg/node/IntegerDivisionNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 5
    .param p1, "node"    # Lorg/checkerframework/dataflow/cfg/node/IntegerDivisionNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/IntegerDivisionNode;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;)",
            "Ljavax/lang/model/element/AnnotationMirror;"
        }
    .end annotation

    .line 661
    .local p2, "p":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/IntegerDivisionNode;->getLeftOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->getLowerBoundAnnotation(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 664
    .local v0, "leftAnno":Ljavax/lang/model/element/AnnotationMirror;
    nop

    .line 666
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/IntegerDivisionNode;->getRightOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/dataflow/cfg/node/Node;->getTree()Lcom/sun/source/tree/Tree;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->aTypeFactory:Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;

    .line 667
    invoke-virtual {v2}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->getValueAnnotatedTypeFactory()Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    move-result-object v2

    .line 665
    invoke-static {v1, v2}, Lorg/checkerframework/common/value/ValueCheckerUtils;->getExactValue(Lcom/sun/source/tree/Tree;Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;)Ljava/lang/Long;

    move-result-object v1

    .line 668
    .local v1, "valRight":Ljava/lang/Long;
    if-eqz v1, :cond_0

    .line 669
    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v2

    invoke-direct {p0, v2, v0}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->addAnnotationForLiteralDivideRight(ILjavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    return-object v2

    .line 672
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/IntegerDivisionNode;->getRightOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->getLowerBoundAnnotation(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    .line 675
    .local v2, "rightAnno":Ljavax/lang/model/element/AnnotationMirror;
    nop

    .line 677
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/IntegerDivisionNode;->getLeftOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v3

    invoke-virtual {v3}, Lorg/checkerframework/dataflow/cfg/node/Node;->getTree()Lcom/sun/source/tree/Tree;

    move-result-object v3

    iget-object v4, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->aTypeFactory:Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;

    .line 678
    invoke-virtual {v4}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->getValueAnnotatedTypeFactory()Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    move-result-object v4

    .line 676
    invoke-static {v3, v4}, Lorg/checkerframework/common/value/ValueCheckerUtils;->getExactValue(Lcom/sun/source/tree/Tree;Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;)Ljava/lang/Long;

    move-result-object v3

    .line 679
    .local v3, "valLeft":Ljava/lang/Long;
    if-eqz v3, :cond_1

    .line 680
    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    move-result v4

    invoke-direct {p0, v4, v0}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->addAnnotationForLiteralDivideLeft(ILjavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v4

    return-object v4

    .line 687
    :cond_1
    invoke-direct {p0, v0}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->isPositive(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0, v2}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->isNonNegative(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 688
    iget-object v4, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->NN:Ljavax/lang/model/element/AnnotationMirror;

    return-object v4

    .line 690
    :cond_2
    invoke-direct {p0, v2}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->isNonNegative(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 691
    return-object v0

    .line 694
    :cond_3
    iget-object v4, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    return-object v4
.end method

.method private getAnnotationForLiteralMultiply(ILjavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 1
    .param p1, "val"    # I
    .param p2, "nonLiteralType"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 538
    if-nez p1, :cond_0

    .line 539
    iget-object v0, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->NN:Ljavax/lang/model/element/AnnotationMirror;

    return-object v0

    .line 540
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 541
    return-object p2

    .line 542
    :cond_1
    if-le p1, v0, :cond_2

    .line 543
    invoke-direct {p0, p2}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->isNonNegative(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 544
    return-object p2

    .line 547
    :cond_2
    iget-object v0, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    return-object v0
.end method

.method private getAnnotationForLiteralPlus(ILjavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 1
    .param p1, "val"    # I
    .param p2, "nonLiteralType"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 376
    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    .line 377
    invoke-direct {p0, p2}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->isPositive(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 378
    iget-object v0, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->GTEN1:Ljavax/lang/model/element/AnnotationMirror;

    return-object v0

    .line 380
    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 381
    invoke-direct {p0, p2}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->anmAfterSubtractingOne(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    return-object v0

    .line 382
    :cond_1
    if-nez p1, :cond_2

    .line 383
    return-object p2

    .line 384
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 385
    invoke-direct {p0, p2}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->anmAfterAddingOne(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    return-object v0

    .line 386
    :cond_3
    const/4 v0, 0x2

    if-lt p1, v0, :cond_4

    .line 387
    invoke-direct {p0, p2}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->isGTEN1(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 389
    iget-object v0, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->POS:Ljavax/lang/model/element/AnnotationMirror;

    return-object v0

    .line 392
    :cond_4
    iget-object v0, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    return-object v0
.end method

.method private getAnnotationForMinus(Lorg/checkerframework/dataflow/cfg/node/BinaryOperationNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 10
    .param p1, "minusNode"    # Lorg/checkerframework/dataflow/cfg/node/BinaryOperationNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/BinaryOperationNode;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;)",
            "Ljavax/lang/model/element/AnnotationMirror;"
        }
    .end annotation

    .line 478
    .local p2, "p":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    nop

    .line 480
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/BinaryOperationNode;->getRightOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/node/Node;->getTree()Lcom/sun/source/tree/Tree;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->aTypeFactory:Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;

    .line 481
    invoke-virtual {v1}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->getValueAnnotatedTypeFactory()Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    move-result-object v1

    .line 479
    invoke-static {v0, v1}, Lorg/checkerframework/common/value/ValueCheckerUtils;->getExactValue(Lcom/sun/source/tree/Tree;Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;)Ljava/lang/Long;

    move-result-object v0

    .line 482
    .local v0, "valRight":Ljava/lang/Long;
    if-eqz v0, :cond_3

    .line 483
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/BinaryOperationNode;->getLeftOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->getLowerBoundAnnotation(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 485
    .local v1, "leftAnno":Ljavax/lang/model/element/AnnotationMirror;
    nop

    .line 486
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v2

    mul-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v2, v1}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->getAnnotationForLiteralPlus(ILjavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    .line 488
    .local v2, "result":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/BinaryOperationNode;->getLeftOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v3

    invoke-virtual {v3}, Lorg/checkerframework/dataflow/cfg/node/Node;->getTree()Lcom/sun/source/tree/Tree;

    move-result-object v3

    .line 489
    .local v3, "leftExpr":Lcom/sun/source/tree/Tree;
    const/4 v4, 0x0

    .line 494
    .local v4, "minLen":Ljava/lang/Integer;
    invoke-interface {v3}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v5

    sget-object v6, Lcom/sun/source/tree/Tree$Kind;->MEMBER_SELECT:Lcom/sun/source/tree/Tree$Kind;

    if-ne v5, v6, :cond_0

    .line 495
    move-object v5, v3

    check-cast v5, Lcom/sun/source/tree/MemberSelectTree;

    .line 496
    .local v5, "mstree":Lcom/sun/source/tree/MemberSelectTree;
    iget-object v6, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->aTypeFactory:Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;

    invoke-virtual {v6, v5}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->getMinLenFromMemberSelectTree(Lcom/sun/source/tree/MemberSelectTree;)Ljava/lang/Integer;

    move-result-object v4

    .end local v5    # "mstree":Lcom/sun/source/tree/MemberSelectTree;
    goto :goto_0

    .line 497
    :cond_0
    invoke-interface {v3}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v5

    sget-object v6, Lcom/sun/source/tree/Tree$Kind;->METHOD_INVOCATION:Lcom/sun/source/tree/Tree$Kind;

    if-ne v5, v6, :cond_1

    .line 498
    move-object v5, v3

    check-cast v5, Lcom/sun/source/tree/MethodInvocationTree;

    .line 499
    .local v5, "mitree":Lcom/sun/source/tree/MethodInvocationTree;
    iget-object v6, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->aTypeFactory:Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;

    invoke-virtual {v6, v5}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->getMinLenFromMethodInvocationTree(Lcom/sun/source/tree/MethodInvocationTree;)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_1

    .line 497
    .end local v5    # "mitree":Lcom/sun/source/tree/MethodInvocationTree;
    :cond_1
    :goto_0
    nop

    .line 502
    :goto_1
    if-eqz v4, :cond_2

    .line 503
    iget-object v5, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->aTypeFactory:Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->anmFromVal(J)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    .line 505
    :cond_2
    return-object v2

    .line 508
    .end local v1    # "leftAnno":Ljavax/lang/model/element/AnnotationMirror;
    .end local v2    # "result":Ljavax/lang/model/element/AnnotationMirror;
    .end local v3    # "leftExpr":Lcom/sun/source/tree/Tree;
    .end local v4    # "minLen":Ljava/lang/Integer;
    :cond_3
    nop

    .line 509
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/BinaryOperationNode;->getLeftOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->aTypeFactory:Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;

    const/16 v3, 0x2b

    invoke-static {v1, v2, v3}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->createOffsetFromNode(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/javacutil/AnnotationProvider;C)Lorg/checkerframework/checker/index/upperbound/OffsetEquation;

    move-result-object v1

    .line 510
    .local v1, "leftExpression":Lorg/checkerframework/checker/index/upperbound/OffsetEquation;
    if-eqz v1, :cond_5

    .line 511
    iget-object v2, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->aTypeFactory:Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;

    .line 512
    invoke-virtual {v2}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->getLessThanAnnotatedTypeFactory()Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;

    move-result-object v2

    .line 513
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/BinaryOperationNode;->getRightOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v3

    invoke-virtual {v3}, Lorg/checkerframework/dataflow/cfg/node/Node;->getTree()Lcom/sun/source/tree/Tree;

    move-result-object v3

    invoke-virtual {v1}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;->isLessThan(Lcom/sun/source/tree/Tree;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 514
    iget-object v2, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->POS:Ljavax/lang/model/element/AnnotationMirror;

    return-object v2

    .line 517
    :cond_4
    iget-object v2, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->aTypeFactory:Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;

    .line 518
    invoke-virtual {v2}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->getLessThanAnnotatedTypeFactory()Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;

    move-result-object v2

    .line 520
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/BinaryOperationNode;->getRightOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v3

    invoke-virtual {v3}, Lorg/checkerframework/dataflow/cfg/node/Node;->getTree()Lcom/sun/source/tree/Tree;

    move-result-object v3

    invoke-virtual {v1}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->toString()Ljava/lang/String;

    move-result-object v4

    .line 519
    invoke-virtual {v2, v3, v4}, Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;->isLessThanOrEqual(Lcom/sun/source/tree/Tree;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 521
    iget-object v2, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->NN:Ljavax/lang/model/element/AnnotationMirror;

    return-object v2

    .line 527
    :cond_5
    iget-object v2, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    return-object v2
.end method

.method private getAnnotationForMultiply(Lorg/checkerframework/dataflow/cfg/node/NumericalMultiplicationNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 6
    .param p1, "node"    # Lorg/checkerframework/dataflow/cfg/node/NumericalMultiplicationNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/NumericalMultiplicationNode;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;)",
            "Ljavax/lang/model/element/AnnotationMirror;"
        }
    .end annotation

    .line 568
    .local p2, "p":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    iget-object v0, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->aTypeFactory:Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;

    invoke-virtual {v0, p1}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->checkForMathRandomSpecialCase(Lorg/checkerframework/dataflow/cfg/node/NumericalMultiplicationNode;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 569
    .local v0, "randomSpecialCaseResult":Ljavax/lang/model/element/AnnotationMirror;
    if-eqz v0, :cond_0

    .line 570
    return-object v0

    .line 573
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/NumericalMultiplicationNode;->getLeftOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->getLowerBoundAnnotation(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 576
    .local v1, "leftAnno":Ljavax/lang/model/element/AnnotationMirror;
    nop

    .line 578
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/NumericalMultiplicationNode;->getRightOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v2

    invoke-virtual {v2}, Lorg/checkerframework/dataflow/cfg/node/Node;->getTree()Lcom/sun/source/tree/Tree;

    move-result-object v2

    iget-object v3, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->aTypeFactory:Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;

    .line 579
    invoke-virtual {v3}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->getValueAnnotatedTypeFactory()Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    move-result-object v3

    .line 577
    invoke-static {v2, v3}, Lorg/checkerframework/common/value/ValueCheckerUtils;->getExactValue(Lcom/sun/source/tree/Tree;Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;)Ljava/lang/Long;

    move-result-object v2

    .line 580
    .local v2, "valRight":Ljava/lang/Long;
    if-eqz v2, :cond_1

    .line 581
    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v3

    invoke-direct {p0, v3, v1}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->getAnnotationForLiteralMultiply(ILjavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    return-object v3

    .line 584
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/NumericalMultiplicationNode;->getRightOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->getLowerBoundAnnotation(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    .line 586
    .local v3, "rightAnno":Ljavax/lang/model/element/AnnotationMirror;
    nop

    .line 588
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/NumericalMultiplicationNode;->getLeftOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v4

    invoke-virtual {v4}, Lorg/checkerframework/dataflow/cfg/node/Node;->getTree()Lcom/sun/source/tree/Tree;

    move-result-object v4

    iget-object v5, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->aTypeFactory:Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;

    .line 589
    invoke-virtual {v5}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->getValueAnnotatedTypeFactory()Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    move-result-object v5

    .line 587
    invoke-static {v4, v5}, Lorg/checkerframework/common/value/ValueCheckerUtils;->getExactValue(Lcom/sun/source/tree/Tree;Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;)Ljava/lang/Long;

    move-result-object v4

    .line 590
    .local v4, "valLeft":Ljava/lang/Long;
    if-eqz v4, :cond_2

    .line 591
    invoke-virtual {v4}, Ljava/lang/Long;->intValue()I

    move-result v5

    invoke-direct {p0, v5, v3}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->getAnnotationForLiteralMultiply(ILjavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v5

    return-object v5

    .line 599
    :cond_2
    invoke-direct {p0, v1}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->isPositive(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-direct {p0, v3}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->isPositive(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 600
    iget-object v5, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->POS:Ljavax/lang/model/element/AnnotationMirror;

    return-object v5

    .line 602
    :cond_3
    invoke-direct {p0, v1}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->isNonNegative(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-direct {p0, v3}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->isNonNegative(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 603
    iget-object v5, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->NN:Ljavax/lang/model/element/AnnotationMirror;

    return-object v5

    .line 605
    :cond_4
    iget-object v5, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    return-object v5
.end method

.method private getAnnotationForPlus(Lorg/checkerframework/dataflow/cfg/node/BinaryOperationNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 8
    .param p1, "binaryOpNode"    # Lorg/checkerframework/dataflow/cfg/node/BinaryOperationNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/BinaryOperationNode;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;)",
            "Ljavax/lang/model/element/AnnotationMirror;"
        }
    .end annotation

    .line 414
    .local p2, "p":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/BinaryOperationNode;->getLeftOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v0

    .line 415
    .local v0, "leftExprNode":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/BinaryOperationNode;->getRightOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    .line 417
    .local v1, "rightExprNode":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-direct {p0, v0, p2}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->getLowerBoundAnnotation(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    .line 420
    .local v2, "leftAnno":Ljavax/lang/model/element/AnnotationMirror;
    nop

    .line 421
    invoke-virtual {v1}, Lorg/checkerframework/dataflow/cfg/node/Node;->getTree()Lcom/sun/source/tree/Tree;

    move-result-object v3

    iget-object v4, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->aTypeFactory:Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;

    invoke-virtual {v4}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->getValueAnnotatedTypeFactory()Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/checkerframework/common/value/ValueCheckerUtils;->getExactValue(Lcom/sun/source/tree/Tree;Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;)Ljava/lang/Long;

    move-result-object v3

    .line 422
    .local v3, "valRight":Ljava/lang/Long;
    if-eqz v3, :cond_0

    .line 423
    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    move-result v4

    invoke-direct {p0, v4, v2}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->getAnnotationForLiteralPlus(ILjavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v4

    return-object v4

    .line 426
    :cond_0
    invoke-direct {p0, v1, p2}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->getLowerBoundAnnotation(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v4

    .line 429
    .local v4, "rightAnno":Ljavax/lang/model/element/AnnotationMirror;
    nop

    .line 430
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/node/Node;->getTree()Lcom/sun/source/tree/Tree;

    move-result-object v5

    iget-object v6, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->aTypeFactory:Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;

    invoke-virtual {v6}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->getValueAnnotatedTypeFactory()Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/checkerframework/common/value/ValueCheckerUtils;->getExactValue(Lcom/sun/source/tree/Tree;Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;)Ljava/lang/Long;

    move-result-object v5

    .line 431
    .local v5, "valLeft":Ljava/lang/Long;
    if-eqz v5, :cond_1

    .line 432
    invoke-virtual {v5}, Ljava/lang/Long;->intValue()I

    move-result v6

    invoke-direct {p0, v6, v4}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->getAnnotationForLiteralPlus(ILjavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v6

    return-object v6

    .line 440
    :cond_1
    iget-object v6, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->aTypeFactory:Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;

    const-class v7, Lorg/checkerframework/checker/index/qual/Positive;

    invoke-virtual {v6, v2, v7}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->aTypeFactory:Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;

    const-class v7, Lorg/checkerframework/checker/index/qual/Positive;

    .line 441
    invoke-virtual {v6, v4, v7}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 442
    iget-object v6, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->POS:Ljavax/lang/model/element/AnnotationMirror;

    return-object v6

    .line 445
    :cond_2
    iget-object v6, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->aTypeFactory:Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;

    const-class v7, Lorg/checkerframework/checker/index/qual/NonNegative;

    invoke-virtual {v6, v2, v7}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 446
    return-object v4

    .line 449
    :cond_3
    iget-object v6, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->aTypeFactory:Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;

    const-class v7, Lorg/checkerframework/checker/index/qual/NonNegative;

    invoke-virtual {v6, v4, v7}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 450
    return-object v2

    .line 453
    :cond_4
    invoke-direct {p0, v2}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->isPositive(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-direct {p0, v4}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->isGTEN1(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 454
    :cond_5
    invoke-direct {p0, v2}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->isGTEN1(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-direct {p0, v4}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->isPositive(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 455
    :cond_6
    iget-object v6, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->NN:Ljavax/lang/model/element/AnnotationMirror;

    return-object v6

    .line 457
    :cond_7
    iget-object v6, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    return-object v6
.end method

.method private getAnnotationForRightShift(Lorg/checkerframework/dataflow/cfg/node/BinaryOperationNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 3
    .param p1, "node"    # Lorg/checkerframework/dataflow/cfg/node/BinaryOperationNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/BinaryOperationNode;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;)",
            "Ljavax/lang/model/element/AnnotationMirror;"
        }
    .end annotation

    .line 778
    .local p2, "p":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/BinaryOperationNode;->getLeftOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->getLowerBoundAnnotation(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 779
    .local v0, "leftAnno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/BinaryOperationNode;->getRightOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->getLowerBoundAnnotation(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 781
    .local v1, "rightAnno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-direct {p0, v0}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->isNonNegative(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 782
    invoke-direct {p0, v1}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->isNonNegative(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 783
    iget-object v2, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->NN:Ljavax/lang/model/element/AnnotationMirror;

    return-object v2

    .line 786
    :cond_0
    iget-object v2, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    return-object v2
.end method

.method private getLowerBoundAnnotation(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 2
    .param p1, "subNode"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;)",
            "Ljavax/lang/model/element/AnnotationMirror;"
        }
    .end annotation

    .line 840
    .local p2, "p":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-virtual {p2, p1}, Lorg/checkerframework/dataflow/analysis/TransferInput;->getValueOfSubNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/AbstractValue;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/flow/CFValue;

    .line 841
    .local v0, "value":Lorg/checkerframework/framework/flow/CFValue;
    invoke-direct {p0, v0}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->getLowerBoundAnnotation(Lorg/checkerframework/framework/flow/CFValue;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    return-object v1
.end method

.method private getLowerBoundAnnotation(Lorg/checkerframework/framework/flow/CFValue;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 3
    .param p1, "cfValue"    # Lorg/checkerframework/framework/flow/CFValue;

    .line 845
    iget-object v0, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->aTypeFactory:Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;

    .line 846
    invoke-virtual {v0}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v0

    .line 847
    invoke-virtual {p1}, Lorg/checkerframework/framework/flow/CFValue;->getAnnotations()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->aTypeFactory:Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;

    iget-object v2, v2, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/framework/type/QualifierHierarchy;->findAnnotationInHierarchy(Ljava/util/Collection;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 845
    return-object v0
.end method

.method private isGTEN1(Ljavax/lang/model/element/AnnotationMirror;)Z
    .locals 2
    .param p1, "anm"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 835
    iget-object v0, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->aTypeFactory:Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;

    const-class v1, Lorg/checkerframework/checker/index/qual/GTENegativeOne;

    invoke-virtual {v0, p1, v1}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->isNonNegative(Ljavax/lang/model/element/AnnotationMirror;)Z

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

.method private isNonNegative(Ljavax/lang/model/element/AnnotationMirror;)Z
    .locals 2
    .param p1, "anm"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 825
    iget-object v0, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->aTypeFactory:Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;

    const-class v1, Lorg/checkerframework/checker/index/qual/NonNegative;

    invoke-virtual {v0, p1, v1}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->isPositive(Ljavax/lang/model/element/AnnotationMirror;)Z

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

.method private isPositive(Ljavax/lang/model/element/AnnotationMirror;)Z
    .locals 2
    .param p1, "anm"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 815
    iget-object v0, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->aTypeFactory:Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;

    const-class v1, Lorg/checkerframework/checker/index/qual/Positive;

    invoke-virtual {v0, p1, v1}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method private notEqualToValue(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/flow/CFStore;)V
    .locals 8
    .param p1, "mLiteral"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p2, "otherNode"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p3, "otherAnno"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p4, "store"    # Lorg/checkerframework/framework/flow/CFStore;

    .line 198
    nop

    .line 199
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/Node;->getTree()Lcom/sun/source/tree/Tree;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->aTypeFactory:Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;

    invoke-virtual {v1}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->getValueAnnotatedTypeFactory()Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/checkerframework/common/value/ValueCheckerUtils;->getExactValue(Lcom/sun/source/tree/Tree;Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;)Ljava/lang/Long;

    move-result-object v0

    .line 201
    .local v0, "integerLiteral":Ljava/lang/Long;
    if-nez v0, :cond_0

    .line 202
    return-void

    .line 204
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 206
    .local v1, "intLiteral":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_2

    .line 207
    iget-object v3, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->aTypeFactory:Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;

    const-class v4, Lorg/checkerframework/checker/index/qual/NonNegative;

    invoke-virtual {v3, p3, v4}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 208
    invoke-virtual {p0, p2}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->splitAssignments(Lorg/checkerframework/dataflow/cfg/node/Node;)Ljava/util/List;

    move-result-object v3

    .line 209
    .local v3, "internals":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/cfg/node/Node;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 210
    .local v5, "internal":Lorg/checkerframework/dataflow/cfg/node/Node;
    iget-object v6, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->aTypeFactory:Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;

    invoke-static {v6, v5}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v6

    .line 211
    .local v6, "rec":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    iget-object v7, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->POS:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p4, v6, v7}, Lorg/checkerframework/framework/flow/CFStore;->insertValue(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 212
    .end local v5    # "internal":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local v6    # "rec":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    goto :goto_0

    .line 213
    .end local v3    # "internals":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/cfg/node/Node;>;"
    :cond_1
    goto :goto_2

    .line 214
    :cond_2
    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-nez v3, :cond_3

    .line 215
    iget-object v3, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->aTypeFactory:Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;

    const-class v4, Lorg/checkerframework/checker/index/qual/GTENegativeOne;

    invoke-virtual {v3, p3, v4}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 216
    invoke-virtual {p0, p2}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->splitAssignments(Lorg/checkerframework/dataflow/cfg/node/Node;)Ljava/util/List;

    move-result-object v3

    .line 217
    .restart local v3    # "internals":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/cfg/node/Node;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 218
    .restart local v5    # "internal":Lorg/checkerframework/dataflow/cfg/node/Node;
    iget-object v6, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->aTypeFactory:Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;

    invoke-static {v6, v5}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v6

    .line 219
    .restart local v6    # "rec":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    iget-object v7, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->NN:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p4, v6, v7}, Lorg/checkerframework/framework/flow/CFStore;->insertValue(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 220
    .end local v5    # "internal":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local v6    # "rec":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    goto :goto_1

    .line 223
    .end local v3    # "internals":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/cfg/node/Node;>;"
    :cond_3
    :goto_2
    return-void
.end method

.method private notEqualsLessThan(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/flow/CFStore;)V
    .locals 4
    .param p1, "leftNode"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p2, "leftAnno"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p3, "otherNode"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p4, "otherAnno"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p5, "store"    # Lorg/checkerframework/framework/flow/CFStore;

    .line 267
    invoke-direct {p0, p2}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->isNonNegative(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p4}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->isNonNegative(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 270
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->aTypeFactory:Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;

    invoke-static {v0, p3}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v0

    .line 271
    .local v0, "otherRec":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    iget-object v1, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->aTypeFactory:Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;

    .line 272
    invoke-virtual {v1}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->getLessThanAnnotatedTypeFactory()Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;

    move-result-object v1

    .line 273
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/Node;->getTree()Lcom/sun/source/tree/Tree;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;->isLessThanOrEqual(Lcom/sun/source/tree/Tree;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 274
    iget-object v1, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->POS:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p5, v0, v1}, Lorg/checkerframework/framework/flow/CFStore;->insertValue(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 276
    :cond_1
    return-void

    .line 268
    .end local v0    # "otherRec":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic addInformationFromPreconditions(Lorg/checkerframework/framework/flow/CFAbstractStore;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;Lcom/sun/source/tree/MethodTree;Ljavax/lang/model/element/ExecutableElement;)V
    .locals 6

    .line 163
    move-object v1, p1

    check-cast v1, Lorg/checkerframework/framework/flow/CFStore;

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->addInformationFromPreconditions(Lorg/checkerframework/framework/flow/CFStore;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;Lcom/sun/source/tree/MethodTree;Ljavax/lang/model/element/ExecutableElement;)V

    return-void
.end method

.method protected addInformationFromPreconditions(Lorg/checkerframework/framework/flow/CFStore;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;Lcom/sun/source/tree/MethodTree;Ljavax/lang/model/element/ExecutableElement;)V
    .locals 5
    .param p1, "info"    # Lorg/checkerframework/framework/flow/CFStore;
    .param p2, "factory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .param p3, "method"    # Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;
    .param p4, "methodTree"    # Lcom/sun/source/tree/MethodTree;
    .param p5, "methodElement"    # Ljavax/lang/model/element/ExecutableElement;

    .line 713
    invoke-super/range {p0 .. p5}, Lorg/checkerframework/checker/index/IndexAbstractTransfer;->addInformationFromPreconditions(Lorg/checkerframework/framework/flow/CFAbstractStore;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;Lcom/sun/source/tree/MethodTree;Ljavax/lang/model/element/ExecutableElement;)V

    .line 715
    invoke-interface {p4}, Lcom/sun/source/tree/MethodTree;->getParameters()Ljava/util/List;

    move-result-object v0

    .line 717
    .local v0, "paramTrees":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/VariableTree;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/source/tree/VariableTree;

    .line 718
    .local v2, "variableTree":Lcom/sun/source/tree/VariableTree;
    invoke-static {v2}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v3

    invoke-interface {v3}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v3

    sget-object v4, Ljavax/lang/model/type/TypeKind;->CHAR:Ljavax/lang/model/type/TypeKind;

    if-ne v3, v4, :cond_0

    .line 720
    const/4 v3, 0x0

    .line 722
    .local v3, "rec":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    :try_start_0
    iget-object v4, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->aTypeFactory:Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;

    .line 723
    invoke-static {v4, v2}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil;->internalReprOfVariable(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lcom/sun/source/tree/VariableTree;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v4
    :try_end_0
    .catch Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    .line 727
    goto :goto_1

    .line 725
    :catch_0
    move-exception v4

    .line 729
    :goto_1
    if-eqz v3, :cond_0

    .line 730
    iget-object v4, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->aTypeFactory:Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;

    iget-object v4, v4, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->NN:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p1, v3, v4}, Lorg/checkerframework/framework/flow/CFStore;->insertValue(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 733
    .end local v2    # "variableTree":Lcom/sun/source/tree/VariableTree;
    .end local v3    # "rec":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    :cond_0
    goto :goto_0

    .line 734
    :cond_1
    return-void
.end method

.method public getAnnotationForRemainder(Lorg/checkerframework/dataflow/cfg/node/IntegerRemainderNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 3
    .param p1, "node"    # Lorg/checkerframework/dataflow/cfg/node/IntegerRemainderNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/IntegerRemainderNode;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;)",
            "Ljavax/lang/model/element/AnnotationMirror;"
        }
    .end annotation

    .line 749
    .local p2, "p":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/IntegerRemainderNode;->getLeftOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->getLowerBoundAnnotation(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 752
    .local v0, "leftAnno":Ljavax/lang/model/element/AnnotationMirror;
    nop

    .line 754
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/IntegerRemainderNode;->getRightOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/dataflow/cfg/node/Node;->getTree()Lcom/sun/source/tree/Tree;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->aTypeFactory:Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;

    .line 755
    invoke-virtual {v2}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->getValueAnnotatedTypeFactory()Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    move-result-object v2

    .line 753
    invoke-static {v1, v2}, Lorg/checkerframework/common/value/ValueCheckerUtils;->getExactValue(Lcom/sun/source/tree/Tree;Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;)Ljava/lang/Long;

    move-result-object v1

    .line 756
    .local v1, "valRight":Ljava/lang/Long;
    if-eqz v1, :cond_0

    .line 757
    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->addAnnotationForLiteralRemainder(I)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    return-object v2

    .line 764
    :cond_0
    invoke-direct {p0, v0}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->isNonNegative(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 765
    iget-object v2, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->NN:Ljavax/lang/model/element/AnnotationMirror;

    return-object v2

    .line 767
    :cond_1
    invoke-direct {p0, v0}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->isGTEN1(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 768
    iget-object v2, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->GTEN1:Ljavax/lang/model/element/AnnotationMirror;

    return-object v2

    .line 772
    :cond_2
    iget-object v2, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    return-object v2
.end method

.method protected refineGT(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/flow/CFStore;Lorg/checkerframework/dataflow/analysis/TransferInput;)V
    .locals 2
    .param p1, "left"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p2, "leftAnno"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p3, "right"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p4, "rightAnno"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p5, "store"    # Lorg/checkerframework/framework/flow/CFStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "Ljavax/lang/model/element/AnnotationMirror;",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "Ljavax/lang/model/element/AnnotationMirror;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;)V"
        }
    .end annotation

    .line 296
    .local p6, "in":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    if-eqz p4, :cond_4

    if-nez p2, :cond_0

    goto :goto_0

    .line 300
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->aTypeFactory:Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;

    invoke-static {v0, p1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v0

    .line 302
    .local v0, "leftRec":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    iget-object v1, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->GTEN1:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {p4, v1}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSame(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 303
    iget-object v1, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->NN:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p5, v0, v1}, Lorg/checkerframework/framework/flow/CFStore;->insertValue(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 304
    return-void

    .line 306
    :cond_1
    iget-object v1, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->NN:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {p4, v1}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSame(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 307
    iget-object v1, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->POS:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p5, v0, v1}, Lorg/checkerframework/framework/flow/CFStore;->insertValue(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 308
    return-void

    .line 310
    :cond_2
    iget-object v1, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->POS:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {p4, v1}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSame(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 311
    iget-object v1, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->POS:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p5, v0, v1}, Lorg/checkerframework/framework/flow/CFStore;->insertValue(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 312
    return-void

    .line 314
    :cond_3
    return-void

    .line 297
    .end local v0    # "leftRec":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    :cond_4
    :goto_0
    return-void
.end method

.method protected refineGTE(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/flow/CFStore;Lorg/checkerframework/dataflow/analysis/TransferInput;)V
    .locals 2
    .param p1, "left"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p2, "leftAnno"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p3, "right"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p4, "rightAnno"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p5, "store"    # Lorg/checkerframework/framework/flow/CFStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "Ljavax/lang/model/element/AnnotationMirror;",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "Ljavax/lang/model/element/AnnotationMirror;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;)V"
        }
    .end annotation

    .line 333
    .local p6, "in":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    if-eqz p4, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 337
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->aTypeFactory:Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;

    invoke-static {v0, p1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v0

    .line 339
    .local v0, "leftRec":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    iget-object v1, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->aTypeFactory:Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;

    .line 340
    invoke-virtual {v1}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v1

    invoke-virtual {v1, p4, p2}, Lorg/checkerframework/framework/type/QualifierHierarchy;->greatestLowerBound(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 342
    .local v1, "newLBType":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {p5, v0, v1}, Lorg/checkerframework/framework/flow/CFStore;->insertValue(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 343
    return-void

    .line 334
    .end local v0    # "leftRec":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .end local v1    # "newLBType":Ljavax/lang/model/element/AnnotationMirror;
    :cond_1
    :goto_0
    return-void
.end method

.method protected bridge synthetic strengthenAnnotationOfEqualTo(Lorg/checkerframework/dataflow/analysis/TransferResult;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/framework/flow/CFAbstractValue;Lorg/checkerframework/framework/flow/CFAbstractValue;Z)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 7

    .line 163
    move-object v4, p4

    check-cast v4, Lorg/checkerframework/framework/flow/CFValue;

    move-object v5, p5

    check-cast v5, Lorg/checkerframework/framework/flow/CFValue;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->strengthenAnnotationOfEqualTo(Lorg/checkerframework/dataflow/analysis/TransferResult;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFValue;Z)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method protected strengthenAnnotationOfEqualTo(Lorg/checkerframework/dataflow/analysis/TransferResult;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFValue;Z)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 8
    .param p2, "firstNode"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p3, "secondNode"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p4, "firstValue"    # Lorg/checkerframework/framework/flow/CFValue;
    .param p5, "secondValue"    # Lorg/checkerframework/framework/flow/CFValue;
    .param p6, "notEqualTo"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Z)",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;"
        }
    .end annotation

    .line 237
    .local p1, "result":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    nop

    .line 238
    invoke-super/range {p0 .. p6}, Lorg/checkerframework/checker/index/IndexAbstractTransfer;->strengthenAnnotationOfEqualTo(Lorg/checkerframework/dataflow/analysis/TransferResult;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/framework/flow/CFAbstractValue;Lorg/checkerframework/framework/flow/CFAbstractValue;Z)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    .line 241
    new-instance v0, Lorg/checkerframework/checker/index/IndexRefinementInfo;

    iget-object v1, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    invoke-direct {v0, p1, v1, p3, p2}, Lorg/checkerframework/checker/index/IndexRefinementInfo;-><init>(Lorg/checkerframework/dataflow/analysis/TransferResult;Lorg/checkerframework/framework/flow/CFAbstractAnalysis;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .line 242
    .local v0, "rfi":Lorg/checkerframework/checker/index/IndexRefinementInfo;
    iget-object v1, v0, Lorg/checkerframework/checker/index/IndexRefinementInfo;->leftAnno:Ljavax/lang/model/element/AnnotationMirror;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lorg/checkerframework/checker/index/IndexRefinementInfo;->rightAnno:Ljavax/lang/model/element/AnnotationMirror;

    if-nez v1, :cond_0

    goto :goto_1

    .line 250
    :cond_0
    if-eqz p6, :cond_1

    iget-object v1, v0, Lorg/checkerframework/checker/index/IndexRefinementInfo;->thenStore:Lorg/checkerframework/framework/flow/CFStore;

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lorg/checkerframework/checker/index/IndexRefinementInfo;->elseStore:Lorg/checkerframework/framework/flow/CFStore;

    .line 251
    .local v1, "notEqualsStore":Lorg/checkerframework/framework/flow/CFStore;
    :goto_0
    iget-object v2, v0, Lorg/checkerframework/checker/index/IndexRefinementInfo;->left:Lorg/checkerframework/dataflow/cfg/node/Node;

    iget-object v3, v0, Lorg/checkerframework/checker/index/IndexRefinementInfo;->right:Lorg/checkerframework/dataflow/cfg/node/Node;

    iget-object v4, v0, Lorg/checkerframework/checker/index/IndexRefinementInfo;->rightAnno:Ljavax/lang/model/element/AnnotationMirror;

    invoke-direct {p0, v2, v3, v4, v1}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->notEqualToValue(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/flow/CFStore;)V

    .line 252
    iget-object v2, v0, Lorg/checkerframework/checker/index/IndexRefinementInfo;->right:Lorg/checkerframework/dataflow/cfg/node/Node;

    iget-object v3, v0, Lorg/checkerframework/checker/index/IndexRefinementInfo;->left:Lorg/checkerframework/dataflow/cfg/node/Node;

    iget-object v4, v0, Lorg/checkerframework/checker/index/IndexRefinementInfo;->leftAnno:Ljavax/lang/model/element/AnnotationMirror;

    invoke-direct {p0, v2, v3, v4, v1}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->notEqualToValue(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/flow/CFStore;)V

    .line 254
    iget-object v3, v0, Lorg/checkerframework/checker/index/IndexRefinementInfo;->left:Lorg/checkerframework/dataflow/cfg/node/Node;

    iget-object v4, v0, Lorg/checkerframework/checker/index/IndexRefinementInfo;->leftAnno:Ljavax/lang/model/element/AnnotationMirror;

    iget-object v5, v0, Lorg/checkerframework/checker/index/IndexRefinementInfo;->right:Lorg/checkerframework/dataflow/cfg/node/Node;

    iget-object v6, v0, Lorg/checkerframework/checker/index/IndexRefinementInfo;->rightAnno:Ljavax/lang/model/element/AnnotationMirror;

    move-object v2, p0

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->notEqualsLessThan(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/flow/CFStore;)V

    .line 255
    iget-object v3, v0, Lorg/checkerframework/checker/index/IndexRefinementInfo;->right:Lorg/checkerframework/dataflow/cfg/node/Node;

    iget-object v4, v0, Lorg/checkerframework/checker/index/IndexRefinementInfo;->rightAnno:Ljavax/lang/model/element/AnnotationMirror;

    iget-object v5, v0, Lorg/checkerframework/checker/index/IndexRefinementInfo;->left:Lorg/checkerframework/dataflow/cfg/node/Node;

    iget-object v6, v0, Lorg/checkerframework/checker/index/IndexRefinementInfo;->leftAnno:Ljavax/lang/model/element/AnnotationMirror;

    invoke-direct/range {v2 .. v7}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->notEqualsLessThan(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/flow/CFStore;)V

    .line 257
    iget-object v2, v0, Lorg/checkerframework/checker/index/IndexRefinementInfo;->newResult:Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult;

    return-object v2

    .line 243
    .end local v1    # "notEqualsStore":Lorg/checkerframework/framework/flow/CFStore;
    :cond_2
    :goto_1
    return-object p1
.end method

.method public bridge synthetic visitBitwiseAnd(Lorg/checkerframework/dataflow/cfg/node/BitwiseAndNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 163
    check-cast p2, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->visitBitwiseAnd(Lorg/checkerframework/dataflow/cfg/node/BitwiseAndNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method public visitBitwiseAnd(Lorg/checkerframework/dataflow/cfg/node/BitwiseAndNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 3
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/BitwiseAndNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/BitwiseAndNode;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;)",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;"
        }
    .end annotation

    .line 909
    .local p2, "p":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/checker/index/IndexAbstractTransfer;->visitBitwiseAnd(Lorg/checkerframework/dataflow/cfg/node/BitwiseAndNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/analysis/TransferResult;

    .line 910
    .local v0, "transferResult":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->getAnnotationForAnd(Lorg/checkerframework/dataflow/cfg/node/BitwiseAndNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 911
    .local v1, "resultAnno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-direct {p0, v0, v1}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->createNewResult(Lorg/checkerframework/dataflow/analysis/TransferResult;Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic visitIntegerDivision(Lorg/checkerframework/dataflow/cfg/node/IntegerDivisionNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 163
    check-cast p2, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->visitIntegerDivision(Lorg/checkerframework/dataflow/cfg/node/IntegerDivisionNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method public visitIntegerDivision(Lorg/checkerframework/dataflow/cfg/node/IntegerDivisionNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 3
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/IntegerDivisionNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/IntegerDivisionNode;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;)",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;"
        }
    .end annotation

    .line 877
    .local p2, "p":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/checker/index/IndexAbstractTransfer;->visitIntegerDivision(Lorg/checkerframework/dataflow/cfg/node/IntegerDivisionNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/analysis/TransferResult;

    .line 878
    .local v0, "result":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->getAnnotationForDivide(Lorg/checkerframework/dataflow/cfg/node/IntegerDivisionNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 879
    .local v1, "newAnno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-direct {p0, v0, v1}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->createNewResult(Lorg/checkerframework/dataflow/analysis/TransferResult;Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic visitIntegerRemainder(Lorg/checkerframework/dataflow/cfg/node/IntegerRemainderNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 163
    check-cast p2, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->visitIntegerRemainder(Lorg/checkerframework/dataflow/cfg/node/IntegerRemainderNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method public visitIntegerRemainder(Lorg/checkerframework/dataflow/cfg/node/IntegerRemainderNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 3
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/IntegerRemainderNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/IntegerRemainderNode;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;)",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;"
        }
    .end annotation

    .line 885
    .local p2, "p":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/checker/index/IndexAbstractTransfer;->visitIntegerRemainder(Lorg/checkerframework/dataflow/cfg/node/IntegerRemainderNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/analysis/TransferResult;

    .line 886
    .local v0, "transferResult":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->getAnnotationForRemainder(Lorg/checkerframework/dataflow/cfg/node/IntegerRemainderNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 887
    .local v1, "resultAnno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-direct {p0, v0, v1}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->createNewResult(Lorg/checkerframework/dataflow/analysis/TransferResult;Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic visitNumericalAddition(Lorg/checkerframework/dataflow/cfg/node/NumericalAdditionNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 163
    check-cast p2, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->visitNumericalAddition(Lorg/checkerframework/dataflow/cfg/node/NumericalAdditionNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method public visitNumericalAddition(Lorg/checkerframework/dataflow/cfg/node/NumericalAdditionNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 3
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/NumericalAdditionNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/NumericalAdditionNode;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;)",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;"
        }
    .end annotation

    .line 853
    .local p2, "p":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/checker/index/IndexAbstractTransfer;->visitNumericalAddition(Lorg/checkerframework/dataflow/cfg/node/NumericalAdditionNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/analysis/TransferResult;

    .line 854
    .local v0, "result":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->getAnnotationForPlus(Lorg/checkerframework/dataflow/cfg/node/BinaryOperationNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 855
    .local v1, "newAnno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-direct {p0, v0, v1}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->createNewResult(Lorg/checkerframework/dataflow/analysis/TransferResult;Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic visitNumericalMultiplication(Lorg/checkerframework/dataflow/cfg/node/NumericalMultiplicationNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 163
    check-cast p2, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->visitNumericalMultiplication(Lorg/checkerframework/dataflow/cfg/node/NumericalMultiplicationNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method public visitNumericalMultiplication(Lorg/checkerframework/dataflow/cfg/node/NumericalMultiplicationNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 3
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/NumericalMultiplicationNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/NumericalMultiplicationNode;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;)",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;"
        }
    .end annotation

    .line 869
    .local p2, "p":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/checker/index/IndexAbstractTransfer;->visitNumericalMultiplication(Lorg/checkerframework/dataflow/cfg/node/NumericalMultiplicationNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/analysis/TransferResult;

    .line 870
    .local v0, "result":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->getAnnotationForMultiply(Lorg/checkerframework/dataflow/cfg/node/NumericalMultiplicationNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 871
    .local v1, "newAnno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-direct {p0, v0, v1}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->createNewResult(Lorg/checkerframework/dataflow/analysis/TransferResult;Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic visitNumericalSubtraction(Lorg/checkerframework/dataflow/cfg/node/NumericalSubtractionNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 163
    check-cast p2, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->visitNumericalSubtraction(Lorg/checkerframework/dataflow/cfg/node/NumericalSubtractionNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method public visitNumericalSubtraction(Lorg/checkerframework/dataflow/cfg/node/NumericalSubtractionNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 3
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/NumericalSubtractionNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/NumericalSubtractionNode;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;)",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;"
        }
    .end annotation

    .line 861
    .local p2, "p":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/checker/index/IndexAbstractTransfer;->visitNumericalSubtraction(Lorg/checkerframework/dataflow/cfg/node/NumericalSubtractionNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/analysis/TransferResult;

    .line 862
    .local v0, "result":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->getAnnotationForMinus(Lorg/checkerframework/dataflow/cfg/node/BinaryOperationNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 863
    .local v1, "newAnno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-direct {p0, v0, v1}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->createNewResult(Lorg/checkerframework/dataflow/analysis/TransferResult;Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic visitSignedRightShift(Lorg/checkerframework/dataflow/cfg/node/SignedRightShiftNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 163
    check-cast p2, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->visitSignedRightShift(Lorg/checkerframework/dataflow/cfg/node/SignedRightShiftNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method public visitSignedRightShift(Lorg/checkerframework/dataflow/cfg/node/SignedRightShiftNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 3
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/SignedRightShiftNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/SignedRightShiftNode;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;)",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;"
        }
    .end annotation

    .line 893
    .local p2, "p":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/checker/index/IndexAbstractTransfer;->visitSignedRightShift(Lorg/checkerframework/dataflow/cfg/node/SignedRightShiftNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/analysis/TransferResult;

    .line 894
    .local v0, "transferResult":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->getAnnotationForRightShift(Lorg/checkerframework/dataflow/cfg/node/BinaryOperationNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 895
    .local v1, "resultAnno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-direct {p0, v0, v1}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->createNewResult(Lorg/checkerframework/dataflow/analysis/TransferResult;Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic visitUnsignedRightShift(Lorg/checkerframework/dataflow/cfg/node/UnsignedRightShiftNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 163
    check-cast p2, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->visitUnsignedRightShift(Lorg/checkerframework/dataflow/cfg/node/UnsignedRightShiftNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method public visitUnsignedRightShift(Lorg/checkerframework/dataflow/cfg/node/UnsignedRightShiftNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 3
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/UnsignedRightShiftNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/UnsignedRightShiftNode;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;)",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;"
        }
    .end annotation

    .line 901
    .local p2, "p":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/checker/index/IndexAbstractTransfer;->visitUnsignedRightShift(Lorg/checkerframework/dataflow/cfg/node/UnsignedRightShiftNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/analysis/TransferResult;

    .line 902
    .local v0, "transferResult":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->getAnnotationForRightShift(Lorg/checkerframework/dataflow/cfg/node/BinaryOperationNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 903
    .local v1, "resultAnno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-direct {p0, v0, v1}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundTransfer;->createNewResult(Lorg/checkerframework/dataflow/analysis/TransferResult;Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object v2

    return-object v2
.end method
