.class public abstract Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$Listener;
.super Ljava/lang/Object;
.source "ServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Listener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lorg/checkerframework/com/google/common/util/concurrent/Service;)V
    .locals 0
    .param p1, "service"    # Lorg/checkerframework/com/google/common/util/concurrent/Service;

    .line 185
    return-void
.end method

.method public healthy()V
    .locals 0

    .line 172
    return-void
.end method

.method public stopped()V
    .locals 0

    .line 178
    return-void
.end method
