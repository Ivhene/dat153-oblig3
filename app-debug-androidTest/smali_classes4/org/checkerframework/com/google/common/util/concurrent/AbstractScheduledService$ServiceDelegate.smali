.class final Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;
.super Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;
.source "AbstractScheduledService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceDelegate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate$Task;
    }
.end annotation


# instance fields
.field private volatile executorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private volatile runningTask:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private final task:Ljava/lang/Runnable;

.field final synthetic this$0:Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService;


# direct methods
.method private constructor <init>(Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;->this$0:Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService;

    invoke-direct {p0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;-><init>()V

    .line 212
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 242
    new-instance p1, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate$Task;

    invoke-direct {p1, p0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate$Task;-><init>(Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;)V

    iput-object p1, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;->task:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService;Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService;
    .param p2, "x1"    # Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$1;

    .line 201
    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;-><init>(Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService;)V

    return-void
.end method

.method static synthetic access$200(Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;

    .line 201
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$300(Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;)Ljava/util/concurrent/Future;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;

    .line 201
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;->runningTask:Ljava/util/concurrent/Future;

    return-object v0
.end method

.method static synthetic access$302(Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;
    .locals 0
    .param p0, "x0"    # Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;
    .param p1, "x1"    # Ljava/util/concurrent/Future;

    .line 201
    iput-object p1, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;->runningTask:Ljava/util/concurrent/Future;

    return-object p1
.end method

.method static synthetic access$600(Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;

    .line 201
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic access$700(Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;

    .line 201
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;->task:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method protected final doStart()V
    .locals 2

    .line 246
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;->this$0:Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService;

    .line 248
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService;->executor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate$1;

    invoke-direct {v1, p0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate$1;-><init>(Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;)V

    .line 247
    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/util/concurrent/MoreExecutors;->renamingDecorator(Ljava/util/concurrent/ScheduledExecutorService;Lorg/checkerframework/com/google/common/base/Supplier;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 255
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate$2;

    invoke-direct {v1, p0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate$2;-><init>(Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 275
    return-void
.end method

.method protected final doStop()V
    .locals 2

    .line 279
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;->runningTask:Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 280
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate$3;

    invoke-direct {v1, p0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate$3;-><init>(Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 304
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 308
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;->this$0:Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractScheduledService;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
