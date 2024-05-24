.class final Lorg/checkerframework/com/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed;
.super Lorg/checkerframework/com/google/common/graph/AbstractBaseGraph$IncidentEdgeSet;
.source "AbstractBaseGraph.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/graph/AbstractBaseGraph$IncidentEdgeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Directed"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/graph/AbstractBaseGraph$IncidentEdgeSet<",
        "TN;>;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lorg/checkerframework/com/google/common/graph/BaseGraph;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/graph/BaseGraph<",
            "TN;>;TN;)V"
        }
    .end annotation

    .line 180
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed;, "Lorg/checkerframework/com/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed<TN;>;"
    .local p1, "graph":Lorg/checkerframework/com/google/common/graph/BaseGraph;, "Lorg/checkerframework/com/google/common/graph/BaseGraph<TN;>;"
    .local p2, "node":Ljava/lang/Object;, "TN;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/checkerframework/com/google/common/graph/AbstractBaseGraph$IncidentEdgeSet;-><init>(Lorg/checkerframework/com/google/common/graph/BaseGraph;Ljava/lang/Object;Lorg/checkerframework/com/google/common/graph/AbstractBaseGraph$1;)V

    .line 181
    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/com/google/common/graph/BaseGraph;Ljava/lang/Object;Lorg/checkerframework/com/google/common/graph/AbstractBaseGraph$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/com/google/common/graph/BaseGraph;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Lorg/checkerframework/com/google/common/graph/AbstractBaseGraph$1;

    .line 177
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed;, "Lorg/checkerframework/com/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed<TN;>;"
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/com/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed;-><init>(Lorg/checkerframework/com/google/common/graph/BaseGraph;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 215
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed;, "Lorg/checkerframework/com/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed<TN;>;"
    instance-of v0, p1, Lorg/checkerframework/com/google/common/graph/EndpointPair;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 216
    return v1

    .line 219
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/com/google/common/graph/EndpointPair;

    .line 220
    .local v0, "endpointPair":Lorg/checkerframework/com/google/common/graph/EndpointPair;, "Lorg/checkerframework/com/google/common/graph/EndpointPair<*>;"
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/graph/EndpointPair;->isOrdered()Z

    move-result v2

    if-nez v2, :cond_1

    .line 221
    return v1

    .line 224
    :cond_1
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/graph/EndpointPair;->source()Ljava/lang/Object;

    move-result-object v2

    .line 225
    .local v2, "source":Ljava/lang/Object;
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/graph/EndpointPair;->target()Ljava/lang/Object;

    move-result-object v3

    .line 226
    .local v3, "target":Ljava/lang/Object;
    iget-object v4, p0, Lorg/checkerframework/com/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed;->node:Ljava/lang/Object;

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/checkerframework/com/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed;->graph:Lorg/checkerframework/com/google/common/graph/BaseGraph;

    iget-object v5, p0, Lorg/checkerframework/com/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed;->node:Ljava/lang/Object;

    invoke-interface {v4, v5}, Lorg/checkerframework/com/google/common/graph/BaseGraph;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    iget-object v4, p0, Lorg/checkerframework/com/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed;->node:Ljava/lang/Object;

    .line 227
    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lorg/checkerframework/com/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed;->graph:Lorg/checkerframework/com/google/common/graph/BaseGraph;

    iget-object v5, p0, Lorg/checkerframework/com/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed;->node:Ljava/lang/Object;

    invoke-interface {v4, v5}, Lorg/checkerframework/com/google/common/graph/BaseGraph;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    const/4 v1, 0x1

    .line 226
    :cond_4
    return v1
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 177
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed;, "Lorg/checkerframework/com/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed<TN;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed;->iterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator<",
            "Lorg/checkerframework/com/google/common/graph/EndpointPair<",
            "TN;>;>;"
        }
    .end annotation

    .line 185
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed;, "Lorg/checkerframework/com/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed<TN;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed;->graph:Lorg/checkerframework/com/google/common/graph/BaseGraph;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed;->node:Ljava/lang/Object;

    .line 188
    invoke-interface {v0, v1}, Lorg/checkerframework/com/google/common/graph/BaseGraph;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed$1;

    invoke-direct {v1, p0}, Lorg/checkerframework/com/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed$1;-><init>(Lorg/checkerframework/com/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed;)V

    .line 187
    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/collect/Iterators;->transform(Ljava/util/Iterator;Lorg/checkerframework/com/google/common/base/Function;)Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed;->graph:Lorg/checkerframework/com/google/common/graph/BaseGraph;

    iget-object v2, p0, Lorg/checkerframework/com/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed;->node:Ljava/lang/Object;

    .line 197
    invoke-interface {v1, v2}, Lorg/checkerframework/com/google/common/graph/BaseGraph;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/com/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed;->node:Ljava/lang/Object;

    invoke-static {v2}, Lorg/checkerframework/com/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/checkerframework/com/google/common/collect/Sets;->difference(Ljava/util/Set;Ljava/util/Set;)Lorg/checkerframework/com/google/common/collect/Sets$SetView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/collect/Sets$SetView;->iterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    new-instance v2, Lorg/checkerframework/com/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed$2;

    invoke-direct {v2, p0}, Lorg/checkerframework/com/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed$2;-><init>(Lorg/checkerframework/com/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed;)V

    .line 195
    invoke-static {v1, v2}, Lorg/checkerframework/com/google/common/collect/Iterators;->transform(Ljava/util/Iterator;Lorg/checkerframework/com/google/common/base/Function;)Ljava/util/Iterator;

    move-result-object v1

    .line 186
    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/collect/Iterators;->concat(Ljava/util/Iterator;Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    .line 185
    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/Iterators;->unmodifiableIterator(Ljava/util/Iterator;)Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 3

    .line 208
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed;, "Lorg/checkerframework/com/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed<TN;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed;->graph:Lorg/checkerframework/com/google/common/graph/BaseGraph;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed;->node:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lorg/checkerframework/com/google/common/graph/BaseGraph;->inDegree(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed;->graph:Lorg/checkerframework/com/google/common/graph/BaseGraph;

    iget-object v2, p0, Lorg/checkerframework/com/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed;->node:Ljava/lang/Object;

    .line 209
    invoke-interface {v1, v2}, Lorg/checkerframework/com/google/common/graph/BaseGraph;->outDegree(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/checkerframework/com/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed;->graph:Lorg/checkerframework/com/google/common/graph/BaseGraph;

    iget-object v2, p0, Lorg/checkerframework/com/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed;->node:Ljava/lang/Object;

    .line 210
    invoke-interface {v1, v2}, Lorg/checkerframework/com/google/common/graph/BaseGraph;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/com/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed;->node:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    sub-int/2addr v0, v1

    .line 208
    return v0
.end method
