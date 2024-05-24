.class final Lorg/checkerframework/com/google/common/graph/AbstractNetwork$3;
.super Ljava/lang/Object;
.source "AbstractNetwork.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/graph/AbstractNetwork;->edgeIncidentNodesMap(Lorg/checkerframework/com/google/common/graph/Network;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/checkerframework/com/google/common/base/Function<",
        "TE;",
        "Lorg/checkerframework/com/google/common/graph/EndpointPair<",
        "TN;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$network:Lorg/checkerframework/com/google/common/graph/Network;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/graph/Network;)V
    .locals 0

    .line 284
    iput-object p1, p0, Lorg/checkerframework/com/google/common/graph/AbstractNetwork$3;->val$network:Lorg/checkerframework/com/google/common/graph/Network;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 284
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/graph/AbstractNetwork$3;->apply(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/graph/EndpointPair;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/graph/EndpointPair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lorg/checkerframework/com/google/common/graph/EndpointPair<",
            "TN;>;"
        }
    .end annotation

    .line 287
    .local p1, "edge":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/graph/AbstractNetwork$3;->val$network:Lorg/checkerframework/com/google/common/graph/Network;

    invoke-interface {v0, p1}, Lorg/checkerframework/com/google/common/graph/Network;->incidentNodes(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/graph/EndpointPair;

    move-result-object v0

    return-object v0
.end method
