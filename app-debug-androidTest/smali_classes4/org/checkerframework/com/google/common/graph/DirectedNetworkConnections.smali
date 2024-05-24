.class final Lorg/checkerframework/com/google/common/graph/DirectedNetworkConnections;
.super Lorg/checkerframework/com/google/common/graph/AbstractDirectedNetworkConnections;
.source "DirectedNetworkConnections.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/graph/AbstractDirectedNetworkConnections<",
        "TN;TE;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Ljava/util/Map;Ljava/util/Map;I)V
    .locals 0
    .param p3, "selfLoopCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TE;TN;>;",
            "Ljava/util/Map<",
            "TE;TN;>;I)V"
        }
    .end annotation

    .line 39
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/DirectedNetworkConnections;, "Lorg/checkerframework/com/google/common/graph/DirectedNetworkConnections<TN;TE;>;"
    .local p1, "inEdgeMap":Ljava/util/Map;, "Ljava/util/Map<TE;TN;>;"
    .local p2, "outEdgeMap":Ljava/util/Map;, "Ljava/util/Map<TE;TN;>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/checkerframework/com/google/common/graph/AbstractDirectedNetworkConnections;-><init>(Ljava/util/Map;Ljava/util/Map;I)V

    .line 40
    return-void
.end method

.method static of()Lorg/checkerframework/com/google/common/graph/DirectedNetworkConnections;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/checkerframework/com/google/common/graph/DirectedNetworkConnections<",
            "TN;TE;>;"
        }
    .end annotation

    .line 43
    new-instance v0, Lorg/checkerframework/com/google/common/graph/DirectedNetworkConnections;

    .line 44
    const/4 v1, 0x2

    invoke-static {v1}, Lorg/checkerframework/com/google/common/collect/HashBiMap;->create(I)Lorg/checkerframework/com/google/common/collect/HashBiMap;

    move-result-object v2

    invoke-static {v1}, Lorg/checkerframework/com/google/common/collect/HashBiMap;->create(I)Lorg/checkerframework/com/google/common/collect/HashBiMap;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lorg/checkerframework/com/google/common/graph/DirectedNetworkConnections;-><init>(Ljava/util/Map;Ljava/util/Map;I)V

    .line 43
    return-object v0
.end method

.method static ofImmutable(Ljava/util/Map;Ljava/util/Map;I)Lorg/checkerframework/com/google/common/graph/DirectedNetworkConnections;
    .locals 3
    .param p2, "selfLoopCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TE;TN;>;",
            "Ljava/util/Map<",
            "TE;TN;>;I)",
            "Lorg/checkerframework/com/google/common/graph/DirectedNetworkConnections<",
            "TN;TE;>;"
        }
    .end annotation

    .line 49
    .local p0, "inEdges":Ljava/util/Map;, "Ljava/util/Map<TE;TN;>;"
    .local p1, "outEdges":Ljava/util/Map;, "Ljava/util/Map<TE;TN;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/graph/DirectedNetworkConnections;

    .line 50
    invoke-static {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableBiMap;->copyOf(Ljava/util/Map;)Lorg/checkerframework/com/google/common/collect/ImmutableBiMap;

    move-result-object v1

    invoke-static {p1}, Lorg/checkerframework/com/google/common/collect/ImmutableBiMap;->copyOf(Ljava/util/Map;)Lorg/checkerframework/com/google/common/collect/ImmutableBiMap;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Lorg/checkerframework/com/google/common/graph/DirectedNetworkConnections;-><init>(Ljava/util/Map;Ljava/util/Map;I)V

    .line 49
    return-object v0
.end method


# virtual methods
.method public edgesConnecting(Ljava/lang/Object;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 65
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/DirectedNetworkConnections;, "Lorg/checkerframework/com/google/common/graph/DirectedNetworkConnections<TN;TE;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    new-instance v0, Lorg/checkerframework/com/google/common/graph/EdgesConnecting;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/graph/DirectedNetworkConnections;->outEdgeMap:Ljava/util/Map;

    check-cast v1, Lorg/checkerframework/com/google/common/collect/BiMap;

    invoke-interface {v1}, Lorg/checkerframework/com/google/common/collect/BiMap;->inverse()Lorg/checkerframework/com/google/common/collect/BiMap;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/checkerframework/com/google/common/graph/EdgesConnecting;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    return-object v0
.end method

.method public predecessors()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    .line 55
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/DirectedNetworkConnections;, "Lorg/checkerframework/com/google/common/graph/DirectedNetworkConnections<TN;TE;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/graph/DirectedNetworkConnections;->inEdgeMap:Ljava/util/Map;

    check-cast v0, Lorg/checkerframework/com/google/common/collect/BiMap;

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/BiMap;->values()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public successors()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    .line 60
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/DirectedNetworkConnections;, "Lorg/checkerframework/com/google/common/graph/DirectedNetworkConnections<TN;TE;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/graph/DirectedNetworkConnections;->outEdgeMap:Ljava/util/Map;

    check-cast v0, Lorg/checkerframework/com/google/common/collect/BiMap;

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/BiMap;->values()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
