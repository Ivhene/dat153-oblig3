.class final Lorg/checkerframework/com/google/common/util/concurrent/ImmediateFuture$ImmediateFailedFuture;
.super Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$TrustedFuture;
.source "ImmediateFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/util/concurrent/ImmediateFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ImmediateFailedFuture"
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
.method constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "thrown"    # Ljava/lang/Throwable;

    .line 95
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/ImmediateFuture$ImmediateFailedFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/ImmediateFuture$ImmediateFailedFuture<TV;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$TrustedFuture;-><init>()V

    .line 96
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/util/concurrent/ImmediateFuture$ImmediateFailedFuture;->setException(Ljava/lang/Throwable;)Z

    .line 97
    return-void
.end method
