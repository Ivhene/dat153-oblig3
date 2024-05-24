.class final Lorg/checkerframework/com/google/common/graph/UndirectedNetworkConnections;
.super Lorg/checkerframework/com/google/common/graph/AbstractUndirectedNetworkConnections;
.source "UndirectedNetworkConnections.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/graph/AbstractUndirectedNetworkConnections<",
        "TN;TE;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TE;TN;>;)V"
        }
    .end annotation

    .line 38
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/UndirectedNetworkConnections;, "Lorg/checkerframework/com/google/common/graph/UndirectedNetworkConnections<TN;TE;>;"
    .local p1, "incidentEdgeMap":Ljava/util/Map;, "Ljava/util/Map<TE;TN;>;"
    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/graph/AbstractUndirectedNetworkConnections;-><init>(Ljava/util/Map;)V

    .line 39
    return-void
.end method

.method static of()Lorg/checkerframework/com/google/common/graph/UndirectedNetworkConnections;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/checkerframework/com/google/common/graph/UndirectedNetworkConnections<",
            "TN;TE;>;"
        }
    .end annotation

    .line 42
    new-instance v0, Lorg/checkerframework/com/google/common/graph/UndirectedNetworkConnections;

    const/4 v1, 0x2

    invoke-static {v1}, Lorg/checkerframework/com/google/common/collect/HashBiMap;->create(I)Lorg/checkerframework/com/google/common/collect/HashBiMap;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/graph/UndirectedNetworkConnections;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method static ofImmutable(Ljava/util/Map;)Lorg/checkerframework/com/google/common/graph/UndirectedNetworkConnections;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TE;TN;>;)",
            "Lorg/checkerframework/com/google/common/graph/UndirectedNetworkConnections<",
            "TN;TE;>;"
        }
    .end annotation

    .line 46
    .local p0, "incidentEdges":Ljava/util/Map;, "Ljava/util/Map<TE;TN;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/graph/UndirectedNetworkConnections;

    invoke-static {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableBiMap;->copyOf(Ljava/util/Map;)Lorg/checkerframework/com/google/common/collect/ImmutableBiMap;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/graph/UndirectedNetworkConnections;-><init>(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public adjacentNodes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    .line 51
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/UndirectedNetworkConnections;, "Lorg/checkerframework/com/google/common/graph/UndirectedNetworkConnections<TN;TE;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/graph/UndirectedNetworkConnections;->incidentEdgeMap:Ljava/util/Map;

    check-cast v0, Lorg/checkerframework/com/google/common/collect/BiMap;

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/BiMap;->values()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public edgesConnecting(Ljava/lang/Object;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 56
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/UndirectedNetworkConnections;, "Lorg/checkerframework/com/google/common/graph/UndirectedNetworkConnections<TN;TE;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    new-instance v0, Lorg/checkerframework/com/google/common/graph/EdgesConnecting;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/graph/UndirectedNetworkConnections;->incidentEdgeMap:Ljava/util/Map;

    check-cast v1, Lorg/checkerframework/com/google/common/collect/BiMap;

    invoke-interface {v1}, Lorg/checkerframework/com/google/common/collect/BiMap;->inverse()Lorg/checkerframework/com/google/common/collect/BiMap;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/checkerframework/com/google/common/graph/EdgesConnecting;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    return-object v0
.end method
