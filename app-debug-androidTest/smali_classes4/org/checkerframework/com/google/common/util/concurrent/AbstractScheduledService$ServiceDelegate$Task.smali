.class Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate$Task;
.super Ljava/lang/Object;
.source "AbstractScheduledService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Task"
.end annotation


# instance fields
.field final synthetic this$1:Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;)V
    .locals 0
    .param p1, "this$1"    # Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;

    .line 215
    iput-object p1, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate$Task;->this$1:Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 218
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate$Task;->this$1:Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;->access$200(Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 220
    :try_start_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate$Task;->this$1:Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;->access$300(Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate$Task;->this$1:Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;->access$200(Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 222
    return-void

    .line 224
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate$Task;->this$1:Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;

    iget-object v0, v0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;->this$0:Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService;->runOneIteration()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 237
    nop

    :goto_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate$Task;->this$1:Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;->access$200(Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 238
    goto :goto_2

    .line 225
    :catchall_0
    move-exception v0

    .line 227
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_2
    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate$Task;->this$1:Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;

    iget-object v1, v1, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;->this$0:Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService;

    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService;->shutDown()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 233
    goto :goto_1

    .line 237
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 228
    .restart local v0    # "t":Ljava/lang/Throwable;
    :catch_0
    move-exception v1

    .line 229
    .local v1, "ignored":Ljava/lang/Exception;
    :try_start_3
    invoke-static {}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService;->access$400()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Error while attempting to shut down the service after failure."

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 234
    .end local v1    # "ignored":Ljava/lang/Exception;
    :goto_1
    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate$Task;->this$1:Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;->notifyFailed(Ljava/lang/Throwable;)V

    .line 235
    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate$Task;->this$1:Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;

    invoke-static {v1}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;->access$300(Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;)Ljava/util/concurrent/Future;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 237
    nop

    .end local v0    # "t":Ljava/lang/Throwable;
    goto :goto_0

    .line 239
    :goto_2
    return-void

    .line 237
    :goto_3
    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate$Task;->this$1:Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;

    invoke-static {v1}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;->access$200(Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 238
    throw v0
.end method