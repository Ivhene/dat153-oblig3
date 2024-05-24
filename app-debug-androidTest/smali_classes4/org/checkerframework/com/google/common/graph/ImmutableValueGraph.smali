.class public final Lorg/checkerframework/com/google/common/graph/ImmutableValueGraph;
.super Lorg/checkerframework/com/google/common/graph/ConfigurableValueGraph;
.source "ImmutableValueGraph.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/google/common/graph/ImmutableValueGraph$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/graph/ConfigurableValueGraph<",
        "TN;TV;>;"
    }
.end annotation

.annotation runtime Lorg/checkerframework/com/google/errorprone/annotations/Immutable;
    containerOf = {
        "N",
        "V"
    }
.end annotation


# direct methods
.method private constructor <init>(Lorg/checkerframework/com/google/common/graph/ValueGraph;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/graph/ValueGraph<",
            "TN;TV;>;)V"
        }
    .end annotation

    .line 49
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ImmutableValueGraph;, "Lorg/checkerframework/com/google/common/graph/ImmutableValueGraph<TN;TV;>;"
    .local p1, "graph":Lorg/checkerframework/com/google/common/graph/ValueGraph;, "Lorg/checkerframework/com/google/common/graph/ValueGraph<TN;TV;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/graph/ValueGraphBuilder;->from(Lorg/checkerframework/com/google/common/graph/ValueGraph;)Lorg/checkerframework/com/google/common/graph/ValueGraphBuilder;

    move-result-object v0

    invoke-static {p1}, Lorg/checkerframework/com/google/common/graph/ImmutableValueGraph;->getNodeConnections(Lorg/checkerframework/com/google/common/graph/ValueGraph;)Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    move-result-object v1

    invoke-interface {p1}, Lorg/checkerframework/com/google/common/graph/ValueGraph;->edges()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    int-to-long v2, v2

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/checkerframework/com/google/common/graph/ConfigurableValueGraph;-><init>(Lorg/checkerframework/com/google/common/graph/AbstractGraphBuilder;Ljava/util/Map;J)V

    .line 50
    return-void
.end method

