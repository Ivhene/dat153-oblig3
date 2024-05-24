.class public abstract Lorg/checkerframework/com/google/common/graph/AbstractValueGraph;
.super Lorg/checkerframework/com/google/common/graph/AbstractBaseGraph;
.source "AbstractValueGraph.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/graph/ValueGraph;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/graph/AbstractBaseGraph<",
        "TN;>;",
        "Lorg/checkerframework/com/google/common/graph/ValueGraph<",
        "TN;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/AbstractValueGraph;, "Lorg/checkerframework/com/google/common/graph/AbstractValueGraph<TN;TV;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/graph/AbstractBaseGraph;-><init>()V

    return-void
.end method

.method private static edgeValueMap(Lorg/checkerframework/com/google/common/graph/ValueGraph;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/graph/ValueGraph<",
            "TN;TV;>;)",
            "Ljava/util/Map<",
            "Lorg/checkerframework/com/google/common/graph/EndpointPair<",
            "TN;>;TV;>;"
        }
    .end annotation

    .line 147
    .local p0, "graph":Lorg/checkerframework/com/google/common/graph/ValueGraph;, "Lorg/checkerframework/com/google/common/graph/ValueGraph<TN;TV;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/graph/AbstractValueGraph$2;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/graph/AbstractValueGraph$2;-><init>(Lorg/checkerframework/com/google/common/graph/ValueGraph;)V

    .line 154
    .local v0, "edgeToValueFn":Lorg/checkerframework/com/google/common/base/Function;, "Lorg/checkerframework/com/google/common/base/Function<Lorg/checkerframework/com/google/common/graph/EndpointPair<TN;>;TV;>;"
    invoke-interface {p0}, Lorg/checkerframework/com/google/common/graph/ValueGraph;->edges()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/checkerframework/com/google/common/collect/Maps;->asMap(Ljava/util/Set;Lorg/checkerframework/com/google/common/base/Function;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public asGraph()Lorg/checkerframework/com/google/common/graph/Graph;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/graph/Graph<",
            "TN;>;"
        }
    .end annotation

    .line 45
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/AbstractValueGraph;, "Lorg/checkerframework/com/google/common/graph/AbstractValueGraph<TN;TV;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/graph/AbstractValueGraph$1;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/graph/AbstractValueGraph$1;-><init>(Lorg/checkerframework/com/google/common/graph/AbstractValueGraph;)V

    return-object v0
.end method

.method public bridge synthetic degree(Ljava/lang/Object;)I
    .locals 0

    .line 39
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/AbstractValueGraph;, "Lorg/checkerframework/com/google/common/graph/AbstractValueGraph<TN;TV;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/graph/AbstractBaseGraph;->degree(Ljava/lang/Object;)I

    move-result p1

    return p1
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
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/AbstractValueGraph;, "Lorg/checkerframework/com/google/common/graph/AbstractValueGraph<TN;TV;>;"
    .local p1, "nodeU":Ljava/lang/Object;, "TN;"
    .local p2, "nodeV":Ljava/lang/Object;, "TN;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/checkerframework/com/google/common/graph/AbstractValueGraph;->edgeValueOrDefault(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

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
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/AbstractValueGraph;, "Lorg/checkerframework/com/google/common/graph/AbstractValueGraph<TN;TV;>;"
    .local p1, "endpoints":Lorg/checkerframework/com/google/common/graph/EndpointPair;, "Lorg/checkerframework/com/google/common/graph/EndpointPair<TN;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/com/google/common/graph/AbstractValueGraph;->edgeValueOrDefault(Lorg/checkerframework/com/google/common/graph/EndpointPair;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic edges()Ljava/util/Set;
    .locals 1

    .line 39
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/AbstractValueGraph;, "Lorg/checkerframework/com/google/common/graph/AbstractValueGraph<TN;TV;>;"
    invoke-super {p0}, Lorg/checkerframework/com/google/common/graph/AbstractBaseGraph;->edges()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 115
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/AbstractValueGraph;, "Lorg/checkerframework/com/google/common/graph/AbstractValueGraph<TN;TV;>;"
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 116
    return v0

    .line 118
    :cond_0
    instance-of v1, p1, Lorg/checkerframework/com/google/common/graph/ValueGraph;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 119
    return v2

    .line 121
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/checkerframework/com/google/common/graph/ValueGraph;

    .line 123
    .local v1, "other":Lorg/checkerframework/com/google/common/graph/ValueGraph;, "Lorg/checkerframework/com/google/common/graph/ValueGraph<**>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/graph/AbstractValueGraph;->isDirected()Z

    move-result v3

    invoke-interface {v1}, Lorg/checkerframework/com/google/common/graph/ValueGraph;->isDirected()Z

    move-result v4

    if-ne v3, v4, :cond_2

    .line 124
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/graph/AbstractValueGraph;->nodes()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v1}, Lorg/checkerframework/com/google/common/graph/ValueGraph;->nodes()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 125
    invoke-static {p0}, Lorg/checkerframework/com/google/common/graph/AbstractValueGraph;->edgeValueMap(Lorg/checkerframework/com/google/common/graph/ValueGraph;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v1}, Lorg/checkerframework/com/google/common/graph/AbstractValueGraph;->edgeValueMap(Lorg/checkerframework/com/google/common/graph/ValueGraph;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 123
    :goto_0
    return v0
.end method

.method public bridge synthetic hasEdgeConnecting(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 39
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/AbstractValueGraph;, "Lorg/checkerframework/com/google/common/graph/AbstractValueGraph<TN;TV;>;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/com/google/common/graph/AbstractBaseGraph;->hasEdgeConnecting(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic hasEdgeConnecting(Lorg/checkerframework/com/google/common/graph/EndpointPair;)Z
    .locals 0

    .line 39
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/AbstractValueGraph;, "Lorg/checkerframework/com/google/common/graph/AbstractValueGraph<TN;TV;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/graph/AbstractBaseGraph;->hasEdgeConnecting(Lorg/checkerframework/com/google/common/graph/EndpointPair;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 130
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/AbstractValueGraph;, "Lorg/checkerframework/com/google/common/graph/AbstractValueGraph<TN;TV;>;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/graph/AbstractValueGraph;->edgeValueMap(Lorg/checkerframework/com/google/common/graph/ValueGraph;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic inDegree(Ljava/lang/Object;)I
    .locals 0

    .line 39
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/AbstractValueGraph;, "Lorg/checkerframework/com/google/common/graph/AbstractValueGraph<TN;TV;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/graph/AbstractBaseGraph;->inDegree(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic incidentEdges(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    .line 39
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/AbstractValueGraph;, "Lorg/checkerframework/com/google/common/graph/AbstractValueGraph<TN;TV;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/graph/AbstractBaseGraph;->incidentEdges(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic outDegree(Ljava/lang/Object;)I
    .locals 0

    .line 39
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/AbstractValueGraph;, "Lorg/checkerframework/com/google/common/graph/AbstractValueGraph<TN;TV;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/graph/AbstractBaseGraph;->outDegree(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 136
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/AbstractValueGraph;, "Lorg/checkerframework/com/google/common/graph/AbstractValueGraph<TN;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isDirected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 137
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/graph/AbstractValueGraph;->isDirected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", allowsSelfLoops: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 139
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/graph/AbstractValueGraph;->allowsSelfLoops()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nodes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 141
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/graph/AbstractValueGraph;->nodes()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", edges: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 143
    invoke-static {p0}, Lorg/checkerframework/com/google/common/graph/AbstractValueGraph;->edgeValueMap(Lorg/checkerframework/com/google/common/graph/ValueGraph;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 136
    return-object v0
.end method
