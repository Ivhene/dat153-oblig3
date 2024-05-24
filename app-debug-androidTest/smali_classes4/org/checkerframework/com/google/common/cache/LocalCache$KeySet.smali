.class final Lorg/checkerframework/com/google/common/cache/LocalCache$KeySet;
.super Lorg/checkerframework/com/google/common/cache/LocalCache$AbstractCacheSet;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/cache/LocalCache<",
        "TK;TV;>.AbstractCacheSet<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/cache/LocalCache;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/cache/LocalCache;Ljava/util/concurrent/ConcurrentMap;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/cache/LocalCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentMap<",
            "**>;)V"
        }
    .end annotation

    .line 4561
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$KeySet;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>.KeySet;"
    .local p2, "map":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<**>;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$KeySet;->this$0:Lorg/checkerframework/com/google/common/cache/LocalCache;

    .line 4562
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/com/google/common/cache/LocalCache$AbstractCacheSet;-><init>(Lorg/checkerframework/com/google/common/cache/LocalCache;Ljava/util/concurrent/ConcurrentMap;)V

    .line 4563
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 4572
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$KeySet;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>.KeySet;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$KeySet;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

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

    .line 4567
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$KeySet;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>.KeySet;"
    new-instance v0, Lorg/checkerframework/com/google/common/cache/LocalCache$KeyIterator;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$KeySet;->this$0:Lorg/checkerframework/com/google/common/cache/LocalCache;

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/cache/LocalCache$KeyIterator;-><init>(Lorg/checkerframework/com/google/common/cache/LocalCache;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 4577
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$KeySet;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>.KeySet;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$KeySet;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
