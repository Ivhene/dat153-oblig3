.class abstract Lorg/checkerframework/com/google/common/eventbus/Dispatcher;
.super Ljava/lang/Object;
.source "Dispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/google/common/eventbus/Dispatcher$ImmediateDispatcher;,
        Lorg/checkerframework/com/google/common/eventbus/Dispatcher$LegacyAsyncDispatcher;,
        Lorg/checkerframework/com/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static immediate()Lorg/checkerframework/com/google/common/eventbus/Dispatcher;
    .locals 1

    .line 66
    invoke-static {}, Lorg/checkerframework/com/google/common/eventbus/Dispatcher$ImmediateDispatcher;->access$200()Lorg/checkerframework/com/google/common/eventbus/Dispatcher$ImmediateDispatcher;

    move-result-object v0

    return-object v0
.end method

.method static legacyAsync()Lorg/checkerframework/com/google/common/eventbus/Dispatcher;
    .locals 2

    .line 57
    new-instance v0, Lorg/checkerframework/com/google/common/eventbus/Dispatcher$LegacyAsyncDispatcher;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/eventbus/Dispatcher$LegacyAsyncDispatcher;-><init>(Lorg/checkerframework/com/google/common/eventbus/Dispatcher$1;)V

    return-object v0
.end method

.method static perThreadDispatchQueue()Lorg/checkerframework/com/google/common/eventbus/Dispatcher;
    .locals 2

    .line 47
    new-instance v0, Lorg/checkerframework/com/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher;-><init>(Lorg/checkerframework/com/google/common/eventbus/Dispatcher$1;)V

    return-object v0
.end method


# virtual methods
.method abstract dispatch(Ljava/lang/Object;Ljava/util/Iterator;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Iterator<",
            "Lorg/checkerframework/com/google/common/eventbus/Subscriber;",
            ">;)V"
        }
    .end annotation
.end method
