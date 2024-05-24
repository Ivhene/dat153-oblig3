.class public Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;
.super Lorg/checkerframework/checker/index/IndexAbstractTransfer;
.source "UpperBoundTransfer.java"


# instance fields
.field private atypeFactory:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;


# direct methods
.method public constructor <init>(Lorg/checkerframework/framework/flow/CFAnalysis;)V
    .locals 1
    .param p1, "analysis"    # Lorg/checkerframework/framework/flow/CFAnalysis;

    .line 110
    invoke-direct {p0, p1}, Lorg/checkerframework/checker/index/IndexAbstractTransfer;-><init>(Lorg/checkerframework/framework/flow/CFAnalysis;)V

    .line 111
    invoke-virtual {p1}, Lorg/checkerframework/framework/flow/CFAnalysis;->getTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    iput-object v0, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->atypeFactory:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    .line 112
    return-void
.end method

.method private createTransferResult(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;Lorg/checkerframework/checker/index/upperbound/UBQualifier;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 6
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p3, "qualifier"    # Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;",
            "Lorg/checkerframework/checker/index/upperbound/UBQualifier;",
            ")",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;"
        }
    .end annotation

    .line 821
    .local p2, "in":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    iget-object v0, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->atypeFactory:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    invoke-virtual {v0, p3}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->convertUBQualifierToAnnotation(Lorg/checkerframework/checker/index/upperbound/UBQualifier;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 822
    .local v0, "newAnno":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v1, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/Node;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->createSingleAnnotationValue(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/flow/CFValue;

    .line 823
    .local v1, "value":Lorg/checkerframework/framework/flow/CFValue;
    invoke-virtual {p2}, Lorg/checkerframework/dataflow/analysis/TransferInput;->containsTwoStores()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 824
    invoke-virtual {p2}, Lorg/checkerframework/dataflow/analysis/TransferInput;->getThenStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/flow/CFStore;

    .line 825
    .local v2, "thenStore":Lorg/checkerframework/framework/flow/CFStore;
    invoke-virtual {p2}, Lorg/checkerframework/dataflow/analysis/TransferInput;->getElseStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/framework/flow/CFStore;

    .line 826
    .local v3, "elseStore":Lorg/checkerframework/framework/flow/CFStore;
    new-instance v4, Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult;

    .line 827
    invoke-virtual {p0, v1, v2, v3}, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->finishValue(Lorg/checkerframework/framework/flow/CFAbstractValue;Lorg/checkerframework/framework/flow/CFAbstractStore;Lorg/checkerframework/framework/flow/CFAbstractStore;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/framework/flow/CFValue;

    invoke-direct {v4, v5, v2, v3}, Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult;-><init>(Lorg/checkerframework/dataflow/analysis/AbstractValue;Lorg/checkerframework/dataflow/analysis/Store;Lorg/checkerframework/dataflow/analysis/Store;)V

    .line 826
    return-object v4

    .line 829
    .end local v2    # "thenStore":Lorg/checkerframework/framework/flow/CFStore;
    .end local v3    # "elseStore":Lorg/checkerframework/framework/flow/CFStore;
    :cond_0
    invoke-virtual {p2}, Lorg/checkerframework/dataflow/analysis/TransferInput;->getRegularStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/flow/CFStore;

    .line 830
    .local v2, "info":Lorg/checkerframework/framework/flow/CFStore;
    new-instance v3, Lorg/checkerframework/dataflow/analysis/RegularTransferResult;

    invoke-virtual {p0, v1, v2}, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->finishValue(Lorg/checkerframework/framework/flow/CFAbstractValue;Lorg/checkerframework/framework/flow/CFAbstractStore;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/flow/CFValue;

    invoke-direct {v3, v4, v2}, Lorg/checkerframework/dataflow/analysis/RegularTransferResult;-><init>(Lorg/checkerframework/dataflow/analysis/AbstractValue;Lorg/checkerframework/dataflow/analysis/Store;)V

    return-object v3
.end method

.method private getUBQualifier(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    .locals 6
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;)",
            "Lorg/checkerframework/checker/index/upperbound/UBQualifier;"
        }
    .end annotation

    .line 785
    .local p2, "in":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    iget-object v0, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    invoke-virtual {v0}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v0

    .line 786
    .local v0, "hierarchy":Lorg/checkerframework/framework/type/QualifierHierarchy;
    iget-object v1, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->atypeFactory:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    invoke-static {v1, p1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v1

    .line 787
    .local v1, "rec":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    const/4 v2, 0x0

    .line 788
    .local v2, "value":Lorg/checkerframework/framework/flow/CFValue;
    invoke-static {v1}, Lorg/checkerframework/framework/flow/CFAbstractStore;->canInsertReceiver(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 789
    invoke-virtual {p2}, Lorg/checkerframework/dataflow/analysis/TransferInput;->getRegularStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/framework/flow/CFStore;

    invoke-virtual {v3, v1}, Lorg/checkerframework/framework/flow/CFStore;->getValue(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Lorg/checkerframework/framework/flow/CFValue;

    .line 791
    :cond_0
    if-nez v2, :cond_1

    .line 792
    iget-object v3, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    invoke-virtual {v3, p1}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getValue(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/AbstractValue;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Lorg/checkerframework/framework/flow/CFValue;

    .line 794
    :cond_1
    invoke-direct {p0, v0, v2}, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->getUBQualifier(Lorg/checkerframework/framework/type/QualifierHierarchy;Lorg/checkerframework/framework/flow/CFValue;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v3

    .line 795
    .local v3, "qualifier":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    invoke-virtual {v3}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->isUnknown()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 801
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/Node;->getTree()Lcom/sun/source/tree/Tree;

    move-result-object v4

    invoke-virtual {p0, v4, p1}, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->getValueFromFactory(Lcom/sun/source/tree/Tree;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/flow/CFValue;

    .line 802
    .local v4, "valueFromFactory":Lorg/checkerframework/framework/flow/CFValue;
    invoke-direct {p0, v0, v4}, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->getUBQualifier(Lorg/checkerframework/framework/type/QualifierHierarchy;Lorg/checkerframework/framework/flow/CFValue;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v5

    return-object v5

    .line 804
    .end local v4    # "valueFromFactory":Lorg/checkerframework/framework/flow/CFValue;
    :cond_2
    return-object v3
.end method

.method private getUBQualifier(Lorg/checkerframework/framework/type/QualifierHierarchy;Lorg/checkerframework/framework/flow/CFValue;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    .locals 3
    .param p1, "hierarchy"    # Lorg/checkerframework/framework/type/QualifierHierarchy;
    .param p2, "value"    # Lorg/checkerframework/framework/flow/CFValue;

    .line 808
    if-nez p2, :cond_0

    .line 809
    sget-object v0, Lorg/checkerframework/checker/index/upperbound/UBQualifier$UpperBoundUnknownQualifier;->UNKNOWN:Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    return-object v0

    .line 811
    :cond_0
    invoke-virtual {p2}, Lorg/checkerframework/framework/flow/CFValue;->getAnnotations()Ljava/util/Set;

    move-result-object v0

    .line 812
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    iget-object v1, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->atypeFactory:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    iget-object v1, v1, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p1, v0, v1}, Lorg/checkerframework/framework/type/QualifierHierarchy;->findAnnotationInHierarchy(Ljava/util/Collection;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 813
    .local v1, "anno":Ljavax/lang/model/element/AnnotationMirror;
    if-nez v1, :cond_1

    .line 814
    sget-object v2, Lorg/checkerframework/checker/index/upperbound/UBQualifier$UpperBoundUnknownQualifier;->UNKNOWN:Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    return-object v2

    .line 816
    :cond_1
    invoke-static {v1}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->createUBQualifier(Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v2

    return-object v2
.end method

.method private getUBQualifierForAddition(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    .locals 6
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;)",
            "Lorg/checkerframework/checker/index/upperbound/UBQualifier;"
        }
    .end annotation

    .line 753
    .local p2, "in":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->getUBQualifier(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v0

    .line 754
    .local v0, "ubQualifier":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/Node;->getTree()Lcom/sun/source/tree/Tree;

    move-result-object v1

    .line 756
    .local v1, "nodeTree":Lcom/sun/source/tree/Tree;
    iget-object v2, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->atypeFactory:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    .line 757
    invoke-virtual {v2}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->getSubstringIndexAnnotatedTypeFactory()Lorg/checkerframework/checker/index/substringindex/SubstringIndexAnnotatedTypeFactory;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/checkerframework/checker/index/substringindex/SubstringIndexAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    .line 758
    .local v2, "substringIndexType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    const-class v3, Lorg/checkerframework/checker/index/qual/SubstringIndexFor;

    .line 759
    invoke-virtual {v2, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotation(Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    .line 761
    .local v3, "substringIndexAnno":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v4, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->atypeFactory:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    .line 762
    invoke-virtual {v4}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->getLowerBoundAnnotatedTypeFactory()Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v4

    .line 765
    .local v4, "lowerBoundType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    if-eqz v3, :cond_1

    const-class v5, Lorg/checkerframework/checker/index/qual/NonNegative;

    .line 766
    invoke-virtual {v4, v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_0

    const-class v5, Lorg/checkerframework/checker/index/qual/Positive;

    .line 767
    invoke-virtual {v4, v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 768
    :cond_0
    invoke-static {v3}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->createUBQualifier(Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v5

    .line 769
    .local v5, "substringIndexQualifier":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    invoke-virtual {v0, v5}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->glb(Lorg/checkerframework/checker/index/upperbound/UBQualifier;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v0

    .line 771
    .end local v5    # "substringIndexQualifier":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    :cond_1
    return-object v0
.end method

.method private propagateToAdditionOperand(Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;Lorg/checkerframework/framework/flow/CFStore;)V
    .locals 4
    .param p1, "typeOfAddition"    # Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;
    .param p2, "operand"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p3, "other"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p5, "store"    # Lorg/checkerframework/framework/flow/CFStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ")V"
        }
    .end annotation

    .line 263
    .local p4, "in":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-direct {p0, p2, p4}, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->getUBQualifier(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v0

    .line 264
    .local v0, "operandQual":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    iget-object v1, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->atypeFactory:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    invoke-virtual {p1, p3, v1}, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;->plusOffset(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->glb(Lorg/checkerframework/checker/index/upperbound/UBQualifier;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v1

    .line 267
    .local v1, "newQual":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    iget-object v2, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->atypeFactory:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    const-class v3, Lorg/checkerframework/checker/index/qual/Positive;

    invoke-virtual {v2, p3, v3}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->hasLowerBoundTypeByClass(Lorg/checkerframework/dataflow/cfg/node/Node;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 268
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;->plusOffset(I)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->glb(Lorg/checkerframework/checker/index/upperbound/UBQualifier;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v1

    goto :goto_0

    .line 269
    :cond_0
    iget-object v2, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->atypeFactory:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    const-class v3, Lorg/checkerframework/checker/index/qual/NonNegative;

    invoke-virtual {v2, p3, v3}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->hasLowerBoundTypeByClass(Lorg/checkerframework/dataflow/cfg/node/Node;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 270
    invoke-virtual {v1, p1}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->glb(Lorg/checkerframework/checker/index/upperbound/UBQualifier;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v1

    .line 272
    :cond_1
    :goto_0
    iget-object v2, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->atypeFactory:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    invoke-static {v2, p2}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v2

    .line 273
    .local v2, "operandRec":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    iget-object v3, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->atypeFactory:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    invoke-virtual {v3, v1}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->convertUBQualifierToAnnotation(Lorg/checkerframework/checker/index/upperbound/UBQualifier;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    invoke-virtual {p5, v2, v3}, Lorg/checkerframework/framework/flow/CFStore;->insertValue(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 274
    return-void
.end method

.method private propagateToMultiplicationOperand(Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;Lorg/checkerframework/framework/flow/CFStore;)V
    .locals 5
    .param p1, "typeOfMultiplication"    # Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;
    .param p2, "node"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p3, "other"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p5, "store"    # Lorg/checkerframework/framework/flow/CFStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ")V"
        }
    .end annotation

    .line 203
    .local p4, "in":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    iget-object v0, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->atypeFactory:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    const-class v1, Lorg/checkerframework/checker/index/qual/Positive;

    invoke-virtual {v0, p3, v1}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->hasLowerBoundTypeByClass(Lorg/checkerframework/dataflow/cfg/node/Node;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    nop

    .line 206
    invoke-virtual {p3}, Lorg/checkerframework/dataflow/cfg/node/Node;->getTree()Lcom/sun/source/tree/Tree;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->atypeFactory:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    invoke-virtual {v1}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->getValueAnnotatedTypeFactory()Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    move-result-object v1

    .line 205
    invoke-static {v0, v1}, Lorg/checkerframework/common/value/ValueCheckerUtils;->getMinValue(Lcom/sun/source/tree/Tree;Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;)Ljava/lang/Long;

    move-result-object v0

    .line 207
    .local v0, "minValue":Ljava/lang/Long;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 208
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;->plusOffset(I)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v1

    move-object p1, v1

    check-cast p1, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;

    .line 210
    :cond_0
    invoke-direct {p0, p2, p4}, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->getUBQualifier(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v1

    .line 211
    .local v1, "qual":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    invoke-virtual {v1, p1}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->glb(Lorg/checkerframework/checker/index/upperbound/UBQualifier;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v2

    .line 212
    .local v2, "newQual":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    iget-object v3, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->atypeFactory:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    invoke-static {v3, p2}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v3

    .line 213
    .local v3, "rec":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    iget-object v4, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->atypeFactory:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    invoke-virtual {v4, v2}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->convertUBQualifierToAnnotation(Lorg/checkerframework/checker/index/upperbound/UBQualifier;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v4

    invoke-virtual {p5, v3, v4}, Lorg/checkerframework/framework/flow/CFStore;->insertValue(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 215
    .end local v0    # "minValue":Ljava/lang/Long;
    .end local v1    # "qual":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    .end local v2    # "newQual":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    .end local v3    # "rec":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    :cond_1
    return-void
.end method

.method private propagateToOperands(Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;Lorg/checkerframework/framework/flow/CFStore;)V
    .locals 8
    .param p1, "typeOfNode"    # Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;
    .param p2, "node"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p4, "store"    # Lorg/checkerframework/framework/flow/CFStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ")V"
        }
    .end annotation

    .line 173
    .local p3, "in":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    instance-of v0, p2, Lorg/checkerframework/dataflow/cfg/node/NumericalAdditionNode;

    if-eqz v0, :cond_0

    .line 174
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/dataflow/cfg/node/NumericalAdditionNode;

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/node/NumericalAdditionNode;->getRightOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v0

    .line 175
    .local v0, "right":Lorg/checkerframework/dataflow/cfg/node/Node;
    move-object v1, p2

    check-cast v1, Lorg/checkerframework/dataflow/cfg/node/NumericalAdditionNode;

    invoke-virtual {v1}, Lorg/checkerframework/dataflow/cfg/node/NumericalAdditionNode;->getLeftOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v7

    .line 176
    .local v7, "left":Lorg/checkerframework/dataflow/cfg/node/Node;
    move-object v1, p0

    move-object v2, p1

    move-object v3, v7

    move-object v4, v0

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->propagateToAdditionOperand(Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;Lorg/checkerframework/framework/flow/CFStore;)V

    .line 177
    move-object v3, v0

    move-object v4, v7

    invoke-direct/range {v1 .. v6}, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->propagateToAdditionOperand(Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;Lorg/checkerframework/framework/flow/CFStore;)V

    .line 178
    .end local v0    # "right":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local v7    # "left":Lorg/checkerframework/dataflow/cfg/node/Node;
    goto :goto_0

    :cond_0
    instance-of v0, p2, Lorg/checkerframework/dataflow/cfg/node/NumericalSubtractionNode;

    if-eqz v0, :cond_1

    .line 179
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/dataflow/cfg/node/NumericalSubtractionNode;

    invoke-direct {p0, p1, v0, p3, p4}, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->propagateToSubtractionOperands(Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;Lorg/checkerframework/dataflow/cfg/node/NumericalSubtractionNode;Lorg/checkerframework/dataflow/analysis/TransferInput;Lorg/checkerframework/framework/flow/CFStore;)V

    goto :goto_0

    .line 180
    :cond_1
    instance-of v0, p2, Lorg/checkerframework/dataflow/cfg/node/NumericalMultiplicationNode;

    if-eqz v0, :cond_2

    .line 181
    iget-object v0, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->atypeFactory:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    const-class v1, Lorg/checkerframework/checker/index/qual/Positive;

    invoke-virtual {v0, p2, v1}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->hasLowerBoundTypeByClass(Lorg/checkerframework/dataflow/cfg/node/Node;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 182
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/dataflow/cfg/node/NumericalMultiplicationNode;

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/node/NumericalMultiplicationNode;->getRightOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v0

    .line 183
    .restart local v0    # "right":Lorg/checkerframework/dataflow/cfg/node/Node;
    move-object v1, p2

    check-cast v1, Lorg/checkerframework/dataflow/cfg/node/NumericalMultiplicationNode;

    invoke-virtual {v1}, Lorg/checkerframework/dataflow/cfg/node/NumericalMultiplicationNode;->getLeftOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v7

    .line 184
    .restart local v7    # "left":Lorg/checkerframework/dataflow/cfg/node/Node;
    move-object v1, p0

    move-object v2, p1

    move-object v3, v7

    move-object v4, v0

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->propagateToMultiplicationOperand(Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;Lorg/checkerframework/framework/flow/CFStore;)V

    .line 185
    move-object v3, v0

    move-object v4, v7

    invoke-direct/range {v1 .. v6}, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->propagateToMultiplicationOperand(Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;Lorg/checkerframework/framework/flow/CFStore;)V

    .line 188
    .end local v0    # "right":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local v7    # "left":Lorg/checkerframework/dataflow/cfg/node/Node;
    :cond_2
    :goto_0
    return-void
.end method

.method private propagateToSubtractionOperands(Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;Lorg/checkerframework/dataflow/cfg/node/NumericalSubtractionNode;Lorg/checkerframework/dataflow/analysis/TransferInput;Lorg/checkerframework/framework/flow/CFStore;)V
    .locals 5
    .param p1, "typeOfSubtraction"    # Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;
    .param p2, "node"    # Lorg/checkerframework/dataflow/cfg/node/NumericalSubtractionNode;
    .param p4, "store"    # Lorg/checkerframework/framework/flow/CFStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;",
            "Lorg/checkerframework/dataflow/cfg/node/NumericalSubtractionNode;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ")V"
        }
    .end annotation

    .line 237
    .local p3, "in":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-virtual {p2}, Lorg/checkerframework/dataflow/cfg/node/NumericalSubtractionNode;->getLeftOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->getUBQualifier(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v0

    .line 238
    .local v0, "left":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    invoke-virtual {p2}, Lorg/checkerframework/dataflow/cfg/node/NumericalSubtractionNode;->getRightOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->atypeFactory:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    invoke-virtual {p1, v1, v2}, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;->minusOffset(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v1

    .line 240
    .local v1, "newInfo":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    invoke-virtual {v0, v1}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->glb(Lorg/checkerframework/checker/index/upperbound/UBQualifier;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v2

    .line 241
    .local v2, "newLeft":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    iget-object v3, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->atypeFactory:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    invoke-virtual {p2}, Lorg/checkerframework/dataflow/cfg/node/NumericalSubtractionNode;->getLeftOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v3

    .line 242
    .local v3, "leftRec":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    iget-object v4, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->atypeFactory:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    invoke-virtual {v4, v2}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->convertUBQualifierToAnnotation(Lorg/checkerframework/checker/index/upperbound/UBQualifier;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v4

    invoke-virtual {p4, v3, v4}, Lorg/checkerframework/framework/flow/CFStore;->insertValue(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 243
    return-void
.end method

.method private refineEq(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/flow/CFStore;)V
    .locals 9
    .param p1, "left"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p2, "leftAnno"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p3, "right"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p4, "rightAnno"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p5, "store"    # Lorg/checkerframework/framework/flow/CFStore;

    .line 405
    invoke-static {p2}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->createUBQualifier(Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v0

    .line 406
    .local v0, "leftQualifier":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    invoke-static {p4}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->createUBQualifier(Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v1

    .line 407
    .local v1, "rightQualifier":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    invoke-virtual {v1, v0}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->glb(Lorg/checkerframework/checker/index/upperbound/UBQualifier;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v2

    .line 408
    .local v2, "glb":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    iget-object v3, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->atypeFactory:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    invoke-virtual {v3, v2}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->convertUBQualifierToAnnotation(Lorg/checkerframework/checker/index/upperbound/UBQualifier;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    .line 410
    .local v3, "glbAnno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {p0, p3}, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->splitAssignments(Lorg/checkerframework/dataflow/cfg/node/Node;)Ljava/util/List;

    move-result-object v4

    .line 411
    .local v4, "internalsRight":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/cfg/node/Node;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 412
    .local v6, "internal":Lorg/checkerframework/dataflow/cfg/node/Node;
    iget-object v7, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    invoke-virtual {v7}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v7

    invoke-static {v7, v6}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v7

    .line 413
    .local v7, "rightRec":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    invoke-virtual {p5, v7, v3}, Lorg/checkerframework/framework/flow/CFStore;->insertValue(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 414
    .end local v6    # "internal":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local v7    # "rightRec":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    goto :goto_0

    .line 416
    :cond_0
    invoke-virtual {p0, p1}, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->splitAssignments(Lorg/checkerframework/dataflow/cfg/node/Node;)Ljava/util/List;

    move-result-object v5

    .line 417
    .local v5, "internalsLeft":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/cfg/node/Node;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 418
    .local v7, "internal":Lorg/checkerframework/dataflow/cfg/node/Node;
    iget-object v8, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    invoke-virtual {v8}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v8

    invoke-static {v8, v7}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v8

    .line 419
    .local v8, "leftRec":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    invoke-virtual {p5, v8, v3}, Lorg/checkerframework/framework/flow/CFStore;->insertValue(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 420
    .end local v7    # "internal":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local v8    # "leftRec":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    goto :goto_1

    .line 421
    :cond_1
    return-void
.end method

.method private refineNeqSequenceLength(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/flow/CFStore;)V
    .locals 9
    .param p1, "lengthAccess"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p2, "otherNode"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p3, "otherNodeAnno"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p4, "store"    # Lorg/checkerframework/framework/flow/CFStore;

    .line 432
    const/4 v0, 0x0

    .line 435
    .local v0, "receiver":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    const/4 v1, 0x0

    .line 436
    .local v1, "lengthOffset":I
    instance-of v2, p1, Lorg/checkerframework/dataflow/cfg/node/NumericalSubtractionNode;

    if-eqz v2, :cond_1

    .line 437
    move-object v2, p1

    check-cast v2, Lorg/checkerframework/dataflow/cfg/node/NumericalSubtractionNode;

    .line 438
    .local v2, "subtraction":Lorg/checkerframework/dataflow/cfg/node/NumericalSubtractionNode;
    invoke-virtual {v2}, Lorg/checkerframework/dataflow/cfg/node/NumericalSubtractionNode;->getRightOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v3

    .line 439
    .local v3, "offsetNode":Lorg/checkerframework/dataflow/cfg/node/Node;
    nop

    .line 441
    invoke-virtual {v3}, Lorg/checkerframework/dataflow/cfg/node/Node;->getTree()Lcom/sun/source/tree/Tree;

    move-result-object v4

    iget-object v5, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->atypeFactory:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    invoke-virtual {v5}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->getValueAnnotatedTypeFactory()Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    move-result-object v5

    .line 440
    invoke-static {v4, v5}, Lorg/checkerframework/common/value/ValueCheckerUtils;->getExactValue(Lcom/sun/source/tree/Tree;Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;)Ljava/lang/Long;

    move-result-object v4

    .line 442
    .local v4, "offsetValue":Ljava/lang/Long;
    if-eqz v4, :cond_0

    .line 443
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/32 v7, -0x80000000

    cmp-long v5, v5, v7

    if-lez v5, :cond_0

    .line 444
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/32 v7, 0x7fffffff

    cmp-long v5, v5, v7

    if-gtz v5, :cond_0

    .line 445
    invoke-virtual {v4}, Ljava/lang/Long;->intValue()I

    move-result v1

    .line 446
    invoke-virtual {v2}, Lorg/checkerframework/dataflow/cfg/node/NumericalSubtractionNode;->getLeftOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object p1

    goto :goto_0

    .line 449
    :cond_0
    return-void

    .line 453
    .end local v2    # "subtraction":Lorg/checkerframework/dataflow/cfg/node/NumericalSubtractionNode;
    .end local v3    # "offsetNode":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local v4    # "offsetValue":Ljava/lang/Long;
    :cond_1
    :goto_0
    invoke-static {p1}, Lorg/checkerframework/dataflow/util/NodeUtils;->isArrayLengthFieldAccess(Lorg/checkerframework/dataflow/cfg/node/Node;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 454
    iget-object v2, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->atypeFactory:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    move-object v3, p1

    check-cast v3, Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;

    .line 455
    invoke-static {v2, v3}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOfFieldAccess(Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;

    move-result-object v2

    .line 457
    .local v2, "fa":Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;
    invoke-virtual {v2}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;->getReceiver()Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v0

    .line 459
    .end local v2    # "fa":Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;
    :cond_2
    goto :goto_1

    :cond_3
    iget-object v2, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->atypeFactory:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    invoke-virtual {v2}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->getMethodIdentifier()Lorg/checkerframework/checker/index/IndexMethodIdentifier;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/checkerframework/checker/index/IndexMethodIdentifier;->isLengthOfMethodInvocation(Lorg/checkerframework/dataflow/cfg/node/Node;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 460
    iget-object v2, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->atypeFactory:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    invoke-static {v2, p1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v2

    .line 461
    .local v2, "ma":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    instance-of v3, v2, Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;

    if-eqz v3, :cond_4

    .line 462
    move-object v3, v2

    check-cast v3, Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;

    invoke-virtual {v3}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;->getReceiver()Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v0

    .line 466
    .end local v2    # "ma":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    :cond_4
    :goto_1
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;->containsUnknown()Z

    move-result v2

    if-nez v2, :cond_5

    .line 467
    invoke-static {p3}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->createUBQualifier(Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v2

    .line 468
    .local v2, "otherQualifier":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 470
    .local v3, "sequence":Ljava/lang/String;
    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v2, v3, v4}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->hasSequenceWithOffset(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 472
    nop

    .line 473
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->createUBQualifier(Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v4

    .line 474
    .local v4, "newQualifier":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    invoke-virtual {v2, v4}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->glb(Lorg/checkerframework/checker/index/upperbound/UBQualifier;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v2

    .line 475
    invoke-virtual {p0, p2}, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->splitAssignments(Lorg/checkerframework/dataflow/cfg/node/Node;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 476
    .local v6, "internal":Lorg/checkerframework/dataflow/cfg/node/Node;
    iget-object v7, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    .line 477
    invoke-virtual {v7}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v7

    invoke-static {v7, v6}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v7

    .line 478
    .local v7, "leftRec":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    iget-object v8, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->atypeFactory:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    .line 479
    invoke-virtual {v8, v2}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->convertUBQualifierToAnnotation(Lorg/checkerframework/checker/index/upperbound/UBQualifier;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v8

    .line 478
    invoke-virtual {p4, v7, v8}, Lorg/checkerframework/framework/flow/CFStore;->insertValue(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 480
    .end local v6    # "internal":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local v7    # "leftRec":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    goto :goto_2

    .line 483
    .end local v2    # "otherQualifier":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    .end local v3    # "sequence":Ljava/lang/String;
    .end local v4    # "newQualifier":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    :cond_5
    return-void
.end method

.method private refineSubtrahendWithOffset(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;ZLorg/checkerframework/dataflow/analysis/TransferInput;Lorg/checkerframework/framework/flow/CFStore;)V
    .locals 8
    .param p1, "gtNode"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p2, "offsetNode"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p3, "offsetAddOne"    # Z
    .param p5, "store"    # Lorg/checkerframework/framework/flow/CFStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "Z",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ")V"
        }
    .end annotation

    .line 353
    .local p4, "in":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    instance-of v0, p1, Lorg/checkerframework/dataflow/cfg/node/NumericalSubtractionNode;

    if-eqz v0, :cond_0

    .line 354
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/dataflow/cfg/node/NumericalSubtractionNode;

    .line 356
    .local v0, "subtractionNode":Lorg/checkerframework/dataflow/cfg/node/NumericalSubtractionNode;
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/node/NumericalSubtractionNode;->getLeftOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    .line 357
    .local v1, "minuend":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-direct {p0, v1, p4}, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->getUBQualifier(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v2

    .line 358
    .local v2, "minuendQual":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/node/NumericalSubtractionNode;->getRightOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v3

    .line 359
    .local v3, "subtrahend":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-direct {p0, v3, p4}, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->getUBQualifier(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v4

    .line 361
    .local v4, "subtrahendQual":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    iget-object v5, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->atypeFactory:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    .line 364
    invoke-virtual {v2, p2, v5}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->plusOffset(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v5

    .line 365
    invoke-virtual {v5, p3}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->plusOffset(I)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v5

    .line 362
    invoke-virtual {v4, v5}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->glb(Lorg/checkerframework/checker/index/upperbound/UBQualifier;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v5

    .line 366
    .local v5, "newQual":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    iget-object v6, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->atypeFactory:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    invoke-static {v6, v3}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v6

    .line 367
    .local v6, "subtrahendRec":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    iget-object v7, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->atypeFactory:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    invoke-virtual {v7, v5}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->convertUBQualifierToAnnotation(Lorg/checkerframework/checker/index/upperbound/UBQualifier;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v7

    invoke-virtual {p5, v6, v7}, Lorg/checkerframework/framework/flow/CFStore;->insertValue(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 369
    .end local v0    # "subtractionNode":Lorg/checkerframework/dataflow/cfg/node/NumericalSubtractionNode;
    .end local v1    # "minuend":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local v2    # "minuendQual":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    .end local v3    # "subtrahend":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local v4    # "subtrahendQual":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    .end local v5    # "newQual":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    .end local v6    # "subtrahendRec":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    :cond_0
    return-void
.end method

.method private removeSequenceLengths(Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    .locals 5
    .param p1, "i"    # Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;
    .param p2, "j"    # Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;

    .line 544
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 545
    .local v0, "lessThan":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 546
    .local v1, "lessThanOrEqaul":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;->getSequences()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 547
    .local v3, "sequence":Ljava/lang/String;
    invoke-virtual {p1, v3}, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;->isLessThanLengthOf(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 548
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 549
    :cond_0
    const/4 v4, -0x1

    invoke-virtual {p1, v3, v4}, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;->hasSequenceWithOffset(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 550
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 552
    .end local v3    # "sequence":Ljava/lang/String;
    :cond_1
    :goto_1
    goto :goto_0

    .line 556
    :cond_2
    invoke-virtual {p2, v1}, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;->removeSequenceLengthAccess(Ljava/util/List;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v2

    .line 560
    .local v2, "lessThanEqQ":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    invoke-virtual {p2, v0}, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;->removeSequenceLengthAccessAndNeg1(Ljava/util/List;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v3

    .line 562
    .local v3, "lessThanQ":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    invoke-virtual {v2, v3}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->glb(Lorg/checkerframework/checker/index/upperbound/UBQualifier;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v4

    return-object v4
.end method

.method private visitLengthAccess(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Lcom/sun/source/tree/Tree;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 7
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p3, "sequenceRec"    # Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .param p4, "sequenceTree"    # Lcom/sun/source/tree/Tree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;",
            "Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;",
            "Lcom/sun/source/tree/Tree;",
            ")",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;"
        }
    .end annotation

    .line 666
    .local p2, "in":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    const/4 v0, 0x0

    if-nez p4, :cond_0

    .line 667
    return-object v0

    .line 670
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->atypeFactory:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    invoke-virtual {v1, p4}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->sameLenAnnotationFromTree(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 672
    .local v1, "sameLenAnno":Ljavax/lang/model/element/AnnotationMirror;
    if-nez v1, :cond_1

    .line 673
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 674
    :cond_1
    invoke-static {v1}, Lorg/checkerframework/common/value/ValueCheckerUtils;->getValueOfAnnotationWithStringArgument(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v2

    :goto_0
    nop

    .line 676
    .local v2, "sameLenSequences":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 677
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 680
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 681
    .local v3, "offsets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 682
    .local v5, "s":Ljava/lang/String;
    const-string v6, "-1"

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 683
    .end local v5    # "s":Ljava/lang/String;
    goto :goto_1

    .line 685
    :cond_3
    invoke-static {p3}, Lorg/checkerframework/framework/flow/CFAbstractStore;->canInsertReceiver(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 686
    invoke-static {v2, v3}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->createUBQualifier(Ljava/util/List;Ljava/util/List;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v0

    .line 687
    .local v0, "qualifier":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->getUBQualifier(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v4

    .line 688
    .local v4, "previous":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    invoke-virtual {v0, v4}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->glb(Lorg/checkerframework/checker/index/upperbound/UBQualifier;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v5

    invoke-direct {p0, p1, p2, v5}, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->createTransferResult(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;Lorg/checkerframework/checker/index/upperbound/UBQualifier;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object v5

    return-object v5

    .line 691
    .end local v0    # "qualifier":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    .end local v4    # "previous":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    :cond_4
    return-object v0
.end method


# virtual methods
.method protected refineGT(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/flow/CFStore;Lorg/checkerframework/dataflow/analysis/TransferInput;)V
    .locals 14
    .param p1, "larger"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p2, "largerAnno"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p3, "smaller"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p4, "smallerAnno"    # Ljavax/lang/model/element/AnnotationMirror;
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

    .line 289
    .local p6, "in":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    move-object v6, p0

    move-object/from16 v7, p3

    move-object/from16 v8, p5

    invoke-static/range {p2 .. p2}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->createUBQualifier(Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v9

    .line 291
    .local v9, "largerQual":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->plusOffset(I)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v10

    .line 292
    .local v10, "largerQualPlus1":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    invoke-static/range {p4 .. p4}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->createUBQualifier(Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v11

    .line 293
    .local v11, "rightQualifier":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    invoke-virtual {v11, v10}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->glb(Lorg/checkerframework/checker/index/upperbound/UBQualifier;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v12

    .line 295
    .local v12, "refinedRight":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    invoke-virtual {v10}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->isLessThanLengthQualifier()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    move-object v0, v10

    check-cast v0, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;

    move-object/from16 v13, p6

    invoke-direct {p0, v0, v7, v13, v8}, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->propagateToOperands(Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;Lorg/checkerframework/framework/flow/CFStore;)V

    goto :goto_0

    .line 295
    :cond_0
    move-object/from16 v13, p6

    .line 299
    :goto_0
    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p3

    move-object/from16 v4, p6

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->refineSubtrahendWithOffset(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;ZLorg/checkerframework/dataflow/analysis/TransferInput;Lorg/checkerframework/framework/flow/CFStore;)V

    .line 301
    iget-object v0, v6, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    invoke-virtual {v0}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v0

    invoke-static {v0, v7}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v0

    .line 302
    .local v0, "rightRec":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    iget-object v1, v6, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->atypeFactory:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    invoke-virtual {v1, v12}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->convertUBQualifierToAnnotation(Lorg/checkerframework/checker/index/upperbound/UBQualifier;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lorg/checkerframework/framework/flow/CFStore;->insertValue(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 303
    return-void
.end method

.method protected refineGTE(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/flow/CFStore;Lorg/checkerframework/dataflow/analysis/TransferInput;)V
    .locals 13
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

    .line 317
    .local p6, "in":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    move-object v6, p0

    move-object/from16 v7, p3

    move-object/from16 v8, p5

    invoke-static {p2}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->createUBQualifier(Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v9

    .line 318
    .local v9, "leftQualifier":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    invoke-static/range {p4 .. p4}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->createUBQualifier(Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v10

    .line 319
    .local v10, "rightQualifier":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    invoke-virtual {v10, v9}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->glb(Lorg/checkerframework/checker/index/upperbound/UBQualifier;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v11

    .line 321
    .local v11, "refinedRight":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    invoke-virtual {v9}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->isLessThanLengthQualifier()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    move-object v0, v9

    check-cast v0, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;

    move-object/from16 v12, p6

    invoke-direct {p0, v0, v7, v12, v8}, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->propagateToOperands(Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;Lorg/checkerframework/framework/flow/CFStore;)V

    goto :goto_0

    .line 321
    :cond_0
    move-object/from16 v12, p6

    .line 325
    :goto_0
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p3

    move-object/from16 v4, p6

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->refineSubtrahendWithOffset(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;ZLorg/checkerframework/dataflow/analysis/TransferInput;Lorg/checkerframework/framework/flow/CFStore;)V

    .line 327
    iget-object v0, v6, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    invoke-virtual {v0}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v0

    invoke-static {v0, v7}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v0

    .line 328
    .local v0, "rightRec":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    iget-object v1, v6, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->atypeFactory:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    invoke-virtual {v1, v11}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->convertUBQualifierToAnnotation(Lorg/checkerframework/checker/index/upperbound/UBQualifier;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lorg/checkerframework/framework/flow/CFStore;->insertValue(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 329
    return-void
.end method

.method protected bridge synthetic strengthenAnnotationOfEqualTo(Lorg/checkerframework/dataflow/analysis/TransferResult;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/framework/flow/CFAbstractValue;Lorg/checkerframework/framework/flow/CFAbstractValue;Z)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 7

    .line 105
    move-object v4, p4

    check-cast v4, Lorg/checkerframework/framework/flow/CFValue;

    move-object v5, p5

    check-cast v5, Lorg/checkerframework/framework/flow/CFValue;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->strengthenAnnotationOfEqualTo(Lorg/checkerframework/dataflow/analysis/TransferResult;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFValue;Z)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method protected strengthenAnnotationOfEqualTo(Lorg/checkerframework/dataflow/analysis/TransferResult;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFValue;Z)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 9
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

    .line 380
    .local p1, "res":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    nop

    .line 381
    invoke-super/range {p0 .. p6}, Lorg/checkerframework/checker/index/IndexAbstractTransfer;->strengthenAnnotationOfEqualTo(Lorg/checkerframework/dataflow/analysis/TransferResult;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/framework/flow/CFAbstractValue;Lorg/checkerframework/framework/flow/CFAbstractValue;Z)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object v0

    .line 383
    .local v0, "result":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    new-instance v1, Lorg/checkerframework/checker/index/IndexRefinementInfo;

    iget-object v2, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    invoke-direct {v1, v0, v2, p2, p3}, Lorg/checkerframework/checker/index/IndexRefinementInfo;-><init>(Lorg/checkerframework/dataflow/analysis/TransferResult;Lorg/checkerframework/framework/flow/CFAbstractAnalysis;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .line 384
    .local v1, "rfi":Lorg/checkerframework/checker/index/IndexRefinementInfo;
    iget-object v2, v1, Lorg/checkerframework/checker/index/IndexRefinementInfo;->leftAnno:Ljavax/lang/model/element/AnnotationMirror;

    if-eqz v2, :cond_3

    iget-object v2, v1, Lorg/checkerframework/checker/index/IndexRefinementInfo;->rightAnno:Ljavax/lang/model/element/AnnotationMirror;

    if-nez v2, :cond_0

    goto :goto_2

    .line 388
    :cond_0
    if-eqz p6, :cond_1

    iget-object v2, v1, Lorg/checkerframework/checker/index/IndexRefinementInfo;->elseStore:Lorg/checkerframework/framework/flow/CFStore;

    goto :goto_0

    :cond_1
    iget-object v2, v1, Lorg/checkerframework/checker/index/IndexRefinementInfo;->thenStore:Lorg/checkerframework/framework/flow/CFStore;

    :goto_0
    move-object v8, v2

    .line 389
    .local v8, "equalsStore":Lorg/checkerframework/framework/flow/CFStore;
    if-eqz p6, :cond_2

    iget-object v2, v1, Lorg/checkerframework/checker/index/IndexRefinementInfo;->thenStore:Lorg/checkerframework/framework/flow/CFStore;

    goto :goto_1

    :cond_2
    iget-object v2, v1, Lorg/checkerframework/checker/index/IndexRefinementInfo;->elseStore:Lorg/checkerframework/framework/flow/CFStore;

    .line 391
    .local v2, "notEqualStore":Lorg/checkerframework/framework/flow/CFStore;
    :goto_1
    iget-object v4, v1, Lorg/checkerframework/checker/index/IndexRefinementInfo;->left:Lorg/checkerframework/dataflow/cfg/node/Node;

    iget-object v5, v1, Lorg/checkerframework/checker/index/IndexRefinementInfo;->leftAnno:Ljavax/lang/model/element/AnnotationMirror;

    iget-object v6, v1, Lorg/checkerframework/checker/index/IndexRefinementInfo;->right:Lorg/checkerframework/dataflow/cfg/node/Node;

    iget-object v7, v1, Lorg/checkerframework/checker/index/IndexRefinementInfo;->rightAnno:Ljavax/lang/model/element/AnnotationMirror;

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->refineEq(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/flow/CFStore;)V

    .line 393
    iget-object v3, v1, Lorg/checkerframework/checker/index/IndexRefinementInfo;->left:Lorg/checkerframework/dataflow/cfg/node/Node;

    iget-object v4, v1, Lorg/checkerframework/checker/index/IndexRefinementInfo;->right:Lorg/checkerframework/dataflow/cfg/node/Node;

    iget-object v5, v1, Lorg/checkerframework/checker/index/IndexRefinementInfo;->rightAnno:Ljavax/lang/model/element/AnnotationMirror;

    invoke-direct {p0, v3, v4, v5, v2}, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->refineNeqSequenceLength(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/flow/CFStore;)V

    .line 394
    iget-object v3, v1, Lorg/checkerframework/checker/index/IndexRefinementInfo;->right:Lorg/checkerframework/dataflow/cfg/node/Node;

    iget-object v4, v1, Lorg/checkerframework/checker/index/IndexRefinementInfo;->left:Lorg/checkerframework/dataflow/cfg/node/Node;

    iget-object v5, v1, Lorg/checkerframework/checker/index/IndexRefinementInfo;->leftAnno:Ljavax/lang/model/element/AnnotationMirror;

    invoke-direct {p0, v3, v4, v5, v2}, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->refineNeqSequenceLength(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/flow/CFStore;)V

    .line 395
    iget-object v3, v1, Lorg/checkerframework/checker/index/IndexRefinementInfo;->newResult:Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult;

    return-object v3

    .line 385
    .end local v2    # "notEqualStore":Lorg/checkerframework/framework/flow/CFStore;
    .end local v8    # "equalsStore":Lorg/checkerframework/framework/flow/CFStore;
    :cond_3
    :goto_2
    return-object v0
.end method

.method public bridge synthetic visitAssignment(Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 105
    check-cast p2, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->visitAssignment(Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method public visitAssignment(Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 16
    .param p1, "node"    # Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;",
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

    .line 122
    .local p2, "in":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-super/range {p0 .. p2}, Lorg/checkerframework/checker/index/IndexAbstractTransfer;->visitAssignment(Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object v2

    .line 124
    .local v2, "result":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;->getExpression()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v3

    .line 128
    .local v3, "expNode":Lorg/checkerframework/dataflow/cfg/node/Node;
    instance-of v4, v3, Lorg/checkerframework/dataflow/cfg/node/TypeCastNode;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lorg/checkerframework/dataflow/cfg/node/TypeCastNode;

    invoke-virtual {v4}, Lorg/checkerframework/dataflow/cfg/node/TypeCastNode;->getOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v3

    .line 131
    .local v4, "expNodeSansCast":Lorg/checkerframework/dataflow/cfg/node/Node;
    :goto_0
    instance-of v5, v4, Lorg/checkerframework/dataflow/cfg/node/ArrayCreationNode;

    if-eqz v5, :cond_1

    .line 132
    move-object v5, v4

    check-cast v5, Lorg/checkerframework/dataflow/cfg/node/ArrayCreationNode;

    move-object v6, v5

    .local v6, "acNode":Lorg/checkerframework/dataflow/cfg/node/ArrayCreationNode;
    goto :goto_1

    .line 133
    .end local v6    # "acNode":Lorg/checkerframework/dataflow/cfg/node/ArrayCreationNode;
    :cond_1
    const/4 v5, 0x0

    :goto_1
    nop

    .line 135
    .local v5, "acNode":Lorg/checkerframework/dataflow/cfg/node/ArrayCreationNode;
    if-eqz v5, :cond_3

    .line 137
    invoke-virtual {v5}, Lorg/checkerframework/dataflow/cfg/node/ArrayCreationNode;->getDimensions()Ljava/util/List;

    move-result-object v6

    .line 138
    .local v6, "nodeList":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/cfg/node/Node;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ge v7, v8, :cond_2

    .line 139
    return-object v2

    .line 141
    :cond_2
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lorg/checkerframework/dataflow/cfg/node/ArrayCreationNode;->getDimension(I)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v7

    .line 143
    .local v7, "dim":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-direct {v0, v7, v1}, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->getUBQualifier(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v8

    .line 144
    .local v8, "previousQualifier":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    iget-object v9, v0, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    .line 145
    invoke-virtual {v9}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;->getTarget()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v9

    .line 146
    .local v9, "arrayRec":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 147
    .local v10, "arrayString":Ljava/lang/String;
    nop

    .line 148
    const-string v11, "-1"

    invoke-static {v10, v11}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->createUBQualifier(Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v11

    check-cast v11, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;

    .line 149
    .local v11, "newInfo":Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;
    invoke-virtual {v8, v11}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->glb(Lorg/checkerframework/checker/index/upperbound/UBQualifier;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v12

    .line 150
    .local v12, "combined":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    iget-object v13, v0, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->atypeFactory:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    invoke-virtual {v13, v12}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->convertUBQualifierToAnnotation(Lorg/checkerframework/checker/index/upperbound/UBQualifier;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v13

    .line 152
    .local v13, "newAnno":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v14, v0, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    invoke-virtual {v14}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v14

    invoke-static {v14, v7}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v14

    .line 153
    .local v14, "dimRec":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    invoke-virtual {v2}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getRegularStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v15

    check-cast v15, Lorg/checkerframework/framework/flow/CFStore;

    invoke-virtual {v15, v14, v13}, Lorg/checkerframework/framework/flow/CFStore;->insertValue(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 154
    invoke-virtual {v2}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getRegularStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v15

    check-cast v15, Lorg/checkerframework/framework/flow/CFStore;

    invoke-direct {v0, v11, v7, v1, v15}, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->propagateToOperands(Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;Lorg/checkerframework/framework/flow/CFStore;)V

    .line 156
    .end local v6    # "nodeList":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/cfg/node/Node;>;"
    .end local v7    # "dim":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local v8    # "previousQualifier":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    .end local v9    # "arrayRec":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .end local v10    # "arrayString":Ljava/lang/String;
    .end local v11    # "newInfo":Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;
    .end local v12    # "combined":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    .end local v13    # "newAnno":Ljavax/lang/model/element/AnnotationMirror;
    .end local v14    # "dimRec":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    :cond_3
    return-object v2
.end method

.method public bridge synthetic visitCase(Lorg/checkerframework/dataflow/cfg/node/CaseNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 105
    check-cast p2, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->visitCase(Lorg/checkerframework/dataflow/cfg/node/CaseNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method public visitCase(Lorg/checkerframework/dataflow/cfg/node/CaseNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 10
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/CaseNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/CaseNode;",
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

    .line 837
    .local p2, "in":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/checker/index/IndexAbstractTransfer;->visitCase(Lorg/checkerframework/dataflow/cfg/node/CaseNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object v0

    .line 841
    .local v0, "result":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/CaseNode;->getCaseOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v7

    .line 842
    .local v7, "caseNode":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/CaseNode;->getSwitchOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;

    .line 843
    .local v8, "assign":Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;
    invoke-virtual {v8}, Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;->getExpression()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v9

    .line 844
    .local v9, "switchNode":Lorg/checkerframework/dataflow/cfg/node/Node;
    const/4 v4, 0x0

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getThenStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lorg/checkerframework/framework/flow/CFStore;

    move-object v1, p0

    move-object v2, v9

    move-object v3, v7

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->refineSubtrahendWithOffset(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;ZLorg/checkerframework/dataflow/analysis/TransferInput;Lorg/checkerframework/framework/flow/CFStore;)V

    .line 845
    return-object v0
.end method

.method public bridge synthetic visitFieldAccess(Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 105
    check-cast p2, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->visitFieldAccess(Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method public visitFieldAccess(Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;",
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

    .line 701
    .local p2, "in":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-static {p1}, Lorg/checkerframework/dataflow/util/NodeUtils;->isArrayLengthFieldAccess(Lorg/checkerframework/dataflow/cfg/node/Node;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 702
    iget-object v0, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->atypeFactory:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    invoke-static {v0, p1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOfFieldAccess(Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;

    move-result-object v0

    .line 703
    .local v0, "arrayLength":Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;->getReceiver()Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v1

    .line 704
    .local v1, "arrayRec":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;->getReceiver()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v2

    invoke-virtual {v2}, Lorg/checkerframework/dataflow/cfg/node/Node;->getTree()Lcom/sun/source/tree/Tree;

    move-result-object v2

    .line 705
    .local v2, "arrayTree":Lcom/sun/source/tree/Tree;
    invoke-direct {p0, p1, p2, v1, v2}, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->visitLengthAccess(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Lcom/sun/source/tree/Tree;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object v3

    .line 706
    .local v3, "result":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    if-eqz v3, :cond_0

    .line 707
    return-object v3

    .line 710
    .end local v0    # "arrayLength":Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;
    .end local v1    # "arrayRec":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .end local v2    # "arrayTree":Lcom/sun/source/tree/Tree;
    .end local v3    # "result":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/checkerframework/checker/index/IndexAbstractTransfer;->visitFieldAccess(Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitMethodInvocation(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 105
    check-cast p2, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->visitMethodInvocation(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method public visitMethodInvocation(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;",
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

    .line 721
    .local p2, "in":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    iget-object v0, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->atypeFactory:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    invoke-virtual {v0}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->getMethodIdentifier()Lorg/checkerframework/checker/index/IndexMethodIdentifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/checkerframework/checker/index/IndexMethodIdentifier;->isLengthOfMethodInvocation(Lorg/checkerframework/dataflow/cfg/node/Node;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 722
    iget-object v0, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->atypeFactory:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    invoke-static {v0, p1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v0

    .line 723
    .local v0, "stringLength":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    instance-of v1, v0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;

    if-eqz v1, :cond_0

    .line 724
    move-object v1, v0

    check-cast v1, Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;

    invoke-virtual {v1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;->getReceiver()Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v1

    .line 725
    .local v1, "receiverRec":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;->getTarget()Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;

    move-result-object v2

    invoke-virtual {v2}, Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;->getReceiver()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v2

    invoke-virtual {v2}, Lorg/checkerframework/dataflow/cfg/node/Node;->getTree()Lcom/sun/source/tree/Tree;

    move-result-object v2

    .line 727
    .local v2, "receiverTree":Lcom/sun/source/tree/Tree;
    if-eqz v2, :cond_0

    .line 728
    nop

    .line 729
    invoke-direct {p0, p1, p2, v1, v2}, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->visitLengthAccess(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Lcom/sun/source/tree/Tree;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object v3

    .line 730
    .local v3, "result":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    if-eqz v3, :cond_0

    .line 731
    return-object v3

    .line 736
    .end local v0    # "stringLength":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .end local v1    # "receiverRec":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .end local v2    # "receiverTree":Lcom/sun/source/tree/Tree;
    .end local v3    # "result":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/checkerframework/checker/index/IndexAbstractTransfer;->visitMethodInvocation(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitNumericalAddition(Lorg/checkerframework/dataflow/cfg/node/NumericalAdditionNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 105
    check-cast p2, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->visitNumericalAddition(Lorg/checkerframework/dataflow/cfg/node/NumericalAdditionNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method public visitNumericalAddition(Lorg/checkerframework/dataflow/cfg/node/NumericalAdditionNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 8
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

    .line 508
    .local p2, "in":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/NumericalAdditionNode;->getLeftOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->getUBQualifierForAddition(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v0

    .line 509
    .local v0, "left":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/NumericalAdditionNode;->getRightOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->atypeFactory:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->minusOffset(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v1

    .line 511
    .local v1, "t":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/NumericalAdditionNode;->getRightOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->getUBQualifierForAddition(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v2

    .line 512
    .local v2, "right":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/NumericalAdditionNode;->getLeftOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v3

    iget-object v4, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->atypeFactory:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    invoke-virtual {v2, v3, v4}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->minusOffset(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v3

    .line 514
    .local v3, "s":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    invoke-virtual {v1, v3}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->glb(Lorg/checkerframework/checker/index/upperbound/UBQualifier;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v4

    .line 515
    .local v4, "glb":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    invoke-virtual {v0}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->isLessThanLengthQualifier()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->isLessThanLengthQualifier()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 519
    move-object v5, v0

    check-cast v5, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;

    move-object v6, v2

    check-cast v6, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;

    .line 520
    invoke-direct {p0, v5, v6}, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->removeSequenceLengths(Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v5

    .line 521
    .local v5, "r":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    invoke-virtual {v4, v5}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->glb(Lorg/checkerframework/checker/index/upperbound/UBQualifier;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v4

    .line 522
    move-object v6, v2

    check-cast v6, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;

    move-object v7, v0

    check-cast v7, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;

    .line 523
    invoke-direct {p0, v6, v7}, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->removeSequenceLengths(Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v6

    .line 524
    .local v6, "l":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    invoke-virtual {v4, v6}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->glb(Lorg/checkerframework/checker/index/upperbound/UBQualifier;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v4

    .line 527
    .end local v5    # "r":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    .end local v6    # "l":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    :cond_0
    invoke-direct {p0, p1, p2, v4}, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->createTransferResult(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;Lorg/checkerframework/checker/index/upperbound/UBQualifier;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object v5

    return-object v5
.end method

.method public bridge synthetic visitNumericalSubtraction(Lorg/checkerframework/dataflow/cfg/node/NumericalSubtractionNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 105
    check-cast p2, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->visitNumericalSubtraction(Lorg/checkerframework/dataflow/cfg/node/NumericalSubtractionNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method public visitNumericalSubtraction(Lorg/checkerframework/dataflow/cfg/node/NumericalSubtractionNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 20
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

    .line 574
    .local p2, "in":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/dataflow/cfg/node/NumericalSubtractionNode;->getLeftOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v0

    invoke-direct {v1, v0, v3}, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->getUBQualifier(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v4

    .line 575
    .local v4, "left":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/dataflow/cfg/node/NumericalSubtractionNode;->getRightOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v0

    iget-object v5, v1, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->atypeFactory:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    invoke-virtual {v4, v0, v5}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->plusOffset(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v0

    .line 576
    .local v0, "leftWithOffset":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    iget-object v5, v1, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->atypeFactory:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/dataflow/cfg/node/NumericalSubtractionNode;->getRightOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v6

    const-class v7, Lorg/checkerframework/checker/index/qual/NonNegative;

    invoke-virtual {v5, v6, v7}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->hasLowerBoundTypeByClass(Lorg/checkerframework/dataflow/cfg/node/Node;Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v1, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->atypeFactory:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    .line 577
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/dataflow/cfg/node/NumericalSubtractionNode;->getRightOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v6

    const-class v7, Lorg/checkerframework/checker/index/qual/Positive;

    invoke-virtual {v5, v6, v7}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->hasLowerBoundTypeByClass(Lorg/checkerframework/dataflow/cfg/node/Node;Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 580
    :cond_0
    invoke-virtual {v4}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->isLessThanLengthQualifier()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 581
    invoke-virtual {v4, v0}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->glb(Lorg/checkerframework/checker/index/upperbound/UBQualifier;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v0

    .line 589
    :cond_1
    invoke-virtual {v0}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->isLessThanLengthQualifier()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 591
    move-object v5, v0

    check-cast v5, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;

    .line 593
    .local v5, "subtractionResult":Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;
    invoke-virtual {v5}, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;->getSequences()Ljava/lang/Iterable;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v7, v0

    .end local v0    # "leftWithOffset":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    .local v7, "leftWithOffset":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    .line 594
    .local v8, "b":Ljava/lang/String;
    const/4 v0, -0x1

    invoke-virtual {v5, v8, v0}, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;->hasSequenceWithOffset(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 595
    const/4 v0, 0x0

    invoke-virtual {v5, v8, v0}, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;->hasSequenceWithOffset(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move-object/from16 v17, v4

    goto/16 :goto_2

    .line 597
    :cond_3
    :goto_1
    iget-object v0, v1, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->atypeFactory:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/dataflow/cfg/node/NumericalSubtractionNode;->getTree()Lcom/sun/source/tree/BinaryTree;

    move-result-object v9

    invoke-virtual {v0, v9}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->getPath(Lcom/sun/source/tree/Tree;)Lcom/sun/source/util/TreePath;

    move-result-object v9

    .line 600
    .local v9, "currentPath":Lcom/sun/source/util/TreePath;
    :try_start_0
    iget-object v0, v1, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->atypeFactory:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    .line 601
    invoke-static {v8, v0, v9}, Lorg/checkerframework/checker/index/upperbound/UpperBoundVisitor;->getReceiverFromJavaExpressionString(Ljava/lang/String;Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;Lcom/sun/source/util/TreePath;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 612
    .local v0, "rec":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    nop

    .line 614
    iget-object v10, v1, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->atypeFactory:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    .line 615
    invoke-virtual {v10}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->getContext()Lorg/checkerframework/framework/util/CFContext;

    move-result-object v10

    invoke-static {v0, v10}, Lorg/checkerframework/checker/index/Subsequence;->getContextFromReceiver(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Lorg/checkerframework/framework/util/BaseContext;)Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;

    move-result-object v10

    .line 617
    .local v10, "context":Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;
    iget-object v11, v1, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->atypeFactory:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    .line 618
    invoke-static {v0, v11, v9, v10}, Lorg/checkerframework/checker/index/Subsequence;->getSubsequenceFromReceiver(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lcom/sun/source/util/TreePath;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;)Lorg/checkerframework/checker/index/Subsequence;

    move-result-object v11

    .line 621
    .local v11, "subsequence":Lorg/checkerframework/checker/index/Subsequence;
    if-eqz v11, :cond_8

    .line 622
    iget-object v12, v11, Lorg/checkerframework/checker/index/Subsequence;->from:Ljava/lang/String;

    .line 623
    .local v12, "from":Ljava/lang/String;
    iget-object v13, v11, Lorg/checkerframework/checker/index/Subsequence;->to:Ljava/lang/String;

    .line 624
    .local v13, "to":Ljava/lang/String;
    iget-object v14, v11, Lorg/checkerframework/checker/index/Subsequence;->array:Ljava/lang/String;

    .line 626
    .local v14, "a":Ljava/lang/String;
    iget-object v15, v1, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->atypeFactory:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    .line 627
    move-object/from16 v16, v0

    .end local v0    # "rec":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .local v16, "rec":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/dataflow/cfg/node/NumericalSubtractionNode;->getLeftOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v0

    invoke-static {v15, v0}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v0

    .line 628
    .local v0, "leftOp":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    iget-object v15, v1, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->atypeFactory:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    .line 629
    move-object/from16 v17, v4

    .end local v4    # "left":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    .local v17, "left":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/dataflow/cfg/node/NumericalSubtractionNode;->getRightOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v4

    invoke-static {v15, v4}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v4

    .line 631
    .local v4, "rightOp":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 632
    iget-object v15, v1, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->atypeFactory:Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    .line 634
    invoke-virtual {v15}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->getLessThanAnnotatedTypeFactory()Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;

    move-result-object v15

    .line 635
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/dataflow/cfg/node/NumericalSubtractionNode;->getLeftOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v18

    move-object/from16 v19, v4

    .end local v4    # "rightOp":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .local v19, "rightOp":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    invoke-virtual/range {v18 .. v18}, Lorg/checkerframework/dataflow/cfg/node/Node;->getTree()Lcom/sun/source/tree/Tree;

    move-result-object v4

    invoke-virtual {v15, v4}, Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v4

    const-class v15, Lorg/checkerframework/checker/index/qual/LessThan;

    .line 636
    invoke-virtual {v4, v15}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotation(Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v4

    .line 638
    .local v4, "lessThanType":Ljavax/lang/model/element/AnnotationMirror;
    if-eqz v4, :cond_5

    .line 639
    invoke-static {v4, v13}, Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;->isLessThan(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 640
    const-string v15, "0"

    invoke-static {v14, v15}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->createUBQualifier(Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v15

    .line 641
    .local v15, "ltlA":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    invoke-virtual {v7, v15}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->glb(Lorg/checkerframework/checker/index/upperbound/UBQualifier;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v7

    .line 642
    .end local v15    # "ltlA":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    :cond_4
    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_6

    if-eqz v4, :cond_4

    .line 644
    invoke-static {v4, v13}, Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;->isLessThanOrEqual(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 648
    :cond_6
    const-string v15, "-1"

    invoke-static {v14, v15}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->createUBQualifier(Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v15

    .line 649
    .local v15, "ltelA":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    invoke-virtual {v7, v15}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->glb(Lorg/checkerframework/checker/index/upperbound/UBQualifier;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v7

    goto :goto_2

    .line 631
    .end local v15    # "ltelA":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    .end local v19    # "rightOp":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .local v4, "rightOp":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    :cond_7
    move-object/from16 v19, v4

    .end local v4    # "rightOp":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .restart local v19    # "rightOp":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    goto :goto_2

    .line 621
    .end local v12    # "from":Ljava/lang/String;
    .end local v13    # "to":Ljava/lang/String;
    .end local v14    # "a":Ljava/lang/String;
    .end local v16    # "rec":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .end local v17    # "left":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    .end local v19    # "rightOp":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .local v0, "rec":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .local v4, "left":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    :cond_8
    move-object/from16 v16, v0

    move-object/from16 v17, v4

    .line 654
    .end local v0    # "rec":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .end local v4    # "left":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    .end local v8    # "b":Ljava/lang/String;
    .end local v9    # "currentPath":Lcom/sun/source/util/TreePath;
    .end local v10    # "context":Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;
    .end local v11    # "subsequence":Lorg/checkerframework/checker/index/Subsequence;
    .restart local v17    # "left":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    :cond_9
    :goto_2
    move-object/from16 v4, v17

    goto/16 :goto_0

    .line 603
    .end local v17    # "left":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    .restart local v4    # "left":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    .restart local v8    # "b":Ljava/lang/String;
    .restart local v9    # "currentPath":Lcom/sun/source/util/TreePath;
    :catch_0
    move-exception v0

    move-object/from16 v17, v4

    .line 611
    .end local v4    # "left":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    .local v0, "npe":Ljava/lang/NullPointerException;
    .restart local v17    # "left":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    invoke-direct {v1, v2, v3, v7}, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->createTransferResult(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;Lorg/checkerframework/checker/index/upperbound/UBQualifier;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object v4

    return-object v4

    .line 593
    .end local v0    # "npe":Ljava/lang/NullPointerException;
    .end local v8    # "b":Ljava/lang/String;
    .end local v9    # "currentPath":Lcom/sun/source/util/TreePath;
    .end local v17    # "left":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    .restart local v4    # "left":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    :cond_a
    move-object/from16 v17, v4

    .end local v4    # "left":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    .restart local v17    # "left":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    move-object v0, v7

    goto :goto_3

    .line 589
    .end local v5    # "subtractionResult":Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;
    .end local v7    # "leftWithOffset":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    .end local v17    # "left":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    .local v0, "leftWithOffset":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    .restart local v4    # "left":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    :cond_b
    move-object/from16 v17, v4

    .line 656
    .end local v4    # "left":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    .restart local v17    # "left":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    :goto_3
    invoke-direct {v1, v2, v3, v0}, Lorg/checkerframework/checker/index/upperbound/UpperBoundTransfer;->createTransferResult(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;Lorg/checkerframework/checker/index/upperbound/UBQualifier;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object v4

    return-object v4
.end method
