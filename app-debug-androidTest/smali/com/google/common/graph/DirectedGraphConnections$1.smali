.class Lcom/google/common/graph/DirectedGraphConnections$1;
.super Ljava/util/AbstractSet;
.source "DirectedGraphConnections.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/DirectedGraphConnections;->adjacentNodes()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "TN;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/graph/DirectedGraphConnections;


# direct methods
.method constructor <init>(Lcom/google/common/graph/DirectedGraphConnections;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/common/graph/DirectedGraphConnections;

    .line 235
    .local p0, "this":Lcom/google/common/graph/DirectedGraphConnections$1;, "Lcom/google/common/graph/DirectedGraphConnections$1;"
    iput-object p1, p0, Lcom/google/common/graph/DirectedGraphConnections$1;->this$0:Lcom/google/common/graph/DirectedGraphConnections;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 262
    .local p0, "this":Lcom/google/common/graph/DirectedGraphConnections$1;, "Lcom/google/common/graph/DirectedGraphConnections$1;"
    iget-object v0, p0, Lcom/google/common/graph/DirectedGraphConnections$1;->this$0:Lcom/google/common/graph/DirectedGraphConnections;

    invoke-static {v0}, Lcom/google/common/graph/DirectedGraphConnections;->access$100(Lcom/google/common/graph/DirectedGraphConnections;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator<",
            "TN;>;"
        }
    .end annotation

    .line 238
    .local p0, "this":Lcom/google/common/graph/DirectedGraphConnections$1;, "Lcom/google/common/graph/DirectedGraphConnections$1;"
    iget-object v0, p0, Lcom/google/common/graph/DirectedGraphConnections$1;->this$0:Lcom/google/common/graph/DirectedGraphConnections;

    invoke-static {v0}, Lcom/google/common/graph/DirectedGraphConnections;->access$000(Lcom/google/common/graph/DirectedGraphConnections;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 239
    .local v0, "nodeConnections":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/common/graph/DirectedGraphConnections$NodeConnection<TN;>;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 240
    .local v1, "seenNodes":Ljava/util/Set;, "Ljava/util/Set<TN;>;"
    new-instance v2, Lcom/google/common/graph/DirectedGraphConnections$1$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/common/graph/DirectedGraphConnections$1$1;-><init>(Lcom/google/common/graph/DirectedGraphConnections$1;Ljava/util/Iterator;Ljava/util/Set;)V

    return-object v2
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 235
    .local p0, "this":Lcom/google/common/graph/DirectedGraphConnections$1;, "Lcom/google/common/graph/DirectedGraphConnections$1;"
    invoke-virtual {p0}, Lcom/google/common/graph/DirectedGraphConnections$1;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 257
    .local p0, "this":Lcom/google/common/graph/DirectedGraphConnections$1;, "Lcom/google/common/graph/DirectedGraphConnections$1;"
    iget-object v0, p0, Lcom/google/common/graph/DirectedGraphConnections$1;->this$0:Lcom/google/common/graph/DirectedGraphConnections;

    invoke-static {v0}, Lcom/google/common/graph/DirectedGraphConnections;->access$100(Lcom/google/common/graph/DirectedGraphConnections;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
