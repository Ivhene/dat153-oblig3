.class final Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$NoOpService;
.super Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;
.source "ServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NoOpService"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 870
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$1;

    .line 870
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$NoOpService;-><init>()V

    return-void
.end method


# virtual methods
.method protected doStart()V
    .locals 0

    .line 873
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$NoOpService;->notifyStarted()V

    .line 874
    return-void
.end method

.method protected doStop()V
    .locals 0

    .line 878
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$NoOpService;->notifyStopped()V

    .line 879
    return-void
.end method
