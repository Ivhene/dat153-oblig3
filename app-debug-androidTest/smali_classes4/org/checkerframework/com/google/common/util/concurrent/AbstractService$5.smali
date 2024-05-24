.class Lorg/checkerframework/com/google/common/util/concurrent/AbstractService$5;
.super Ljava/lang/Object;
.source "AbstractService.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue$Event;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->enqueueFailedEvent(Lorg/checkerframework/com/google/common/util/concurrent/Service$State;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue$Event<",
        "Lorg/checkerframework/com/google/common/util/concurrent/Service$Listener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;

.field final synthetic val$cause:Ljava/lang/Throwable;

.field final synthetic val$from:Lorg/checkerframework/com/google/common/util/concurrent/Service$State;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;Lorg/checkerframework/com/google/common/util/concurrent/Service$State;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;

    .line 546
    iput-object p1, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService$5;->this$0:Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;

    iput-object p2, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService$5;->val$from:Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    iput-object p3, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService$5;->val$cause:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 546
    check-cast p1, Lorg/checkerframework/com/google/common/util/concurrent/Service$Listener;

    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService$5;->call(Lorg/checkerframework/com/google/common/util/concurrent/Service$Listener;)V

    return-void
.end method

.method public call(Lorg/checkerframework/com/google/common/util/concurrent/Service$Listener;)V
    .locals 2
    .param p1, "listener"    # Lorg/checkerframework/com/google/common/util/concurrent/Service$Listener;

    .line 549
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService$5;->val$from:Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService$5;->val$cause:Ljava/lang/Throwable;

    invoke-virtual {p1, v0, v1}, Lorg/checkerframework/com/google/common/util/concurrent/Service$Listener;->failed(Lorg/checkerframework/com/google/common/util/concurrent/Service$State;Ljava/lang/Throwable;)V

    .line 550
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed({from = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService$5;->val$from:Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cause = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService$5;->val$cause:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "})"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
