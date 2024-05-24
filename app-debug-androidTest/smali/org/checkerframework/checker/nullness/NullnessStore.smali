.class public Lorg/checkerframework/checker/nullness/NullnessStore;
.super Lorg/checkerframework/checker/initialization/InitializationStore;
.source "NullnessStore.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/checker/initialization/InitializationStore<",
        "Lorg/checkerframework/checker/nullness/NullnessValue;",
        "Lorg/checkerframework/checker/nullness/NullnessStore;",
        ">;"
    }
.end annotation


# instance fields
.field protected isPolyNullNull:Z


# direct methods
.method public constructor <init>(Lorg/checkerframework/checker/nullness/NullnessStore;)V
    .locals 1
    .param p1, "s"    # Lorg/checkerframework/checker/nullness/NullnessStore;

    .line 26
    invoke-direct {p0, p1}, Lorg/checkerframework/checker/initialization/InitializationStore;-><init>(Lorg/checkerframework/checker/initialization/InitializationStore;)V

    .line 27
    iget-boolean v0, p1, Lorg/checkerframework/checker/nullness/NullnessStore;->isPolyNullNull:Z

    iput-boolean v0, p0, Lorg/checkerframework/checker/nullness/NullnessStore;->isPolyNullNull:Z

    .line 28
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/framework/flow/CFAbstractAnalysis;Z)V
    .locals 1
    .param p2, "sequentialSemantics"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/flow/CFAbstractAnalysis<",
            "Lorg/checkerframework/checker/nullness/NullnessValue;",
            "Lorg/checkerframework/checker/nullness/NullnessStore;",
            "*>;Z)V"
        }
    .end annotation

    .line 21
    .local p1, "analysis":Lorg/checkerframework/framework/flow/CFAbstractAnalysis;, "Lorg/checkerframework/framework/flow/CFAbstractAnalysis<Lorg/checkerframework/checker/nullness/NullnessValue;Lorg/checkerframework/checker/nullness/NullnessStore;*>;"
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/checker/initialization/InitializationStore;-><init>(Lorg/checkerframework/framework/flow/CFAbstractAnalysis;Z)V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/checkerframework/checker/nullness/NullnessStore;->isPolyNullNull:Z

    .line 23
    return-void
.end method


