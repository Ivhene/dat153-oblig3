.class final Lorg/checkerframework/com/google/common/eventbus/Dispatcher$ImmediateDispatcher;
.super Lorg/checkerframework/com/google/common/eventbus/Dispatcher;
.source "Dispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/eventbus/Dispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ImmediateDispatcher"
.end annotation


# static fields
.field private static final INSTANCE:Lorg/checkerframework/com/google/common/eventbus/Dispatcher$ImmediateDispatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 180
    new-instance v0, Lorg/checkerframework/com/google/common/eventbus/Dispatcher$ImmediateDispatcher;

    invoke-direct {v0}, Lorg/checkerframework/com/google/common/eventbus/Dispatcher$ImmediateDispatcher;-><init>()V

    sput-object v0, Lorg/checkerframework/com/google/common/eventbus/Dispatcher$ImmediateDispatcher;->INSTANCE:Lorg/checkerframework/com/google/common/eventbus/Dispatcher$ImmediateDispatcher;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 179
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/eventbus/Dispatcher;-><init>()V

    return-void
.end method

.method static synthetic access$200()Lorg/checkerframework/com/google/common/eventbus/Dispatcher$ImmediateDispatcher;
    .locals 1

    .line 179
    sget-object v0, Lorg/checkerframework/com/google/common/eventbus/Dispatcher$ImmediateDispatcher;->INSTANCE:Lorg/checkerframework/com/google/common/eventbus/Dispatcher$ImmediateDispatcher;

    return-object v0
.end method


# virtual methods
.method dispatch(Ljava/lang/Object;Ljava/util/Iterator;)V
    .locals 1
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

    .line 184
    .local p2, "subscribers":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/checkerframework/com/google/common/eventbus/Subscriber;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/eventbus/Subscriber;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/eventbus/Subscriber;->dispatchEvent(Ljava/lang/Object;)V

    goto :goto_0

    .line 188
    :cond_0
    return-void
.end method
