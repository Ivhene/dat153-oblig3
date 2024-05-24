.class public abstract Lorg/checkerframework/com/google/common/cache/ForwardingLoadingCache$SimpleForwardingLoadingCache;
.super Lorg/checkerframework/com/google/common/cache/ForwardingLoadingCache;
.source "ForwardingLoadingCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/cache/ForwardingLoadingCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SimpleForwardingLoadingCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/cache/ForwardingLoadingCache<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final delegate:Lorg/checkerframework/com/google/common/cache/LoadingCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/cache/LoadingCache<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/checkerframework/com/google/common/cache/LoadingCache;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/cache/LoadingCache<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 78
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/ForwardingLoadingCache$SimpleForwardingLoadingCache;, "Lorg/checkerframework/com/google/common/cache/ForwardingLoadingCache$SimpleForwardingLoadingCache<TK;TV;>;"
    .local p1, "delegate":Lorg/checkerframework/com/google/common/cache/LoadingCache;, "Lorg/checkerframework/com/google/common/cache/LoadingCache<TK;TV;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/cache/ForwardingLoadingCache;-><init>()V

    .line 79
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/cache/LoadingCache;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/cache/ForwardingLoadingCache$SimpleForwardingLoadingCache;->delegate:Lorg/checkerframework/com/google/common/cache/LoadingCache;

    .line 80
    return-void
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 74
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/ForwardingLoadingCache$SimpleForwardingLoadingCache;, "Lorg/checkerframework/com/google/common/cache/ForwardingLoadingCache$SimpleForwardingLoadingCache<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/cache/ForwardingLoadingCache$SimpleForwardingLoadingCache;->delegate()Lorg/checkerframework/com/google/common/cache/LoadingCache;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Lorg/checkerframework/com/google/common/cache/Cache;
    .locals 1

    .line 74
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/ForwardingLoadingCache$SimpleForwardingLoadingCache;, "Lorg/checkerframework/com/google/common/cache/ForwardingLoadingCache$SimpleForwardingLoadingCache<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/cache/ForwardingLoadingCache$SimpleForwardingLoadingCache;->delegate()Lorg/checkerframework/com/google/common/cache/LoadingCache;

    move-result-object v0

    return-object v0
.end method

.method protected final delegate()Lorg/checkerframework/com/google/common/cache/LoadingCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/cache/LoadingCache<",
            "TK;TV;>;"
        }
    .end annotation

    .line 84
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/ForwardingLoadingCache$SimpleForwardingLoadingCache;, "Lorg/checkerframework/com/google/common/cache/ForwardingLoadingCache$SimpleForwardingLoadingCache<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/ForwardingLoadingCache$SimpleForwardingLoadingCache;->delegate:Lorg/checkerframework/com/google/common/cache/LoadingCache;

    return-object v0
.end method
