.class Lorg/checkerframework/com/google/common/graph/AbstractValueGraph$1;
.super Lorg/checkerframework/com/google/common/graph/AbstractGraph;
.source "AbstractValueGraph.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/graph/AbstractValueGraph;->asGraph()Lorg/checkerframework/com/google/common/graph/Graph;
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
.field final synthetic this$0:Lorg/checkerframework/com/google/common/graph/AbstractValueGraph;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/graph/AbstractValueGraph;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/graph/AbstractValueGraph;

    .line 45
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/AbstractValueGraph$1;, "Lorg/checkerframework/com/google/common/graph/AbstractValueGraph$1;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/graph/AbstractValueGraph$1;->this$0:Lorg/checkerframework/com/google/common/graph/AbstractValueGraph;

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

    .line 73
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/AbstractValueGraph$1;, "Lorg/checkerframework/com/google/common/graph/AbstractValueGraph$1;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/graph/AbstractValueGraph$1;->this$0:Lorg/checkerframework/com/google/common/graph/AbstractValueGraph;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/graph/AbstractValueGraph;->adjacentNodes(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public allowsSelfLoops()Z
    .locals 1

    .line 63
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/AbstractValueGraph$1;, "Lorg/checkerframework/com/google/common/graph/AbstractValueGraph$1;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/graph/AbstractValueGraph$1;->this$0:Lorg/checkerframework/com/google/common/graph/AbstractValueGraph;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/graph/AbstractValueGraph;->allowsSelfLoops()Z

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

    .line 88
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/AbstractValueGraph$1;, "Lorg/checkerframework/com/google/common/graph/AbstractValueGraph$1;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/graph/AbstractValueGraph$1;->this$0:Lorg/checkerframework/com/google/common/graph/AbstractValueGraph;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/graph/AbstractValueGraph;->degree(Ljava/lang/Object;)I

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

    .line 53
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/AbstractValueGraph$1;, "Lorg/checkerframework/com/google/common/graph/AbstractValueGraph$1;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/graph/AbstractValueGraph$1;->this$0:Lorg/checkerframework/com/google/common/graph/AbstractValueGraph;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/graph/AbstractValueGraph;->edges()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public inDegree(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)I"
        }
    .end annotation

    .line 93
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/AbstractValueGraph$1;, "Lorg/checkerframework/com/google/common/graph/AbstractValueGraph$1;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/graph/AbstractValueGraph$1;->this$0:Lorg/checkerframework/com/google/common/graph/AbstractValueGraph;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/graph/AbstractValueGraph;->inDegree(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isDirected()Z
    .locals 1

    .line 58
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/AbstractValueGraph$1;, "Lorg/checkerframework/com/google/common/graph/AbstractValueGraph$1;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/graph/AbstractValueGraph$1;->this$0:Lorg/checkerframework/com/google/common/graph/AbstractValueGraph;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/graph/AbstractValueGraph;->isDirected()Z

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

    .line 68
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/AbstractValueGraph$1;, "Lorg/checkerframework/com/google/common/graph/AbstractValueGraph$1;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/graph/AbstractValueGraph$1;->this$0:Lorg/checkerframework/com/google/common/graph/AbstractValueGraph;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/graph/AbstractValueGraph;->nodeOrder()Lorg/checkerframework/com/google/common/graph/ElementOrder;

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

    .line 48
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/AbstractValueGraph$1;, "Lorg/checkerframework/com/google/common/graph/AbstractValueGraph$1;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/graph/AbstractValueGraph$1;->this$0:Lorg/checkerframework/com/google/common/graph/AbstractValueGraph;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/graph/AbstractValueGraph;->nodes()Ljava/util/Set;

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

    .line 98
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/AbstractValueGraph$1;, "Lorg/checkerframework/com/google/common/graph/AbstractValueGraph$1;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/graph/AbstractValueGraph$1;->this$0:Lorg/checkerframework/com/google/common/graph/AbstractValueGraph;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/graph/AbstractValueGraph;->outDegree(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic predecessors(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 45
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/AbstractValueGraph$1;, "Lorg/checkerframework/com/google/common/graph/AbstractValueGraph$1;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/graph/AbstractValueGraph$1;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

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

    .line 78
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/AbstractValueGraph$1;, "Lorg/checkerframework/com/google/common/graph/AbstractValueGraph$1;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/graph/AbstractValueGraph$1;->this$0:Lorg/checkerframework/com/google/common/graph/AbstractValueGraph;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/graph/AbstractValueGraph;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic successors(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 45
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/AbstractValueGraph$1;, "Lorg/checkerframework/com/google/common/graph/AbstractValueGraph$1;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/graph/AbstractValueGraph$1;->successors(Ljava/lang/Object;)Ljava/util/Set;

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

    .line 83
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/AbstractValueGraph$1;, "Lorg/checkerframework/com/google/common/graph/AbstractValueGraph$1;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/graph/AbstractValueGraph$1;->this$0:Lorg/checkerframework/com/google/common/graph/AbstractValueGraph;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/graph/AbstractValueGraph;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
