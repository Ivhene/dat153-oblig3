.class public interface abstract Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$Policy;
.super Ljava/lang/Object;
.source "CycleDetectingLockFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Policy"
.end annotation


# virtual methods
.method public abstract handlePotentialDeadlock(Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$PotentialDeadlockException;)V
.end method
