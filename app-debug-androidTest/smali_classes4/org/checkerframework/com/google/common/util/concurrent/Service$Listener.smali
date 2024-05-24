.class public abstract Lorg/checkerframework/com/google/common/util/concurrent/Service$Listener;
.super Ljava/lang/Object;
.source "Service.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/util/concurrent/Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Listener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failed(Lorg/checkerframework/com/google/common/util/concurrent/Service$State;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "from"    # Lorg/checkerframework/com/google/common/util/concurrent/Service$State;
    .param p2, "failure"    # Ljava/lang/Throwable;

    .line 321
    return-void
.end method

.method public running()V
    .locals 0

    .line 288
    return-void
.end method

.method public starting()V
    .locals 0

    .line 282
    return-void
.end method

.method public stopping(Lorg/checkerframework/com/google/common/util/concurrent/Service$State;)V
    .locals 0
    .param p1, "from"    # Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    .line 297
    return-void
.end method

.method public terminated(Lorg/checkerframework/com/google/common/util/concurrent/Service$State;)V
    .locals 0
    .param p1, "from"    # Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    .line 309
    return-void
.end method
