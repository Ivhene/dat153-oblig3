.class Lorg/checkerframework/com/google/common/graph/AbstractNetwork$1$1$1;
.super Ljava/lang/Object;
.source "AbstractNetwork.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/graph/AbstractNetwork$1$1;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.field final synthetic this$2:Lorg/checkerframework/com/google/common/graph/AbstractNetwork$1$1;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/graph/AbstractNetwork$1$1;)V
    .locals 0
    .param p1, "this$2"    # Lorg/checkerframework/com/google/common/graph/AbstractNetwork$1$1;

    .line 75
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/AbstractNetwork$1$1$1;, "Lorg/checkerframework/com/google/common/graph/AbstractNetwork$1$1$1;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/graph/AbstractNetwork$1$1$1;->this$2:Lorg/checkerframework/com/google/common/graph/AbstractNetwork$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 75
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/AbstractNetwork$1$1$1;, "Lorg/checkerframework/com/google/common/graph/AbstractNetwork$1$1$1;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/graph/AbstractNetwork$1$1$1;->apply(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/graph/EndpointPair;

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

    .line 78
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/AbstractNetwork$1$1$1;, "Lorg/checkerframework/com/google/common/graph/AbstractNetwork$1$1$1;"
    .local p1, "edge":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/graph/AbstractNetwork$1$1$1;->this$2:Lorg/checkerframework/com/google/common/graph/AbstractNetwork$1$1;

    iget-object v0, v0, Lorg/checkerframework/com/google/common/graph/AbstractNetwork$1$1;->this$1:Lorg/checkerframework/com/google/common/graph/AbstractNetwork$1;

    iget-object v0, v0, Lorg/checkerframework/com/google/common/graph/AbstractNetwork$1;->this$0:Lorg/checkerframework/com/google/common/graph/AbstractNetwork;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/graph/AbstractNetwork;->incidentNodes(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/graph/EndpointPair;

    move-result-object v0

    return-object v0
.end method
