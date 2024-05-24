.class final Lorg/checkerframework/com/google/common/graph/EndpointPairIterator$Directed;
.super Lorg/checkerframework/com/google/common/graph/EndpointPairIterator;
.source "EndpointPairIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/graph/EndpointPairIterator;
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
        "Lorg/checkerframework/com/google/common/graph/EndpointPairIterator<",
        "TN;>;"
    }
.end annotation


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

    .line 68
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/EndpointPairIterator$Directed;, "Lorg/checkerframework/com/google/common/graph/EndpointPairIterator$Directed<TN;>;"
    .local p1, "graph":Lorg/checkerframework/com/google/common/graph/BaseGraph;, "Lorg/checkerframework/com/google/common/graph/BaseGraph<TN;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/com/google/common/graph/EndpointPairIterator;-><init>(Lorg/checkerframework/com/google/common/graph/BaseGraph;Lorg/checkerframework/com/google/common/graph/EndpointPairIterator$1;)V

    .line 69
    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/com/google/common/graph/BaseGraph;Lorg/checkerframework/com/google/common/graph/EndpointPairIterator$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/com/google/common/graph/BaseGraph;
    .param p2, "x1"    # Lorg/checkerframework/com/google/common/graph/EndpointPairIterator$1;

    .line 66
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/EndpointPairIterator$Directed;, "Lorg/checkerframework/com/google/common/graph/EndpointPairIterator$Directed<TN;>;"
    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/graph/EndpointPairIterator$Directed;-><init>(Lorg/checkerframework/com/google/common/graph/BaseGraph;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic computeNext()Ljava/lang/Object;
    .locals 1

    .line 66
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/EndpointPairIterator$Directed;, "Lorg/checkerframework/com/google/common/graph/EndpointPairIterator$Directed<TN;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/graph/EndpointPairIterator$Directed;->computeNext()Lorg/checkerframework/com/google/common/graph/EndpointPair;

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

    .line 74
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/EndpointPairIterator$Directed;, "Lorg/checkerframework/com/google/common/graph/EndpointPairIterator$Directed<TN;>;"
    nop

    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/graph/EndpointPairIterator$Directed;->successorIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lorg/checkerframework/com/google/common/graph/EndpointPairIterator$Directed;->node:Ljava/lang/Object;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/graph/EndpointPairIterator$Directed;->successorIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/graph/EndpointPair;->ordered(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/graph/EndpointPair;

    move-result-object v0

    return-object v0

    .line 77
    :cond_1
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/graph/EndpointPairIterator$Directed;->advance()Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/graph/EndpointPairIterator$Directed;->endOfData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/graph/EndpointPair;

    return-object v0
.end method
