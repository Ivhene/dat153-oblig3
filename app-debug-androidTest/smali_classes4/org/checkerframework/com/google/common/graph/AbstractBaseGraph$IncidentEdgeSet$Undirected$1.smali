.class Lorg/checkerframework/com/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Undirected$1;
.super Ljava/lang/Object;
.source "AbstractBaseGraph.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Undirected;->iterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/checkerframework/com/google/common/base/Function<",
        "TN;",
        "Lorg/checkerframework/com/google/common/graph/EndpointPair<",
        "TN;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Undirected;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Undirected;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Undirected;

    .line 241
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Undirected$1;, "Lorg/checkerframework/com/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Undirected$1;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Undirected$1;->this$0:Lorg/checkerframework/com/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Undirected;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 241
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Undirected$1;, "Lorg/checkerframework/com/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Undirected$1;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Undirected$1;->apply(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/graph/EndpointPair;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/graph/EndpointPair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Lorg/checkerframework/com/google/common/graph/EndpointPair<",
            "TN;>;"
        }
    .end annotation

    .line 244
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Undirected$1;, "Lorg/checkerframework/com/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Undirected$1;"
    .local p1, "adjacentNode":Ljava/lang/Object;, "TN;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Undirected$1;->this$0:Lorg/checkerframework/com/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Undirected;

    iget-object v0, v0, Lorg/checkerframework/com/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Undirected;->node:Ljava/lang/Object;

    invoke-static {v0, p1}, Lorg/checkerframework/com/google/common/graph/EndpointPair;->unordered(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/graph/EndpointPair;

    move-result-object v0

    return-object v0
.end method