.method private static connectionsOf(Lorg/checkerframework/com/google/common/graph/ValueGraph;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/graph/GraphConnections;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/graph/ValueGraph<",
            "TN;TV;>;TN;)",
            "Lorg/checkerframework/com/google/common/graph/GraphConnections<",
            "TN;TV;>;"
        }
    .end annotation

    .line 88
    .local p0, "graph":Lorg/checkerframework/com/google/common/graph/ValueGraph;, "Lorg/checkerframework/com/google/common/graph/ValueGraph<TN;TV;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    new-instance v0, Lorg/checkerframework/com/google/common/graph/ImmutableValueGraph$1;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/com/google/common/graph/ImmutableValueGraph$1;-><init>(Lorg/checkerframework/com/google/common/graph/ValueGraph;Ljava/lang/Object;)V

    .line 95
    .local v0, "successorNodeToValueFn":Lorg/checkerframework/com/google/common/base/Function;, "Lorg/checkerframework/com/google/common/base/Function<TN;TV;>;"
    invoke-interface {p0}, Lorg/checkerframework/com/google/common/graph/ValueGraph;->isDirected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    invoke-interface {p0, p1}, Lorg/checkerframework/com/google/common/graph/ValueGraph;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {p0, p1}, Lorg/checkerframework/com/google/common/graph/ValueGraph;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/checkerframework/com/google/common/collect/Maps;->asMap(Ljava/util/Set;Lorg/checkerframework/com/google/common/base/Function;)Ljava/util/Map;

    move-result-object v2

    .line 96
    invoke-static {v1, v2}, Lorg/checkerframework/com/google/common/graph/DirectedGraphConnections;->ofImmutable(Ljava/util/Set;Ljava/util/Map;)Lorg/checkerframework/com/google/common/graph/DirectedGraphConnections;

    move-result-object v1

    goto :goto_0

    .line 99
    :cond_0
    invoke-interface {p0, p1}, Lorg/checkerframework/com/google/common/graph/ValueGraph;->adjacentNodes(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/checkerframework/com/google/common/collect/Maps;->asMap(Ljava/util/Set;Lorg/checkerframework/com/google/common/base/Function;)Ljava/util/Map;

    move-result-object v1

    .line 98
    invoke-static {v1}, Lorg/checkerframework/com/google/common/graph/UndirectedGraphConnections;->ofImmutable(Ljava/util/Map;)Lorg/checkerframework/com/google/common/graph/UndirectedGraphConnections;

    move-result-object v1

    .line 95
    :goto_0
    return-object v1
.end method

.method public static copyOf(Lorg/checkerframework/com/google/common/graph/ImmutableValueGraph;)Lorg/checkerframework/com/google/common/graph/ImmutableValueGraph;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/graph/ImmutableValueGraph<",
            "TN;TV;>;)",
            "Lorg/checkerframework/com/google/common/graph/ImmutableValueGraph<",
            "TN;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 66
    .local p0, "graph":Lorg/checkerframework/com/google/common/graph/ImmutableValueGraph;, "Lorg/checkerframework/com/google/common/graph/ImmutableValueGraph<TN;TV;>;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/graph/ImmutableValueGraph;

    return-object v0
.end method

.method public static copyOf(Lorg/checkerframework/com/google/common/graph/ValueGraph;)Lorg/checkerframework/com/google/common/graph/ImmutableValueGraph;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/graph/ValueGraph<",
            "TN;TV;>;)",
            "Lorg/checkerframework/com/google/common/graph/ImmutableValueGraph<",
            "TN;TV;>;"
        }
    .end annotation

    .line 54
    .local p0, "graph":Lorg/checkerframework/com/google/common/graph/ValueGraph;, "Lorg/checkerframework/com/google/common/graph/ValueGraph<TN;TV;>;"
    instance-of v0, p0, Lorg/checkerframework/com/google/common/graph/ImmutableValueGraph;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lorg/checkerframework/com/google/common/graph/ImmutableValueGraph;

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/checkerframework/com/google/common/graph/ImmutableValueGraph;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/graph/ImmutableValueGraph;-><init>(Lorg/checkerframework/com/google/common/graph/ValueGraph;)V

    :goto_0
    return-object v0
.end method

