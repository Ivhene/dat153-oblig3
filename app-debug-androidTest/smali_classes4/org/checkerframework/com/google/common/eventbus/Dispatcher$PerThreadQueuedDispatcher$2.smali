.class Lorg/checkerframework/com/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher$2;
.super Ljava/lang/ThreadLocal;
.source "Dispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher;

    .line 88
    iput-object p1, p0, Lorg/checkerframework/com/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher$2;->this$0:Lorg/checkerframework/com/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Ljava/lang/Boolean;
    .locals 1

    .line 91
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .line 88
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher$2;->initialValue()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
