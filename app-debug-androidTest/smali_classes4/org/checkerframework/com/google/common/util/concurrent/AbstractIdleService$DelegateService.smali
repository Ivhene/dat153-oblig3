.class final Lorg/checkerframework/com/google/common/util/concurrent/AbstractIdleService$DelegateService;
.super Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;
.source "AbstractIdleService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/util/concurrent/AbstractIdleService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DelegateService"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/util/concurrent/AbstractIdleService;


# direct methods
.method private constructor <init>(Lorg/checkerframework/com/google/common/util/concurrent/AbstractIdleService;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractIdleService$DelegateService;->this$0:Lorg/checkerframework/com/google/common/util/concurrent/AbstractIdleService;

    invoke-direct {p0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/com/google/common/util/concurrent/AbstractIdleService;Lorg/checkerframework/com/google/common/util/concurrent/AbstractIdleService$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/com/google/common/util/concurrent/AbstractIdleService;
    .param p2, "x1"    # Lorg/checkerframework/com/google/common/util/concurrent/AbstractIdleService$1;

    .line 53
    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractIdleService$DelegateService;-><init>(Lorg/checkerframework/com/google/common/util/concurrent/AbstractIdleService;)V

    return-void
.end method


# virtual methods
.method protected final doStart()V
    .locals 2

    .line 56
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractIdleService$DelegateService;->this$0:Lorg/checkerframework/com/google/common/util/concurrent/AbstractIdleService;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractIdleService;->executor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractIdleService$DelegateService;->this$0:Lorg/checkerframework/com/google/common/util/concurrent/AbstractIdleService;

    invoke-static {v1}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractIdleService;->access$200(Lorg/checkerframework/com/google/common/util/concurrent/AbstractIdleService;)Lorg/checkerframework/com/google/common/base/Supplier;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/util/concurrent/MoreExecutors;->renamingDecorator(Ljava/util/concurrent/Executor;Lorg/checkerframework/com/google/common/base/Supplier;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/google/common/util/concurrent/AbstractIdleService$DelegateService$1;

    invoke-direct {v1, p0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractIdleService$DelegateService$1;-><init>(Lorg/checkerframework/com/google/common/util/concurrent/AbstractIdleService$DelegateService;)V

    .line 57
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 69
    return-void
.end method

.method protected final doStop()V
    .locals 2

    .line 73
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractIdleService$DelegateService;->this$0:Lorg/checkerframework/com/google/common/util/concurrent/AbstractIdleService;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractIdleService;->executor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractIdleService$DelegateService;->this$0:Lorg/checkerframework/com/google/common/util/concurrent/AbstractIdleService;

    invoke-static {v1}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractIdleService;->access$200(Lorg/checkerframework/com/google/common/util/concurrent/AbstractIdleService;)Lorg/checkerframework/com/google/common/base/Supplier;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/util/concurrent/MoreExecutors;->renamingDecorator(Ljava/util/concurrent/Executor;Lorg/checkerframework/com/google/common/base/Supplier;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/google/common/util/concurrent/AbstractIdleService$DelegateService$2;

    invoke-direct {v1, p0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractIdleService$DelegateService$2;-><init>(Lorg/checkerframework/com/google/common/util/concurrent/AbstractIdleService$DelegateService;)V

    .line 74
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 86
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractIdleService$DelegateService;->this$0:Lorg/checkerframework/com/google/common/util/concurrent/AbstractIdleService;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractIdleService;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
