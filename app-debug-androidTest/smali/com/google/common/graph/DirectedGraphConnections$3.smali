.class Lcom/google/common/graph/DirectedGraphConnections$3;
.super Ljava/util/AbstractSet;
.source "DirectedGraphConnections.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/DirectedGraphConnections;->successors()Ljava/util/Set;
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

    .line 318
    .local p0, "this":Lcom/google/common/graph/DirectedGraphConnections$3;, "Lcom/google/common/graph/DirectedGraphConnections$3;"
    iput-object p1, p0, Lcom/google/common/graph/DirectedGraphConnections$3;->this$0:Lcom/google/common/graph/DirectedGraphConnections;

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

    .line 359
    .local p0, "this":Lcom/google/common/graph/DirectedGraphConnections$3;, "Lcom/google/common/graph/DirectedGraphConnections$3;"
    iget-object v0, p0, Lcom/google/common/graph/DirectedGraphConnections$3;->this$0:Lcom/google/common/graph/DirectedGraphConnections;

    invoke-static {v0}, Lcom/google/common/graph/DirectedGraphConnections;->access$100(Lcom/google/common/graph/DirectedGraphConnections;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/graph/DirectedGraphConnections;->access$400(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator<",
            "TN;>;"
        }
    .end annotation

    .line 321
    .local p0, "this":Lcom/google/common/graph/DirectedGraphConnections$3;, "Lcom/google/common/graph/DirectedGraphConnections$3;"
    iget-object v0, p0, Lcom/google/common/graph/DirectedGraphConnections$3;->this$0:Lcom/google/common/graph/DirectedGraphConnections;

    invoke-static {v0}, Lcom/google/common/graph/DirectedGraphConnections;->access$000(Lcom/google/common/graph/DirectedGraphConnections;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/google/common/graph/DirectedGraphConnections$3;->this$0:Lcom/google/common/graph/DirectedGraphConnections;

    invoke-static {v0}, Lcom/google/common/graph/DirectedGraphConnections;->access$100(Lcom/google/common/graph/DirectedGraphConnections;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 323
    .local v0, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TN;Ljava/lang/Object;>;>;"
    new-instance v1, Lcom/google/common/graph/DirectedGraphConnections$3$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/graph/DirectedGraphConnections$3$1;-><init>(Lcom/google/common/graph/DirectedGraphConnections$3;Ljava/util/Iterator;)V

    return-object v1

    .line 336
    .end local v0    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TN;Ljava/lang/Object;>;>;"
    :cond_0
    iget-object v0, p0, Lcom/google/common/graph/DirectedGraphConnections$3;->this$0:Lcom/google/common/graph/DirectedGraphConnections;

    invoke-static {v0}, Lcom/google/common/graph/DirectedGraphConnections;->access$000(Lcom/google/common/graph/DirectedGraphConnections;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 337
    .local v0, "nodeConnections":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/common/graph/DirectedGraphConnections$NodeConnection<TN;>;>;"
    new-instance v1, Lcom/google/common/graph/DirectedGraphConnections$3$2;

    invoke-direct {v1, p0, v0}, Lcom/google/common/graph/DirectedGraphConnections$3$2;-><init>(Lcom/google/common/graph/DirectedGraphConnections$3;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 318
    .local p0, "this":Lcom/google/common/graph/DirectedGraphConnections$3;, "Lcom/google/common/graph/DirectedGraphConnections$3;"
    invoke-virtual {p0}, Lcom/google/common/graph/DirectedGraphConnections$3;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 354
    .local p0, "this":Lcom/google/common/graph/DirectedGraphConnections$3;, "Lcom/google/common/graph/DirectedGraphConnections$3;"
    iget-object v0, p0, Lcom/google/common/graph/DirectedGraphConnections$3;->this$0:Lcom/google/common/graph/DirectedGraphConnections;

    invoke-static {v0}, Lcom/google/common/graph/DirectedGraphConnections;->access$500(Lcom/google/common/graph/DirectedGraphConnections;)I

    move-result v0

    return v0
.end method
