.class public abstract Lorg/checkerframework/com/google/common/graph/AbstractNetwork;
.super Ljava/lang/Object;
.source "AbstractNetwork.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/graph/Network;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/checkerframework/com/google/common/graph/Network<",
        "TN;TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/AbstractNetwork;, "Lorg/checkerframework/com/google/common/graph/AbstractNetwork<TN;TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private connectedPredicate(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/base/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)",
            "Lorg/checkerframework/com/google/common/base/Predicate<",
            "TE;>;"
        }
    .end annotation

    .line 182
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/AbstractNetwork;, "Lorg/checkerframework/com/google/common/graph/AbstractNetwork<TN;TE;>;"
    .local p1, "nodePresent":Ljava/lang/Object;, "TN;"
    .local p2, "nodeToCheck":Ljava/lang/Object;, "TN;"
    new-instance v0, Lorg/checkerframework/com/google/common/graph/AbstractNetwork$2;

    invoke-direct {v0, p0, p1, p2}, Lorg/checkerframework/com/google/common/graph/AbstractNetwork$2;-><init>(Lorg/checkerframework/com/google/common/graph/AbstractNetwork;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private static edgeIncidentNodesMap(Lorg/checkerframework/com/google/common/graph/Network;)Ljava/util/Map;
    .locals 2
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
            "TE;",
            "Lorg/checkerframework/com/google/common/graph/EndpointPair<",
            "TN;>;>;"
        }
    .end annotation

    .line 283
    .local p0, "network":Lorg/checkerframework/com/google/common/graph/Network;, "Lorg/checkerframework/com/google/common/graph/Network<TN;TE;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/graph/AbstractNetwork$3;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/graph/AbstractNetwork$3;-><init>(Lorg/checkerframework/com/google/common/graph/Network;)V

    .line 290
    .local v0, "edgeToIncidentNodesFn":Lorg/checkerframework/com/google/common/base/Function;, "Lorg/checkerframework/com/google/common/base/Function<TE;Lorg/checkerframework/com/google/common/graph/EndpointPair<TN;>;>;"
    invoke-interface {p0}, Lorg/checkerframework/com/google/common/graph/Network;->edges()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/checkerframework/com/google/common/collect/Maps;->asMap(Ljava/util/Set;Lorg/checkerframework/com/google/common/base/Function;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public adjacentEdges(Ljava/lang/Object;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 160
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/AbstractNetwork;, "Lorg/checkerframework/com/google/common/graph/AbstractNetwork<TN;TE;>;"
    .local p1, "edge":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/graph/AbstractNetwork;->incidentNodes(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/graph/EndpointPair;

    move-result-object v0

    .line 161
    .local v0, "endpointPair":Lorg/checkerframework/com/google/common/graph/EndpointPair;, "Lorg/checkerframework/com/google/common/graph/EndpointPair<TN;>;"
    nop

    .line 162
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/graph/EndpointPair;->nodeU()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/checkerframework/com/google/common/graph/AbstractNetwork;->incidentEdges(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/graph/EndpointPair;->nodeV()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/checkerframework/com/google/common/graph/AbstractNetwork;->incidentEdges(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/checkerframework/com/google/common/collect/Sets;->union(Ljava/util/Set;Ljava/util/Set;)Lorg/checkerframework/com/google/common/collect/Sets$SetView;

    move-result-object v1

    .line 163
    .local v1, "endpointPairIncidentEdges":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/checkerframework/com/google/common/collect/Sets;->difference(Ljava/util/Set;Ljava/util/Set;)Lorg/checkerframework/com/google/common/collect/Sets$SetView;

    move-result-object v2

    return-object v2
.end method

.method public asGraph()Lorg/checkerframework/com/google/common/graph/Graph;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/graph/Graph<",
            "TN;>;"
        }
    .end annotation

    .line 57
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/AbstractNetwork;, "Lorg/checkerframework/com/google/common/graph/AbstractNetwork<TN;TE;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/graph/AbstractNetwork$1;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/graph/AbstractNetwork$1;-><init>(Lorg/checkerframework/com/google/common/graph/AbstractNetwork;)V

    return-object v0
.end method

.method public degree(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)I"
        }
    .end annotation

    .line 141
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/AbstractNetwork;, "Lorg/checkerframework/com/google/common/graph/AbstractNetwork<TN;TE;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/graph/AbstractNetwork;->isDirected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/graph/AbstractNetwork;->inEdges(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/graph/AbstractNetwork;->outEdges(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/math/IntMath;->saturatedAdd(II)I

    move-result v0

    return v0

    .line 144
    :cond_0
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/graph/AbstractNetwork;->incidentEdges(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p0, p1, p1}, Lorg/checkerframework/com/google/common/graph/AbstractNetwork;->edgesConnecting(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/math/IntMath;->saturatedAdd(II)I

    move-result v0

    return v0
.end method

.method public edgeConnecting(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)",
            "Ljava/util/Optional<",
            "TE;>;"
        }
    .end annotation

    .line 192
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/AbstractNetwork;, "Lorg/checkerframework/com/google/common/graph/AbstractNetwork<TN;TE;>;"
    .local p1, "nodeU":Ljava/lang/Object;, "TN;"
    .local p2, "nodeV":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/google/common/graph/AbstractNetwork;->edgeConnectingOrNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public edgeConnecting(Lorg/checkerframework/com/google/common/graph/EndpointPair;)Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/graph/EndpointPair<",
            "TN;>;)",
            "Ljava/util/Optional<",
            "TE;>;"
        }
    .end annotation

    .line 197
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/AbstractNetwork;, "Lorg/checkerframework/com/google/common/graph/AbstractNetwork<TN;TE;>;"
    .local p1, "endpoints":Lorg/checkerframework/com/google/common/graph/EndpointPair;, "Lorg/checkerframework/com/google/common/graph/EndpointPair<TN;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/graph/AbstractNetwork;->validateEndpoints(Lorg/checkerframework/com/google/common/graph/EndpointPair;)V

    .line 198
    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/graph/EndpointPair;->nodeU()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/graph/EndpointPair;->nodeV()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/google/common/graph/AbstractNetwork;->edgeConnecting(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public edgeConnectingOrNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)TE;"
        }
    .end annotation

    .line 203
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/AbstractNetwork;, "Lorg/checkerframework/com/google/common/graph/AbstractNetwork<TN;TE;>;"
    .local p1, "nodeU":Ljava/lang/Object;, "TN;"
    .local p2, "nodeV":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/google/common/graph/AbstractNetwork;->edgesConnecting(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 204
    .local v0, "edgesConnecting":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 210
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot call edgeConnecting() when parallel edges exist between %s and %s. Consider calling edgesConnecting() instead."

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 208
    :pswitch_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 206
    :pswitch_1
    const/4 v1, 0x0

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public edgeConnectingOrNull(Lorg/checkerframework/com/google/common/graph/EndpointPair;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/graph/EndpointPair<",
            "TN;>;)TE;"
        }
    .end annotation

    .line 216
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/AbstractNetwork;, "Lorg/checkerframework/com/google/common/graph/AbstractNetwork<TN;TE;>;"
    .local p1, "endpoints":Lorg/checkerframework/com/google/common/graph/EndpointPair;, "Lorg/checkerframework/com/google/common/graph/EndpointPair<TN;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/graph/AbstractNetwork;->validateEndpoints(Lorg/checkerframework/com/google/common/graph/EndpointPair;)V

    .line 217
    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/graph/EndpointPair;->nodeU()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/graph/EndpointPair;->nodeV()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/google/common/graph/AbstractNetwork;->edgeConnectingOrNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public edgesConnecting(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 168
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/AbstractNetwork;, "Lorg/checkerframework/com/google/common/graph/AbstractNetwork<TN;TE;>;"
    .local p1, "nodeU":Ljava/lang/Object;, "TN;"
    .local p2, "nodeV":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/graph/AbstractNetwork;->outEdges(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 169
    .local v0, "outEdgesU":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    invoke-virtual {p0, p2}, Lorg/checkerframework/com/google/common/graph/AbstractNetwork;->inEdges(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    .line 170
    .local v1, "inEdgesV":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    if-gt v2, v3, :cond_0

    .line 171
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/com/google/common/graph/AbstractNetwork;->connectedPredicate(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/base/Predicate;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/checkerframework/com/google/common/collect/Sets;->filter(Ljava/util/Set;Lorg/checkerframework/com/google/common/base/Predicate;)Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    goto :goto_0

    .line 172
    :cond_0
    invoke-direct {p0, p2, p1}, Lorg/checkerframework/com/google/common/graph/AbstractNetwork;->connectedPredicate(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/base/Predicate;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/checkerframework/com/google/common/collect/Sets;->filter(Ljava/util/Set;Lorg/checkerframework/com/google/common/base/Predicate;)Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    .line 170
    :goto_0
    return-object v2
.end method

.method public edgesConnecting(Lorg/checkerframework/com/google/common/graph/EndpointPair;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/graph/EndpointPair<",
            "TN;>;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 177
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/AbstractNetwork;, "Lorg/checkerframework/com/google/common/graph/AbstractNetwork<TN;TE;>;"
    .local p1, "endpoints":Lorg/checkerframework/com/google/common/graph/EndpointPair;, "Lorg/checkerframework/com/google/common/graph/EndpointPair<TN;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/graph/AbstractNetwork;->validateEndpoints(Lorg/checkerframework/com/google/common/graph/EndpointPair;)V

    .line 178
    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/graph/EndpointPair;->nodeU()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/graph/EndpointPair;->nodeV()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/google/common/graph/AbstractNetwork;->edgesConnecting(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 249
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/AbstractNetwork;, "Lorg/checkerframework/com/google/common/graph/AbstractNetwork<TN;TE;>;"
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 250
    return v0

    .line 252
    :cond_0
    instance-of v1, p1, Lorg/checkerframework/com/google/common/graph/Network;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 253
    return v2

    .line 255
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/checkerframework/com/google/common/graph/Network;

    .line 257
    .local v1, "other":Lorg/checkerframework/com/google/common/graph/Network;, "Lorg/checkerframework/com/google/common/graph/Network<**>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/graph/AbstractNetwork;->isDirected()Z

    move-result v3

    invoke-interface {v1}, Lorg/checkerframework/com/google/common/graph/Network;->isDirected()Z

    move-result v4

    if-ne v3, v4, :cond_2

    .line 258
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/graph/AbstractNetwork;->nodes()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v1}, Lorg/checkerframework/com/google/common/graph/Network;->nodes()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 259
    invoke-static {p0}, Lorg/checkerframework/com/google/common/graph/AbstractNetwork;->edgeIncidentNodesMap(Lorg/checkerframework/com/google/common/graph/Network;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v1}, Lorg/checkerframework/com/google/common/graph/AbstractNetwork;->edgeIncidentNodesMap(Lorg/checkerframework/com/google/common/graph/Network;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 257
    :goto_0
    return v0
.end method

.method public hasEdgeConnecting(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)Z"
        }
    .end annotation

    .line 222
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/AbstractNetwork;, "Lorg/checkerframework/com/google/common/graph/AbstractNetwork<TN;TE;>;"
    .local p1, "nodeU":Ljava/lang/Object;, "TN;"
    .local p2, "nodeV":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/google/common/graph/AbstractNetwork;->edgesConnecting(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

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

    .line 227
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/AbstractNetwork;, "Lorg/checkerframework/com/google/common/graph/AbstractNetwork<TN;TE;>;"
    .local p1, "endpoints":Lorg/checkerframework/com/google/common/graph/EndpointPair;, "Lorg/checkerframework/com/google/common/graph/EndpointPair<TN;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/graph/AbstractNetwork;->isOrderingCompatible(Lorg/checkerframework/com/google/common/graph/EndpointPair;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    const/4 v0, 0x0

    return v0

    .line 231
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/graph/EndpointPair;->nodeU()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/graph/EndpointPair;->nodeV()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/google/common/graph/AbstractNetwork;->edgesConnecting(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .line 264
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/AbstractNetwork;, "Lorg/checkerframework/com/google/common/graph/AbstractNetwork<TN;TE;>;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/graph/AbstractNetwork;->edgeIncidentNodesMap(Lorg/checkerframework/com/google/common/graph/Network;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

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

    .line 150
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/AbstractNetwork;, "Lorg/checkerframework/com/google/common/graph/AbstractNetwork<TN;TE;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/graph/AbstractNetwork;->isDirected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/graph/AbstractNetwork;->inEdges(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/graph/AbstractNetwork;->degree(Ljava/lang/Object;)I

    move-result v0

    :goto_0
    return v0
.end method

.method protected final isOrderingCompatible(Lorg/checkerframework/com/google/common/graph/EndpointPair;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/graph/EndpointPair<",
            "*>;)Z"
        }
    .end annotation

    .line 244
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/AbstractNetwork;, "Lorg/checkerframework/com/google/common/graph/AbstractNetwork<TN;TE;>;"
    .local p1, "endpoints":Lorg/checkerframework/com/google/common/graph/EndpointPair;, "Lorg/checkerframework/com/google/common/graph/EndpointPair<*>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/graph/EndpointPair;->isOrdered()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/graph/AbstractNetwork;->isDirected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public outDegree(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)I"
        }
    .end annotation

    .line 155
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/AbstractNetwork;, "Lorg/checkerframework/com/google/common/graph/AbstractNetwork<TN;TE;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/graph/AbstractNetwork;->isDirected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/graph/AbstractNetwork;->outEdges(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/graph/AbstractNetwork;->degree(Ljava/lang/Object;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 270
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/AbstractNetwork;, "Lorg/checkerframework/com/google/common/graph/AbstractNetwork<TN;TE;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isDirected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 271
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/graph/AbstractNetwork;->isDirected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", allowsParallelEdges: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 273
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/graph/AbstractNetwork;->allowsParallelEdges()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", allowsSelfLoops: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 275
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/graph/AbstractNetwork;->allowsSelfLoops()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nodes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 277
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/graph/AbstractNetwork;->nodes()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", edges: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 279
    invoke-static {p0}, Lorg/checkerframework/com/google/common/graph/AbstractNetwork;->edgeIncidentNodesMap(Lorg/checkerframework/com/google/common/graph/Network;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 270
    return-object v0
.end method

.method protected final validateEndpoints(Lorg/checkerframework/com/google/common/graph/EndpointPair;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/graph/EndpointPair<",
            "*>;)V"
        }
    .end annotation

    .line 239
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/AbstractNetwork;, "Lorg/checkerframework/com/google/common/graph/AbstractNetwork<TN;TE;>;"
    .local p1, "endpoints":Lorg/checkerframework/com/google/common/graph/EndpointPair;, "Lorg/checkerframework/com/google/common/graph/EndpointPair<*>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/graph/AbstractNetwork;->isOrderingCompatible(Lorg/checkerframework/com/google/common/graph/EndpointPair;)Z

    move-result v0

    const-string v1, "Mismatch: unordered endpoints cannot be used with directed graphs"

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 241
    return-void
.end method
