.class public Lorg/checkerframework/com/google/common/graph/ImmutableGraph;
.super Lorg/checkerframework/com/google/common/graph/ForwardingGraph;
.source "ImmutableGraph.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/google/common/graph/ImmutableGraph$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/graph/ForwardingGraph<",
        "TN;>;"
    }
.end annotation

.annotation runtime Lorg/checkerframework/com/google/errorprone/annotations/Immutable;
    containerOf = {
        "N"
    }
.end annotation


# instance fields
.field private final backingGraph:Lorg/checkerframework/com/google/common/graph/BaseGraph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/graph/BaseGraph<",
            "TN;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/graph/BaseGraph;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/graph/BaseGraph<",
            "TN;>;)V"
        }
    .end annotation

    .line 52
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ImmutableGraph;, "Lorg/checkerframework/com/google/common/graph/ImmutableGraph<TN;>;"
    .local p1, "backingGraph":Lorg/checkerframework/com/google/common/graph/BaseGraph;, "Lorg/checkerframework/com/google/common/graph/BaseGraph<TN;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/graph/ForwardingGraph;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/checkerframework/com/google/common/graph/ImmutableGraph;->backingGraph:Lorg/checkerframework/com/google/common/graph/BaseGraph;

    .line 54
    return-void
.end method

.method private static connectionsOf(Lorg/checkerframework/com/google/common/graph/Graph;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/graph/GraphConnections;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/graph/Graph<",
            "TN;>;TN;)",
            "Lorg/checkerframework/com/google/common/graph/GraphConnections<",
            "TN;",
            "Lorg/checkerframework/com/google/common/graph/GraphConstants$Presence;",
            ">;"
        }
    .end annotation

    .line 88
    .local p0, "graph":Lorg/checkerframework/com/google/common/graph/Graph;, "Lorg/checkerframework/com/google/common/graph/Graph<TN;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    sget-object v0, Lorg/checkerframework/com/google/common/graph/GraphConstants$Presence;->EDGE_EXISTS:Lorg/checkerframework/com/google/common/graph/GraphConstants$Presence;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/base/Functions;->constant(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/base/Function;

    move-result-object v0

    .line 89
    .local v0, "edgeValueFn":Lorg/checkerframework/com/google/common/base/Function;, "Lorg/checkerframework/com/google/common/base/Function<Ljava/lang/Object;Lorg/checkerframework/com/google/common/graph/GraphConstants$Presence;>;"
    invoke-interface {p0}, Lorg/checkerframework/com/google/common/graph/Graph;->isDirected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    invoke-interface {p0, p1}, Lorg/checkerframework/com/google/common/graph/Graph;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {p0, p1}, Lorg/checkerframework/com/google/common/graph/Graph;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/checkerframework/com/google/common/collect/Maps;->asMap(Ljava/util/Set;Lorg/checkerframework/com/google/common/base/Function;)Ljava/util/Map;

    move-result-object v2

    .line 90
    invoke-static {v1, v2}, Lorg/checkerframework/com/google/common/graph/DirectedGraphConnections;->ofImmutable(Ljava/util/Set;Ljava/util/Map;)Lorg/checkerframework/com/google/common/graph/DirectedGraphConnections;

    move-result-object v1

    goto :goto_0

    .line 93
    :cond_0
    invoke-interface {p0, p1}, Lorg/checkerframework/com/google/common/graph/Graph;->adjacentNodes(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/checkerframework/com/google/common/collect/Maps;->asMap(Ljava/util/Set;Lorg/checkerframework/com/google/common/base/Function;)Ljava/util/Map;

    move-result-object v1

    .line 92
    invoke-static {v1}, Lorg/checkerframework/com/google/common/graph/UndirectedGraphConnections;->ofImmutable(Ljava/util/Map;)Lorg/checkerframework/com/google/common/graph/UndirectedGraphConnections;

    move-result-object v1

    .line 89
    :goto_0
    return-object v1
.end method

.method public static copyOf(Lorg/checkerframework/com/google/common/graph/Graph;)Lorg/checkerframework/com/google/common/graph/ImmutableGraph;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/graph/Graph<",
            "TN;>;)",
            "Lorg/checkerframework/com/google/common/graph/ImmutableGraph<",
            "TN;>;"
        }
    .end annotation

    .line 58
    .local p0, "graph":Lorg/checkerframework/com/google/common/graph/Graph;, "Lorg/checkerframework/com/google/common/graph/Graph<TN;>;"
    instance-of v0, p0, Lorg/checkerframework/com/google/common/graph/ImmutableGraph;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lorg/checkerframework/com/google/common/graph/ImmutableGraph;

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/checkerframework/com/google/common/graph/ImmutableGraph;

    new-instance v1, Lorg/checkerframework/com/google/common/graph/ConfigurableValueGraph;

    .line 62
    invoke-static {p0}, Lorg/checkerframework/com/google/common/graph/GraphBuilder;->from(Lorg/checkerframework/com/google/common/graph/Graph;)Lorg/checkerframework/com/google/common/graph/GraphBuilder;

    move-result-object v2

    invoke-static {p0}, Lorg/checkerframework/com/google/common/graph/ImmutableGraph;->getNodeConnections(Lorg/checkerframework/com/google/common/graph/Graph;)Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    move-result-object v3

    invoke-interface {p0}, Lorg/checkerframework/com/google/common/graph/Graph;->edges()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    int-to-long v4, v4

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/checkerframework/com/google/common/graph/ConfigurableValueGraph;-><init>(Lorg/checkerframework/com/google/common/graph/AbstractGraphBuilder;Ljava/util/Map;J)V

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/graph/ImmutableGraph;-><init>(Lorg/checkerframework/com/google/common/graph/BaseGraph;)V

    .line 58
    :goto_0
    return-object v0
