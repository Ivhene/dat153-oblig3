.class final Lcom/google/common/util/concurrent/ImmediateFuture$ImmediateFailedFuture;
.super Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture;
.source "ImmediateFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/ImmediateFuture;
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
        "Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture<",
        "TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "thrown"    # Ljava/lang/Throwable;

    .line 92
    .local p0, "this":Lcom/google/common/util/concurrent/ImmediateFuture$ImmediateFailedFuture;, "Lcom/google/common/util/concurrent/ImmediateFuture$ImmediateFailedFuture<TV;>;"
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture;-><init>()V

    .line 93
    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/ImmediateFuture$ImmediateFailedFuture;->setException(Ljava/lang/Throwable;)Z

    .line 94
    return-void
.end method
