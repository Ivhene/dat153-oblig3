.class public abstract Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;
.super Ljava/lang/Object;
.source "Monitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/util/concurrent/Monitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Guard"
.end annotation


# instance fields
.field final condition:Ljava/util/concurrent/locks/Condition;

.field final monitor:Lorg/checkerframework/com/google/common/util/concurrent/Monitor;

.field next:Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;

.field waiterCount:I


# direct methods
.method protected constructor <init>(Lorg/checkerframework/com/google/common/util/concurrent/Monitor;)V
    .locals 1
    .param p1, "monitor"    # Lorg/checkerframework/com/google/common/util/concurrent/Monitor;

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    const/4 v0, 0x0

    iput v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;->waiterCount:I

    .line 320
    const-string v0, "monitor"

    invoke-static {p1, v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;->monitor:Lorg/checkerframework/com/google/common/util/concurrent/Monitor;

    .line 321
    invoke-static {p1}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->access$000(Lorg/checkerframework/com/google/common/util/concurrent/Monitor;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;->condition:Ljava/util/concurrent/locks/Condition;

    .line 322
    return-void
.end method


# virtual methods
.method public abstract isSatisfied()Z
.end method
