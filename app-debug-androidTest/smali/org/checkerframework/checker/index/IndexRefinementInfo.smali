.class public Lorg/checkerframework/checker/index/IndexRefinementInfo;
.super Ljava/lang/Object;
.source "IndexRefinementInfo.java"


# instance fields
.field public elseStore:Lorg/checkerframework/framework/flow/CFStore;

.field public left:Lorg/checkerframework/dataflow/cfg/node/Node;

.field public leftAnno:Ljavax/lang/model/element/AnnotationMirror;

.field public newResult:Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;"
        }
    .end annotation
.end field

.field public right:Lorg/checkerframework/dataflow/cfg/node/Node;

.field public rightAnno:Ljavax/lang/model/element/AnnotationMirror;

.field public thenStore:Lorg/checkerframework/framework/flow/CFStore;


# direct methods
.method public constructor <init>(Lorg/checkerframework/dataflow/analysis/TransferResult;Lorg/checkerframework/framework/flow/CFAbstractAnalysis;Lorg/checkerframework/dataflow/cfg/node/BinaryOperationNode;)V
    .locals 2
    .param p3, "node"    # Lorg/checkerframework/dataflow/cfg/node/BinaryOperationNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;",
            "Lorg/checkerframework/framework/flow/CFAbstractAnalysis<",
            "***>;",
            "Lorg/checkerframework/dataflow/cfg/node/BinaryOperationNode;",
            ")V"
        }
    .end annotation

    .line 64
    .local p1, "result":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    .local p2, "analysis":Lorg/checkerframework/framework/flow/CFAbstractAnalysis;, "Lorg/checkerframework/framework/flow/CFAbstractAnalysis<***>;"
    invoke-virtual {p3}, Lorg/checkerframework/dataflow/cfg/node/BinaryOperationNode;->getRightOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v0

    invoke-virtual {p3}, Lorg/checkerframework/dataflow/cfg/node/BinaryOperationNode;->getLeftOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/checkerframework/checker/index/IndexRefinementInfo;-><init>(Lorg/checkerframework/dataflow/analysis/TransferResult;Lorg/checkerframework/framework/flow/CFAbstractAnalysis;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/dataflow/analysis/TransferResult;Lorg/checkerframework/framework/flow/CFAbstractAnalysis;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;)V
    .locals 5
    .param p3, "r"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p4, "l"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;",
            "Lorg/checkerframework/framework/flow/CFAbstractAnalysis<",
            "***>;",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            ")V"
        }
    .end annotation

    .line 38
    .local p1, "result":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    .local p2, "analysis":Lorg/checkerframework/framework/flow/CFAbstractAnalysis;, "Lorg/checkerframework/framework/flow/CFAbstractAnalysis<***>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p3, p0, Lorg/checkerframework/checker/index/IndexRefinementInfo;->right:Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 40
    iput-object p4, p0, Lorg/checkerframework/checker/index/IndexRefinementInfo;->left:Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 42
    invoke-virtual {p2, p3}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getValue(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/AbstractValue;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/checkerframework/checker/index/IndexRefinementInfo;->left:Lorg/checkerframework/dataflow/cfg/node/Node;

    invoke-virtual {p2, v0}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getValue(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/AbstractValue;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {p2}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v0

    .line 49
    .local v0, "hierarchy":Lorg/checkerframework/framework/type/QualifierHierarchy;
    iget-object v1, p0, Lorg/checkerframework/checker/index/IndexRefinementInfo;->right:Lorg/checkerframework/dataflow/cfg/node/Node;

    invoke-virtual {p2, v1}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getValue(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/AbstractValue;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/flow/CFAbstractValue;

    invoke-virtual {v1}, Lorg/checkerframework/framework/flow/CFAbstractValue;->getAnnotations()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/checkerframework/checker/index/IndexRefinementInfo;->getAnno(Ljava/util/Set;Lorg/checkerframework/framework/type/QualifierHierarchy;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/checker/index/IndexRefinementInfo;->rightAnno:Ljavax/lang/model/element/AnnotationMirror;

    .line 50
    iget-object v1, p0, Lorg/checkerframework/checker/index/IndexRefinementInfo;->left:Lorg/checkerframework/dataflow/cfg/node/Node;

    invoke-virtual {p2, v1}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getValue(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/AbstractValue;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/flow/CFAbstractValue;

    invoke-virtual {v1}, Lorg/checkerframework/framework/flow/CFAbstractValue;->getAnnotations()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/checkerframework/checker/index/IndexRefinementInfo;->getAnno(Ljava/util/Set;Lorg/checkerframework/framework/type/QualifierHierarchy;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/checker/index/IndexRefinementInfo;->leftAnno:Ljavax/lang/model/element/AnnotationMirror;

    .line 52
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getThenStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/flow/CFStore;

    iput-object v1, p0, Lorg/checkerframework/checker/index/IndexRefinementInfo;->thenStore:Lorg/checkerframework/framework/flow/CFStore;

    .line 53
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getElseStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/flow/CFStore;

    iput-object v1, p0, Lorg/checkerframework/checker/index/IndexRefinementInfo;->elseStore:Lorg/checkerframework/framework/flow/CFStore;

    .line 55
    new-instance v1, Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult;

    .line 56
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getResultValue()Lorg/checkerframework/dataflow/analysis/AbstractValue;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/flow/CFValue;

    iget-object v3, p0, Lorg/checkerframework/checker/index/IndexRefinementInfo;->thenStore:Lorg/checkerframework/framework/flow/CFStore;

    iget-object v4, p0, Lorg/checkerframework/checker/index/IndexRefinementInfo;->elseStore:Lorg/checkerframework/framework/flow/CFStore;

    invoke-direct {v1, v2, v3, v4}, Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult;-><init>(Lorg/checkerframework/dataflow/analysis/AbstractValue;Lorg/checkerframework/dataflow/analysis/Store;Lorg/checkerframework/dataflow/analysis/Store;)V

    iput-object v1, p0, Lorg/checkerframework/checker/index/IndexRefinementInfo;->newResult:Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult;

    goto :goto_1

    .line 43
    .end local v0    # "hierarchy":Lorg/checkerframework/framework/type/QualifierHierarchy;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/checker/index/IndexRefinementInfo;->leftAnno:Ljavax/lang/model/element/AnnotationMirror;

    .line 44
    iput-object v0, p0, Lorg/checkerframework/checker/index/IndexRefinementInfo;->rightAnno:Ljavax/lang/model/element/AnnotationMirror;

    .line 45
    new-instance v0, Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult;

    .line 46
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getResultValue()Lorg/checkerframework/dataflow/analysis/AbstractValue;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/flow/CFValue;

    iget-object v2, p0, Lorg/checkerframework/checker/index/IndexRefinementInfo;->thenStore:Lorg/checkerframework/framework/flow/CFStore;

    iget-object v3, p0, Lorg/checkerframework/checker/index/IndexRefinementInfo;->elseStore:Lorg/checkerframework/framework/flow/CFStore;

    invoke-direct {v0, v1, v2, v3}, Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult;-><init>(Lorg/checkerframework/dataflow/analysis/AbstractValue;Lorg/checkerframework/dataflow/analysis/Store;Lorg/checkerframework/dataflow/analysis/Store;)V

    iput-object v0, p0, Lorg/checkerframework/checker/index/IndexRefinementInfo;->newResult:Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult;

    .line 58
    :goto_1
    return-void
.end method

.method private static getAnno(Ljava/util/Set;Lorg/checkerframework/framework/type/QualifierHierarchy;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 4
    .param p1, "hierarchy"    # Lorg/checkerframework/framework/type/QualifierHierarchy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;",
            "Lorg/checkerframework/framework/type/QualifierHierarchy;",
            ")",
            "Ljavax/lang/model/element/AnnotationMirror;"
        }
    .end annotation

    .line 69
    .local p0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/QualifierHierarchy;->getTopAnnotations()Ljava/util/Set;

    move-result-object v0

    .line 70
    .local v0, "tops":Ljava/util/Set;, "Ljava/util/Set<+Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 76
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p1, p0, v1}, Lorg/checkerframework/framework/type/QualifierHierarchy;->findAnnotationInHierarchy(Ljava/util/Collection;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    return-object v1

    .line 71
    :cond_0
    new-instance v1, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lorg/checkerframework/checker/index/IndexRefinementInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Found multiple tops, but expected one. \nFound: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v1
.end method
