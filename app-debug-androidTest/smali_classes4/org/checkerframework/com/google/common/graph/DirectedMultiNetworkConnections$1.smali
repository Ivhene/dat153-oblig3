.class Lorg/checkerframework/com/google/common/graph/DirectedMultiNetworkConnections$1;
.super Lorg/checkerframework/com/google/common/graph/MultiEdgesConnecting;
.source "DirectedMultiNetworkConnections.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/graph/DirectedMultiNetworkConnections;->edgesConnecting(Ljava/lang/Object;)Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/graph/MultiEdgesConnecting<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/graph/DirectedMultiNetworkConnections;

.field final synthetic val$node:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/graph/DirectedMultiNetworkConnections;Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/graph/DirectedMultiNetworkConnections;
    .param p3, "targetNode"    # Ljava/lang/Object;

    .line 96
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/DirectedMultiNetworkConnections$1;, "Lorg/checkerframework/com/google/common/graph/DirectedMultiNetworkConnections$1;"
    .local p2, "outEdgeToNode":Ljava/util/Map;, "Ljava/util/Map<TE;*>;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/graph/DirectedMultiNetworkConnections$1;->this$0:Lorg/checkerframework/com/google/common/graph/DirectedMultiNetworkConnections;

    iput-object p4, p0, Lorg/checkerframework/com/google/common/graph/DirectedMultiNetworkConnections$1;->val$node:Ljava/lang/Object;

    invoke-direct {p0, p2, p3}, Lorg/checkerframework/com/google/common/graph/MultiEdgesConnecting;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public size()I
    .locals 2

    .line 99
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/DirectedMultiNetworkConnections$1;, "Lorg/checkerframework/com/google/common/graph/DirectedMultiNetworkConnections$1;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/graph/DirectedMultiNetworkConnections$1;->this$0:Lorg/checkerframework/com/google/common/graph/DirectedMultiNetworkConnections;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/graph/DirectedMultiNetworkConnections;->access$000(Lorg/checkerframework/com/google/common/graph/DirectedMultiNetworkConnections;)Lorg/checkerframework/com/google/common/collect/Multiset;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/graph/DirectedMultiNetworkConnections$1;->val$node:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lorg/checkerframework/com/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
