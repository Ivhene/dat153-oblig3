.class Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedSet;
.super Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;
.source "AbstractMapBasedMultimap.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WrappedSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<",
        "TK;TV;>.WrappedCollection;",
        "Ljava/util/Set<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;Ljava/lang/Object;Ljava/util/Set;)V
    .locals 1
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Set<",
            "TV;>;)V"
        }
    .end annotation

    .line 589
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedSet;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedSet;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "delegate":Ljava/util/Set;, "Ljava/util/Set<TV;>;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedSet;->this$0:Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;

    .line 590
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;-><init>(Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;Ljava/lang/Object;Ljava/util/Collection;Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;)V

    .line 591
    return-void
.end method


# virtual methods
.method public removeAll(Ljava/util/Collection;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 595
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedSet;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedSet;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 596
    const/4 v0, 0x0

    return v0

    .line 598
    :cond_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedSet;->size()I

    move-result v0

    .line 603
    .local v0, "oldSize":I
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedSet;->delegate:Ljava/util/Collection;

    check-cast v1, Ljava/util/Set;

    invoke-static {v1, p1}, Lorg/checkerframework/com/google/common/collect/Sets;->removeAllImpl(Ljava/util/Set;Ljava/util/Collection;)Z

    move-result v1

    .line 604
    .local v1, "changed":Z
    if-eqz v1, :cond_1

    .line 605
    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedSet;->delegate:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    .line 606
    .local v2, "newSize":I
    iget-object v3, p0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedSet;->this$0:Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;

    invoke-static {v3}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;->access$200(Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;)I

    move-result v4

    sub-int v5, v2, v0

    add-int/2addr v4, v5

    invoke-static {v3, v4}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;->access$202(Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;I)I

    .line 607
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedSet;->removeIfEmpty()V

    .line 609
    .end local v2    # "newSize":I
    :cond_1
    return v1
.end method
