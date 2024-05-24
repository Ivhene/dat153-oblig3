.class Lorg/checkerframework/com/google/common/graph/ConfigurableValueGraph;
.super Lorg/checkerframework/com/google/common/graph/AbstractValueGraph;
.source "ConfigurableValueGraph.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/graph/AbstractValueGraph<",
        "TN;TV;>;"
    }
.end annotation


# instance fields
.field private final allowsSelfLoops:Z

.field protected edgeCount:J

.field private final isDirected:Z

.field protected final nodeConnections:Lorg/checkerframework/com/google/common/graph/MapIteratorCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/graph/MapIteratorCache<",
            "TN;",
            "Lorg/checkerframework/com/google/common/graph/GraphConnections<",
            "TN;TV;>;>;"
        }
    .end annotation
.end field

.field private final nodeOrder:Lorg/checkerframework/com/google/common/graph/ElementOrder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/graph/ElementOrder<",
            "TN;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/graph/AbstractGraphBuilder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/graph/AbstractGraphBuilder<",
            "-TN;>;)V"
        }
    .end annotation

    .line 56
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ConfigurableValueGraph;, "Lorg/checkerframework/com/google/common/graph/ConfigurableValueGraph<TN;TV;>;"
    .local p1, "builder":Lorg/checkerframework/com/google/common/graph/AbstractGraphBuilder;, "Lorg/checkerframework/com/google/common/graph/AbstractGraphBuilder<-TN;>;"
    iget-object v0, p1, Lorg/checkerframework/com/google/common/graph/AbstractGraphBuilder;->nodeOrder:Lorg/checkerframework/com/google/common/graph/ElementOrder;

    iget-object v1, p1, Lorg/checkerframework/com/google/common/graph/AbstractGraphBuilder;->expectedNodeCount:Lorg/checkerframework/com/google/common/base/Optional;

    .line 59
    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/checkerframework/com/google/common/base/Optional;->or(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 58
    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/graph/ElementOrder;->createMap(I)Ljava/util/Map;

    move-result-object v0

    .line 56
    const-wide/16 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/checkerframework/com/google/common/graph/ConfigurableValueGraph;-><init>(Lorg/checkerframework/com/google/common/graph/AbstractGraphBuilder;Ljava/util/Map;J)V

    .line 61
    return-void
.end method

.method constructor <init>(Lorg/checkerframework/com/google/common/graph/AbstractGraphBuilder;Ljava/util/Map;J)V
    .locals 2
    .param p3, "edgeCount"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/graph/AbstractGraphBuilder<",
            "-TN;>;",
            "Ljava/util/Map<",
            "TN;",
            "Lorg/checkerframework/com/google/common/graph/GraphConnections<",
            "TN;TV;>;>;J)V"
        }
    .end annotation

    .line 70
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ConfigurableValueGraph;, "Lorg/checkerframework/com/google/common/graph/ConfigurableValueGraph<TN;TV;>;"
    .local p1, "builder":Lorg/checkerframework/com/google/common/graph/AbstractGraphBuilder;, "Lorg/checkerframework/com/google/common/graph/AbstractGraphBuilder<-TN;>;"
    .local p2, "nodeConnections":Ljava/util/Map;, "Ljava/util/Map<TN;Lorg/checkerframework/com/google/common/graph/GraphConnections<TN;TV;>;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/graph/AbstractValueGraph;-><init>()V

    .line 71
    iget-boolean v0, p1, Lorg/checkerframework/com/google/common/graph/AbstractGraphBuilder;->directed:Z

    iput-boolean v0, p0, Lorg/checkerframework/com/google/common/graph/ConfigurableValueGraph;->isDirected:Z

    .line 72
    iget-boolean v0, p1, Lorg/checkerframework/com/google/common/graph/AbstractGraphBuilder;->allowsSelfLoops:Z

    iput-boolean v0, p0, Lorg/checkerframework/com/google/common/graph/ConfigurableValueGraph;->allowsSelfLoops:Z

    .line 73
    iget-object v0, p1, Lorg/checkerframework/com/google/common/graph/AbstractGraphBuilder;->nodeOrder:Lorg/checkerframework/com/google/common/graph/ElementOrder;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/graph/ElementOrder;->cast()Lorg/checkerframework/com/google/common/graph/ElementOrder;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/graph/ConfigurableValueGraph;->nodeOrder:Lorg/checkerframework/com/google/common/graph/ElementOrder;

    .line 75
    instance-of v0, p2, Ljava/util/TreeMap;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/checkerframework/com/google/common/graph/MapRetrievalCache;

    invoke-direct {v0, p2}, Lorg/checkerframework/com/google/common/graph/MapRetrievalCache;-><init>(Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/checkerframework/com/google/common/graph/MapIteratorCache;

    invoke-direct {v0, p2}, Lorg/checkerframework/com/google/common/graph/MapIteratorCache;-><init>(Ljava/util/Map;)V

    :goto_0
    iput-object v0, p0, Lorg/checkerframework/com/google/common/graph/ConfigurableValueGraph;->nodeConnections:Lorg/checkerframework/com/google/common/graph/MapIteratorCache;

    .line 79
    invoke-static {p3, p4}, Lorg/checkerframework/com/google/common/graph/Graphs;->checkNonNegative(J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/checkerframework/com/google/common/graph/ConfigurableValueGraph;->edgeCount:J

    .line 80
    return-void
.end method


# virtual methods
.method public adjacentNodes(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    .line 104
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ConfigurableValueGraph;, "Lorg/checkerframework/com/google/common/graph/ConfigurableValueGraph<TN;TV;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/graph/ConfigurableValueGraph;->checkedConnections(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/graph/GraphConnections;

    move-result-object v0

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/graph/GraphConnections;->adjacentNodes()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public allowsSelfLoops()Z
    .locals 1

    .line 94
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ConfigurableValueGraph;, "Lorg/checkerframework/com/google/common/graph/ConfigurableValueGraph<TN;TV;>;"
    iget-boolean v0, p0, Lorg/checkerframework/com/google/common/graph/ConfigurableValueGraph;->allowsSelfLoops:Z

    return v0
.end method

.method protected final checkedConnections(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/graph/GraphConnections;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Lorg/checkerframework/com/google/common/graph/GraphConnections<",
            "TN;TV;>;"
        }
    .end annotation

    .line 146
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ConfigurableValueGraph;, "Lorg/checkerframework/com/google/common/graph/ConfigurableValueGraph<TN;TV;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/graph/ConfigurableValueGraph;->nodeConnections:Lorg/checkerframework/com/google/common/graph/MapIteratorCache;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/graph/MapIteratorCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/graph/GraphConnections;

    .line 147
    .local v0, "connections":Lorg/checkerframework/com/google/common/graph/GraphConnections;, "Lorg/checkerframework/com/google/common/graph/GraphConnections<TN;TV;>;"
    if-eqz v0, :cond_0

    .line 151
    return-object v0

    .line 148
    :cond_0
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Node "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not an element of this graph."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected final containsNode(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)Z"
        }
    .end annotation

    .line 155
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ConfigurableValueGraph;, "Lorg/checkerframework/com/google/common/graph/ConfigurableValueGraph<TN;TV;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/graph/ConfigurableValueGraph;->nodeConnections:Lorg/checkerframework/com/google/common/graph/MapIteratorCache;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/graph/MapIteratorCache;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected edgeCount()J
    .locals 2

    .line 142
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ConfigurableValueGraph;, "Lorg/checkerframework/com/google/common/graph/ConfigurableValueGraph<TN;TV;>;"
    iget-wide v0, p0, Lorg/checkerframework/com/google/common/graph/ConfigurableValueGraph;->edgeCount:J

    return-wide v0
.end method

.method public edgeValueOrDefault(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;TV;)TV;"
        }
    .end annotation

    .line 131
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ConfigurableValueGraph;, "Lorg/checkerframework/com/google/common/graph/ConfigurableValueGraph<TN;TV;>;"
    .local p1, "nodeU":Ljava/lang/Object;, "TN;"
    .local p2, "nodeV":Ljava/lang/Object;, "TN;"
    .local p3, "defaultValue":Ljava/lang/Object;, "TV;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p3}, Lorg/checkerframework/com/google/common/graph/ConfigurableValueGraph;->edgeValueOrDefault_internal(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public edgeValueOrDefault(Lorg/checkerframework/com/google/common/graph/EndpointPair;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/graph/EndpointPair<",
            "TN;>;TV;)TV;"
        }
    .end annotation

    .line 136
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ConfigurableValueGraph;, "Lorg/checkerframework/com/google/common/graph/ConfigurableValueGraph<TN;TV;>;"
    .local p1, "endpoints":Lorg/checkerframework/com/google/common/graph/EndpointPair;, "Lorg/checkerframework/com/google/common/graph/EndpointPair<TN;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/graph/ConfigurableValueGraph;->validateEndpoints(Lorg/checkerframework/com/google/common/graph/EndpointPair;)V

    .line 137
    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/graph/EndpointPair;->nodeU()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/graph/EndpointPair;->nodeV()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2}, Lorg/checkerframework/com/google/common/graph/ConfigurableValueGraph;->edgeValueOrDefault_internal(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final edgeValueOrDefault_internal(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;TV;)TV;"
        }
    .end annotation

    .line 164
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ConfigurableValueGraph;, "Lorg/checkerframework/com/google/common/graph/ConfigurableValueGraph<TN;TV;>;"
    .local p1, "nodeU":Ljava/lang/Object;, "TN;"
    .local p2, "nodeV":Ljava/lang/Object;, "TN;"
    .local p3, "defaultValue":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/graph/ConfigurableValueGraph;->nodeConnections:Lorg/checkerframework/com/google/common/graph/MapIteratorCache;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/graph/MapIteratorCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/graph/GraphConnections;

    .line 165
    .local v0, "connectionsU":Lorg/checkerframework/com/google/common/graph/GraphConnections;, "Lorg/checkerframework/com/google/common/graph/GraphConnections<TN;TV;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p2}, Lorg/checkerframework/com/google/common/graph/GraphConnections;->value(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 166
    .local v1, "value":Ljava/lang/Object;, "TV;"
    :goto_0
    if-nez v1, :cond_1

    move-object v2, p3

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    return-object v2
.end method

