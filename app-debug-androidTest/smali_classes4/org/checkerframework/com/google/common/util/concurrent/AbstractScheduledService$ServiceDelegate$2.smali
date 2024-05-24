.class Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate$2;
.super Ljava/lang/Object;
.source "AbstractScheduledService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;->doStart()V
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

    .line 256
    iput-object p1, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate$2;->this$1:Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 259
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate$2;->this$1:Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;->access$200(Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 261
    :try_start_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate$2;->this$1:Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;

    iget-object v0, v0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;->this$0:Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService;->startUp()V

    .line 262
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate$2;->this$1:Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;

    iget-object v1, v0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;->this$0:Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService;

    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService;->scheduler()Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$Scheduler;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate$2;->this$1:Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;

    iget-object v2, v2, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;->this$0:Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService;

    invoke-static {v2}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService;->access$500(Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService;)Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;

    move-result-object v2

    iget-object v3, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate$2;->this$1:Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;

    invoke-static {v3}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;->access$600(Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v3

    iget-object v4, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate$2;->this$1:Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;

    invoke-static {v4}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;->access$700(Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$Scheduler;->schedule(Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;->access$302(Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;

    .line 263
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate$2;->this$1:Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;->notifyStarted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 264
    :catchall_0
    move-exception v0

    .line 265
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_1
    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate$2;->this$1:Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;->notifyFailed(Ljava/lang/Throwable;)V

    .line 266
    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate$2;->this$1:Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;

    invoke-static {v1}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;->access$300(Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;)Ljava/util/concurrent/Future;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 268
    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate$2;->this$1:Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;

    invoke-static {v1}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;->access$300(Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;)Ljava/util/concurrent/Future;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 271
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate$2;->this$1:Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;->access$200(Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 272
    nop

    .line 273
    return-void

    .line 271
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate$2;->this$1:Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;

    invoke-static {v1}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;->access$200(Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 272
    throw v0
.end method
