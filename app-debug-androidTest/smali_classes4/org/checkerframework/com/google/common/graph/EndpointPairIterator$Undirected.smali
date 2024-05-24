.class final Lorg/checkerframework/com/google/common/graph/EndpointPairIterator$Undirected;
.super Lorg/checkerframework/com/google/common/graph/EndpointPairIterator;
.source "EndpointPairIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/graph/EndpointPairIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Undirected"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/graph/EndpointPairIterator<",
        "TN;>;"
    }
.end annotation


# instance fields
.field private visitedNodes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/checkerframework/com/google/common/graph/BaseGraph;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/graph/BaseGraph<",
            "TN;>;)V"
        }
    .end annotation

    .line 114
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/EndpointPairIterator$Undirected;, "Lorg/checkerframework/com/google/common/graph/EndpointPairIterator$Undirected<TN;>;"
    .local p1, "graph":Lorg/checkerframework/com/google/common/graph/BaseGraph;, "Lorg/checkerframework/com/google/common/graph/BaseGraph<TN;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/com/google/common/graph/EndpointPairIterator;-><init>(Lorg/checkerframework/com/google/common/graph/BaseGraph;Lorg/checkerframework/com/google/common/graph/EndpointPairIterator$1;)V

    .line 115
    invoke-interface {p1}, Lorg/checkerframework/com/google/common/graph/BaseGraph;->nodes()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/Sets;->newHashSetWithExpectedSize(I)Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/graph/EndpointPairIterator$Undirected;->visitedNodes:Ljava/util/Set;

    .line 116
    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/com/google/common/graph/BaseGraph;Lorg/checkerframework/com/google/common/graph/EndpointPairIterator$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/com/google/common/graph/BaseGraph;
    .param p2, "x1"    # Lorg/checkerframework/com/google/common/graph/EndpointPairIterator$1;

    .line 110
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/EndpointPairIterator$Undirected;, "Lorg/checkerframework/com/google/common/graph/EndpointPairIterator$Undirected<TN;>;"
    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/graph/EndpointPairIterator$Undirected;-><init>(Lorg/checkerframework/com/google/common/graph/BaseGraph;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic computeNext()Ljava/lang/Object;
    .locals 1

    .line 110
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/EndpointPairIterator$Undirected;, "Lorg/checkerframework/com/google/common/graph/EndpointPairIterator$Undirected<TN;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/graph/EndpointPairIterator$Undirected;->computeNext()Lorg/checkerframework/com/google/common/graph/EndpointPair;

    move-result-object v0

    return-object v0
.end method

.method protected computeNext()Lorg/checkerframework/com/google/common/graph/EndpointPair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/graph/EndpointPair<",
            "TN;>;"
        }
    .end annotation

    .line 121
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/EndpointPairIterator$Undirected;, "Lorg/checkerframework/com/google/common/graph/EndpointPairIterator$Undirected<TN;>;"
    nop

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/graph/EndpointPairIterator$Undirected;->successorIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 122
    iget-object v0, p0, Lorg/checkerframework/com/google/common/graph/EndpointPairIterator$Undirected;->successorIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 123
    .local v0, "otherNode":Ljava/lang/Object;, "TN;"
    iget-object v1, p0, Lorg/checkerframework/com/google/common/graph/EndpointPairIterator$Undirected;->visitedNodes:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 124
    iget-object v1, p0, Lorg/checkerframework/com/google/common/graph/EndpointPairIterator$Undirected;->node:Ljava/lang/Object;

    invoke-static {v1, v0}, Lorg/checkerframework/com/google/common/graph/EndpointPair;->unordered(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/graph/EndpointPair;

    move-result-object v1

    return-object v1

    .line 126
    .end local v0    # "otherNode":Ljava/lang/Object;, "TN;"
    :cond_1
    goto :goto_0

    .line 128
    :cond_2
    iget-object v0, p0, Lorg/checkerframework/com/google/common/graph/EndpointPairIterator$Undirected;->visitedNodes:Ljava/util/Set;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/graph/EndpointPairIterator$Undirected;->node:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 129
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/graph/EndpointPairIterator$Undirected;->advance()Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/graph/EndpointPairIterator$Undirected;->visitedNodes:Ljava/util/Set;

    .line 131
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/graph/EndpointPairIterator$Undirected;->endOfData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/graph/EndpointPair;

    return-object v0
.end method
