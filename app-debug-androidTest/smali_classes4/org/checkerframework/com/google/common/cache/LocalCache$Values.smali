.class final Lorg/checkerframework/com/google/common/cache/LocalCache$Values;
.super Ljava/util/AbstractCollection;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final map:Ljava/util/concurrent/ConcurrentMap;
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

    .line 4585
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$Values;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>.Values;"
    .local p2, "map":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<**>;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$Values;->this$0:Lorg/checkerframework/com/google/common/cache/LocalCache;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 4586
    iput-object p2, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$Values;->map:Ljava/util/concurrent/ConcurrentMap;

    .line 4587
    return-void
.end method

.method static synthetic lambda$removeIf$0(Ljava/util/function/Predicate;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "filter"    # Ljava/util/function/Predicate;
    .param p1, "k"    # Ljava/lang/Object;
    .param p2, "v"    # Ljava/lang/Object;

    .line 4612
    invoke-interface {p0, p2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 4601
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$Values;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>.Values;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$Values;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 4602
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 4617
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$Values;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>.Values;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$Values;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 4596
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$Values;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>.Values;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$Values;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 4606
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$Values;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>.Values;"
    new-instance v0, Lorg/checkerframework/com/google/common/cache/LocalCache$ValueIterator;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$Values;->this$0:Lorg/checkerframework/com/google/common/cache/LocalCache;

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/cache/LocalCache$ValueIterator;-><init>(Lorg/checkerframework/com/google/common/cache/LocalCache;)V

    return-object v0
.end method

.method public removeIf(Ljava/util/function/Predicate;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TV;>;)Z"
        }
    .end annotation

    .line 4611
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$Values;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>.Values;"
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TV;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4612
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$Values;->this$0:Lorg/checkerframework/com/google/common/cache/LocalCache;

    new-instance v1, Lorg/checkerframework/com/google/common/cache/LocalCache$Values$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lorg/checkerframework/com/google/common/cache/LocalCache$Values$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Predicate;)V

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/cache/LocalCache;->removeIf(Ljava/util/function/BiPredicate;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .line 4591
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$Values;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>.Values;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$Values;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 4625
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$Values;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>.Values;"
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

    .line 4630
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$Values;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>.Values;"
    .local p1, "a":[Ljava/lang/Object;, "[TE;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/cache/LocalCache;->access$200(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