.method private static getNodeConnections(Lorg/checkerframework/com/google/common/graph/ValueGraph;)Lorg/checkerframework/com/google/common/collect/ImmutableMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/graph/ValueGraph<",
            "TN;TV;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMap<",
            "TN;",
            "Lorg/checkerframework/com/google/common/graph/GraphConnections<",
            "TN;TV;>;>;"
        }
    .end annotation

    .line 79
    .local p0, "graph":Lorg/checkerframework/com/google/common/graph/ValueGraph;, "Lorg/checkerframework/com/google/common/graph/ValueGraph<TN;TV;>;"
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->builder()Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 80
    .local v0, "nodeConnections":Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder<TN;Lorg/checkerframework/com/google/common/graph/GraphConnections<TN;TV;>;>;"
    invoke-interface {p0}, Lorg/checkerframework/com/google/common/graph/ValueGraph;->nodes()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 81
    .local v2, "node":Ljava/lang/Object;, "TN;"
    invoke-static {p0, v2}, Lorg/checkerframework/com/google/common/graph/ImmutableValueGraph;->connectionsOf(Lorg/checkerframework/com/google/common/graph/ValueGraph;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/graph/GraphConnections;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;

    .line 82
    .end local v2    # "node":Ljava/lang/Object;, "TN;"
    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->build()Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic adjacentNodes(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    .line 43
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ImmutableValueGraph;, "Lorg/checkerframework/com/google/common/graph/ImmutableValueGraph<TN;TV;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/graph/ConfigurableValueGraph;->adjacentNodes(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic allowsSelfLoops()Z
    .locals 1

    .line 43
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ImmutableValueGraph;, "Lorg/checkerframework/com/google/common/graph/ImmutableValueGraph<TN;TV;>;"
    invoke-super {p0}, Lorg/checkerframework/com/google/common/graph/ConfigurableValueGraph;->allowsSelfLoops()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic asGraph()Lorg/checkerframework/com/google/common/graph/Graph;
    .locals 1

    .line 43
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ImmutableValueGraph;, "Lorg/checkerframework/com/google/common/graph/ImmutableValueGraph<TN;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/graph/ImmutableValueGraph;->asGraph()Lorg/checkerframework/com/google/common/graph/ImmutableGraph;

    move-result-object v0

    return-object v0
.end method

.method public asGraph()Lorg/checkerframework/com/google/common/graph/ImmutableGraph;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/graph/ImmutableGraph<",
            "TN;>;"
        }
    .end annotation

    .line 71
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ImmutableValueGraph;, "Lorg/checkerframework/com/google/common/graph/ImmutableValueGraph<TN;TV;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/graph/ImmutableGraph;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/graph/ImmutableGraph;-><init>(Lorg/checkerframework/com/google/common/graph/BaseGraph;)V

    return-object v0
.end method

.method public bridge synthetic edgeValueOrDefault(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ImmutableValueGraph;, "Lorg/checkerframework/com/google/common/graph/ImmutableValueGraph<TN;TV;>;"
    invoke-super {p0, p1, p2, p3}, Lorg/checkerframework/com/google/common/graph/ConfigurableValueGraph;->edgeValueOrDefault(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic edgeValueOrDefault(Lorg/checkerframework/com/google/common/graph/EndpointPair;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ImmutableValueGraph;, "Lorg/checkerframework/com/google/common/graph/ImmutableValueGraph<TN;TV;>;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/com/google/common/graph/ConfigurableValueGraph;->edgeValueOrDefault(Lorg/checkerframework/com/google/common/graph/EndpointPair;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic hasEdgeConnecting(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 43
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ImmutableValueGraph;, "Lorg/checkerframework/com/google/common/graph/ImmutableValueGraph<TN;TV;>;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/com/google/common/graph/ConfigurableValueGraph;->hasEdgeConnecting(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic hasEdgeConnecting(Lorg/checkerframework/com/google/common/graph/EndpointPair;)Z
    .locals 0

    .line 43
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ImmutableValueGraph;, "Lorg/checkerframework/com/google/common/graph/ImmutableValueGraph<TN;TV;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/graph/ConfigurableValueGraph;->hasEdgeConnecting(Lorg/checkerframework/com/google/common/graph/EndpointPair;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic isDirected()Z
    .locals 1

    .line 43
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ImmutableValueGraph;, "Lorg/checkerframework/com/google/common/graph/ImmutableValueGraph<TN;TV;>;"
    invoke-super {p0}, Lorg/checkerframework/com/google/common/graph/ConfigurableValueGraph;->isDirected()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic nodeOrder()Lorg/checkerframework/com/google/common/graph/ElementOrder;
    .locals 1

    .line 43
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ImmutableValueGraph;, "Lorg/checkerframework/com/google/common/graph/ImmutableValueGraph<TN;TV;>;"
    invoke-super {p0}, Lorg/checkerframework/com/google/common/graph/ConfigurableValueGraph;->nodeOrder()Lorg/checkerframework/com/google/common/graph/ElementOrder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic nodes()Ljava/util/Set;
    .locals 1

    .line 43
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ImmutableValueGraph;, "Lorg/checkerframework/com/google/common/graph/ImmutableValueGraph<TN;TV;>;"
    invoke-super {p0}, Lorg/checkerframework/com/google/common/graph/ConfigurableValueGraph;->nodes()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic predecessors(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    .line 43
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ImmutableValueGraph;, "Lorg/checkerframework/com/google/common/graph/ImmutableValueGraph<TN;TV;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/graph/ConfigurableValueGraph;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic successors(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    .line 43
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ImmutableValueGraph;, "Lorg/checkerframework/com/google/common/graph/ImmutableValueGraph<TN;TV;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/graph/ConfigurableValueGraph;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method
