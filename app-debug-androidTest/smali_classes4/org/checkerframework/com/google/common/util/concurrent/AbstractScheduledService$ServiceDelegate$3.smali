.class Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate$3;
.super Ljava/lang/Object;
.source "AbstractScheduledService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;->doStop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;)V
    .locals 0
    .param p1, "this$1"    # Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;

    .line 281
    iput-object p1, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate$3;->this$1:Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 285
    :try_start_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate$3;->this$1:Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;->access$200(Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 287
    :try_start_1
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate$3;->this$1:Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;->state()Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/com/google/common/util/concurrent/Service$State;->STOPPING:Lorg/checkerframework/com/google/common/util/concurrent/Service$State;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v0, v1, :cond_0

    .line 296
    :try_start_2
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate$3;->this$1:Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;->access$200(Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 292
    return-void

    .line 294
    :cond_0
    :try_start_3
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate$3;->this$1:Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;

    iget-object v0, v0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;->this$0:Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService;->shutDown()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 296
    :try_start_4
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate$3;->this$1:Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;->access$200(Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 297
    nop

    .line 298
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate$3;->this$1:Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;->notifyStopped()V

    .line 301
    goto :goto_0

    .line 296
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate$3;->this$1:Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;

    invoke-static {v1}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;->access$200(Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 297
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 299
    :catchall_1
    move-exception v0

    .line 300
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate$3;->this$1:Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;->notifyFailed(Ljava/lang/Throwable;)V

    .line 302
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method
