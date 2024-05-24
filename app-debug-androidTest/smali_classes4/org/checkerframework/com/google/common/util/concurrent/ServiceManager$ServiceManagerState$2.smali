.class Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState$2;
.super Ljava/lang/Object;
.source "ServiceManager.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue$Event;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->enqueueFailedEvent(Lorg/checkerframework/com/google/common/util/concurrent/Service;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue$Event<",
        "Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$Listener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;

.field final synthetic val$service:Lorg/checkerframework/com/google/common/util/concurrent/Service;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;Lorg/checkerframework/com/google/common/util/concurrent/Service;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    .line 746
    iput-object p1, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState$2;->this$0:Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    iput-object p2, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState$2;->val$service:Lorg/checkerframework/com/google/common/util/concurrent/Service;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 746
    check-cast p1, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$Listener;

    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState$2;->call(Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$Listener;)V

    return-void
.end method

.method public call(Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$Listener;)V
    .locals 1
    .param p1, "listener"    # Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$Listener;

    .line 749
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState$2;->val$service:Lorg/checkerframework/com/google/common/util/concurrent/Service;

    invoke-virtual {p1, v0}, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$Listener;->failure(Lorg/checkerframework/com/google/common/util/concurrent/Service;)V

    .line 750
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 754
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed({service="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState$2;->val$service:Lorg/checkerframework/com/google/common/util/concurrent/Service;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "})"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
