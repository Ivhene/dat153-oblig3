.class Lorg/checkerframework/com/google/common/util/concurrent/AbstractIdleService$1;
.super Ljava/lang/Object;
.source "AbstractIdleService.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/util/concurrent/AbstractIdleService;->executor()Ljava/util/concurrent/Executor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/util/concurrent/AbstractIdleService;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/util/concurrent/AbstractIdleService;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/util/concurrent/AbstractIdleService;

    .line 111
    iput-object p1, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractIdleService$1;->this$0:Lorg/checkerframework/com/google/common/util/concurrent/AbstractIdleService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/Runnable;

    .line 114
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractIdleService$1;->this$0:Lorg/checkerframework/com/google/common/util/concurrent/AbstractIdleService;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractIdleService;->access$200(Lorg/checkerframework/com/google/common/util/concurrent/AbstractIdleService;)Lorg/checkerframework/com/google/common/base/Supplier;

    move-result-object v0

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/checkerframework/com/google/common/util/concurrent/MoreExecutors;->newThread(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 115
    return-void
.end method
