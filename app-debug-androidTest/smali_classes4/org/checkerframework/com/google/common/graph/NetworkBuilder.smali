.class public final Lorg/checkerframework/com/google/common/graph/NetworkBuilder;
.super Lorg/checkerframework/com/google/common/graph/AbstractGraphBuilder;
.source "NetworkBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/graph/AbstractGraphBuilder<",
        "TN;>;"
    }
.end annotation


# instance fields
.field allowsParallelEdges:Z

.field edgeOrder:Lorg/checkerframework/com/google/common/graph/ElementOrder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/graph/ElementOrder<",
            "-TE;>;"
        }
    .end annotation
.end field

.field expectedEdgeCount:Lorg/checkerframework/com/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/base/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Z)V
    .locals 1
    .param p1, "directed"    # Z

    .line 77
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/NetworkBuilder;, "Lorg/checkerframework/com/google/common/graph/NetworkBuilder<TN;TE;>;"
    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/graph/AbstractGraphBuilder;-><init>(Z)V

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/checkerframework/com/google/common/graph/NetworkBuilder;->allowsParallelEdges:Z

    .line 72
    invoke-static {}, Lorg/checkerframework/com/google/common/graph/ElementOrder;->insertion()Lorg/checkerframework/com/google/common/graph/ElementOrder;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/graph/NetworkBuilder;->edgeOrder:Lorg/checkerframework/com/google/common/graph/ElementOrder;

    .line 73
    invoke-static {}, Lorg/checkerframework/com/google/common/base/Optional;->absent()Lorg/checkerframework/com/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/graph/NetworkBuilder;->expectedEdgeCount:Lorg/checkerframework/com/google/common/base/Optional;

    .line 78
    return-void
.end method

.method private cast()Lorg/checkerframework/com/google/common/graph/NetworkBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N1:TN;E1:TE;>()",
            "Lorg/checkerframework/com/google/common/graph/NetworkBuilder<",
            "TN1;TE1;>;"
        }
    .end annotation

    .line 190
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/NetworkBuilder;, "Lorg/checkerframework/com/google/common/graph/NetworkBuilder<TN;TE;>;"
    return-object p0
.end method

.method public static directed()Lorg/checkerframework/com/google/common/graph/NetworkBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/graph/NetworkBuilder<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 82
    new-instance v0, Lorg/checkerframework/com/google/common/graph/NetworkBuilder;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/graph/NetworkBuilder;-><init>(Z)V

    return-object v0
.end method

.method public static from(Lorg/checkerframework/com/google/common/graph/Network;)Lorg/checkerframework/com/google/common/graph/NetworkBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/graph/Network<",
            "TN;TE;>;)",
            "Lorg/checkerframework/com/google/common/graph/NetworkBuilder<",
            "TN;TE;>;"
        }
    .end annotation

    .line 99
    .local p0, "network":Lorg/checkerframework/com/google/common/graph/Network;, "Lorg/checkerframework/com/google/common/graph/Network<TN;TE;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/graph/NetworkBuilder;

    invoke-interface {p0}, Lorg/checkerframework/com/google/common/graph/Network;->isDirected()Z

    move-result v1

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/graph/NetworkBuilder;-><init>(Z)V

    .line 100
    invoke-interface {p0}, Lorg/checkerframework/com/google/common/graph/Network;->allowsParallelEdges()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/graph/NetworkBuilder;->allowsParallelEdges(Z)Lorg/checkerframework/com/google/common/graph/NetworkBuilder;

    move-result-object v0

    .line 101
    invoke-interface {p0}, Lorg/checkerframework/com/google/common/graph/Network;->allowsSelfLoops()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/graph/NetworkBuilder;->allowsSelfLoops(Z)Lorg/checkerframework/com/google/common/graph/NetworkBuilder;

    move-result-object v0

    .line 102
    invoke-interface {p0}, Lorg/checkerframework/com/google/common/graph/Network;->nodeOrder()Lorg/checkerframework/com/google/common/graph/ElementOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/graph/NetworkBuilder;->nodeOrder(Lorg/checkerframework/com/google/common/graph/ElementOrder;)Lorg/checkerframework/com/google/common/graph/NetworkBuilder;

    move-result-object v0

    .line 103
    invoke-interface {p0}, Lorg/checkerframework/com/google/common/graph/Network;->edgeOrder()Lorg/checkerframework/com/google/common/graph/ElementOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/graph/NetworkBuilder;->edgeOrder(Lorg/checkerframework/com/google/common/graph/ElementOrder;)Lorg/checkerframework/com/google/common/graph/NetworkBuilder;

    move-result-object v0

    .line 99
    return-object v0
