.class public Lorg/checkerframework/com/google/common/eventbus/AsyncEventBus;
.super Lorg/checkerframework/com/google/common/eventbus/EventBus;
.source "AsyncEventBus.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "identifier"    # Ljava/lang/String;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 39
    invoke-static {}, Lorg/checkerframework/com/google/common/eventbus/Dispatcher;->legacyAsync()Lorg/checkerframework/com/google/common/eventbus/Dispatcher;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/com/google/common/eventbus/EventBus$LoggingHandler;->INSTANCE:Lorg/checkerframework/com/google/common/eventbus/EventBus$LoggingHandler;

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/checkerframework/com/google/common/eventbus/EventBus;-><init>(Ljava/lang/String;Ljava/util/concurrent/Executor;Lorg/checkerframework/com/google/common/eventbus/Dispatcher;Lorg/checkerframework/com/google/common/eventbus/SubscriberExceptionHandler;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 62
    invoke-static {}, Lorg/checkerframework/com/google/common/eventbus/Dispatcher;->legacyAsync()Lorg/checkerframework/com/google/common/eventbus/Dispatcher;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/com/google/common/eventbus/EventBus$LoggingHandler;->INSTANCE:Lorg/checkerframework/com/google/common/eventbus/EventBus$LoggingHandler;

    const-string v2, "default"

    invoke-direct {p0, v2, p1, v0, v1}, Lorg/checkerframework/com/google/common/eventbus/EventBus;-><init>(Ljava/lang/String;Ljava/util/concurrent/Executor;Lorg/checkerframework/com/google/common/eventbus/Dispatcher;Lorg/checkerframework/com/google/common/eventbus/SubscriberExceptionHandler;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lorg/checkerframework/com/google/common/eventbus/SubscriberExceptionHandler;)V
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "subscriberExceptionHandler"    # Lorg/checkerframework/com/google/common/eventbus/SubscriberExceptionHandler;

    .line 52
    const-string v0, "default"

    invoke-static {}, Lorg/checkerframework/com/google/common/eventbus/Dispatcher;->legacyAsync()Lorg/checkerframework/com/google/common/eventbus/Dispatcher;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1, p2}, Lorg/checkerframework/com/google/common/eventbus/EventBus;-><init>(Ljava/lang/String;Ljava/util/concurrent/Executor;Lorg/checkerframework/com/google/common/eventbus/Dispatcher;Lorg/checkerframework/com/google/common/eventbus/SubscriberExceptionHandler;)V

    .line 53
    return-void
.end method
