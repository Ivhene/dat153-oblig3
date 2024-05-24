.class final enum Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$Policies$1;
.super Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$Policies;
.source "CycleDetectingLockFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$Policies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 201
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$Policies;-><init>(Ljava/lang/String;ILorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$1;)V

    return-void
.end method


# virtual methods
.method public handlePotentialDeadlock(Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$PotentialDeadlockException;)V
    .locals 0
    .param p1, "e"    # Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$PotentialDeadlockException;

    .line 204
    throw p1
.end method
