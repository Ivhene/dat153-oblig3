.class Lcom/google/common/graph/DirectedGraphConnections$3$2;
.super Lcom/google/common/collect/AbstractIterator;
.source "DirectedGraphConnections.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/DirectedGraphConnections$3;->iterator()Lcom/google/common/collect/UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIterator<",
        "TN;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/graph/DirectedGraphConnections$3;

.field final synthetic val$nodeConnections:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/google/common/graph/DirectedGraphConnections$3;Ljava/util/Iterator;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/common/graph/DirectedGraphConnections$3;

    .line 337
    .local p0, "this":Lcom/google/common/graph/DirectedGraphConnections$3$2;, "Lcom/google/common/graph/DirectedGraphConnections$3$2;"
    iput-object p1, p0, Lcom/google/common/graph/DirectedGraphConnections$3$2;->this$1:Lcom/google/common/graph/DirectedGraphConnections$3;

    iput-object p2, p0, Lcom/google/common/graph/DirectedGraphConnections$3$2;->val$nodeConnections:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    return-void
.end method


# virtual methods
.method protected computeNext()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    .line 340
    .local p0, "this":Lcom/google/common/graph/DirectedGraphConnections$3$2;, "Lcom/google/common/graph/DirectedGraphConnections$3$2;"
    nop

    :goto_0
    iget-object v0, p0, Lcom/google/common/graph/DirectedGraphConnections$3$2;->val$nodeConnections:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 341
    iget-object v0, p0, Lcom/google/common/graph/DirectedGraphConnections$3$2;->val$nodeConnections:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/graph/DirectedGraphConnections$NodeConnection;

    .line 342
    .local v0, "nodeConnection":Lcom/google/common/graph/DirectedGraphConnections$NodeConnection;, "Lcom/google/common/graph/DirectedGraphConnections$NodeConnection<TN;>;"
    instance-of v1, v0, Lcom/google/common/graph/DirectedGraphConnections$NodeConnection$Succ;

    if-eqz v1, :cond_0

    .line 343
    iget-object v1, v0, Lcom/google/common/graph/DirectedGraphConnections$NodeConnection;->node:Ljava/lang/Object;

    return-object v1

    .line 345
    .end local v0    # "nodeConnection":Lcom/google/common/graph/DirectedGraphConnections$NodeConnection;, "Lcom/google/common/graph/DirectedGraphConnections$NodeConnection<TN;>;"
    :cond_0
    goto :goto_0

    .line 346
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/graph/DirectedGraphConnections$3$2;->endOfData()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method