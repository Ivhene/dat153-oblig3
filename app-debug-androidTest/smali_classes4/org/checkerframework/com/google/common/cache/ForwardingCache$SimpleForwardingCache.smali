.class public abstract Lorg/checkerframework/com/google/common/cache/ForwardingCache$SimpleForwardingCache;
.super Lorg/checkerframework/com/google/common/cache/ForwardingCache;
.source "ForwardingCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/cache/ForwardingCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SimpleForwardingCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/cache/ForwardingCache<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final delegate:Lorg/checkerframework/com/google/common/cache/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/cache/Cache<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/checkerframework/com/google/common/cache/Cache;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/cache/Cache<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 119
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/ForwardingCache$SimpleForwardingCache;, "Lorg/checkerframework/com/google/common/cache/ForwardingCache$SimpleForwardingCache<TK;TV;>;"
    .local p1, "delegate":Lorg/checkerframework/com/google/common/cache/Cache;, "Lorg/checkerframework/com/google/common/cache/Cache<TK;TV;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/cache/ForwardingCache;-><init>()V

    .line 120
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/cache/Cache;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/cache/ForwardingCache$SimpleForwardingCache;->delegate:Lorg/checkerframework/com/google/common/cache/Cache;

    .line 121
    return-void
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 116
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/ForwardingCache$SimpleForwardingCache;, "Lorg/checkerframework/com/google/common/cache/ForwardingCache$SimpleForwardingCache<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/cache/ForwardingCache$SimpleForwardingCache;->delegate()Lorg/checkerframework/com/google/common/cache/Cache;

    move-result-object v0

    return-object v0
.end method

.method protected final delegate()Lorg/checkerframework/com/google/common/cache/Cache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/cache/Cache<",
            "TK;TV;>;"
        }
    .end annotation

    .line 125
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/ForwardingCache$SimpleForwardingCache;, "Lorg/checkerframework/com/google/common/cache/ForwardingCache$SimpleForwardingCache<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/ForwardingCache$SimpleForwardingCache;->delegate:Lorg/checkerframework/com/google/common/cache/Cache;

    return-object v0
.end method
