.class final Lorg/checkerframework/com/google/common/util/concurrent/AbstractService$3;
.super Ljava/lang/Object;
.source "AbstractService.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue$Event;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->terminatedEvent(Lorg/checkerframework/com/google/common/util/concurrent/Service$State;)Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue$Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
.field final synthetic val$from:Lorg/checkerframework/com/google/common/util/concurrent/Service$State;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/util/concurrent/Service$State;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService$3;->val$from:Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 92
    check-cast p1, Lorg/checkerframework/com/google/common/util/concurrent/Service$Listener;

    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService$3;->call(Lorg/checkerframework/com/google/common/util/concurrent/Service$Listener;)V

    return-void
.end method

.method public call(Lorg/checkerframework/com/google/common/util/concurrent/Service$Listener;)V
    .locals 1
    .param p1, "listener"    # Lorg/checkerframework/com/google/common/util/concurrent/Service$Listener;

    .line 95
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService$3;->val$from:Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    invoke-virtual {p1, v0}, Lorg/checkerframework/com/google/common/util/concurrent/Service$Listener;->terminated(Lorg/checkerframework/com/google/common/util/concurrent/Service$State;)V

    .line 96
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "terminated({from = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService$3;->val$from:Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "})"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
