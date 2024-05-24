.class public final Lorg/checkerframework/com/google/common/graph/Graphs;
.super Ljava/lang/Object;
.source "Graphs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/google/common/graph/Graphs$NodeVisitState;,
        Lorg/checkerframework/com/google/common/graph/Graphs$TransposedNetwork;,
        Lorg/checkerframework/com/google/common/graph/Graphs$TransposedValueGraph;,
        Lorg/checkerframework/com/google/common/graph/Graphs$TransposedGraph;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static canTraverseWithoutReusingEdge(Lorg/checkerframework/com/google/common/graph/Graph;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "nextNode"    # Ljava/lang/Object;
    .param p2, "previousNode"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/graph/Graph<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 127
    .local p0, "graph":Lorg/checkerframework/com/google/common/graph/Graph;, "Lorg/checkerframework/com/google/common/graph/Graph<*>;"
    invoke-interface {p0}, Lorg/checkerframework/com/google/common/graph/Graph;->isDirected()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2, p1}, Lorg/checkerframework/com/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 132
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 128
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method static checkNonNegative(I)I
    .locals 2
    .param p0, "value"    # I

    .line 580
    if-ltz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Not true that %s is non-negative."

    invoke-static {v0, v1, p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 581
    return p0
.end method

.method static checkNonNegative(J)J
    .locals 2
    .param p0, "value"    # J

    .line 586
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Not true that %s is non-negative."

    invoke-static {v0, v1, p0, p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 587
    return-wide p0
.end method

.method static checkPositive(I)I
    .locals 2
    .param p0, "value"    # I

    .line 592
    if-lez p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Not true that %s is positive."

    invoke-static {v0, v1, p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 593
    return p0
.end method

.method static checkPositive(J)J
    .locals 2
    .param p0, "value"    # J

    .line 598
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Not true that %s is positive."

    invoke-static {v0, v1, p0, p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 599
    return-wide p0
.end method

.method public static copyOf(Lorg/checkerframework/com/google/common/graph/Graph;)Lorg/checkerframework/com/google/common/graph/MutableGraph;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/graph/Graph<",
            "TN;>;)",
            "Lorg/checkerframework/com/google/common/graph/MutableGraph<",
            "TN;>;"
        }
    .end annotation

    .line 537
    .local p0, "graph":Lorg/checkerframework/com/google/common/graph/Graph;, "Lorg/checkerframework/com/google/common/graph/Graph<TN;>;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/graph/GraphBuilder;->from(Lorg/checkerframework/com/google/common/graph/Graph;)Lorg/checkerframework/com/google/common/graph/GraphBuilder;

    move-result-object v0

    invoke-interface {p0}, Lorg/checkerframework/com/google/common/graph/Graph;->nodes()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/graph/GraphBuilder;->expectedNodeCount(I)Lorg/checkerframework/com/google/common/graph/GraphBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/graph/GraphBuilder;->build()Lorg/checkerframework/com/google/common/graph/MutableGraph;

    move-result-object v0

    .line 538
    .local v0, "copy":Lorg/checkerframework/com/google/common/graph/MutableGraph;, "Lorg/checkerframework/com/google/common/graph/MutableGraph<TN;>;"
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

    .line 539
    .local v2, "node":Ljava/lang/Object;, "TN;"
    invoke-interface {v0, v2}, Lorg/checkerframework/com/google/common/graph/MutableGraph;->addNode(Ljava/lang/Object;)Z

    .line 540
    .end local v2    # "node":Ljava/lang/Object;, "TN;"
    goto :goto_0

    .line 541
    :cond_0
    invoke-interface {p0}, Lorg/checkerframework/com/google/common/graph/Graph;->edges()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/google/common/graph/EndpointPair;

    .line 542
    .local v2, "edge":Lorg/checkerframework/com/google/common/graph/EndpointPair;, "Lorg/checkerframework/com/google/common/graph/EndpointPair<TN;>;"
    invoke-virtual {v2}, Lorg/checkerframework/com/google/common/graph/EndpointPair;->nodeU()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2}, Lorg/checkerframework/com/google/common/graph/EndpointPair;->nodeV()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lorg/checkerframework/com/google/common/graph/MutableGraph;->putEdge(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 543
    .end local v2    # "edge":Lorg/checkerframework/com/google/common/graph/EndpointPair;, "Lorg/checkerframework/com/google/common/graph/EndpointPair<TN;>;"
    goto :goto_1

    .line 544
    :cond_1
    return-object v0
.end method

.method public static copyOf(Lorg/checkerframework/com/google/common/graph/Network;)Lorg/checkerframework/com/google/common/graph/MutableNetwork;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/graph/Network<",
            "TN;TE;>;)",
            "Lorg/checkerframework/com/google/common/graph/MutableNetwork<",
            "TN;TE;>;"
        }
    .end annotation

    .line 563
    .local p0, "network":Lorg/checkerframework/com/google/common/graph/Network;, "Lorg/checkerframework/com/google/common/graph/Network<TN;TE;>;"
    nop

    .line 564
    invoke-static {p0}, Lorg/checkerframework/com/google/common/graph/NetworkBuilder;->from(Lorg/checkerframework/com/google/common/graph/Network;)Lorg/checkerframework/com/google/common/graph/NetworkBuilder;

    move-result-object v0

    .line 565
    invoke-interface {p0}, Lorg/checkerframework/com/google/common/graph/Network;->nodes()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/graph/NetworkBuilder;->expectedNodeCount(I)Lorg/checkerframework/com/google/common/graph/NetworkBuilder;

    move-result-object v0

    .line 566
    invoke-interface {p0}, Lorg/checkerframework/com/google/common/graph/Network;->edges()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/graph/NetworkBuilder;->expectedEdgeCount(I)Lorg/checkerframework/com/google/common/graph/NetworkBuilder;

    move-result-object v0

    .line 567
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/graph/NetworkBuilder;->build()Lorg/checkerframework/com/google/common/graph/MutableNetwork;

    move-result-object v0

    .line 568
    .local v0, "copy":Lorg/checkerframework/com/google/common/graph/MutableNetwork;, "Lorg/checkerframework/com/google/common/graph/MutableNetwork<TN;TE;>;"
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

    .line 569
    .local v2, "node":Ljava/lang/Object;, "TN;"
    invoke-interface {v0, v2}, Lorg/checkerframework/com/google/common/graph/MutableNetwork;->addNode(Ljava/lang/Object;)Z

    .line 570
    .end local v2    # "node":Ljava/lang/Object;, "TN;"
    goto :goto_0

    .line 571
    :cond_0
    invoke-interface {p0}, Lorg/checkerframework/com/google/common/graph/Network;->edges()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 572
    .local v2, "edge":Ljava/lang/Object;, "TE;"
    invoke-interface {p0, v2}, Lorg/checkerframework/com/google/common/graph/Network;->incidentNodes(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/graph/EndpointPair;

    move-result-object v3

    .line 573
    .local v3, "endpointPair":Lorg/checkerframework/com/google/common/graph/EndpointPair;, "Lorg/checkerframework/com/google/common/graph/EndpointPair<TN;>;"
    invoke-virtual {v3}, Lorg/checkerframework/com/google/common/graph/EndpointPair;->nodeU()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3}, Lorg/checkerframework/com/google/common/graph/EndpointPair;->nodeV()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v4, v5, v2}, Lorg/checkerframework/com/google/common/graph/MutableNetwork;->addEdge(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 574
    .end local v2    # "edge":Ljava/lang/Object;, "TE;"
    .end local v3    # "endpointPair":Lorg/checkerframework/com/google/common/graph/EndpointPair;, "Lorg/checkerframework/com/google/common/graph/EndpointPair<TN;>;"
    goto :goto_1

    .line 575
    :cond_1
    return-object v0
.end method

.method public static copyOf(Lorg/checkerframework/com/google/common/graph/ValueGraph;)Lorg/checkerframework/com/google/common/graph/MutableValueGraph;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/graph/ValueGraph<",
            "TN;TV;>;)",
            "Lorg/checkerframework/com/google/common/graph/MutableValueGraph<",
            "TN;TV;>;"
        }
    .end annotation

    .line 549
    .local p0, "graph":Lorg/checkerframework/com/google/common/graph/ValueGraph;, "Lorg/checkerframework/com/google/common/graph/ValueGraph<TN;TV;>;"
    nop

    .line 550
    invoke-static {p0}, Lorg/checkerframework/com/google/common/graph/ValueGraphBuilder;->from(Lorg/checkerframework/com/google/common/graph/ValueGraph;)Lorg/checkerframework/com/google/common/graph/ValueGraphBuilder;

    move-result-object v0

    invoke-interface {p0}, Lorg/checkerframework/com/google/common/graph/ValueGraph;->nodes()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/graph/ValueGraphBuilder;->expectedNodeCount(I)Lorg/checkerframework/com/google/common/graph/ValueGraphBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/graph/ValueGraphBuilder;->build()Lorg/checkerframework/com/google/common/graph/MutableValueGraph;

    move-result-object v0

    .line 551
    .local v0, "copy":Lorg/checkerframework/com/google/common/graph/MutableValueGraph;, "Lorg/checkerframework/com/google/common/graph/MutableValueGraph<TN;TV;>;"
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

    .line 552
    .local v2, "node":Ljava/lang/Object;, "TN;"
    invoke-interface {v0, v2}, Lorg/checkerframework/com/google/common/graph/MutableValueGraph;->addNode(Ljava/lang/Object;)Z

    .line 553
    .end local v2    # "node":Ljava/lang/Object;, "TN;"
    goto :goto_0

    .line 554
    :cond_0
    invoke-interface {p0}, Lorg/checkerframework/com/google/common/graph/ValueGraph;->edges()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/google/common/graph/EndpointPair;

    .line 555
    .local v2, "edge":Lorg/checkerframework/com/google/common/graph/EndpointPair;, "Lorg/checkerframework/com/google/common/graph/EndpointPair<TN;>;"
    nop

    .line 556
    invoke-virtual {v2}, Lorg/checkerframework/com/google/common/graph/EndpointPair;->nodeU()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2}, Lorg/checkerframework/com/google/common/graph/EndpointPair;->nodeV()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2}, Lorg/checkerframework/com/google/common/graph/EndpointPair;->nodeU()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2}, Lorg/checkerframework/com/google/common/graph/EndpointPair;->nodeV()Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {p0, v5, v6, v7}, Lorg/checkerframework/com/google/common/graph/ValueGraph;->edgeValueOrDefault(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 555
    invoke-interface {v0, v3, v4, v5}, Lorg/checkerframework/com/google/common/graph/MutableValueGraph;->putEdgeValue(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    .end local v2    # "edge":Lorg/checkerframework/com/google/common/graph/EndpointPair;, "Lorg/checkerframework/com/google/common/graph/EndpointPair<TN;>;"
    goto :goto_1

    .line 558
    :cond_1
    return-object v0
.end method

.method public static hasCycle(Lorg/checkerframework/com/google/common/graph/Graph;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/graph/Graph<",
            "TN;>;)Z"
        }
    .end annotation

    .line 57
    .local p0, "graph":Lorg/checkerframework/com/google/common/graph/Graph;, "Lorg/checkerframework/com/google/common/graph/Graph<TN;>;"
    invoke-interface {p0}, Lorg/checkerframework/com/google/common/graph/Graph;->edges()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    .line 58
    .local v0, "numEdges":I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 59
    return v1

    .line 61
    :cond_0
    invoke-interface {p0}, Lorg/checkerframework/com/google/common/graph/Graph;->isDirected()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    invoke-interface {p0}, Lorg/checkerframework/com/google/common/graph/Graph;->nodes()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 62
    return v3

    .line 65
    :cond_1
    nop

    .line 66
    invoke-interface {p0}, Lorg/checkerframework/com/google/common/graph/Graph;->nodes()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-static {v2}, Lorg/checkerframework/com/google/common/collect/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v2

    .line 67
    .local v2, "visitedNodes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Lorg/checkerframework/com/google/common/graph/Graphs$NodeVisitState;>;"
    invoke-interface {p0}, Lorg/checkerframework/com/google/common/graph/Graph;->nodes()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 68
    .local v5, "node":Ljava/lang/Object;, "TN;"
    const/4 v6, 0x0

    invoke-static {p0, v2, v5, v6}, Lorg/checkerframework/com/google/common/graph/Graphs;->subgraphHasCycle(Lorg/checkerframework/com/google/common/graph/Graph;Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 69
    return v3

    .line 71
    .end local v5    # "node":Ljava/lang/Object;, "TN;"
    :cond_2
    goto :goto_0

    .line 72
    :cond_3
    return v1
.end method

.method public static hasCycle(Lorg/checkerframework/com/google/common/graph/Network;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/graph/Network<",
            "**>;)Z"
        }
    .end annotation

    .line 85
    .local p0, "network":Lorg/checkerframework/com/google/common/graph/Network;, "Lorg/checkerframework/com/google/common/graph/Network<**>;"
    invoke-interface {p0}, Lorg/checkerframework/com/google/common/graph/Network;->isDirected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    invoke-interface {p0}, Lorg/checkerframework/com/google/common/graph/Network;->allowsParallelEdges()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-interface {p0}, Lorg/checkerframework/com/google/common/graph/Network;->edges()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-interface {p0}, Lorg/checkerframework/com/google/common/graph/Network;->asGraph()Lorg/checkerframework/com/google/common/graph/Graph;

    move-result-object v1

    invoke-interface {v1}, Lorg/checkerframework/com/google/common/graph/Graph;->edges()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 88
    const/4 v0, 0x1

    return v0

    .line 90
    :cond_0
    invoke-interface {p0}, Lorg/checkerframework/com/google/common/graph/Network;->asGraph()Lorg/checkerframework/com/google/common/graph/Graph;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/graph/Graphs;->hasCycle(Lorg/checkerframework/com/google/common/graph/Graph;)Z

    move-result v0

    return v0
.end method

.method public static inducedSubgraph(Lorg/checkerframework/com/google/common/graph/Graph;Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/graph/MutableGraph;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/graph/Graph<",
            "TN;>;",
            "Ljava/lang/Iterable<",
            "+TN;>;)",
            "Lorg/checkerframework/com/google/common/graph/MutableGraph<",
            "TN;>;"
        }
    .end annotation

    .line 462
    .local p0, "graph":Lorg/checkerframework/com/google/common/graph/Graph;, "Lorg/checkerframework/com/google/common/graph/Graph<TN;>;"
    .local p1, "nodes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TN;>;"
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 464
    invoke-static {p0}, Lorg/checkerframework/com/google/common/graph/GraphBuilder;->from(Lorg/checkerframework/com/google/common/graph/Graph;)Lorg/checkerframework/com/google/common/graph/GraphBuilder;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/graph/GraphBuilder;->expectedNodeCount(I)Lorg/checkerframework/com/google/common/graph/GraphBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/graph/GraphBuilder;->build()Lorg/checkerframework/com/google/common/graph/MutableGraph;

    move-result-object v0

    goto :goto_0

    .line 465
    :cond_0
    invoke-static {p0}, Lorg/checkerframework/com/google/common/graph/GraphBuilder;->from(Lorg/checkerframework/com/google/common/graph/Graph;)Lorg/checkerframework/com/google/common/graph/GraphBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/graph/GraphBuilder;->build()Lorg/checkerframework/com/google/common/graph/MutableGraph;

    move-result-object v0

    :goto_0
    nop

    .line 466
    .local v0, "subgraph":Lorg/checkerframework/com/google/common/graph/MutableGraph;, "Lorg/checkerframework/com/google/common/graph/MutableGraph<TN;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 467
    .local v2, "node":Ljava/lang/Object;, "TN;"
    invoke-interface {v0, v2}, Lorg/checkerframework/com/google/common/graph/MutableGraph;->addNode(Ljava/lang/Object;)Z

    .line 468
    .end local v2    # "node":Ljava/lang/Object;, "TN;"
    goto :goto_1

    .line 469
    :cond_1
    invoke-interface {v0}, Lorg/checkerframework/com/google/common/graph/MutableGraph;->nodes()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 470
    .restart local v2    # "node":Ljava/lang/Object;, "TN;"
    invoke-interface {p0, v2}, Lorg/checkerframework/com/google/common/graph/Graph;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 471
    .local v4, "successorNode":Ljava/lang/Object;, "TN;"
    invoke-interface {v0}, Lorg/checkerframework/com/google/common/graph/MutableGraph;->nodes()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 472
    invoke-interface {v0, v2, v4}, Lorg/checkerframework/com/google/common/graph/MutableGraph;->putEdge(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 474
    .end local v4    # "successorNode":Ljava/lang/Object;, "TN;"
    :cond_2
    goto :goto_3

    .line 475
    .end local v2    # "node":Ljava/lang/Object;, "TN;"
    :cond_3
    goto :goto_2

    .line 476
    :cond_4
    return-object v0
.end method

.method public static inducedSubgraph(Lorg/checkerframework/com/google/common/graph/Network;Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/graph/MutableNetwork;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/graph/Network<",
            "TN;TE;>;",
            "Ljava/lang/Iterable<",
            "+TN;>;)",
            "Lorg/checkerframework/com/google/common/graph/MutableNetwork<",
            "TN;TE;>;"
        }
    .end annotation

    .line 517
    .local p0, "network":Lorg/checkerframework/com/google/common/graph/Network;, "Lorg/checkerframework/com/google/common/graph/Network<TN;TE;>;"
    .local p1, "nodes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TN;>;"
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 519
    invoke-static {p0}, Lorg/checkerframework/com/google/common/graph/NetworkBuilder;->from(Lorg/checkerframework/com/google/common/graph/Network;)Lorg/checkerframework/com/google/common/graph/NetworkBuilder;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/graph/NetworkBuilder;->expectedNodeCount(I)Lorg/checkerframework/com/google/common/graph/NetworkBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/graph/NetworkBuilder;->build()Lorg/checkerframework/com/google/common/graph/MutableNetwork;

    move-result-object v0

    goto :goto_0

    .line 520
    :cond_0
    invoke-static {p0}, Lorg/checkerframework/com/google/common/graph/NetworkBuilder;->from(Lorg/checkerframework/com/google/common/graph/Network;)Lorg/checkerframework/com/google/common/graph/NetworkBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/graph/NetworkBuilder;->build()Lorg/checkerframework/com/google/common/graph/MutableNetwork;

    move-result-object v0

    :goto_0
    nop

    .line 521
    .local v0, "subgraph":Lorg/checkerframework/com/google/common/graph/MutableNetwork;, "Lorg/checkerframework/com/google/common/graph/MutableNetwork<TN;TE;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 522
    .local v2, "node":Ljava/lang/Object;, "TN;"
    invoke-interface {v0, v2}, Lorg/checkerframework/com/google/common/graph/MutableNetwork;->addNode(Ljava/lang/Object;)Z

    .line 523
    .end local v2    # "node":Ljava/lang/Object;, "TN;"
    goto :goto_1

    .line 524
    :cond_1
    invoke-interface {v0}, Lorg/checkerframework/com/google/common/graph/MutableNetwork;->nodes()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 525
    .restart local v2    # "node":Ljava/lang/Object;, "TN;"
    invoke-interface {p0, v2}, Lorg/checkerframework/com/google/common/graph/Network;->outEdges(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 526
    .local v4, "edge":Ljava/lang/Object;, "TE;"
    invoke-interface {p0, v4}, Lorg/checkerframework/com/google/common/graph/Network;->incidentNodes(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/graph/EndpointPair;

    move-result-object v5

    invoke-virtual {v5, v2}, Lorg/checkerframework/com/google/common/graph/EndpointPair;->adjacentNode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 527
    .local v5, "successorNode":Ljava/lang/Object;, "TN;"
    invoke-interface {v0}, Lorg/checkerframework/com/google/common/graph/MutableNetwork;->nodes()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 528
    invoke-interface {v0, v2, v5, v4}, Lorg/checkerframework/com/google/common/graph/MutableNetwork;->addEdge(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 530
    .end local v4    # "edge":Ljava/lang/Object;, "TE;"
    .end local v5    # "successorNode":Ljava/lang/Object;, "TN;"
    :cond_2
    goto :goto_3

    .line 531
    .end local v2    # "node":Ljava/lang/Object;, "TN;"
    :cond_3
    goto :goto_2

    .line 532
    :cond_4
    return-object v0
.end method

.method public static inducedSubgraph(Lorg/checkerframework/com/google/common/graph/ValueGraph;Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/graph/MutableValueGraph;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/graph/ValueGraph<",
            "TN;TV;>;",
            "Ljava/lang/Iterable<",
            "+TN;>;)",
            "Lorg/checkerframework/com/google/common/graph/MutableValueGraph<",
            "TN;TV;>;"
        }
    .end annotation

    .line 489
    .local p0, "graph":Lorg/checkerframework/com/google/common/graph/ValueGraph;, "Lorg/checkerframework/com/google/common/graph/ValueGraph<TN;TV;>;"
    .local p1, "nodes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TN;>;"
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 491
    invoke-static {p0}, Lorg/checkerframework/com/google/common/graph/ValueGraphBuilder;->from(Lorg/checkerframework/com/google/common/graph/ValueGraph;)Lorg/checkerframework/com/google/common/graph/ValueGraphBuilder;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/graph/ValueGraphBuilder;->expectedNodeCount(I)Lorg/checkerframework/com/google/common/graph/ValueGraphBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/graph/ValueGraphBuilder;->build()Lorg/checkerframework/com/google/common/graph/MutableValueGraph;

    move-result-object v0

    goto :goto_0

    .line 492
    :cond_0
    invoke-static {p0}, Lorg/checkerframework/com/google/common/graph/ValueGraphBuilder;->from(Lorg/checkerframework/com/google/common/graph/ValueGraph;)Lorg/checkerframework/com/google/common/graph/ValueGraphBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/graph/ValueGraphBuilder;->build()Lorg/checkerframework/com/google/common/graph/MutableValueGraph;

    move-result-object v0

    :goto_0
    nop

    .line 493
    .local v0, "subgraph":Lorg/checkerframework/com/google/common/graph/MutableValueGraph;, "Lorg/checkerframework/com/google/common/graph/MutableValueGraph<TN;TV;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 494
    .local v2, "node":Ljava/lang/Object;, "TN;"
    invoke-interface {v0, v2}, Lorg/checkerframework/com/google/common/graph/MutableValueGraph;->addNode(Ljava/lang/Object;)Z

    .line 495
    .end local v2    # "node":Ljava/lang/Object;, "TN;"
    goto :goto_1

    .line 496
    :cond_1
    invoke-interface {v0}, Lorg/checkerframework/com/google/common/graph/MutableValueGraph;->nodes()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 497
    .restart local v2    # "node":Ljava/lang/Object;, "TN;"
    invoke-interface {p0, v2}, Lorg/checkerframework/com/google/common/graph/ValueGraph;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 498
    .local v4, "successorNode":Ljava/lang/Object;, "TN;"
    invoke-interface {v0}, Lorg/checkerframework/com/google/common/graph/MutableValueGraph;->nodes()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 499
    nop

    .line 500
    const/4 v5, 0x0

    invoke-interface {p0, v2, v4, v5}, Lorg/checkerframework/com/google/common/graph/ValueGraph;->edgeValueOrDefault(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 499
    invoke-interface {v0, v2, v4, v5}, Lorg/checkerframework/com/google/common/graph/MutableValueGraph;->putEdgeValue(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    .end local v4    # "successorNode":Ljava/lang/Object;, "TN;"
    :cond_2
    goto :goto_3

    .line 503
    .end local v2    # "node":Ljava/lang/Object;, "TN;"
    :cond_3
    goto :goto_2

    .line 504
    :cond_4
    return-object v0
.end method

.method public static reachableNodes(Lorg/checkerframework/com/google/common/graph/Graph;Ljava/lang/Object;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/graph/Graph<",
            "TN;>;TN;)",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    .line 190
    .local p0, "graph":Lorg/checkerframework/com/google/common/graph/Graph;, "Lorg/checkerframework/com/google/common/graph/Graph<TN;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    invoke-interface {p0}, Lorg/checkerframework/com/google/common/graph/Graph;->nodes()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Node %s is not an element of this graph."

    invoke-static {v0, v1, p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 191
    invoke-static {p0}, Lorg/checkerframework/com/google/common/graph/Traverser;->forGraph(Lorg/checkerframework/com/google/common/graph/SuccessorsFunction;)Lorg/checkerframework/com/google/common/graph/Traverser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/graph/Traverser;->breadthFirst(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableSet;->copyOf(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method private static subgraphHasCycle(Lorg/checkerframework/com/google/common/graph/Graph;Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/graph/Graph<",
            "TN;>;",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lorg/checkerframework/com/google/common/graph/Graphs$NodeVisitState;",
            ">;TN;TN;)Z"
        }
    .end annotation

    .line 100
    .local p0, "graph":Lorg/checkerframework/com/google/common/graph/Graph;, "Lorg/checkerframework/com/google/common/graph/Graph<TN;>;"
    .local p1, "visitedNodes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Lorg/checkerframework/com/google/common/graph/Graphs$NodeVisitState;>;"
    .local p2, "node":Ljava/lang/Object;, "TN;"
    .local p3, "previousNode":Ljava/lang/Object;, "TN;"
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/graph/Graphs$NodeVisitState;

    .line 101
    .local v0, "state":Lorg/checkerframework/com/google/common/graph/Graphs$NodeVisitState;
    sget-object v1, Lorg/checkerframework/com/google/common/graph/Graphs$NodeVisitState;->COMPLETE:Lorg/checkerframework/com/google/common/graph/Graphs$NodeVisitState;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 102
    return v2

    .line 104
    :cond_0
    sget-object v1, Lorg/checkerframework/com/google/common/graph/Graphs$NodeVisitState;->PENDING:Lorg/checkerframework/com/google/common/graph/Graphs$NodeVisitState;

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    .line 105
    return v3

    .line 108
    :cond_1
    sget-object v1, Lorg/checkerframework/com/google/common/graph/Graphs$NodeVisitState;->PENDING:Lorg/checkerframework/com/google/common/graph/Graphs$NodeVisitState;

    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    invoke-interface {p0, p2}, Lorg/checkerframework/com/google/common/graph/Graph;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 110
    .local v4, "nextNode":Ljava/lang/Object;, "TN;"
    invoke-static {p0, v4, p3}, Lorg/checkerframework/com/google/common/graph/Graphs;->canTraverseWithoutReusingEdge(Lorg/checkerframework/com/google/common/graph/Graph;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 111
    invoke-static {p0, p1, v4, p2}, Lorg/checkerframework/com/google/common/graph/Graphs;->subgraphHasCycle(Lorg/checkerframework/com/google/common/graph/Graph;Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 112
    return v3

    .line 114
    .end local v4    # "nextNode":Ljava/lang/Object;, "TN;"
    :cond_2
    goto :goto_0

    .line 115
    :cond_3
    sget-object v1, Lorg/checkerframework/com/google/common/graph/Graphs$NodeVisitState;->COMPLETE:Lorg/checkerframework/com/google/common/graph/Graphs$NodeVisitState;

    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    return v2
.end method

.method public static transitiveClosure(Lorg/checkerframework/com/google/common/graph/Graph;)Lorg/checkerframework/com/google/common/graph/Graph;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/graph/Graph<",
            "TN;>;)",
            "Lorg/checkerframework/com/google/common/graph/Graph<",
            "TN;>;"
        }
    .end annotation

    .line 146
    .local p0, "graph":Lorg/checkerframework/com/google/common/graph/Graph;, "Lorg/checkerframework/com/google/common/graph/Graph<TN;>;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/graph/GraphBuilder;->from(Lorg/checkerframework/com/google/common/graph/Graph;)Lorg/checkerframework/com/google/common/graph/GraphBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/graph/GraphBuilder;->allowsSelfLoops(Z)Lorg/checkerframework/com/google/common/graph/GraphBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/graph/GraphBuilder;->build()Lorg/checkerframework/com/google/common/graph/MutableGraph;

    move-result-object v0

    .line 150
    .local v0, "transitiveClosure":Lorg/checkerframework/com/google/common/graph/MutableGraph;, "Lorg/checkerframework/com/google/common/graph/MutableGraph<TN;>;"
    invoke-interface {p0}, Lorg/checkerframework/com/google/common/graph/Graph;->isDirected()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 152
    invoke-interface {p0}, Lorg/checkerframework/com/google/common/graph/Graph;->nodes()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 153
    .local v2, "node":Ljava/lang/Object;, "TN;"
    invoke-static {p0, v2}, Lorg/checkerframework/com/google/common/graph/Graphs;->reachableNodes(Lorg/checkerframework/com/google/common/graph/Graph;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 154
    .local v4, "reachableNode":Ljava/lang/Object;, "TN;"
    invoke-interface {v0, v2, v4}, Lorg/checkerframework/com/google/common/graph/MutableGraph;->putEdge(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 155
    .end local v4    # "reachableNode":Ljava/lang/Object;, "TN;"
    goto :goto_1

    .line 156
    .end local v2    # "node":Ljava/lang/Object;, "TN;"
    :cond_0
    goto :goto_0

    :cond_1
    goto :goto_5

    .line 160
    :cond_2
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 161
    .local v1, "visitedNodes":Ljava/util/Set;, "Ljava/util/Set<TN;>;"
    invoke-interface {p0}, Lorg/checkerframework/com/google/common/graph/Graph;->nodes()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 162
    .local v3, "node":Ljava/lang/Object;, "TN;"
    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 163
    invoke-static {p0, v3}, Lorg/checkerframework/com/google/common/graph/Graphs;->reachableNodes(Lorg/checkerframework/com/google/common/graph/Graph;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    .line 164
    .local v4, "reachableNodes":Ljava/util/Set;, "Ljava/util/Set<TN;>;"
    invoke-interface {v1, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 165
    const/4 v5, 0x1

    .line 166
    .local v5, "pairwiseMatch":I
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 167
    .local v7, "nodeU":Ljava/lang/Object;, "TN;"
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "pairwiseMatch":I
    .local v8, "pairwiseMatch":I
    invoke-static {v4, v5}, Lorg/checkerframework/com/google/common/collect/Iterables;->limit(Ljava/lang/Iterable;I)Ljava/lang/Iterable;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 168
    .local v9, "nodeV":Ljava/lang/Object;, "TN;"
    invoke-interface {v0, v7, v9}, Lorg/checkerframework/com/google/common/graph/MutableGraph;->putEdge(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 169
    .end local v9    # "nodeV":Ljava/lang/Object;, "TN;"
    goto :goto_4

    .line 170
    .end local v7    # "nodeU":Ljava/lang/Object;, "TN;"
    :cond_3
    move v5, v8

    goto :goto_3

    .line 172
    .end local v3    # "node":Ljava/lang/Object;, "TN;"
    .end local v4    # "reachableNodes":Ljava/util/Set;, "Ljava/util/Set<TN;>;"
    .end local v8    # "pairwiseMatch":I
    :cond_4
    goto :goto_2

    .line 175
    .end local v1    # "visitedNodes":Ljava/util/Set;, "Ljava/util/Set<TN;>;"
    :cond_5
    :goto_5
    return-object v0
.end method

.method static transpose(Lorg/checkerframework/com/google/common/graph/EndpointPair;)Lorg/checkerframework/com/google/common/graph/EndpointPair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/graph/EndpointPair<",
            "TN;>;)",
            "Lorg/checkerframework/com/google/common/graph/EndpointPair<",
            "TN;>;"
        }
    .end annotation

    .line 247
    .local p0, "endpoints":Lorg/checkerframework/com/google/common/graph/EndpointPair;, "Lorg/checkerframework/com/google/common/graph/EndpointPair<TN;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/graph/EndpointPair;->isOrdered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/graph/EndpointPair;->target()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/graph/EndpointPair;->source()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/graph/EndpointPair;->ordered(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/graph/EndpointPair;

    move-result-object v0

    return-object v0

    .line 250
    :cond_0
    return-object p0
.end method

.method public static transpose(Lorg/checkerframework/com/google/common/graph/Graph;)Lorg/checkerframework/com/google/common/graph/Graph;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/graph/Graph<",
            "TN;>;)",
            "Lorg/checkerframework/com/google/common/graph/Graph<",
            "TN;>;"
        }
    .end annotation

    .line 203
    .local p0, "graph":Lorg/checkerframework/com/google/common/graph/Graph;, "Lorg/checkerframework/com/google/common/graph/Graph<TN;>;"
    invoke-interface {p0}, Lorg/checkerframework/com/google/common/graph/Graph;->isDirected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    return-object p0

    .line 207
    :cond_0
    instance-of v0, p0, Lorg/checkerframework/com/google/common/graph/Graphs$TransposedGraph;

    if-eqz v0, :cond_1

    .line 208
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/com/google/common/graph/Graphs$TransposedGraph;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/graph/Graphs$TransposedGraph;->access$000(Lorg/checkerframework/com/google/common/graph/Graphs$TransposedGraph;)Lorg/checkerframework/com/google/common/graph/Graph;

    move-result-object v0

    return-object v0

    .line 211
    :cond_1
    new-instance v0, Lorg/checkerframework/com/google/common/graph/Graphs$TransposedGraph;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/graph/Graphs$TransposedGraph;-><init>(Lorg/checkerframework/com/google/common/graph/Graph;)V

    return-object v0
.end method

.method public static transpose(Lorg/checkerframework/com/google/common/graph/Network;)Lorg/checkerframework/com/google/common/graph/Network;
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
            "Lorg/checkerframework/com/google/common/graph/Network<",
            "TN;TE;>;"
        }
    .end annotation

    .line 235
    .local p0, "network":Lorg/checkerframework/com/google/common/graph/Network;, "Lorg/checkerframework/com/google/common/graph/Network<TN;TE;>;"
    invoke-interface {p0}, Lorg/checkerframework/com/google/common/graph/Network;->isDirected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 236
    return-object p0

    .line 239
    :cond_0
    instance-of v0, p0, Lorg/checkerframework/com/google/common/graph/Graphs$TransposedNetwork;

    if-eqz v0, :cond_1

    .line 240
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/com/google/common/graph/Graphs$TransposedNetwork;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/graph/Graphs$TransposedNetwork;->access$200(Lorg/checkerframework/com/google/common/graph/Graphs$TransposedNetwork;)Lorg/checkerframework/com/google/common/graph/Network;

    move-result-object v0

    return-object v0

    .line 243
    :cond_1
    new-instance v0, Lorg/checkerframework/com/google/common/graph/Graphs$TransposedNetwork;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/graph/Graphs$TransposedNetwork;-><init>(Lorg/checkerframework/com/google/common/graph/Network;)V

    return-object v0
.end method

.method public static transpose(Lorg/checkerframework/com/google/common/graph/ValueGraph;)Lorg/checkerframework/com/google/common/graph/ValueGraph;
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
            "Lorg/checkerframework/com/google/common/graph/ValueGraph<",
            "TN;TV;>;"
        }
    .end annotation

    .line 219
    .local p0, "graph":Lorg/checkerframework/com/google/common/graph/ValueGraph;, "Lorg/checkerframework/com/google/common/graph/ValueGraph<TN;TV;>;"
    invoke-interface {p0}, Lorg/checkerframework/com/google/common/graph/ValueGraph;->isDirected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    return-object p0

    .line 223
    :cond_0
    instance-of v0, p0, Lorg/checkerframework/com/google/common/graph/Graphs$TransposedValueGraph;

    if-eqz v0, :cond_1

    .line 224
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/com/google/common/graph/Graphs$TransposedValueGraph;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/graph/Graphs$TransposedValueGraph;->access$100(Lorg/checkerframework/com/google/common/graph/Graphs$TransposedValueGraph;)Lorg/checkerframework/com/google/common/graph/ValueGraph;

    move-result-object v0

    return-object v0

    .line 227
    :cond_1
    new-instance v0, Lorg/checkerframework/com/google/common/graph/Graphs$TransposedValueGraph;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/graph/Graphs$TransposedValueGraph;-><init>(Lorg/checkerframework/com/google/common/graph/ValueGraph;)V

    return-object v0
.end method
