.class Lorg/checkerframework/com/google/common/graph/AbstractNetwork$1;
.super Lorg/checkerframework/com/google/common/graph/AbstractGraph;
.source "AbstractNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/graph/AbstractNetwork;->asGraph()Lorg/checkerframework/com/google/common/graph/Graph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/graph/AbstractGraph<",
        "TN;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/graph/AbstractNetwork;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/graph/AbstractNetwork;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/graph/AbstractNetwork;

    .line 57
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/AbstractNetwork$1;, "Lorg/checkerframework/com/google/common/graph/AbstractNetwork$1;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/graph/AbstractNetwork$1;->this$0:Lorg/checkerframework/com/google/common/graph/AbstractNetwork;

    invoke-direct {p0}, Lorg/checkerframework/com/google/common/graph/AbstractGraph;-><init>()V

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

    .line 122
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/AbstractNetwork$1;, "Lorg/checkerframework/com/google/common/graph/AbstractNetwork$1;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/graph/AbstractNetwork$1;->this$0:Lorg/checkerframework/com/google/common/graph/AbstractNetwork;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/graph/AbstractNetwork;->adjacentNodes(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public allowsSelfLoops()Z
    .locals 1

    .line 117
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/AbstractNetwork$1;, "Lorg/checkerframework/com/google/common/graph/AbstractNetwork$1;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/graph/AbstractNetwork$1;->this$0:Lorg/checkerframework/com/google/common/graph/AbstractNetwork;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/graph/AbstractNetwork;->allowsSelfLoops()Z

    move-result v0

    return v0
.end method

.method public edges()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/checkerframework/com/google/common/graph/EndpointPair<",
            "TN;>;>;"
        }
    .end annotation

    .line 65
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/AbstractNetwork$1;, "Lorg/checkerframework/com/google/common/graph/AbstractNetwork$1;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/graph/AbstractNetwork$1;->this$0:Lorg/checkerframework/com/google/common/graph/AbstractNetwork;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/graph/AbstractNetwork;->allowsParallelEdges()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-super {p0}, Lorg/checkerframework/com/google/common/graph/AbstractGraph;->edges()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 70
    :cond_0
    new-instance v0, Lorg/checkerframework/com/google/common/graph/AbstractNetwork$1$1;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/graph/AbstractNetwork$1$1;-><init>(Lorg/checkerframework/com/google/common/graph/AbstractNetwork$1;)V

    return-object v0
.end method

.method public isDirected()Z
    .locals 1

    .line 112
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/AbstractNetwork$1;, "Lorg/checkerframework/com/google/common/graph/AbstractNetwork$1;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/graph/AbstractNetwork$1;->this$0:Lorg/checkerframework/com/google/common/graph/AbstractNetwork;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/graph/AbstractNetwork;->isDirected()Z

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

    .line 107
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/AbstractNetwork$1;, "Lorg/checkerframework/com/google/common/graph/AbstractNetwork$1;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/graph/AbstractNetwork$1;->this$0:Lorg/checkerframework/com/google/common/graph/AbstractNetwork;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/graph/AbstractNetwork;->nodeOrder()Lorg/checkerframework/com/google/common/graph/ElementOrder;

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

    .line 60
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/AbstractNetwork$1;, "Lorg/checkerframework/com/google/common/graph/AbstractNetwork$1;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/graph/AbstractNetwork$1;->this$0:Lorg/checkerframework/com/google/common/graph/AbstractNetwork;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/graph/AbstractNetwork;->nodes()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic predecessors(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 57
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/AbstractNetwork$1;, "Lorg/checkerframework/com/google/common/graph/AbstractNetwork$1;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/graph/AbstractNetwork$1;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

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

    .line 127
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/AbstractNetwork$1;, "Lorg/checkerframework/com/google/common/graph/AbstractNetwork$1;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/graph/AbstractNetwork$1;->this$0:Lorg/checkerframework/com/google/common/graph/AbstractNetwork;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/graph/AbstractNetwork;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic successors(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 57
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/AbstractNetwork$1;, "Lorg/checkerframework/com/google/common/graph/AbstractNetwork$1;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/graph/AbstractNetwork$1;->successors(Ljava/lang/Object;)Ljava/util/Set;

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

    .line 132
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/AbstractNetwork$1;, "Lorg/checkerframework/com/google/common/graph/AbstractNetwork$1;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/graph/AbstractNetwork$1;->this$0:Lorg/checkerframework/com/google/common/graph/AbstractNetwork;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/graph/AbstractNetwork;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
