.class Lorg/checkerframework/com/google/common/graph/AbstractNetwork$1$1;
.super Ljava/util/AbstractSet;
.source "AbstractNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/graph/AbstractNetwork$1;->edges()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Lorg/checkerframework/com/google/common/graph/EndpointPair<",
        "TN;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/checkerframework/com/google/common/graph/AbstractNetwork$1;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/graph/AbstractNetwork$1;)V
    .locals 0
    .param p1, "this$1"    # Lorg/checkerframework/com/google/common/graph/AbstractNetwork$1;

    .line 70
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/AbstractNetwork$1$1;, "Lorg/checkerframework/com/google/common/graph/AbstractNetwork$1$1;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/graph/AbstractNetwork$1$1;->this$1:Lorg/checkerframework/com/google/common/graph/AbstractNetwork$1;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 94
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/AbstractNetwork$1$1;, "Lorg/checkerframework/com/google/common/graph/AbstractNetwork$1$1;"
    instance-of v0, p1, Lorg/checkerframework/com/google/common/graph/EndpointPair;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 95
    return v1

    .line 97
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/com/google/common/graph/EndpointPair;

    .line 98
    .local v0, "endpointPair":Lorg/checkerframework/com/google/common/graph/EndpointPair;, "Lorg/checkerframework/com/google/common/graph/EndpointPair<*>;"
    iget-object v2, p0, Lorg/checkerframework/com/google/common/graph/AbstractNetwork$1$1;->this$1:Lorg/checkerframework/com/google/common/graph/AbstractNetwork$1;

    invoke-virtual {v2, v0}, Lorg/checkerframework/com/google/common/graph/AbstractNetwork$1;->isOrderingCompatible(Lorg/checkerframework/com/google/common/graph/EndpointPair;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/checkerframework/com/google/common/graph/AbstractNetwork$1$1;->this$1:Lorg/checkerframework/com/google/common/graph/AbstractNetwork$1;

    .line 99
    invoke-virtual {v2}, Lorg/checkerframework/com/google/common/graph/AbstractNetwork$1;->nodes()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/graph/EndpointPair;->nodeU()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/checkerframework/com/google/common/graph/AbstractNetwork$1$1;->this$1:Lorg/checkerframework/com/google/common/graph/AbstractNetwork$1;

    .line 100
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/graph/EndpointPair;->nodeU()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/checkerframework/com/google/common/graph/AbstractNetwork$1;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/graph/EndpointPair;->nodeV()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 98
    :goto_0
    return v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/checkerframework/com/google/common/graph/EndpointPair<",
            "TN;>;>;"
        }
    .end annotation

    .line 73
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/AbstractNetwork$1$1;, "Lorg/checkerframework/com/google/common/graph/AbstractNetwork$1$1;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/graph/AbstractNetwork$1$1;->this$1:Lorg/checkerframework/com/google/common/graph/AbstractNetwork$1;

    iget-object v0, v0, Lorg/checkerframework/com/google/common/graph/AbstractNetwork$1;->this$0:Lorg/checkerframework/com/google/common/graph/AbstractNetwork;

    .line 74
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/graph/AbstractNetwork;->edges()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/google/common/graph/AbstractNetwork$1$1$1;

    invoke-direct {v1, p0}, Lorg/checkerframework/com/google/common/graph/AbstractNetwork$1$1$1;-><init>(Lorg/checkerframework/com/google/common/graph/AbstractNetwork$1$1;)V

    .line 73
    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/collect/Iterators;->transform(Ljava/util/Iterator;Lorg/checkerframework/com/google/common/base/Function;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 85
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/AbstractNetwork$1$1;, "Lorg/checkerframework/com/google/common/graph/AbstractNetwork$1$1;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/graph/AbstractNetwork$1$1;->this$1:Lorg/checkerframework/com/google/common/graph/AbstractNetwork$1;

    iget-object v0, v0, Lorg/checkerframework/com/google/common/graph/AbstractNetwork$1;->this$0:Lorg/checkerframework/com/google/common/graph/AbstractNetwork;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/graph/AbstractNetwork;->edges()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
