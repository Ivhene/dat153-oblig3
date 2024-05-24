.class interface abstract Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;
.super Ljava/lang/Object;
.source "CycleDetectingLockFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "CycleDetectingLock"
.end annotation


# virtual methods
.method public abstract getLockGraphNode()Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;
.end method

.method public abstract isAcquiredByCurrentThread()Z
.end method
