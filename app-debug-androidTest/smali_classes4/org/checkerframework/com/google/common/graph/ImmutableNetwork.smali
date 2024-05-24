.class public final Lorg/checkerframework/com/google/common/graph/ImmutableNetwork;
.super Lorg/checkerframework/com/google/common/graph/ConfigurableNetwork;
.source "ImmutableNetwork.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/google/common/graph/ImmutableNetwork$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/graph/ConfigurableNetwork<",
        "TN;TE;>;"
    }
.end annotation

.annotation runtime Lorg/checkerframework/com/google/errorprone/annotations/Immutable;
    containerOf = {
        "N",
        "E"
    }
.end annotation


# direct methods
.method private constructor <init>(Lorg/checkerframework/com/google/common/graph/Network;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/graph/Network<",
            "TN;TE;>;)V"
        }
    .end annotation

    .line 52
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ImmutableNetwork;, "Lorg/checkerframework/com/google/common/graph/ImmutableNetwork<TN;TE;>;"
    .local p1, "network":Lorg/checkerframework/com/google/common/graph/Network;, "Lorg/checkerframework/com/google/common/graph/Network<TN;TE;>;"
    nop

    .line 53
    invoke-static {p1}, Lorg/checkerframework/com/google/common/graph/NetworkBuilder;->from(Lorg/checkerframework/com/google/common/graph/Network;)Lorg/checkerframework/com/google/common/graph/NetworkBuilder;

    move-result-object v0

    invoke-static {p1}, Lorg/checkerframework/com/google/common/graph/ImmutableNetwork;->getNodeConnections(Lorg/checkerframework/com/google/common/graph/Network;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Lorg/checkerframework/com/google/common/graph/ImmutableNetwork;->getEdgeToReferenceNode(Lorg/checkerframework/com/google/common/graph/Network;)Ljava/util/Map;

    move-result-object v2

    .line 52
    invoke-direct {p0, v0, v1, v2}, Lorg/checkerframework/com/google/common/graph/ConfigurableNetwork;-><init>(Lorg/checkerframework/com/google/common/graph/NetworkBuilder;Ljava/util/Map;Ljava/util/Map;)V

    .line 54
    return-void
.end method

.method private static adjacentNodeFn(Lorg/checkerframework/com/google/common/graph/Network;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/base/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/graph/Network<",
            "TN;TE;>;TN;)",
            "Lorg/checkerframework/com/google/common/base/Function<",
            "TE;TN;>;"
        }
    .end annotation

    .line 136
    .local p0, "network":Lorg/checkerframework/com/google/common/graph/Network;, "Lorg/checkerframework/com/google/common/graph/Network<TN;TE;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    new-instance v0, Lorg/checkerframework/com/google/common/graph/ImmutableNetwork$3;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/com/google/common/graph/ImmutableNetwork$3;-><init>(Lorg/checkerframework/com/google/common/graph/Network;Ljava/lang/Object;)V

    return-object v0
.end method

.method private static connectionsOf(Lorg/checkerframework/com/google/common/graph/Network;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/graph/NetworkConnections;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/graph/Network<",
            "TN;TE;>;TN;)",
            "Lorg/checkerframework/com/google/common/graph/NetworkConnections<",
            "TN;TE;>;"
        }
    .end annotation

    .line 101
    .local p0, "network":Lorg/checkerframework/com/google/common/graph/Network;, "Lorg/checkerframework/com/google/common/graph/Network<TN;TE;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    invoke-interface {p0}, Lorg/checkerframework/com/google/common/graph/Network;->isDirected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    invoke-interface {p0, p1}, Lorg/checkerframework/com/google/common/graph/Network;->inEdges(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-static {p0}, Lorg/checkerframework/com/google/common/graph/ImmutableNetwork;->sourceNodeFn(Lorg/checkerframework/com/google/common/graph/Network;)Lorg/checkerframework/com/google/common/base/Function;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/collect/Maps;->asMap(Ljava/util/Set;Lorg/checkerframework/com/google/common/base/Function;)Ljava/util/Map;

    move-result-object v0

    .line 103
    .local v0, "inEdgeMap":Ljava/util/Map;, "Ljava/util/Map<TE;TN;>;"
    invoke-interface {p0, p1}, Lorg/checkerframework/com/google/common/graph/Network;->outEdges(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-static {p0}, Lorg/checkerframework/com/google/common/graph/ImmutableNetwork;->targetNodeFn(Lorg/checkerframework/com/google/common/graph/Network;)Lorg/checkerframework/com/google/common/base/Function;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/checkerframework/com/google/common/collect/Maps;->asMap(Ljava/util/Set;Lorg/checkerframework/com/google/common/base/Function;)Ljava/util/Map;

    move-result-object v1

    .line 104
    .local v1, "outEdgeMap":Ljava/util/Map;, "Ljava/util/Map<TE;TN;>;"
    invoke-interface {p0, p1, p1}, Lorg/checkerframework/com/google/common/graph/Network;->edgesConnecting(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    .line 105
    .local v2, "selfLoopCount":I
    invoke-interface {p0}, Lorg/checkerframework/com/google/common/graph/Network;->allowsParallelEdges()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 106
    invoke-static {v0, v1, v2}, Lorg/checkerframework/com/google/common/graph/DirectedMultiNetworkConnections;->ofImmutable(Ljava/util/Map;Ljava/util/Map;I)Lorg/checkerframework/com/google/common/graph/DirectedMultiNetworkConnections;

    move-result-object v3

    goto :goto_0

    .line 107
    :cond_0
    invoke-static {v0, v1, v2}, Lorg/checkerframework/com/google/common/graph/DirectedNetworkConnections;->ofImmutable(Ljava/util/Map;Ljava/util/Map;I)Lorg/checkerframework/com/google/common/graph/DirectedNetworkConnections;

    move-result-object v3

    .line 105
    :goto_0
    return-object v3

    .line 109
    .end local v0    # "inEdgeMap":Ljava/util/Map;, "Ljava/util/Map<TE;TN;>;"
    .end local v1    # "outEdgeMap":Ljava/util/Map;, "Ljava/util/Map<TE;TN;>;"
    .end local v2    # "selfLoopCount":I
    :cond_1
    nop

    .line 110
    invoke-interface {p0, p1}, Lorg/checkerframework/com/google/common/graph/Network;->incidentEdges(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-static {p0, p1}, Lorg/checkerframework/com/google/common/graph/ImmutableNetwork;->adjacentNodeFn(Lorg/checkerframework/com/google/common/graph/Network;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/base/Function;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/collect/Maps;->asMap(Ljava/util/Set;Lorg/checkerframework/com/google/common/base/Function;)Ljava/util/Map;

    move-result-object v0

    .line 111
    .local v0, "incidentEdgeMap":Ljava/util/Map;, "Ljava/util/Map<TE;TN;>;"
    invoke-interface {p0}, Lorg/checkerframework/com/google/common/graph/Network;->allowsParallelEdges()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 112
    invoke-static {v0}, Lorg/checkerframework/com/google/common/graph/UndirectedMultiNetworkConnections;->ofImmutable(Ljava/util/Map;)Lorg/checkerframework/com/google/common/graph/UndirectedMultiNetworkConnections;

    move-result-object v1

    goto :goto_1

    .line 113
    :cond_2
    invoke-static {v0}, Lorg/checkerframework/com/google/common/graph/UndirectedNetworkConnections;->ofImmutable(Ljava/util/Map;)Lorg/checkerframework/com/google/common/graph/UndirectedNetworkConnections;

    move-result-object v1

    .line 111
    :goto_1
    return-object v1
.end method

.method public static copyOf(Lorg/checkerframework/com/google/common/graph/ImmutableNetwork;)Lorg/checkerframework/com/google/common/graph/ImmutableNetwork;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/graph/ImmutableNetwork<",
            "TN;TE;>;)",
            "Lorg/checkerframework/com/google/common/graph/ImmutableNetwork<",
            "TN;TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 70
    .local p0, "network":Lorg/checkerframework/com/google/common/graph/ImmutableNetwork;, "Lorg/checkerframework/com/google/common/graph/ImmutableNetwork<TN;TE;>;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/graph/ImmutableNetwork;

    return-object v0
.end method

.method public static copyOf(Lorg/checkerframework/com/google/common/graph/Network;)Lorg/checkerframework/com/google/common/graph/ImmutableNetwork;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/graph/Network<",
            "TN;TE;>;)",
            "Lorg/checkerframework/com/google/common/graph/ImmutableNetwork<",
            "TN;TE;>;"
        }
    .end annotation

    .line 58
    .local p0, "network":Lorg/checkerframework/com/google/common/graph/Network;, "Lorg/checkerframework/com/google/common/graph/Network<TN;TE;>;"
    instance-of v0, p0, Lorg/checkerframework/com/google/common/graph/ImmutableNetwork;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lorg/checkerframework/com/google/common/graph/ImmutableNetwork;

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/checkerframework/com/google/common/graph/ImmutableNetwork;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/graph/ImmutableNetwork;-><init>(Lorg/checkerframework/com/google/common/graph/Network;)V

    :goto_0
    return-object v0
.end method

.method private static getEdgeToReferenceNode(Lorg/checkerframework/com/google/common/graph/Network;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/graph/Network<",
            "TN;TE;>;)",
            "Ljava/util/Map<",
            "TE;TN;>;"
        }
    .end annotation

    .line 93
    .local p0, "network":Lorg/checkerframework/com/google/common/graph/Network;, "Lorg/checkerframework/com/google/common/graph/Network<TN;TE;>;"
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->builder()Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 94
    .local v0, "edgeToReferenceNode":Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder<TE;TN;>;"
    invoke-interface {p0}, Lorg/checkerframework/com/google/common/graph/Network;->edges()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 95
    .local v2, "edge":Ljava/lang/Object;, "TE;"
    invoke-interface {p0, v2}, Lorg/checkerframework/com/google/common/graph/Network;->incidentNodes(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/graph/EndpointPair;

    move-result-object v3

    invoke-virtual {v3}, Lorg/checkerframework/com/google/common/graph/EndpointPair;->nodeU()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;

    .line 96
    .end local v2    # "edge":Ljava/lang/Object;, "TE;"
    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->build()Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    move-result-object v1

    return-object v1
.end method

.method private static getNodeConnections(Lorg/checkerframework/com/google/common/graph/Network;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/graph/Network<",
            "TN;TE;>;)",
            "Ljava/util/Map<",
            "TN;",
            "Lorg/checkerframework/com/google/common/graph/NetworkConnections<",
            "TN;TE;>;>;"
        }
    .end annotation

    .line 82
    .local p0, "network":Lorg/checkerframework/com/google/common/graph/Network;, "Lorg/checkerframework/com/google/common/graph/Network<TN;TE;>;"
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->builder()Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 83
    .local v0, "nodeConnections":Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder<TN;Lorg/checkerframework/com/google/common/graph/NetworkConnections<TN;TE;>;>;"
    invoke-interface {p0}, Lorg/checkerframework/com/google/common/graph/Network;->nodes()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 84
    .local v2, "node":Ljava/lang/Object;, "TN;"
    invoke-static {p0, v2}, Lorg/checkerframework/com/google/common/graph/ImmutableNetwork;->connectionsOf(Lorg/checkerframework/com/google/common/graph/Network;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/graph/NetworkConnections;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;

    .line 85
    .end local v2    # "node":Ljava/lang/Object;, "TN;"
    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->build()Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    move-result-object v1

    return-object v1
.end method

.method private static sourceNodeFn(Lorg/checkerframework/com/google/common/graph/Network;)Lorg/checkerframework/com/google/common/base/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/graph/Network<",
            "TN;TE;>;)",
            "Lorg/checkerframework/com/google/common/base/Function<",
            "TE;TN;>;"
        }
    .end annotation

    .line 118
    .local p0, "network":Lorg/checkerframework/com/google/common/graph/Network;, "Lorg/checkerframework/com/google/common/graph/Network<TN;TE;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/graph/ImmutableNetwork$1;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/graph/ImmutableNetwork$1;-><init>(Lorg/checkerframework/com/google/common/graph/Network;)V

    return-object v0
.end method

.method private static targetNodeFn(Lorg/checkerframework/com/google/common/graph/Network;)Lorg/checkerframework/com/google/common/base/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/graph/Network<",
            "TN;TE;>;)",
            "Lorg/checkerframework/com/google/common/base/Function<",
            "TE;TN;>;"
        }
    .end annotation

    .line 127
    .local p0, "network":Lorg/checkerframework/com/google/common/graph/Network;, "Lorg/checkerframework/com/google/common/graph/Network<TN;TE;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/graph/ImmutableNetwork$2;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/graph/ImmutableNetwork$2;-><init>(Lorg/checkerframework/com/google/common/graph/Network;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic adjacentNodes(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    .line 46
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ImmutableNetwork;, "Lorg/checkerframework/com/google/common/graph/ImmutableNetwork<TN;TE;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/graph/ConfigurableNetwork;->adjacentNodes(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic allowsParallelEdges()Z
    .locals 1

    .line 46
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ImmutableNetwork;, "Lorg/checkerframework/com/google/common/graph/ImmutableNetwork<TN;TE;>;"
    invoke-super {p0}, Lorg/checkerframework/com/google/common/graph/ConfigurableNetwork;->allowsParallelEdges()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic allowsSelfLoops()Z
    .locals 1

    .line 46
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ImmutableNetwork;, "Lorg/checkerframework/com/google/common/graph/ImmutableNetwork<TN;TE;>;"
    invoke-super {p0}, Lorg/checkerframework/com/google/common/graph/ConfigurableNetwork;->allowsSelfLoops()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic asGraph()Lorg/checkerframework/com/google/common/graph/Graph;
    .locals 1

    .line 46
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ImmutableNetwork;, "Lorg/checkerframework/com/google/common/graph/ImmutableNetwork<TN;TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/graph/ImmutableNetwork;->asGraph()Lorg/checkerframework/com/google/common/graph/ImmutableGraph;

    move-result-object v0

    return-object v0
.end method

.method public asGraph()Lorg/checkerframework/com/google/common/graph/ImmutableGraph;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/graph/ImmutableGraph<",
            "TN;>;"
        }
    .end annotation

    .line 75
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ImmutableNetwork;, "Lorg/checkerframework/com/google/common/graph/ImmutableNetwork<TN;TE;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/graph/ImmutableGraph;

    invoke-super {p0}, Lorg/checkerframework/com/google/common/graph/ConfigurableNetwork;->asGraph()Lorg/checkerframework/com/google/common/graph/Graph;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/graph/ImmutableGraph;-><init>(Lorg/checkerframework/com/google/common/graph/BaseGraph;)V

    return-object v0
.end method

.method public bridge synthetic edgeOrder()Lorg/checkerframework/com/google/common/graph/ElementOrder;
    .locals 1

    .line 46
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ImmutableNetwork;, "Lorg/checkerframework/com/google/common/graph/ImmutableNetwork<TN;TE;>;"
    invoke-super {p0}, Lorg/checkerframework/com/google/common/graph/ConfigurableNetwork;->edgeOrder()Lorg/checkerframework/com/google/common/graph/ElementOrder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic edges()Ljava/util/Set;
    .locals 1

    .line 46
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ImmutableNetwork;, "Lorg/checkerframework/com/google/common/graph/ImmutableNetwork<TN;TE;>;"
    invoke-super {p0}, Lorg/checkerframework/com/google/common/graph/ConfigurableNetwork;->edges()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic edgesConnecting(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    .line 46
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ImmutableNetwork;, "Lorg/checkerframework/com/google/common/graph/ImmutableNetwork<TN;TE;>;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/com/google/common/graph/ConfigurableNetwork;->edgesConnecting(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic inEdges(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    .line 46
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ImmutableNetwork;, "Lorg/checkerframework/com/google/common/graph/ImmutableNetwork<TN;TE;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/graph/ConfigurableNetwork;->inEdges(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic incidentEdges(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    .line 46
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ImmutableNetwork;, "Lorg/checkerframework/com/google/common/graph/ImmutableNetwork<TN;TE;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/graph/ConfigurableNetwork;->incidentEdges(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic incidentNodes(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/graph/EndpointPair;
    .locals 0

    .line 46
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ImmutableNetwork;, "Lorg/checkerframework/com/google/common/graph/ImmutableNetwork<TN;TE;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/graph/ConfigurableNetwork;->incidentNodes(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/graph/EndpointPair;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic isDirected()Z
    .locals 1

    .line 46
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ImmutableNetwork;, "Lorg/checkerframework/com/google/common/graph/ImmutableNetwork<TN;TE;>;"
    invoke-super {p0}, Lorg/checkerframework/com/google/common/graph/ConfigurableNetwork;->isDirected()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic nodeOrder()Lorg/checkerframework/com/google/common/graph/ElementOrder;
    .locals 1

    .line 46
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ImmutableNetwork;, "Lorg/checkerframework/com/google/common/graph/ImmutableNetwork<TN;TE;>;"
    invoke-super {p0}, Lorg/checkerframework/com/google/common/graph/ConfigurableNetwork;->nodeOrder()Lorg/checkerframework/com/google/common/graph/ElementOrder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic nodes()Ljava/util/Set;
    .locals 1

    .line 46
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ImmutableNetwork;, "Lorg/checkerframework/com/google/common/graph/ImmutableNetwork<TN;TE;>;"
    invoke-super {p0}, Lorg/checkerframework/com/google/common/graph/ConfigurableNetwork;->nodes()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic outEdges(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    .line 46
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ImmutableNetwork;, "Lorg/checkerframework/com/google/common/graph/ImmutableNetwork<TN;TE;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/graph/ConfigurableNetwork;->outEdges(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic predecessors(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    .line 46
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ImmutableNetwork;, "Lorg/checkerframework/com/google/common/graph/ImmutableNetwork<TN;TE;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/graph/ConfigurableNetwork;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic successors(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    .line 46
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ImmutableNetwork;, "Lorg/checkerframework/com/google/common/graph/ImmutableNetwork<TN;TE;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/graph/ConfigurableNetwork;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method
