.class final Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$1;
.super Ljava/lang/Object;
.source "ServiceManager.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/util/concurrent/ListenerCallQueue$Event;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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


# direct methods
.method constructor <init>()V
    .locals 0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 129
    check-cast p1, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$Listener;

    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$1;->call(Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$Listener;)V

    return-void
.end method

.method public call(Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$Listener;)V
    .locals 0
    .param p1, "listener"    # Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$Listener;

    .line 132
    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$Listener;->healthy()V

    .line 133
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 137
    const-string v0, "healthy()"

    return-object v0
.end method