.method public hasEdgeConnecting(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)Z"
        }
    .end annotation

    .line 119
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ConfigurableValueGraph;, "Lorg/checkerframework/com/google/common/graph/ConfigurableValueGraph<TN;TV;>;"
    .local p1, "nodeU":Ljava/lang/Object;, "TN;"
    .local p2, "nodeV":Ljava/lang/Object;, "TN;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/google/common/graph/ConfigurableValueGraph;->hasEdgeConnecting_internal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasEdgeConnecting(Lorg/checkerframework/com/google/common/graph/EndpointPair;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/graph/EndpointPair<",
            "TN;>;)Z"
        }
    .end annotation

    .line 124
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ConfigurableValueGraph;, "Lorg/checkerframework/com/google/common/graph/ConfigurableValueGraph<TN;TV;>;"
    .local p1, "endpoints":Lorg/checkerframework/com/google/common/graph/EndpointPair;, "Lorg/checkerframework/com/google/common/graph/EndpointPair<TN;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/graph/ConfigurableValueGraph;->isOrderingCompatible(Lorg/checkerframework/com/google/common/graph/EndpointPair;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/graph/EndpointPair;->nodeU()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/graph/EndpointPair;->nodeV()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/google/common/graph/ConfigurableValueGraph;->hasEdgeConnecting_internal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 125
    :goto_0
    return v0