.end method

.method public static undirected()Lorg/checkerframework/com/google/common/graph/NetworkBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/graph/NetworkBuilder<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 87
    new-instance v0, Lorg/checkerframework/com/google/common/graph/NetworkBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/graph/NetworkBuilder;-><init>(Z)V

    return-object v0
.end method


# virtual methods
.method public allowsParallelEdges(Z)Lorg/checkerframework/com/google/common/graph/NetworkBuilder;
    .locals 0
    .param p1, "allowsParallelEdges"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lorg/checkerframework/com/google/common/graph/NetworkBuilder<",
            "TN;TE;>;"
        }
    .end annotation

    .line 125
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/NetworkBuilder;, "Lorg/checkerframework/com/google/common/graph/NetworkBuilder<TN;TE;>;"
    iput-boolean p1, p0, Lorg/checkerframework/com/google/common/graph/NetworkBuilder;->allowsParallelEdges:Z

    .line 126
    return-object p0
.end method

.method public allowsSelfLoops(Z)Lorg/checkerframework/com/google/common/graph/NetworkBuilder;
    .locals 0
    .param p1, "allowsSelfLoops"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lorg/checkerframework/com/google/common/graph/NetworkBuilder<",
            "TN;TE;>;"
        }
    .end annotation

    .line 137
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/NetworkBuilder;, "Lorg/checkerframework/com/google/common/graph/NetworkBuilder<TN;TE;>;"
    iput-boolean p1, p0, Lorg/checkerframework/com/google/common/graph/NetworkBuilder;->allowsSelfLoops:Z

    .line 138
    return-object p0
.end method

.method public build()Lorg/checkerframework/com/google/common/graph/MutableNetwork;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N1:TN;E1:TE;>()",
            "Lorg/checkerframework/com/google/common/graph/MutableNetwork<",
            "TN1;TE1;>;"
        }
    .end annotation

    .line 185
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/NetworkBuilder;, "Lorg/checkerframework/com/google/common/graph/NetworkBuilder<TN;TE;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/graph/ConfigurableMutableNetwork;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/graph/ConfigurableMutableNetwork;-><init>(Lorg/checkerframework/com/google/common/graph/NetworkBuilder;)V

    return-object v0
.end method

.method public edgeOrder(Lorg/checkerframework/com/google/common/graph/ElementOrder;)Lorg/checkerframework/com/google/common/graph/NetworkBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E1:TE;>(",
            "Lorg/checkerframework/com/google/common/graph/ElementOrder<",
            "TE1;>;)",
            "Lorg/checkerframework/com/google/common/graph/NetworkBuilder<",
            "TN;TE1;>;"
        }
    .end annotation

    .line 178
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/NetworkBuilder;, "Lorg/checkerframework/com/google/common/graph/NetworkBuilder<TN;TE;>;"
    .local p1, "edgeOrder":Lorg/checkerframework/com/google/common/graph/ElementOrder;, "Lorg/checkerframework/com/google/common/graph/ElementOrder<TE1;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/graph/NetworkBuilder;->cast()Lorg/checkerframework/com/google/common/graph/NetworkBuilder;

    move-result-object v0

    .line 179
    .local v0, "newBuilder":Lorg/checkerframework/com/google/common/graph/NetworkBuilder;, "Lorg/checkerframework/com/google/common/graph/NetworkBuilder<TN;TE1;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/google/common/graph/ElementOrder;

    iput-object v1, v0, Lorg/checkerframework/com/google/common/graph/NetworkBuilder;->edgeOrder:Lorg/checkerframework/com/google/common/graph/ElementOrder;

    .line 180
    return-object v0
