.class abstract Lorg/checkerframework/com/google/common/graph/ForwardingValueGraph;
.super Lorg/checkerframework/com/google/common/graph/AbstractValueGraph;
.source "ForwardingValueGraph.java"


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


# direct methods
.method constructor <init>()V
    .locals 0

    .line 30
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ForwardingValueGraph;, "Lorg/checkerframework/com/google/common/graph/ForwardingValueGraph<TN;TV;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/graph/AbstractValueGraph;-><init>()V

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

    .line 65
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ForwardingValueGraph;, "Lorg/checkerframework/com/google/common/graph/ForwardingValueGraph<TN;TV;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/graph/ForwardingValueGraph;->delegate()Lorg/checkerframework/com/google/common/graph/ValueGraph;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/checkerframework/com/google/common/graph/ValueGraph;->adjacentNodes(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public allowsSelfLoops()Z
    .locals 1

    .line 55
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ForwardingValueGraph;, "Lorg/checkerframework/com/google/common/graph/ForwardingValueGraph<TN;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/graph/ForwardingValueGraph;->delegate()Lorg/checkerframework/com/google/common/graph/ValueGraph;

    move-result-object v0

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/graph/ValueGraph;->allowsSelfLoops()Z

    move-result v0

    return v0
.end method

.method public degree(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)I"
        }
    .end annotation

    .line 80
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ForwardingValueGraph;, "Lorg/checkerframework/com/google/common/graph/ForwardingValueGraph<TN;TV;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/graph/ForwardingValueGraph;->delegate()Lorg/checkerframework/com/google/common/graph/ValueGraph;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/checkerframework/com/google/common/graph/ValueGraph;->degree(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected abstract delegate()Lorg/checkerframework/com/google/common/graph/ValueGraph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/graph/ValueGraph<",
            "TN;TV;>;"
        }
    .end annotation
.end method

