.class Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadLock;
.super Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;
.source "CycleDetectingLockFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CycleDetectingReentrantReadLock"
.end annotation


# instance fields
.field final readWriteLock:Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadWriteLock;

.field final synthetic this$0:Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory;Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadWriteLock;)V
    .locals 0
    .param p2, "readWriteLock"    # Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadWriteLock;

    .line 856
    iput-object p1, p0, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadLock;->this$0:Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory;

    .line 857
    invoke-direct {p0, p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;-><init>(Ljava/util/concurrent/locks/ReentrantReadWriteLock;)V

    .line 858
    iput-object p2, p0, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadLock;->readWriteLock:Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadWriteLock;

    .line 859
    return-void
.end method


# virtual methods
.method public lock()V
    .locals 2

    .line 863
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadLock;->this$0:Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadLock;->readWriteLock:Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadWriteLock;

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory;->access$600(Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory;Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;)V

    .line 865
    :try_start_0
    invoke-super {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 867
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadLock;->readWriteLock:Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadWriteLock;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory;->access$700(Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;)V

    .line 868
    nop

    .line 869
    return-void

    .line 867
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadLock;->readWriteLock:Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadWriteLock;

    invoke-static {v1}, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory;->access$700(Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;)V

    .line 868
    throw v0
.end method

.method public lockInterruptibly()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 873
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadLock;->this$0:Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadLock;->readWriteLock:Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadWriteLock;

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory;->access$600(Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory;Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;)V

    .line 875
    :try_start_0
    invoke-super {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lockInterruptibly()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 877
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadLock;->readWriteLock:Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadWriteLock;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory;->access$700(Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;)V

    .line 878
    nop

    .line 879
    return-void

    .line 877
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadLock;->readWriteLock:Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadWriteLock;

    invoke-static {v1}, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory;->access$700(Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;)V

    .line 878
    throw v0
.end method

.method public tryLock()Z
    .locals 2

    .line 883
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadLock;->this$0:Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadLock;->readWriteLock:Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadWriteLock;

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory;->access$600(Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory;Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;)V

    .line 885
    :try_start_0
    invoke-super {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->tryLock()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 887
    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadLock;->readWriteLock:Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadWriteLock;

    invoke-static {v1}, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory;->access$700(Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;)V

    .line 885
    return v0

    .line 887
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadLock;->readWriteLock:Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadWriteLock;

    invoke-static {v1}, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory;->access$700(Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;)V

    .line 888
    throw v0
.end method

.method public tryLock(JLjava/util/concurrent/TimeUnit;)Z
    .locals 2
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 893
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadLock;->this$0:Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadLock;->readWriteLock:Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadWriteLock;

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory;->access$600(Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory;Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;)V

    .line 895
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 897
    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadLock;->readWriteLock:Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadWriteLock;

    invoke-static {v1}, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory;->access$700(Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;)V

    .line 895
    return v0

    .line 897
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadLock;->readWriteLock:Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadWriteLock;

    invoke-static {v1}, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory;->access$700(Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;)V

    .line 898
    throw v0
.end method

.method public unlock()V
    .locals 2

    .line 904
    :try_start_0
    invoke-super {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 906
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadLock;->readWriteLock:Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadWriteLock;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory;->access$700(Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;)V

    .line 907
    nop

    .line 908
    return-void

    .line 906
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadLock;->readWriteLock:Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadWriteLock;

    invoke-static {v1}, Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory;->access$700(Lorg/checkerframework/com/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;)V

    .line 907
    throw v0
.end method
