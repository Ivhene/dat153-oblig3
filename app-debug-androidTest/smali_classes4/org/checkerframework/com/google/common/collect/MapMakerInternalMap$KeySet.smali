.class final Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$KeySet;
.super Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$SafeToArraySet;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$SafeToArraySet<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;)V
    .locals 1
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;

    .line 2682
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$KeySet;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>.KeySet;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$KeySet;->this$0:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$SafeToArraySet;-><init>(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$1;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 2711
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$KeySet;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>.KeySet;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$KeySet;->this$0:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;->clear()V

    .line 2712
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 2701
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$KeySet;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>.KeySet;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$KeySet;->this$0:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 2696
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$KeySet;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>.KeySet;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$KeySet;->this$0:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 2686
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$KeySet;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>.KeySet;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$KeyIterator;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$KeySet;->this$0:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$KeyIterator;-><init>(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 2706
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$KeySet;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>.KeySet;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$KeySet;->this$0:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public size()I
    .locals 1

    .line 2691
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$KeySet;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>.KeySet;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$KeySet;->this$0:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;->size()I

    move-result v0

    return v0
.end method
