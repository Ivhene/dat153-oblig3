.class Lorg/checkerframework/com/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed$2;
.super Ljava/lang/Object;
.source "AbstractBaseGraph.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed;->iterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;
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
.field final synthetic this$0:Lorg/checkerframework/com/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed;

    .line 198
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed$2;, "Lorg/checkerframework/com/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed$2;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed$2;->this$0:Lorg/checkerframework/com/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 198
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed$2;, "Lorg/checkerframework/com/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed$2;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed$2;->apply(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/graph/EndpointPair;

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

    .line 201
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed$2;, "Lorg/checkerframework/com/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed$2;"
    .local p1, "successor":Ljava/lang/Object;, "TN;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed$2;->this$0:Lorg/checkerframework/com/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed;

    iget-object v0, v0, Lorg/checkerframework/com/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed;->node:Ljava/lang/Object;

    invoke-static {v0, p1}, Lorg/checkerframework/com/google/common/graph/EndpointPair;->ordered(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/graph/EndpointPair;

    move-result-object v0

    return-object v0
.end method