# virtual methods
.method protected internalVisualize(Lorg/checkerframework/dataflow/cfg/CFGVisualizer;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/CFGVisualizer<",
            "Lorg/checkerframework/checker/nullness/NullnessValue;",
            "Lorg/checkerframework/checker/nullness/NullnessStore;",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 55
    .local p1, "viz":Lorg/checkerframework/dataflow/cfg/CFGVisualizer;, "Lorg/checkerframework/dataflow/cfg/CFGVisualizer<Lorg/checkerframework/checker/nullness/NullnessValue;Lorg/checkerframework/checker/nullness/NullnessStore;*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0, p1}, Lorg/checkerframework/checker/initialization/InitializationStore;->internalVisualize(Lorg/checkerframework/dataflow/cfg/CFGVisualizer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/checkerframework/checker/nullness/NullnessStore;->isPolyNullNull:Z

    .line 56
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isPolyNonNull"

    invoke-interface {p1, v2, v1}, Lorg/checkerframework/dataflow/cfg/CFGVisualizer;->visualizeStoreKeyVal(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 55
    return-object v0
.end method

.method public isPolyNullNull()Z
    .locals 1

    .line 60
    iget-boolean v0, p0, Lorg/checkerframework/checker/nullness/NullnessStore;->isPolyNullNull:Z

    return v0
.end method

.method public bridge synthetic leastUpperBound(Lorg/checkerframework/checker/initialization/InitializationStore;)Lorg/checkerframework/checker/initialization/InitializationStore;
    .locals 0

    .line 14
    check-cast p1, Lorg/checkerframework/checker/nullness/NullnessStore;

    invoke-virtual {p0, p1}, Lorg/checkerframework/checker/nullness/NullnessStore;->leastUpperBound(Lorg/checkerframework/checker/nullness/NullnessStore;)Lorg/checkerframework/checker/nullness/NullnessStore;

    move-result-object p1

    return-object p1
.end method

.method public leastUpperBound(Lorg/checkerframework/checker/nullness/NullnessStore;)Lorg/checkerframework/checker/nullness/NullnessStore;
    .locals 3
    .param p1, "other"    # Lorg/checkerframework/checker/nullness/NullnessStore;

    .line 32
    invoke-super {p0, p1}, Lorg/checkerframework/checker/initialization/InitializationStore;->leastUpperBound(Lorg/checkerframework/checker/initialization/InitializationStore;)Lorg/checkerframework/checker/initialization/InitializationStore;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/checker/nullness/NullnessStore;

    .line 33
    .local v0, "lub":Lorg/checkerframework/checker/nullness/NullnessStore;
    iget-boolean v1, p0, Lorg/checkerframework/checker/nullness/NullnessStore;->isPolyNullNull:Z

    iget-boolean v2, p1, Lorg/checkerframework/checker/nullness/NullnessStore;->isPolyNullNull:Z

    if-ne v1, v2, :cond_0

    .line 34
    iput-boolean v1, v0, Lorg/checkerframework/checker/nullness/NullnessStore;->isPolyNullNull:Z

    goto :goto_0

    .line 36
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/checkerframework/checker/nullness/NullnessStore;->isPolyNullNull:Z

    .line 38
    :goto_0
    return-object v0
.end method

.method public bridge synthetic leastUpperBound(Lorg/checkerframework/dataflow/analysis/Store;)Lorg/checkerframework/dataflow/analysis/Store;
    .locals 0

    .line 14
    check-cast p1, Lorg/checkerframework/checker/nullness/NullnessStore;

    invoke-virtual {p0, p1}, Lorg/checkerframework/checker/nullness/NullnessStore;->leastUpperBound(Lorg/checkerframework/checker/nullness/NullnessStore;)Lorg/checkerframework/checker/nullness/NullnessStore;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic leastUpperBound(Lorg/checkerframework/framework/flow/CFAbstractStore;)Lorg/checkerframework/framework/flow/CFAbstractStore;
    .locals 0

    .line 14
    check-cast p1, Lorg/checkerframework/checker/nullness/NullnessStore;

    invoke-virtual {p0, p1}, Lorg/checkerframework/checker/nullness/NullnessStore;->leastUpperBound(Lorg/checkerframework/checker/nullness/NullnessStore;)Lorg/checkerframework/checker/nullness/NullnessStore;

    move-result-object p1

    return-object p1
.end method

.method public setPolyNullNull(Z)V
    .locals 0
    .param p1, "isPolyNullNull"    # Z

    .line 64
    iput-boolean p1, p0, Lorg/checkerframework/checker/nullness/NullnessStore;->isPolyNullNull:Z

    .line 65
    return-void
.end method

.method protected supersetOf(Lorg/checkerframework/framework/flow/CFAbstractStore;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/flow/CFAbstractStore<",
            "Lorg/checkerframework/checker/nullness/NullnessValue;",
            "Lorg/checkerframework/checker/nullness/NullnessStore;",
            ">;)Z"
        }
    .end annotation

    .line 43
    .local p1, "o":Lorg/checkerframework/framework/flow/CFAbstractStore;, "Lorg/checkerframework/framework/flow/CFAbstractStore<Lorg/checkerframework/checker/nullness/NullnessValue;Lorg/checkerframework/checker/nullness/NullnessStore;>;"
    instance-of v0, p1, Lorg/checkerframework/checker/initialization/InitializationStore;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 44
    return v1

    .line 46
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/checker/nullness/NullnessStore;

    .line 47
    .local v0, "other":Lorg/checkerframework/checker/nullness/NullnessStore;
    iget-boolean v2, v0, Lorg/checkerframework/checker/nullness/NullnessStore;->isPolyNullNull:Z

    iget-boolean v3, p0, Lorg/checkerframework/checker/nullness/NullnessStore;->isPolyNullNull:Z

    if-eq v2, v3, :cond_1

    .line 48
    return v1

    .line 50
    :cond_1
    invoke-super {p0, v0}, Lorg/checkerframework/checker/initialization/InitializationStore;->supersetOf(Lorg/checkerframework/framework/flow/CFAbstractStore;)Z

    move-result v1

    return v1
.end method