.end method

.method protected final hasEdgeConnecting_internal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)Z"
        }
    .end annotation

    .line 159
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ConfigurableValueGraph;, "Lorg/checkerframework/com/google/common/graph/ConfigurableValueGraph<TN;TV;>;"
    .local p1, "nodeU":Ljava/lang/Object;, "TN;"
    .local p2, "nodeV":Ljava/lang/Object;, "TN;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/graph/ConfigurableValueGraph;->nodeConnections:Lorg/checkerframework/com/google/common/graph/MapIteratorCache;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/graph/MapIteratorCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/graph/GraphConnections;

    .line 160
    .local v0, "connectionsU":Lorg/checkerframework/com/google/common/graph/GraphConnections;, "Lorg/checkerframework/com/google/common/graph/GraphConnections<TN;TV;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/graph/GraphConnections;->successors()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isDirected()Z
    .locals 1

    .line 89
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ConfigurableValueGraph;, "Lorg/checkerframework/com/google/common/graph/ConfigurableValueGraph<TN;TV;>;"
    iget-boolean v0, p0, Lorg/checkerframework/com/google/common/graph/ConfigurableValueGraph;->isDirected:Z

    return v0
.end method

.method public nodeOrder()Lorg/checkerframework/com/google/common/graph/ElementOrder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/graph/ElementOrder<",
            "TN;>;"
        }
    .end annotation

    .line 99
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ConfigurableValueGraph;, "Lorg/checkerframework/com/google/common/graph/ConfigurableValueGraph<TN;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/graph/ConfigurableValueGraph;->nodeOrder:Lorg/checkerframework/com/google/common/graph/ElementOrder;

    return-object v0
.end method

.method public nodes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    .line 84
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ConfigurableValueGraph;, "Lorg/checkerframework/com/google/common/graph/ConfigurableValueGraph<TN;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/graph/ConfigurableValueGraph;->nodeConnections:Lorg/checkerframework/com/google/common/graph/MapIteratorCache;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/graph/MapIteratorCache;->unmodifiableKeySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic predecessors(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 45
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ConfigurableValueGraph;, "Lorg/checkerframework/com/google/common/graph/ConfigurableValueGraph<TN;TV;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/graph/ConfigurableValueGraph;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public predecessors(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    .line 109
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ConfigurableValueGraph;, "Lorg/checkerframework/com/google/common/graph/ConfigurableValueGraph<TN;TV;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/graph/ConfigurableValueGraph;->checkedConnections(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/graph/GraphConnections;

    move-result-object v0

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/graph/GraphConnections;->predecessors()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic successors(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 45
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ConfigurableValueGraph;, "Lorg/checkerframework/com/google/common/graph/ConfigurableValueGraph<TN;TV;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/graph/ConfigurableValueGraph;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public successors(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    .line 114
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ConfigurableValueGraph;, "Lorg/checkerframework/com/google/common/graph/ConfigurableValueGraph<TN;TV;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/graph/ConfigurableValueGraph;->checkedConnections(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/graph/GraphConnections;

    move-result-object v0

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/graph/GraphConnections;->successors()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
