.class final Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantLock;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "CycleDetectingLockFactory.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CycleDetectingReentrantLock"
.end annotation


# instance fields
.field private final lockGraphNode:Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;

.field final synthetic this$0:Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory;


# direct methods
.method private constructor <init>(Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory;Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;Z)V
    .locals 1
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory;
    .param p2, "lockGraphNode"    # Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;
    .param p3, "fair"    # Z

    .line 739
    iput-object p1, p0, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantLock;->this$0:Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory;

    .line 740
    invoke-direct {p0, p3}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    .line 741
    invoke-static {p2}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantLock;->lockGraphNode:Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;

    .line 742
    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory;Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;ZLorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory;
    .param p2, "x1"    # Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;
    .param p3, "x2"    # Z
    .param p4, "x3"    # Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$1;

    .line 735
    invoke-direct {p0, p1, p2, p3}, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantLock;-><init>(Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory;Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;Z)V

    return-void
.end method


# virtual methods
.method public getLockGraphNode()Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;
    .locals 1

    .line 748
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantLock;->lockGraphNode:Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;

    return-object v0
.end method

.method public isAcquiredByCurrentThread()Z
    .locals 1

    .line 753
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    return v0
.end method

.method public lock()V
    .locals 1

    .line 760
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantLock;->this$0:Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory;

    invoke-static {v0, p0}, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory;->access$600(Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory;Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;)V

    .line 762
    :try_start_0
    invoke-super {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 764
    invoke-static {p0}, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory;->access$700(Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;)V

    .line 765
    nop

    .line 766
    return-void

    .line 764
    :catchall_0
    move-exception v0

    invoke-static {p0}, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory;->access$700(Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;)V

    .line 765
    throw v0
.end method

.method public lockInterruptibly()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 770
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantLock;->this$0:Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory;

    invoke-static {v0, p0}, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory;->access$600(Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory;Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;)V

    .line 772
    :try_start_0
    invoke-super {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 774
    invoke-static {p0}, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory;->access$700(Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;)V

    .line 775
    nop

    .line 776
    return-void

    .line 774
    :catchall_0
    move-exception v0

    invoke-static {p0}, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory;->access$700(Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;)V

    .line 775
    throw v0
.end method

.method public tryLock()Z
    .locals 1

    .line 780
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantLock;->this$0:Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory;

    invoke-static {v0, p0}, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory;->access$600(Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory;Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;)V

    .line 782
    :try_start_0
    invoke-super {p0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 784
    invoke-static {p0}, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory;->access$700(Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;)V

    .line 782
    return v0

    .line 784
    :catchall_0
    move-exception v0

    invoke-static {p0}, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory;->access$700(Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;)V

    .line 785
    throw v0
.end method

.method public tryLock(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 790
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantLock;->this$0:Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory;

    invoke-static {v0, p0}, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory;->access$600(Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory;Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;)V

    .line 792
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 794
    invoke-static {p0}, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory;->access$700(Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;)V

    .line 792
    return v0

    .line 794
    :catchall_0
    move-exception v0

    invoke-static {p0}, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory;->access$700(Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;)V

    .line 795
    throw v0
.end method

.method public unlock()V
    .locals 1

    .line 801
    :try_start_0
    invoke-super {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 803
    invoke-static {p0}, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory;->access$700(Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;)V

    .line 804
    nop

    .line 805
    return-void

    .line 803
    :catchall_0
    move-exception v0

    invoke-static {p0}, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory;->access$700(Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;)V

    .line 804
    throw v0
.end method
