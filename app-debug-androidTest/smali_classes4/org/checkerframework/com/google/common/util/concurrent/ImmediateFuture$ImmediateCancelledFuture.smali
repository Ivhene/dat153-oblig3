.class final Lorg/checkerframework/com/google/common/util/concurrent/ImmediateFuture$ImmediateCancelledFuture;
.super Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$TrustedFuture;
.source "ImmediateFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/util/concurrent/ImmediateFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ImmediateCancelledFuture"
.end annotation

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
.method constructor <init>()V
    .locals 1

    .line 101
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/ImmediateFuture$ImmediateCancelledFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/ImmediateFuture$ImmediateCancelledFuture<TV;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$TrustedFuture;-><init>()V

    .line 102
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/google/common/util/concurrent/ImmediateFuture$ImmediateCancelledFuture;->cancel(Z)Z

    .line 103
    return-void
.end method
