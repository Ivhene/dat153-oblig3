.class public abstract Lorg/checkerframework/checker/index/IndexAbstractTransfer;
.super Lorg/checkerframework/framework/flow/CFTransfer;
.source "IndexAbstractTransfer.java"


# direct methods
.method protected constructor <init>(Lorg/checkerframework/framework/flow/CFAnalysis;)V
    .locals 0
    .param p1, "analysis"    # Lorg/checkerframework/framework/flow/CFAnalysis;

    .line 24
    invoke-direct {p0, p1}, Lorg/checkerframework/framework/flow/CFTransfer;-><init>(Lorg/checkerframework/framework/flow/CFAbstractAnalysis;)V

    .line 25
    return-void
.end method


# virtual methods
.method protected abstract refineGT(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/flow/CFStore;Lorg/checkerframework/dataflow/analysis/TransferInput;)V
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
.end method

.method protected abstract refineGTE(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/flow/CFStore;Lorg/checkerframework/dataflow/analysis/TransferInput;)V
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
.end method

.method public bridge synthetic visitGreaterThan(Lorg/checkerframework/dataflow/cfg/node/GreaterThanNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 20
    check-cast p2, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/index/IndexAbstractTransfer;->visitGreaterThan(Lorg/checkerframework/dataflow/cfg/node/GreaterThanNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method public visitGreaterThan(Lorg/checkerframework/dataflow/cfg/node/GreaterThanNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 9
    .param p1, "node"    # Lorg/checkerframework/dataflow/cfg/node/GreaterThanNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/GreaterThanNode;",
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

    .line 30
    .local p2, "in":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/flow/CFTransfer;->visitGreaterThan(Lorg/checkerframework/dataflow/cfg/node/GreaterThanNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/analysis/TransferResult;

    .line 32
    .local v0, "result":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    new-instance v1, Lorg/checkerframework/checker/index/IndexRefinementInfo;

    iget-object v2, p0, Lorg/checkerframework/checker/index/IndexAbstractTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    invoke-direct {v1, v0, v2, p1}, Lorg/checkerframework/checker/index/IndexRefinementInfo;-><init>(Lorg/checkerframework/dataflow/analysis/TransferResult;Lorg/checkerframework/framework/flow/CFAbstractAnalysis;Lorg/checkerframework/dataflow/cfg/node/BinaryOperationNode;)V

    .line 33
    .local v1, "rfi":Lorg/checkerframework/checker/index/IndexRefinementInfo;
    iget-object v2, v1, Lorg/checkerframework/checker/index/IndexRefinementInfo;->leftAnno:Ljavax/lang/model/element/AnnotationMirror;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lorg/checkerframework/checker/index/IndexRefinementInfo;->rightAnno:Ljavax/lang/model/element/AnnotationMirror;

    if-nez v2, :cond_0

    goto :goto_0

    .line 37
    :cond_0
    iget-object v3, v1, Lorg/checkerframework/checker/index/IndexRefinementInfo;->left:Lorg/checkerframework/dataflow/cfg/node/Node;

    iget-object v4, v1, Lorg/checkerframework/checker/index/IndexRefinementInfo;->leftAnno:Ljavax/lang/model/element/AnnotationMirror;

    iget-object v5, v1, Lorg/checkerframework/checker/index/IndexRefinementInfo;->right:Lorg/checkerframework/dataflow/cfg/node/Node;

    iget-object v6, v1, Lorg/checkerframework/checker/index/IndexRefinementInfo;->rightAnno:Ljavax/lang/model/element/AnnotationMirror;

    iget-object v7, v1, Lorg/checkerframework/checker/index/IndexRefinementInfo;->thenStore:Lorg/checkerframework/framework/flow/CFStore;

    move-object v2, p0

    move-object v8, p2

    invoke-virtual/range {v2 .. v8}, Lorg/checkerframework/checker/index/IndexAbstractTransfer;->refineGT(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/flow/CFStore;Lorg/checkerframework/dataflow/analysis/TransferInput;)V

    .line 40
    iget-object v3, v1, Lorg/checkerframework/checker/index/IndexRefinementInfo;->right:Lorg/checkerframework/dataflow/cfg/node/Node;

    iget-object v4, v1, Lorg/checkerframework/checker/index/IndexRefinementInfo;->rightAnno:Ljavax/lang/model/element/AnnotationMirror;

    iget-object v5, v1, Lorg/checkerframework/checker/index/IndexRefinementInfo;->left:Lorg/checkerframework/dataflow/cfg/node/Node;

    iget-object v6, v1, Lorg/checkerframework/checker/index/IndexRefinementInfo;->leftAnno:Ljavax/lang/model/element/AnnotationMirror;

    iget-object v7, v1, Lorg/checkerframework/checker/index/IndexRefinementInfo;->elseStore:Lorg/checkerframework/framework/flow/CFStore;

    invoke-virtual/range {v2 .. v8}, Lorg/checkerframework/checker/index/IndexAbstractTransfer;->refineGTE(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/flow/CFStore;Lorg/checkerframework/dataflow/analysis/TransferInput;)V

    .line 42
    iget-object v2, v1, Lorg/checkerframework/checker/index/IndexRefinementInfo;->newResult:Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult;

    return-object v2

    .line 34
    :cond_1
    :goto_0
    return-object v0
.end method

.method public bridge synthetic visitGreaterThanOrEqual(Lorg/checkerframework/dataflow/cfg/node/GreaterThanOrEqualNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 20
    check-cast p2, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/index/IndexAbstractTransfer;->visitGreaterThanOrEqual(Lorg/checkerframework/dataflow/cfg/node/GreaterThanOrEqualNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method public visitGreaterThanOrEqual(Lorg/checkerframework/dataflow/cfg/node/GreaterThanOrEqualNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 9
    .param p1, "node"    # Lorg/checkerframework/dataflow/cfg/node/GreaterThanOrEqualNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/GreaterThanOrEqualNode;",
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

    .line 48
    .local p2, "in":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/flow/CFTransfer;->visitGreaterThanOrEqual(Lorg/checkerframework/dataflow/cfg/node/GreaterThanOrEqualNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/analysis/TransferResult;

    .line 50
    .local v0, "result":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    new-instance v1, Lorg/checkerframework/checker/index/IndexRefinementInfo;

    iget-object v2, p0, Lorg/checkerframework/checker/index/IndexAbstractTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    invoke-direct {v1, v0, v2, p1}, Lorg/checkerframework/checker/index/IndexRefinementInfo;-><init>(Lorg/checkerframework/dataflow/analysis/TransferResult;Lorg/checkerframework/framework/flow/CFAbstractAnalysis;Lorg/checkerframework/dataflow/cfg/node/BinaryOperationNode;)V

    .line 51
    .local v1, "rfi":Lorg/checkerframework/checker/index/IndexRefinementInfo;
    iget-object v2, v1, Lorg/checkerframework/checker/index/IndexRefinementInfo;->leftAnno:Ljavax/lang/model/element/AnnotationMirror;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lorg/checkerframework/checker/index/IndexRefinementInfo;->rightAnno:Ljavax/lang/model/element/AnnotationMirror;

    if-nez v2, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    iget-object v3, v1, Lorg/checkerframework/checker/index/IndexRefinementInfo;->left:Lorg/checkerframework/dataflow/cfg/node/Node;

    iget-object v4, v1, Lorg/checkerframework/checker/index/IndexRefinementInfo;->leftAnno:Ljavax/lang/model/element/AnnotationMirror;

    iget-object v5, v1, Lorg/checkerframework/checker/index/IndexRefinementInfo;->right:Lorg/checkerframework/dataflow/cfg/node/Node;

    iget-object v6, v1, Lorg/checkerframework/checker/index/IndexRefinementInfo;->rightAnno:Ljavax/lang/model/element/AnnotationMirror;

    iget-object v7, v1, Lorg/checkerframework/checker/index/IndexRefinementInfo;->thenStore:Lorg/checkerframework/framework/flow/CFStore;

    move-object v2, p0

    move-object v8, p2

    invoke-virtual/range {v2 .. v8}, Lorg/checkerframework/checker/index/IndexAbstractTransfer;->refineGTE(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/flow/CFStore;Lorg/checkerframework/dataflow/analysis/TransferInput;)V

    .line 59
    iget-object v3, v1, Lorg/checkerframework/checker/index/IndexRefinementInfo;->right:Lorg/checkerframework/dataflow/cfg/node/Node;

    iget-object v4, v1, Lorg/checkerframework/checker/index/IndexRefinementInfo;->rightAnno:Ljavax/lang/model/element/AnnotationMirror;

    iget-object v5, v1, Lorg/checkerframework/checker/index/IndexRefinementInfo;->left:Lorg/checkerframework/dataflow/cfg/node/Node;

    iget-object v6, v1, Lorg/checkerframework/checker/index/IndexRefinementInfo;->leftAnno:Ljavax/lang/model/element/AnnotationMirror;

    iget-object v7, v1, Lorg/checkerframework/checker/index/IndexRefinementInfo;->elseStore:Lorg/checkerframework/framework/flow/CFStore;

    invoke-virtual/range {v2 .. v8}, Lorg/checkerframework/checker/index/IndexAbstractTransfer;->refineGT(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/flow/CFStore;Lorg/checkerframework/dataflow/analysis/TransferInput;)V

    .line 61
    iget-object v2, v1, Lorg/checkerframework/checker/index/IndexRefinementInfo;->newResult:Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult;

    return-object v2

    .line 52
    :cond_1
    :goto_0
    return-object v0
.end method

.method public bridge synthetic visitLessThan(Lorg/checkerframework/dataflow/cfg/node/LessThanNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 20
    check-cast p2, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/index/IndexAbstractTransfer;->visitLessThan(Lorg/checkerframework/dataflow/cfg/node/LessThanNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method public visitLessThan(Lorg/checkerframework/dataflow/cfg/node/LessThanNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 9
    .param p1, "node"    # Lorg/checkerframework/dataflow/cfg/node/LessThanNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/LessThanNode;",
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

    .line 85
    .local p2, "in":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/flow/CFTransfer;->visitLessThan(Lorg/checkerframework/dataflow/cfg/node/LessThanNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/analysis/TransferResult;

    .line 87
    .local v0, "result":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    new-instance v1, Lorg/checkerframework/checker/index/IndexRefinementInfo;

    iget-object v2, p0, Lorg/checkerframework/checker/index/IndexAbstractTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    invoke-direct {v1, v0, v2, p1}, Lorg/checkerframework/checker/index/IndexRefinementInfo;-><init>(Lorg/checkerframework/dataflow/analysis/TransferResult;Lorg/checkerframework/framework/flow/CFAbstractAnalysis;Lorg/checkerframework/dataflow/cfg/node/BinaryOperationNode;)V

    .line 88
    .local v1, "rfi":Lorg/checkerframework/checker/index/IndexRefinementInfo;
    iget-object v2, v1, Lorg/checkerframework/checker/index/IndexRefinementInfo;->leftAnno:Ljavax/lang/model/element/AnnotationMirror;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lorg/checkerframework/checker/index/IndexRefinementInfo;->rightAnno:Ljavax/lang/model/element/AnnotationMirror;

    if-nez v2, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    iget-object v3, v1, Lorg/checkerframework/checker/index/IndexRefinementInfo;->right:Lorg/checkerframework/dataflow/cfg/node/Node;

    iget-object v4, v1, Lorg/checkerframework/checker/index/IndexRefinementInfo;->rightAnno:Ljavax/lang/model/element/AnnotationMirror;

    iget-object v5, v1, Lorg/checkerframework/checker/index/IndexRefinementInfo;->left:Lorg/checkerframework/dataflow/cfg/node/Node;

    iget-object v6, v1, Lorg/checkerframework/checker/index/IndexRefinementInfo;->leftAnno:Ljavax/lang/model/element/AnnotationMirror;

    iget-object v7, v1, Lorg/checkerframework/checker/index/IndexRefinementInfo;->thenStore:Lorg/checkerframework/framework/flow/CFStore;

    move-object v2, p0

    move-object v8, p2

    invoke-virtual/range {v2 .. v8}, Lorg/checkerframework/checker/index/IndexAbstractTransfer;->refineGT(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/flow/CFStore;Lorg/checkerframework/dataflow/analysis/TransferInput;)V

    .line 96
    iget-object v3, v1, Lorg/checkerframework/checker/index/IndexRefinementInfo;->left:Lorg/checkerframework/dataflow/cfg/node/Node;

    iget-object v4, v1, Lorg/checkerframework/checker/index/IndexRefinementInfo;->leftAnno:Ljavax/lang/model/element/AnnotationMirror;

    iget-object v5, v1, Lorg/checkerframework/checker/index/IndexRefinementInfo;->right:Lorg/checkerframework/dataflow/cfg/node/Node;

    iget-object v6, v1, Lorg/checkerframework/checker/index/IndexRefinementInfo;->rightAnno:Ljavax/lang/model/element/AnnotationMirror;

    iget-object v7, v1, Lorg/checkerframework/checker/index/IndexRefinementInfo;->elseStore:Lorg/checkerframework/framework/flow/CFStore;

    invoke-virtual/range {v2 .. v8}, Lorg/checkerframework/checker/index/IndexAbstractTransfer;->refineGTE(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/flow/CFStore;Lorg/checkerframework/dataflow/analysis/TransferInput;)V

    .line 97
    iget-object v2, v1, Lorg/checkerframework/checker/index/IndexRefinementInfo;->newResult:Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult;

    return-object v2

    .line 89
    :cond_1
    :goto_0
    return-object v0
.end method

.method public bridge synthetic visitLessThanOrEqual(Lorg/checkerframework/dataflow/cfg/node/LessThanOrEqualNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 20
    check-cast p2, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/index/IndexAbstractTransfer;->visitLessThanOrEqual(Lorg/checkerframework/dataflow/cfg/node/LessThanOrEqualNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method public visitLessThanOrEqual(Lorg/checkerframework/dataflow/cfg/node/LessThanOrEqualNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 9
    .param p1, "node"    # Lorg/checkerframework/dataflow/cfg/node/LessThanOrEqualNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/LessThanOrEqualNode;",
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

    .line 67
    .local p2, "in":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/flow/CFTransfer;->visitLessThanOrEqual(Lorg/checkerframework/dataflow/cfg/node/LessThanOrEqualNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/analysis/TransferResult;

    .line 69
    .local v0, "result":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    new-instance v1, Lorg/checkerframework/checker/index/IndexRefinementInfo;

    iget-object v2, p0, Lorg/checkerframework/checker/index/IndexAbstractTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    invoke-direct {v1, v0, v2, p1}, Lorg/checkerframework/checker/index/IndexRefinementInfo;-><init>(Lorg/checkerframework/dataflow/analysis/TransferResult;Lorg/checkerframework/framework/flow/CFAbstractAnalysis;Lorg/checkerframework/dataflow/cfg/node/BinaryOperationNode;)V

    .line 70
    .local v1, "rfi":Lorg/checkerframework/checker/index/IndexRefinementInfo;
    iget-object v2, v1, Lorg/checkerframework/checker/index/IndexRefinementInfo;->leftAnno:Ljavax/lang/model/element/AnnotationMirror;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lorg/checkerframework/checker/index/IndexRefinementInfo;->rightAnno:Ljavax/lang/model/element/AnnotationMirror;

    if-nez v2, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    iget-object v3, v1, Lorg/checkerframework/checker/index/IndexRefinementInfo;->right:Lorg/checkerframework/dataflow/cfg/node/Node;

    iget-object v4, v1, Lorg/checkerframework/checker/index/IndexRefinementInfo;->rightAnno:Ljavax/lang/model/element/AnnotationMirror;

    iget-object v5, v1, Lorg/checkerframework/checker/index/IndexRefinementInfo;->left:Lorg/checkerframework/dataflow/cfg/node/Node;

    iget-object v6, v1, Lorg/checkerframework/checker/index/IndexRefinementInfo;->leftAnno:Ljavax/lang/model/element/AnnotationMirror;

    iget-object v7, v1, Lorg/checkerframework/checker/index/IndexRefinementInfo;->thenStore:Lorg/checkerframework/framework/flow/CFStore;

    move-object v2, p0

    move-object v8, p2

    invoke-virtual/range {v2 .. v8}, Lorg/checkerframework/checker/index/IndexAbstractTransfer;->refineGTE(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/flow/CFStore;Lorg/checkerframework/dataflow/analysis/TransferInput;)V

    .line 78
    iget-object v3, v1, Lorg/checkerframework/checker/index/IndexRefinementInfo;->left:Lorg/checkerframework/dataflow/cfg/node/Node;

    iget-object v4, v1, Lorg/checkerframework/checker/index/IndexRefinementInfo;->leftAnno:Ljavax/lang/model/element/AnnotationMirror;

    iget-object v5, v1, Lorg/checkerframework/checker/index/IndexRefinementInfo;->right:Lorg/checkerframework/dataflow/cfg/node/Node;

    iget-object v6, v1, Lorg/checkerframework/checker/index/IndexRefinementInfo;->rightAnno:Ljavax/lang/model/element/AnnotationMirror;

    iget-object v7, v1, Lorg/checkerframework/checker/index/IndexRefinementInfo;->elseStore:Lorg/checkerframework/framework/flow/CFStore;

    invoke-virtual/range {v2 .. v8}, Lorg/checkerframework/checker/index/IndexAbstractTransfer;->refineGT(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/flow/CFStore;Lorg/checkerframework/dataflow/analysis/TransferInput;)V

    .line 79
    iget-object v2, v1, Lorg/checkerframework/checker/index/IndexRefinementInfo;->newResult:Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult;

    return-object v2

    .line 71
    :cond_1
    :goto_0
    return-object v0
.end method
