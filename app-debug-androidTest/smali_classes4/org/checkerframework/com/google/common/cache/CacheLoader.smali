.class public abstract Lorg/checkerframework/com/google/common/cache/CacheLoader;
.super Ljava/lang/Object;
.source "CacheLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/google/common/cache/CacheLoader$InvalidCacheLoadException;,
        Lorg/checkerframework/com/google/common/cache/CacheLoader$UnsupportedLoadingOperationException;,
        Lorg/checkerframework/com/google/common/cache/CacheLoader$SupplierToCacheLoader;,
        Lorg/checkerframework/com/google/common/cache/CacheLoader$FunctionToCacheLoader;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 61
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/CacheLoader;, "Lorg/checkerframework/com/google/common/cache/CacheLoader<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asyncReloading(Lorg/checkerframework/com/google/common/cache/CacheLoader;Ljava/util/concurrent/Executor;)Lorg/checkerframework/com/google/common/cache/CacheLoader;
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/cache/CacheLoader<",
            "TK;TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lorg/checkerframework/com/google/common/cache/CacheLoader<",
            "TK;TV;>;"
        }
    .end annotation

    .line 183
    .local p0, "loader":Lorg/checkerframework/com/google/common/cache/CacheLoader;, "Lorg/checkerframework/com/google/common/cache/CacheLoader<TK;TV;>;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    new-instance v0, Lorg/checkerframework/com/google/common/cache/CacheLoader$1;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/com/google/common/cache/CacheLoader$1;-><init>(Lorg/checkerframework/com/google/common/cache/CacheLoader;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static from(Lorg/checkerframework/com/google/common/base/Function;)Lorg/checkerframework/com/google/common/cache/CacheLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/base/Function<",
            "TK;TV;>;)",
            "Lorg/checkerframework/com/google/common/cache/CacheLoader<",
            "TK;TV;>;"
        }
    .end annotation

    .line 139
    .local p0, "function":Lorg/checkerframework/com/google/common/base/Function;, "Lorg/checkerframework/com/google/common/base/Function<TK;TV;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/cache/CacheLoader$FunctionToCacheLoader;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/cache/CacheLoader$FunctionToCacheLoader;-><init>(Lorg/checkerframework/com/google/common/base/Function;)V

    return-object v0
.end method

.method public static from(Lorg/checkerframework/com/google/common/base/Supplier;)Lorg/checkerframework/com/google/common/cache/CacheLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/base/Supplier<",
            "TV;>;)",
            "Lorg/checkerframework/com/google/common/cache/CacheLoader<",
            "Ljava/lang/Object;",
            "TV;>;"
        }
    .end annotation

    .line 152
    .local p0, "supplier":Lorg/checkerframework/com/google/common/base/Supplier;, "Lorg/checkerframework/com/google/common/base/Supplier<TV;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/cache/CacheLoader$SupplierToCacheLoader;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/cache/CacheLoader$SupplierToCacheLoader;-><init>(Lorg/checkerframework/com/google/common/base/Supplier;)V

    return-object v0
.end method


# virtual methods
.method public abstract load(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public loadAll(Ljava/lang/Iterable;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TK;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 128
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/CacheLoader;, "Lorg/checkerframework/com/google/common/cache/CacheLoader<TK;TV;>;"
    .local p1, "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TK;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/cache/CacheLoader$UnsupportedLoadingOperationException;

    invoke-direct {v0}, Lorg/checkerframework/com/google/common/cache/CacheLoader$UnsupportedLoadingOperationException;-><init>()V

    throw v0
.end method

.method public reload(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<",
            "TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 98
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/CacheLoader;, "Lorg/checkerframework/com/google/common/cache/CacheLoader<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldValue":Ljava/lang/Object;, "TV;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    invoke-static {p2}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/cache/CacheLoader;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