.end method

.method public expectedEdgeCount(I)Lorg/checkerframework/com/google/common/graph/NetworkBuilder;
    .locals 1
    .param p1, "expectedEdgeCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/checkerframework/com/google/common/graph/NetworkBuilder<",
            "TN;TE;>;"
        }
    .end annotation

    .line 157
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/NetworkBuilder;, "Lorg/checkerframework/com/google/common/graph/NetworkBuilder<TN;TE;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/graph/Graphs;->checkNonNegative(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/base/Optional;->of(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/graph/NetworkBuilder;->expectedEdgeCount:Lorg/checkerframework/com/google/common/base/Optional;

    .line 158
    return-object p0
.end method

.method public expectedNodeCount(I)Lorg/checkerframework/com/google/common/graph/NetworkBuilder;
    .locals 1
    .param p1, "expectedNodeCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/checkerframework/com/google/common/graph/NetworkBuilder<",
            "TN;TE;>;"
        }
    .end annotation

    .line 147
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/NetworkBuilder;, "Lorg/checkerframework/com/google/common/graph/NetworkBuilder<TN;TE;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/graph/Graphs;->checkNonNegative(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/base/Optional;->of(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/graph/NetworkBuilder;->expectedNodeCount:Lorg/checkerframework/com/google/common/base/Optional;

    .line 148
    return-object p0
.end method

.method public immutable()Lorg/checkerframework/com/google/common/graph/ImmutableNetwork$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N1:TN;E1:TE;>()",
            "Lorg/checkerframework/com/google/common/graph/ImmutableNetwork$Builder<",
            "TN1;TE1;>;"
        }
    .end annotation

    .line 114
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/NetworkBuilder;, "Lorg/checkerframework/com/google/common/graph/NetworkBuilder<TN;TE;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/graph/NetworkBuilder;->cast()Lorg/checkerframework/com/google/common/graph/NetworkBuilder;

    move-result-object v0

    .line 115
    .local v0, "castBuilder":Lorg/checkerframework/com/google/common/graph/NetworkBuilder;, "Lorg/checkerframework/com/google/common/graph/NetworkBuilder<TN1;TE1;>;"
    new-instance v1, Lorg/checkerframework/com/google/common/graph/ImmutableNetwork$Builder;

    invoke-direct {v1, v0}, Lorg/checkerframework/com/google/common/graph/ImmutableNetwork$Builder;-><init>(Lorg/checkerframework/com/google/common/graph/NetworkBuilder;)V

    return-object v1
.end method

.method public nodeOrder(Lorg/checkerframework/com/google/common/graph/ElementOrder;)Lorg/checkerframework/com/google/common/graph/NetworkBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N1:TN;>(",
            "Lorg/checkerframework/com/google/common/graph/ElementOrder<",
            "TN1;>;)",
            "Lorg/checkerframework/com/google/common/graph/NetworkBuilder<",
            "TN1;TE;>;"
        }
    .end annotation

    .line 167
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/NetworkBuilder;, "Lorg/checkerframework/com/google/common/graph/NetworkBuilder<TN;TE;>;"
    .local p1, "nodeOrder":Lorg/checkerframework/com/google/common/graph/ElementOrder;, "Lorg/checkerframework/com/google/common/graph/ElementOrder<TN1;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/graph/NetworkBuilder;->cast()Lorg/checkerframework/com/google/common/graph/NetworkBuilder;

    move-result-object v0

    .line 168
    .local v0, "newBuilder":Lorg/checkerframework/com/google/common/graph/NetworkBuilder;, "Lorg/checkerframework/com/google/common/graph/NetworkBuilder<TN1;TE;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/google/common/graph/ElementOrder;

    iput-object v1, v0, Lorg/checkerframework/com/google/common/graph/NetworkBuilder;->nodeOrder:Lorg/checkerframework/com/google/common/graph/ElementOrder;

    .line 169
    return-object v0
.end method
