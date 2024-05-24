.class Lorg/checkerframework/com/google/common/graph/Graphs$TransposedValueGraph;
.super Lorg/checkerframework/com/google/common/graph/ForwardingValueGraph;
.source "Graphs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/graph/Graphs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TransposedValueGraph"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/graph/ForwardingValueGraph<",
        "TN;TV;>;"
    }
.end annotation


# instance fields
.field private final graph:Lorg/checkerframework/com/google/common/graph/ValueGraph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/graph/ValueGraph<",
            "TN;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/graph/ValueGraph;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/graph/ValueGraph<",
            "TN;TV;>;)V"
        }
    .end annotation

    .line 303
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/Graphs$TransposedValueGraph;, "Lorg/checkerframework/com/google/common/graph/Graphs$TransposedValueGraph<TN;TV;>;"
    .local p1, "graph":Lorg/checkerframework/com/google/common/graph/ValueGraph;, "Lorg/checkerframework/com/google/common/graph/ValueGraph<TN;TV;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/graph/ForwardingValueGraph;-><init>()V

    .line 304
    iput-object p1, p0, Lorg/checkerframework/com/google/common/graph/Graphs$TransposedValueGraph;->graph:Lorg/checkerframework/com/google/common/graph/ValueGraph;

    .line 305
    return-void
.end method

.method static synthetic access$100(Lorg/checkerframework/com/google/common/graph/Graphs$TransposedValueGraph;)Lorg/checkerframework/com/google/common/graph/ValueGraph;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/com/google/common/graph/Graphs$TransposedValueGraph;

    .line 300
    iget-object v0, p0, Lorg/checkerframework/com/google/common/graph/Graphs$TransposedValueGraph;->graph:Lorg/checkerframework/com/google/common/graph/ValueGraph;

    return-object v0
.end method


