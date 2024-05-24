.class public final Lorg/checkerframework/com/google/common/graph/GraphBuilder;
.super Lorg/checkerframework/com/google/common/graph/AbstractGraphBuilder;
.source "GraphBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/graph/AbstractGraphBuilder<",
        "TN;>;"
    }
.end annotation


# direct methods
.method private constructor <init>(Z)V
    .locals 0
    .param p1, "directed"    # Z

    .line 68
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/GraphBuilder;, "Lorg/checkerframework/com/google/common/graph/GraphBuilder<TN;>;"
    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/graph/AbstractGraphBuilder;-><init>(Z)V

    .line 69
    return-void
.end method

.method private cast()Lorg/checkerframework/com/google/common/graph/GraphBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N1:TN;>()",
            "Lorg/checkerframework/com/google/common/graph/GraphBuilder<",
            "TN1;>;"
        }
    .end annotation

    .line 146
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/GraphBuilder;, "Lorg/checkerframework/com/google/common/graph/GraphBuilder<TN;>;"
    return-object p0
.end method

.method public static directed()Lorg/checkerframework/com/google/common/graph/GraphBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/graph/GraphBuilder<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 73
    new-instance v0, Lorg/checkerframework/com/google/common/graph/GraphBuilder;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/graph/GraphBuilder;-><init>(Z)V

    return-object v0
.end method

.method public static from(Lorg/checkerframework/com/google/common/graph/Graph;)Lorg/checkerframework/com/google/common/graph/GraphBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/graph/Graph<",
            "TN;>;)",
            "Lorg/checkerframework/com/google/common/graph/GraphBuilder<",
            "TN;>;"
        }
    .end annotation

    .line 89
    .local p0, "graph":Lorg/checkerframework/com/google/common/graph/Graph;, "Lorg/checkerframework/com/google/common/graph/Graph<TN;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/graph/GraphBuilder;

    invoke-interface {p0}, Lorg/checkerframework/com/google/common/graph/Graph;->isDirected()Z

    move-result v1

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/graph/GraphBuilder;-><init>(Z)V

    .line 90
    invoke-interface {p0}, Lorg/checkerframework/com/google/common/graph/Graph;->allowsSelfLoops()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/graph/GraphBuilder;->allowsSelfLoops(Z)Lorg/checkerframework/com/google/common/graph/GraphBuilder;

    move-result-object v0

    .line 91
    invoke-interface {p0}, Lorg/checkerframework/com/google/common/graph/Graph;->nodeOrder()Lorg/checkerframework/com/google/common/graph/ElementOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/graph/GraphBuilder;->nodeOrder(Lorg/checkerframework/com/google/common/graph/ElementOrder;)Lorg/checkerframework/com/google/common/graph/GraphBuilder;

    move-result-object v0

    .line 89
    return-object v0
.end method

.method public static undirected()Lorg/checkerframework/com/google/common/graph/GraphBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/graph/GraphBuilder<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 78
    new-instance v0, Lorg/checkerframework/com/google/common/graph/GraphBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/graph/GraphBuilder;-><init>(Z)V

    return-object v0
.end method


# virtual methods
.method public allowsSelfLoops(Z)Lorg/checkerframework/com/google/common/graph/GraphBuilder;
    .locals 0
    .param p1, "allowsSelfLoops"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lorg/checkerframework/com/google/common/graph/GraphBuilder<",
            "TN;>;"
        }
    .end annotation

    .line 114
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/GraphBuilder;, "Lorg/checkerframework/com/google/common/graph/GraphBuilder<TN;>;"
    iput-boolean p1, p0, Lorg/checkerframework/com/google/common/graph/GraphBuilder;->allowsSelfLoops:Z

    .line 115
    return-object p0
.end method

.method public build()Lorg/checkerframework/com/google/common/graph/MutableGraph;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N1:TN;>()",
            "Lorg/checkerframework/com/google/common/graph/MutableGraph<",
            "TN1;>;"
        }
    .end annotation

    .line 141
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/GraphBuilder;, "Lorg/checkerframework/com/google/common/graph/GraphBuilder<TN;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/graph/ConfigurableMutableGraph;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/graph/ConfigurableMutableGraph;-><init>(Lorg/checkerframework/com/google/common/graph/AbstractGraphBuilder;)V

    return-object v0
.end method

.method public expectedNodeCount(I)Lorg/checkerframework/com/google/common/graph/GraphBuilder;
    .locals 1
    .param p1, "expectedNodeCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/checkerframework/com/google/common/graph/GraphBuilder<",
            "TN;>;"
        }
    .end annotation

    .line 124
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/GraphBuilder;, "Lorg/checkerframework/com/google/common/graph/GraphBuilder<TN;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/graph/Graphs;->checkNonNegative(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/base/Optional;->of(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/graph/GraphBuilder;->expectedNodeCount:Lorg/checkerframework/com/google/common/base/Optional;

    .line 125
    return-object p0
.end method

.method public immutable()Lorg/checkerframework/com/google/common/graph/ImmutableGraph$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N1:TN;>()",
            "Lorg/checkerframework/com/google/common/graph/ImmutableGraph$Builder<",
            "TN1;>;"
        }
    .end annotation

    .line 102
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/GraphBuilder;, "Lorg/checkerframework/com/google/common/graph/GraphBuilder<TN;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/graph/GraphBuilder;->cast()Lorg/checkerframework/com/google/common/graph/GraphBuilder;

    move-result-object v0

    .line 103
    .local v0, "castBuilder":Lorg/checkerframework/com/google/common/graph/GraphBuilder;, "Lorg/checkerframework/com/google/common/graph/GraphBuilder<TN1;>;"
    new-instance v1, Lorg/checkerframework/com/google/common/graph/ImmutableGraph$Builder;

    invoke-direct {v1, v0}, Lorg/checkerframework/com/google/common/graph/ImmutableGraph$Builder;-><init>(Lorg/checkerframework/com/google/common/graph/GraphBuilder;)V

    return-object v1
.end method

.method public nodeOrder(Lorg/checkerframework/com/google/common/graph/ElementOrder;)Lorg/checkerframework/com/google/common/graph/GraphBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N1:TN;>(",
            "Lorg/checkerframework/com/google/common/graph/ElementOrder<",
            "TN1;>;)",
            "Lorg/checkerframework/com/google/common/graph/GraphBuilder<",
            "TN1;>;"
        }
    .end annotation

    .line 134
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/GraphBuilder;, "Lorg/checkerframework/com/google/common/graph/GraphBuilder<TN;>;"
    .local p1, "nodeOrder":Lorg/checkerframework/com/google/common/graph/ElementOrder;, "Lorg/checkerframework/com/google/common/graph/ElementOrder<TN1;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/graph/GraphBuilder;->cast()Lorg/checkerframework/com/google/common/graph/GraphBuilder;

    move-result-object v0

    .line 135
    .local v0, "newBuilder":Lorg/checkerframework/com/google/common/graph/GraphBuilder;, "Lorg/checkerframework/com/google/common/graph/GraphBuilder<TN1;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/google/common/graph/ElementOrder;

    iput-object v1, v0, Lorg/checkerframework/com/google/common/graph/GraphBuilder;->nodeOrder:Lorg/checkerframework/com/google/common/graph/ElementOrder;

    .line 136
    return-object v0
.end method
