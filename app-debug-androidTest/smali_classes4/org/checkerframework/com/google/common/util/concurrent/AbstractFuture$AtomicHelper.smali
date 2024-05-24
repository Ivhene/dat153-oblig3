.class abstract Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$AtomicHelper;
.super Ljava/lang/Object;
.source "AbstractFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "AtomicHelper"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$1;

    .line 1149
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$AtomicHelper;-><init>()V

    return-void
.end method


# virtual methods
.method abstract casListeners(Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture;Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$Listener;Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$Listener;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture<",
            "*>;",
            "Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$Listener;",
            "Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$Listener;",
            ")Z"
        }
    .end annotation
.end method

.method abstract casValue(Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation
.end method

.method abstract casWaiters(Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture;Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$Waiter;Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$Waiter;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture<",
            "*>;",
            "Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$Waiter;",
            "Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$Waiter;",
            ")Z"
        }
    .end annotation
.end method

.method abstract putNext(Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$Waiter;Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$Waiter;)V
.end method

.method abstract putThread(Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$Waiter;Ljava/lang/Thread;)V
.end method