# virtual methods
.method protected delegate()Lorg/checkerframework/com/google/common/graph/ValueGraph;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/graph/ValueGraph<",
            "TN;TV;>;"
        }
    .end annotation

    .line 309
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/Graphs$TransposedValueGraph;, "Lorg/checkerframework/com/google/common/graph/Graphs$TransposedValueGraph<TN;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/graph/Graphs$TransposedValueGraph;->graph:Lorg/checkerframework/com/google/common/graph/ValueGraph;

    return-object v0
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

    .line 344
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/Graphs$TransposedValueGraph;, "Lorg/checkerframework/com/google/common/graph/Graphs$TransposedValueGraph<TN;TV;>;"
    .local p1, "nodeU":Ljava/lang/Object;, "TN;"
    .local p2, "nodeV":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/graph/Graphs$TransposedValueGraph;->delegate()Lorg/checkerframework/com/google/common/graph/ValueGraph;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Lorg/checkerframework/com/google/common/graph/ValueGraph;->edgeValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public edgeValue(Lorg/checkerframework/com/google/common/graph/EndpointPair;)Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/graph/EndpointPair<",
            "TN;>;)",
            "Ljava/util/Optional<",
            "TV;>;"
        }
    .end annotation

    .line 349
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/Graphs$TransposedValueGraph;, "Lorg/checkerframework/com/google/common/graph/Graphs$TransposedValueGraph<TN;TV;>;"
    .local p1, "endpoints":Lorg/checkerframework/com/google/common/graph/EndpointPair;, "Lorg/checkerframework/com/google/common/graph/EndpointPair<TN;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/graph/Graphs$TransposedValueGraph;->delegate()Lorg/checkerframework/com/google/common/graph/ValueGraph;

    move-result-object v0

    invoke-static {p1}, Lorg/checkerframework/com/google/common/graph/Graphs;->transpose(Lorg/checkerframework/com/google/common/graph/EndpointPair;)Lorg/checkerframework/com/google/common/graph/EndpointPair;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/checkerframework/com/google/common/graph/ValueGraph;->edgeValue(Lorg/checkerframework/com/google/common/graph/EndpointPair;)Ljava/util/Optional;

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

    .line 354
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/Graphs$TransposedValueGraph;, "Lorg/checkerframework/com/google/common/graph/Graphs$TransposedValueGraph<TN;TV;>;"
    .local p1, "nodeU":Ljava/lang/Object;, "TN;"
    .local p2, "nodeV":Ljava/lang/Object;, "TN;"
    .local p3, "defaultValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/graph/Graphs$TransposedValueGraph;->delegate()Lorg/checkerframework/com/google/common/graph/ValueGraph;

    move-result-object v0

    invoke-interface {v0, p2, p1, p3}, Lorg/checkerframework/com/google/common/graph/ValueGraph;->edgeValueOrDefault(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 359
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/Graphs$TransposedValueGraph;, "Lorg/checkerframework/com/google/common/graph/Graphs$TransposedValueGraph<TN;TV;>;"
    .local p1, "endpoints":Lorg/checkerframework/com/google/common/graph/EndpointPair;, "Lorg/checkerframework/com/google/common/graph/EndpointPair<TN;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/graph/Graphs$TransposedValueGraph;->delegate()Lorg/checkerframework/com/google/common/graph/ValueGraph;

    move-result-object v0

    invoke-static {p1}, Lorg/checkerframework/com/google/common/graph/Graphs;->transpose(Lorg/checkerframework/com/google/common/graph/EndpointPair;)Lorg/checkerframework/com/google/common/graph/EndpointPair;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lorg/checkerframework/com/google/common/graph/ValueGraph;->edgeValueOrDefault(Lorg/checkerframework/com/google/common/graph/EndpointPair;Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 334
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/Graphs$TransposedValueGraph;, "Lorg/checkerframework/com/google/common/graph/Graphs$TransposedValueGraph<TN;TV;>;"
    .local p1, "nodeU":Ljava/lang/Object;, "TN;"
    .local p2, "nodeV":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/graph/Graphs$TransposedValueGraph;->delegate()Lorg/checkerframework/com/google/common/graph/ValueGraph;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Lorg/checkerframework/com/google/common/graph/ValueGraph;->hasEdgeConnecting(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 339
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/Graphs$TransposedValueGraph;, "Lorg/checkerframework/com/google/common/graph/Graphs$TransposedValueGraph<TN;TV;>;"
    .local p1, "endpoints":Lorg/checkerframework/com/google/common/graph/EndpointPair;, "Lorg/checkerframework/com/google/common/graph/EndpointPair<TN;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/graph/Graphs$TransposedValueGraph;->delegate()Lorg/checkerframework/com/google/common/graph/ValueGraph;

    move-result-object v0

    invoke-static {p1}, Lorg/checkerframework/com/google/common/graph/Graphs;->transpose(Lorg/checkerframework/com/google/common/graph/EndpointPair;)Lorg/checkerframework/com/google/common/graph/EndpointPair;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/checkerframework/com/google/common/graph/ValueGraph;->hasEdgeConnecting(Lorg/checkerframework/com/google/common/graph/EndpointPair;)Z

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

    .line 324
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/Graphs$TransposedValueGraph;, "Lorg/checkerframework/com/google/common/graph/Graphs$TransposedValueGraph<TN;TV;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/graph/Graphs$TransposedValueGraph;->delegate()Lorg/checkerframework/com/google/common/graph/ValueGraph;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/checkerframework/com/google/common/graph/ValueGraph;->outDegree(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public outDegree(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)I"
        }
    .end annotation

    .line 329
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/Graphs$TransposedValueGraph;, "Lorg/checkerframework/com/google/common/graph/Graphs$TransposedValueGraph<TN;TV;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/graph/Graphs$TransposedValueGraph;->delegate()Lorg/checkerframework/com/google/common/graph/ValueGraph;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/checkerframework/com/google/common/graph/ValueGraph;->inDegree(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic predecessors(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 300
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/Graphs$TransposedValueGraph;, "Lorg/checkerframework/com/google/common/graph/Graphs$TransposedValueGraph<TN;TV;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/graph/Graphs$TransposedValueGraph;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

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

    .line 314
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/Graphs$TransposedValueGraph;, "Lorg/checkerframework/com/google/common/graph/Graphs$TransposedValueGraph<TN;TV;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/graph/Graphs$TransposedValueGraph;->delegate()Lorg/checkerframework/com/google/common/graph/ValueGraph;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/checkerframework/com/google/common/graph/ValueGraph;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic successors(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 300
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/Graphs$TransposedValueGraph;, "Lorg/checkerframework/com/google/common/graph/Graphs$TransposedValueGraph<TN;TV;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/graph/Graphs$TransposedValueGraph;->successors(Ljava/lang/Object;)Ljava/util/Set;

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

    .line 319
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/Graphs$TransposedValueGraph;, "Lorg/checkerframework/com/google/common/graph/Graphs$TransposedValueGraph<TN;TV;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/graph/Graphs$TransposedValueGraph;->delegate()Lorg/checkerframework/com/google/common/graph/ValueGraph;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/checkerframework/com/google/common/graph/ValueGraph;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
