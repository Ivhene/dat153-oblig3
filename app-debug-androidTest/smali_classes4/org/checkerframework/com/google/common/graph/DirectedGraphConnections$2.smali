.class Lorg/checkerframework/com/google/common/graph/DirectedGraphConnections$2;
.super Ljava/util/AbstractSet;
.source "DirectedGraphConnections.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/graph/DirectedGraphConnections;->successors()Ljava/util/Set;
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
.field final synthetic this$0:Lorg/checkerframework/com/google/common/graph/DirectedGraphConnections;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/graph/DirectedGraphConnections;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/graph/DirectedGraphConnections;

    .line 137
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/DirectedGraphConnections$2;, "Lorg/checkerframework/com/google/common/graph/DirectedGraphConnections$2;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/graph/DirectedGraphConnections$2;->this$0:Lorg/checkerframework/com/google/common/graph/DirectedGraphConnections;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 162
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/DirectedGraphConnections$2;, "Lorg/checkerframework/com/google/common/graph/DirectedGraphConnections$2;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/graph/DirectedGraphConnections$2;->this$0:Lorg/checkerframework/com/google/common/graph/DirectedGraphConnections;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/graph/DirectedGraphConnections;->access$000(Lorg/checkerframework/com/google/common/graph/DirectedGraphConnections;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/graph/DirectedGraphConnections;->access$300(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 137
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/DirectedGraphConnections$2;, "Lorg/checkerframework/com/google/common/graph/DirectedGraphConnections$2;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/graph/DirectedGraphConnections$2;->iterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator<",
            "TN;>;"
        }
    .end annotation

    .line 140
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/DirectedGraphConnections$2;, "Lorg/checkerframework/com/google/common/graph/DirectedGraphConnections$2;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/graph/DirectedGraphConnections$2;->this$0:Lorg/checkerframework/com/google/common/graph/DirectedGraphConnections;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/graph/DirectedGraphConnections;->access$000(Lorg/checkerframework/com/google/common/graph/DirectedGraphConnections;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 141
    .local v0, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TN;Ljava/lang/Object;>;>;"
    new-instance v1, Lorg/checkerframework/com/google/common/graph/DirectedGraphConnections$2$1;

    invoke-direct {v1, p0, v0}, Lorg/checkerframework/com/google/common/graph/DirectedGraphConnections$2$1;-><init>(Lorg/checkerframework/com/google/common/graph/DirectedGraphConnections$2;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public size()I
    .locals 1

    .line 157
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/DirectedGraphConnections$2;, "Lorg/checkerframework/com/google/common/graph/DirectedGraphConnections$2;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/graph/DirectedGraphConnections$2;->this$0:Lorg/checkerframework/com/google/common/graph/DirectedGraphConnections;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/graph/DirectedGraphConnections;->access$400(Lorg/checkerframework/com/google/common/graph/DirectedGraphConnections;)I

    move-result v0

    return v0
.end method