.class final Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$FailedService;
.super Ljava/lang/Throwable;
.source "ServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FailedService"
.end annotation


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/util/concurrent/Service;)V
    .locals 3
    .param p1, "service"    # Lorg/checkerframework/com/google/common/util/concurrent/Service;

    .line 887
    nop

    .line 888
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 889
    invoke-interface {p1}, Lorg/checkerframework/com/google/common/util/concurrent/Service;->failureCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 887
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ZZ)V

    .line 892
    return-void
.end method