.end method

.method public static copyOf(Lorg/checkerframework/com/google/common/graph/ImmutableGraph;)Lorg/checkerframework/com/google/common/graph/ImmutableGraph;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/graph/ImmutableGraph<",
            "TN;>;)",
            "Lorg/checkerframework/com/google/common/graph/ImmutableGraph<",
            "TN;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 72
    .local p0, "graph":Lorg/checkerframework/com/google/common/graph/ImmutableGraph;, "Lorg/checkerframework/com/google/common/graph/ImmutableGraph<TN;>;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/graph/ImmutableGraph;

    return-object v0
.end method

.method private static getNodeConnections(Lorg/checkerframework/com/google/common/graph/Graph;)Lorg/checkerframework/com/google/common/collect/ImmutableMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/graph/Graph<",
            "TN;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMap<",
            "TN;",
            "Lorg/checkerframework/com/google/common/graph/GraphConnections<",
            "TN;",
            "Lorg/checkerframework/com/google/common/graph/GraphConstants$Presence;",
            ">;>;"
        }
    .end annotation

    .line 80
    .local p0, "graph":Lorg/checkerframework/com/google/common/graph/Graph;, "Lorg/checkerframework/com/google/common/graph/Graph<TN;>;"
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->builder()Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 81
    .local v0, "nodeConnections":Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder<TN;Lorg/checkerframework/com/google/common/graph/GraphConnections<TN;Lorg/checkerframework/com/google/common/graph/GraphConstants$Presence;>;>;"
    invoke-interface {p0}, Lorg/checkerframework/com/google/common/graph/Graph;->nodes()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 82
    .local v2, "node":Ljava/lang/Object;, "TN;"
    invoke-static {p0, v2}, Lorg/checkerframework/com/google/common/graph/ImmutableGraph;->connectionsOf(Lorg/checkerframework/com/google/common/graph/Graph;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/graph/GraphConnections;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;

    .line 83
    .end local v2    # "node":Ljava/lang/Object;, "TN;"
    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->build()Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic adjacentNodes(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    .line 46
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ImmutableGraph;, "Lorg/checkerframework/com/google/common/graph/ImmutableGraph<TN;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/graph/ForwardingGraph;->adjacentNodes(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic allowsSelfLoops()Z
    .locals 1

    .line 46
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ImmutableGraph;, "Lorg/checkerframework/com/google/common/graph/ImmutableGraph<TN;>;"
    invoke-super {p0}, Lorg/checkerframework/com/google/common/graph/ForwardingGraph;->allowsSelfLoops()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic degree(Ljava/lang/Object;)I
    .locals 0

    .line 46
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ImmutableGraph;, "Lorg/checkerframework/com/google/common/graph/ImmutableGraph<TN;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/graph/ForwardingGraph;->degree(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method protected delegate()Lorg/checkerframework/com/google/common/graph/BaseGraph;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/graph/BaseGraph<",
            "TN;>;"
        }
    .end annotation

    .line 98
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ImmutableGraph;, "Lorg/checkerframework/com/google/common/graph/ImmutableGraph<TN;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/graph/ImmutableGraph;->backingGraph:Lorg/checkerframework/com/google/common/graph/BaseGraph;

    return-object v0
.end method

.method public bridge synthetic hasEdgeConnecting(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 46
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ImmutableGraph;, "Lorg/checkerframework/com/google/common/graph/ImmutableGraph<TN;>;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/com/google/common/graph/ForwardingGraph;->hasEdgeConnecting(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic hasEdgeConnecting(Lorg/checkerframework/com/google/common/graph/EndpointPair;)Z
    .locals 0

    .line 46
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ImmutableGraph;, "Lorg/checkerframework/com/google/common/graph/ImmutableGraph<TN;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/graph/ForwardingGraph;->hasEdgeConnecting(Lorg/checkerframework/com/google/common/graph/EndpointPair;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic inDegree(Ljava/lang/Object;)I
    .locals 0

    .line 46
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ImmutableGraph;, "Lorg/checkerframework/com/google/common/graph/ImmutableGraph<TN;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/graph/ForwardingGraph;->inDegree(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic isDirected()Z
    .locals 1

    .line 46
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ImmutableGraph;, "Lorg/checkerframework/com/google/common/graph/ImmutableGraph<TN;>;"
    invoke-super {p0}, Lorg/checkerframework/com/google/common/graph/ForwardingGraph;->isDirected()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic nodeOrder()Lorg/checkerframework/com/google/common/graph/ElementOrder;
    .locals 1

    .line 46
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ImmutableGraph;, "Lorg/checkerframework/com/google/common/graph/ImmutableGraph<TN;>;"
    invoke-super {p0}, Lorg/checkerframework/com/google/common/graph/ForwardingGraph;->nodeOrder()Lorg/checkerframework/com/google/common/graph/ElementOrder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic nodes()Ljava/util/Set;
    .locals 1

    .line 46
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ImmutableGraph;, "Lorg/checkerframework/com/google/common/graph/ImmutableGraph<TN;>;"
    invoke-super {p0}, Lorg/checkerframework/com/google/common/graph/ForwardingGraph;->nodes()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic outDegree(Ljava/lang/Object;)I
    .locals 0

    .line 46
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ImmutableGraph;, "Lorg/checkerframework/com/google/common/graph/ImmutableGraph<TN;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/graph/ForwardingGraph;->outDegree(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic predecessors(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    .line 46
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ImmutableGraph;, "Lorg/checkerframework/com/google/common/graph/ImmutableGraph<TN;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/graph/ForwardingGraph;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic successors(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    .line 46
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ImmutableGraph;, "Lorg/checkerframework/com/google/common/graph/ImmutableGraph<TN;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/graph/ForwardingGraph;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method
