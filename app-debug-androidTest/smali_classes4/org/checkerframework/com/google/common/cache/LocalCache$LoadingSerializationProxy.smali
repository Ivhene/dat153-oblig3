.class final Lorg/checkerframework/com/google/common/cache/LocalCache$LoadingSerializationProxy;
.super Lorg/checkerframework/com/google/common/cache/LocalCache$ManualSerializationProxy;
.source "LocalCache.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/cache/LoadingCache;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LoadingSerializationProxy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/cache/LocalCache$ManualSerializationProxy<",
        "TK;TV;>;",
        "Lorg/checkerframework/com/google/common/cache/LoadingCache<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field transient autoDelegate:Lorg/checkerframework/com/google/common/cache/LoadingCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/cache/LoadingCache<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/cache/LocalCache;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/cache/LocalCache<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 4813
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$LoadingSerializationProxy;, "Lorg/checkerframework/com/google/common/cache/LocalCache$LoadingSerializationProxy<TK;TV;>;"
    .local p1, "cache":Lorg/checkerframework/com/google/common/cache/LocalCache;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>;"
    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/cache/LocalCache$ManualSerializationProxy;-><init>(Lorg/checkerframework/com/google/common/cache/LocalCache;)V

    .line 4814
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 4817
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$LoadingSerializationProxy;, "Lorg/checkerframework/com/google/common/cache/LocalCache$LoadingSerializationProxy<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 4818
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/cache/LocalCache$LoadingSerializationProxy;->recreateCacheBuilder()Lorg/checkerframework/com/google/common/cache/CacheBuilder;

    move-result-object v0

    .line 4819
    .local v0, "builder":Lorg/checkerframework/com/google/common/cache/CacheBuilder;, "Lorg/checkerframework/com/google/common/cache/CacheBuilder<TK;TV;>;"
    iget-object v1, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$LoadingSerializationProxy;->loader:Lorg/checkerframework/com/google/common/cache/CacheLoader;

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->build(Lorg/checkerframework/com/google/common/cache/CacheLoader;)Lorg/checkerframework/com/google/common/cache/LoadingCache;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$LoadingSerializationProxy;->autoDelegate:Lorg/checkerframework/com/google/common/cache/LoadingCache;

    .line 4820
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 4848
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$LoadingSerializationProxy;, "Lorg/checkerframework/com/google/common/cache/LocalCache$LoadingSerializationProxy<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$LoadingSerializationProxy;->autoDelegate:Lorg/checkerframework/com/google/common/cache/LoadingCache;

    return-object v0
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 4839
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$LoadingSerializationProxy;, "Lorg/checkerframework/com/google/common/cache/LocalCache$LoadingSerializationProxy<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$LoadingSerializationProxy;->autoDelegate:Lorg/checkerframework/com/google/common/cache/LoadingCache;

    invoke-interface {v0, p1}, Lorg/checkerframework/com/google/common/cache/LoadingCache;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 4824
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$LoadingSerializationProxy;, "Lorg/checkerframework/com/google/common/cache/LocalCache$LoadingSerializationProxy<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$LoadingSerializationProxy;->autoDelegate:Lorg/checkerframework/com/google/common/cache/LoadingCache;

    invoke-interface {v0, p1}, Lorg/checkerframework/com/google/common/cache/LoadingCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAll(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TK;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 4834
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$LoadingSerializationProxy;, "Lorg/checkerframework/com/google/common/cache/LocalCache$LoadingSerializationProxy<TK;TV;>;"
    .local p1, "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TK;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$LoadingSerializationProxy;->autoDelegate:Lorg/checkerframework/com/google/common/cache/LoadingCache;

    invoke-interface {v0, p1}, Lorg/checkerframework/com/google/common/cache/LoadingCache;->getAll(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public getUnchecked(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 4829
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$LoadingSerializationProxy;, "Lorg/checkerframework/com/google/common/cache/LocalCache$LoadingSerializationProxy<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$LoadingSerializationProxy;->autoDelegate:Lorg/checkerframework/com/google/common/cache/LoadingCache;

    invoke-interface {v0, p1}, Lorg/checkerframework/com/google/common/cache/LoadingCache;->getUnchecked(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public refresh(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .line 4844
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$LoadingSerializationProxy;, "Lorg/checkerframework/com/google/common/cache/LocalCache$LoadingSerializationProxy<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$LoadingSerializationProxy;->autoDelegate:Lorg/checkerframework/com/google/common/cache/LoadingCache;

    invoke-interface {v0, p1}, Lorg/checkerframework/com/google/common/cache/LoadingCache;->refresh(Ljava/lang/Object;)V

    .line 4845
    return-void
.end method