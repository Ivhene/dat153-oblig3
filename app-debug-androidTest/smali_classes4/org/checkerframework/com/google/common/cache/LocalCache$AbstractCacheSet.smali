.class abstract Lorg/checkerframework/com/google/common/cache/LocalCache$AbstractCacheSet;
.super Ljava/util/AbstractSet;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "AbstractCacheSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final map:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "**>;"
        }
    .end annotation
.end field

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

    .line 4501
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$AbstractCacheSet;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>.AbstractCacheSet<TT;>;"
    .local p2, "map":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<**>;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$AbstractCacheSet;->this$0:Lorg/checkerframework/com/google/common/cache/LocalCache;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 4502
    iput-object p2, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$AbstractCacheSet;->map:Ljava/util/concurrent/ConcurrentMap;

    .line 4503
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 4517
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$AbstractCacheSet;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>.AbstractCacheSet<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$AbstractCacheSet;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 4518
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 4512
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$AbstractCacheSet;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>.AbstractCacheSet<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$AbstractCacheSet;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .line 4507
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$AbstractCacheSet;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>.AbstractCacheSet<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$AbstractCacheSet;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 4525
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$AbstractCacheSet;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>.AbstractCacheSet<TT;>;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/cache/LocalCache;->access$200(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)[TE;"
        }
    .end annotation

    .line 4530
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$AbstractCacheSet;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>.AbstractCacheSet<TT;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TE;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/cache/LocalCache;->access$200(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
