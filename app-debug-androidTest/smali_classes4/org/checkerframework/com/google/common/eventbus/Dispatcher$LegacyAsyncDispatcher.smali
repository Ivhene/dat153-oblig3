.class final Lorg/checkerframework/com/google/common/eventbus/Dispatcher$LegacyAsyncDispatcher;
.super Lorg/checkerframework/com/google/common/eventbus/Dispatcher;
.source "Dispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/eventbus/Dispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LegacyAsyncDispatcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/google/common/eventbus/Dispatcher$LegacyAsyncDispatcher$EventWithSubscriber;
    }
.end annotation


# instance fields
.field private final queue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lorg/checkerframework/com/google/common/eventbus/Dispatcher$LegacyAsyncDispatcher$EventWithSubscriber;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 130
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/eventbus/Dispatcher;-><init>()V

    .line 151
    nop

    .line 152
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Queues;->newConcurrentLinkedQueue()Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/eventbus/Dispatcher$LegacyAsyncDispatcher;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 151
    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/com/google/common/eventbus/Dispatcher$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/com/google/common/eventbus/Dispatcher$1;

    .line 130
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/eventbus/Dispatcher$LegacyAsyncDispatcher;-><init>()V

    return-void
.end method


# virtual methods
.method dispatch(Ljava/lang/Object;Ljava/util/Iterator;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Iterator<",
            "Lorg/checkerframework/com/google/common/eventbus/Subscriber;",
            ">;)V"
        }
    .end annotation

    .line 156
    .local p2, "subscribers":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/checkerframework/com/google/common/eventbus/Subscriber;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lorg/checkerframework/com/google/common/eventbus/Dispatcher$LegacyAsyncDispatcher;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Lorg/checkerframework/com/google/common/eventbus/Dispatcher$LegacyAsyncDispatcher$EventWithSubscriber;

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/google/common/eventbus/Subscriber;

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Lorg/checkerframework/com/google/common/eventbus/Dispatcher$LegacyAsyncDispatcher$EventWithSubscriber;-><init>(Ljava/lang/Object;Lorg/checkerframework/com/google/common/eventbus/Subscriber;Lorg/checkerframework/com/google/common/eventbus/Dispatcher$1;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 162
    :cond_0
    :goto_1
    iget-object v0, p0, Lorg/checkerframework/com/google/common/eventbus/Dispatcher$LegacyAsyncDispatcher;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/eventbus/Dispatcher$LegacyAsyncDispatcher$EventWithSubscriber;

    move-object v1, v0

    .local v1, "e":Lorg/checkerframework/com/google/common/eventbus/Dispatcher$LegacyAsyncDispatcher$EventWithSubscriber;
    if-eqz v0, :cond_1

    .line 163
    invoke-static {v1}, Lorg/checkerframework/com/google/common/eventbus/Dispatcher$LegacyAsyncDispatcher$EventWithSubscriber;->access$800(Lorg/checkerframework/com/google/common/eventbus/Dispatcher$LegacyAsyncDispatcher$EventWithSubscriber;)Lorg/checkerframework/com/google/common/eventbus/Subscriber;

    move-result-object v0

    invoke-static {v1}, Lorg/checkerframework/com/google/common/eventbus/Dispatcher$LegacyAsyncDispatcher$EventWithSubscriber;->access$700(Lorg/checkerframework/com/google/common/eventbus/Dispatcher$LegacyAsyncDispatcher$EventWithSubscriber;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/checkerframework/com/google/common/eventbus/Subscriber;->dispatchEvent(Ljava/lang/Object;)V

    goto :goto_1

    .line 165
    :cond_1
    return-void
.end method
