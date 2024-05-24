.class public final Lorg/checkerframework/com/google/common/util/concurrent/SettableFuture;
.super Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$TrustedFuture;
.source "SettableFuture.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$TrustedFuture<",
        "TV;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 62
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/SettableFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/SettableFuture<TV;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$TrustedFuture;-><init>()V

    return-void
.end method

.method public static create()Lorg/checkerframework/com/google/common/util/concurrent/SettableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/checkerframework/com/google/common/util/concurrent/SettableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 41
    new-instance v0, Lorg/checkerframework/com/google/common/util/concurrent/SettableFuture;

    invoke-direct {v0}, Lorg/checkerframework/com/google/common/util/concurrent/SettableFuture;-><init>()V

    return-object v0
.end method


# virtual methods
.method public set(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 47
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/SettableFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/SettableFuture<TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$TrustedFuture;->set(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setException(Ljava/lang/Throwable;)Z
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .line 53
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/SettableFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/SettableFuture<TV;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$TrustedFuture;->setException(Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method public setFuture(Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;)Z"
        }
    .end annotation

    .line 59
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/SettableFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/SettableFuture<TV;>;"
    .local p1, "future":Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<+TV;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$TrustedFuture;->setFuture(Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;)Z

    move-result v0

    return v0
.end method