.method protected edgeCount()J
    .locals 2

    .line 45
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ForwardingValueGraph;, "Lorg/checkerframework/com/google/common/graph/ForwardingValueGraph<TN;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/graph/ForwardingValueGraph;->delegate()Lorg/checkerframework/com/google/common/graph/ValueGraph;

    move-result-object v0

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/graph/ValueGraph;->edges()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public edgeValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)",
            "Ljava/util/Optional<",
            "TV;>;"
        }
    .end annotation

    .line 105
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ForwardingValueGraph;, "Lorg/checkerframework/com/google/common/graph/ForwardingValueGraph<TN;TV;>;"
    .local p1, "nodeU":Ljava/lang/Object;, "TN;"
    .local p2, "nodeV":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/graph/ForwardingValueGraph;->delegate()Lorg/checkerframework/com/google/common/graph/ValueGraph;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/checkerframework/com/google/common/graph/ValueGraph;->edgeValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public edgeValue(Lorg/checkerframework/com/google/common/graph/EndpointPair;)Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/graph/EndpointPair<",
            "TN;>;)",
            "Ljava/util/Optional<",
            "TV;>;"
        }
    .end annotation

    .line 110
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ForwardingValueGraph;, "Lorg/checkerframework/com/google/common/graph/ForwardingValueGraph<TN;TV;>;"
    .local p1, "endpoints":Lorg/checkerframework/com/google/common/graph/EndpointPair;, "Lorg/checkerframework/com/google/common/graph/EndpointPair<TN;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/graph/ForwardingValueGraph;->delegate()Lorg/checkerframework/com/google/common/graph/ValueGraph;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/checkerframework/com/google/common/graph/ValueGraph;->edgeValue(Lorg/checkerframework/com/google/common/graph/EndpointPair;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public edgeValueOrDefault(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;TV;)TV;"
        }
    .end annotation

    .line 115
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ForwardingValueGraph;, "Lorg/checkerframework/com/google/common/graph/ForwardingValueGraph<TN;TV;>;"
    .local p1, "nodeU":Ljava/lang/Object;, "TN;"
    .local p2, "nodeV":Ljava/lang/Object;, "TN;"
    .local p3, "defaultValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/graph/ForwardingValueGraph;->delegate()Lorg/checkerframework/com/google/common/graph/ValueGraph;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/checkerframework/com/google/common/graph/ValueGraph;->edgeValueOrDefault(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public edgeValueOrDefault(Lorg/checkerframework/com/google/common/graph/EndpointPair;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/graph/EndpointPair<",
            "TN;>;TV;)TV;"
        }
    .end annotation

    .line 120
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ForwardingValueGraph;, "Lorg/checkerframework/com/google/common/graph/ForwardingValueGraph<TN;TV;>;"
    .local p1, "endpoints":Lorg/checkerframework/com/google/common/graph/EndpointPair;, "Lorg/checkerframework/com/google/common/graph/EndpointPair<TN;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/graph/ForwardingValueGraph;->delegate()Lorg/checkerframework/com/google/common/graph/ValueGraph;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/checkerframework/com/google/common/graph/ValueGraph;->edgeValueOrDefault(Lorg/checkerframework/com/google/common/graph/EndpointPair;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hasEdgeConnecting(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)Z"
        }
    .end annotation

    .line 95
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ForwardingValueGraph;, "Lorg/checkerframework/com/google/common/graph/ForwardingValueGraph<TN;TV;>;"
    .local p1, "nodeU":Ljava/lang/Object;, "TN;"
    .local p2, "nodeV":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/graph/ForwardingValueGraph;->delegate()Lorg/checkerframework/com/google/common/graph/ValueGraph;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/checkerframework/com/google/common/graph/ValueGraph;->hasEdgeConnecting(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasEdgeConnecting(Lorg/checkerframework/com/google/common/graph/EndpointPair;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/graph/EndpointPair<",
            "TN;>;)Z"
        }
    .end annotation

    .line 100
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ForwardingValueGraph;, "Lorg/checkerframework/com/google/common/graph/ForwardingValueGraph<TN;TV;>;"
    .local p1, "endpoints":Lorg/checkerframework/com/google/common/graph/EndpointPair;, "Lorg/checkerframework/com/google/common/graph/EndpointPair<TN;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/graph/ForwardingValueGraph;->delegate()Lorg/checkerframework/com/google/common/graph/ValueGraph;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/checkerframework/com/google/common/graph/ValueGraph;->hasEdgeConnecting(Lorg/checkerframework/com/google/common/graph/EndpointPair;)Z

    move-result v0

    return v0
.end method

.method public inDegree(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)I"
        }
    .end annotation

    .line 85
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ForwardingValueGraph;, "Lorg/checkerframework/com/google/common/graph/ForwardingValueGraph<TN;TV;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/graph/ForwardingValueGraph;->delegate()Lorg/checkerframework/com/google/common/graph/ValueGraph;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/checkerframework/com/google/common/graph/ValueGraph;->inDegree(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isDirected()Z
    .locals 1

    .line 50
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ForwardingValueGraph;, "Lorg/checkerframework/com/google/common/graph/ForwardingValueGraph<TN;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/graph/ForwardingValueGraph;->delegate()Lorg/checkerframework/com/google/common/graph/ValueGraph;

    move-result-object v0

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/graph/ValueGraph;->isDirected()Z

    move-result v0

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

    .line 60
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ForwardingValueGraph;, "Lorg/checkerframework/com/google/common/graph/ForwardingValueGraph<TN;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/graph/ForwardingValueGraph;->delegate()Lorg/checkerframework/com/google/common/graph/ValueGraph;

    move-result-object v0

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/graph/ValueGraph;->nodeOrder()Lorg/checkerframework/com/google/common/graph/ElementOrder;

    move-result-object v0

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

    .line 36
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ForwardingValueGraph;, "Lorg/checkerframework/com/google/common/graph/ForwardingValueGraph<TN;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/graph/ForwardingValueGraph;->delegate()Lorg/checkerframework/com/google/common/graph/ValueGraph;

    move-result-object v0

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/graph/ValueGraph;->nodes()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public outDegree(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)I"
        }
    .end annotation

    .line 90
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ForwardingValueGraph;, "Lorg/checkerframework/com/google/common/graph/ForwardingValueGraph<TN;TV;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/graph/ForwardingValueGraph;->delegate()Lorg/checkerframework/com/google/common/graph/ValueGraph;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/checkerframework/com/google/common/graph/ValueGraph;->outDegree(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic predecessors(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 30
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ForwardingValueGraph;, "Lorg/checkerframework/com/google/common/graph/ForwardingValueGraph<TN;TV;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/graph/ForwardingValueGraph;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

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

    .line 70
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ForwardingValueGraph;, "Lorg/checkerframework/com/google/common/graph/ForwardingValueGraph<TN;TV;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/graph/ForwardingValueGraph;->delegate()Lorg/checkerframework/com/google/common/graph/ValueGraph;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/checkerframework/com/google/common/graph/ValueGraph;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic successors(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 30
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ForwardingValueGraph;, "Lorg/checkerframework/com/google/common/graph/ForwardingValueGraph<TN;TV;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/graph/ForwardingValueGraph;->successors(Ljava/lang/Object;)Ljava/util/Set;

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

    .line 75
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ForwardingValueGraph;, "Lorg/checkerframework/com/google/common/graph/ForwardingValueGraph<TN;TV;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/graph/ForwardingValueGraph;->delegate()Lorg/checkerframework/com/google/common/graph/ValueGraph;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/checkerframework/com/google/common/graph/ValueGraph;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
