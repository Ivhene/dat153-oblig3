.class final Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$SafeAtomicHelper;
.super Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$AtomicHelper;
.source "AbstractFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SafeAtomicHelper"
.end annotation


# instance fields
.field final listenersUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture;",
            "Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$Listener;",
            ">;"
        }
    .end annotation
.end field

.field final valueUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final waiterNextUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$Waiter;",
            "Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$Waiter;",
            ">;"
        }
    .end annotation
.end field

.field final waiterThreadUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$Waiter;",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field final waitersUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture;",
            "Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$Waiter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$Waiter;",
            "Ljava/lang/Thread;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$Waiter;",
            "Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$Waiter;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture;",
            "Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$Waiter;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture;",
            "Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$Listener;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1262
    .local p1, "waiterThreadUpdater":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$Waiter;Ljava/lang/Thread;>;"
    .local p2, "waiterNextUpdater":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$Waiter;Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$Waiter;>;"
    .local p3, "waitersUpdater":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture;Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$Waiter;>;"
    .local p4, "listenersUpdater":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture;Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$Listener;>;"
    .local p5, "valueUpdater":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$AtomicHelper;-><init>(Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$1;)V

    .line 1263
    iput-object p1, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$SafeAtomicHelper;->waiterThreadUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 1264
    iput-object p2, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$SafeAtomicHelper;->waiterNextUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 1265
    iput-object p3, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$SafeAtomicHelper;->waitersUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 1266
    iput-object p4, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$SafeAtomicHelper;->listenersUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 1267
    iput-object p5, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$SafeAtomicHelper;->valueUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 1268
    return-void
.end method


# virtual methods
.method casListeners(Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture;Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$Listener;Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$Listener;)Z
    .locals 1
    .param p2, "expect"    # Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$Listener;
    .param p3, "update"    # Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$Listener;
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

    .line 1287
    .local p1, "future":Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture<*>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$SafeAtomicHelper;->listenersUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v0, p1, p2, p3}, Lcom/google/common/util/concurrent/AbstractFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method casValue(Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p2, "expect"    # Ljava/lang/Object;
    .param p3, "update"    # Ljava/lang/Object;
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

    .line 1292
    .local p1, "future":Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture<*>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$SafeAtomicHelper;->valueUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v0, p1, p2, p3}, Lcom/google/common/util/concurrent/AbstractFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method casWaiters(Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture;Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$Waiter;Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$Waiter;)Z
    .locals 1
    .param p2, "expect"    # Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$Waiter;
    .param p3, "update"    # Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$Waiter;
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

    .line 1282
    .local p1, "future":Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture;, "Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture<*>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$SafeAtomicHelper;->waitersUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v0, p1, p2, p3}, Lcom/google/common/util/concurrent/AbstractFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method putNext(Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$Waiter;Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$Waiter;)V
    .locals 1
    .param p1, "waiter"    # Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$Waiter;
    .param p2, "newValue"    # Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$Waiter;

    .line 1277
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$SafeAtomicHelper;->waiterNextUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1278
    return-void
.end method

.method putThread(Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$Waiter;Ljava/lang/Thread;)V
    .locals 1
    .param p1, "waiter"    # Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$Waiter;
    .param p2, "newValue"    # Ljava/lang/Thread;

    .line 1272
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture$SafeAtomicHelper;->waiterThreadUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1273
    return-void
.end method
