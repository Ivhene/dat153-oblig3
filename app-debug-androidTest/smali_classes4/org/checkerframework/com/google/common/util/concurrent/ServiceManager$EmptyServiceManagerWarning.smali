.class final Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$EmptyServiceManagerWarning;
.super Ljava/lang/Throwable;
.source "ServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EmptyServiceManagerWarning"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 883
    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$1;

    .line 883
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$EmptyServiceManagerWarning;-><init>()V

    return-void
.end method
