.class final Lorg/checkerframework/com/google/common/util/concurrent/AggregateFutureState$SafeAtomicHelper;
.super Lorg/checkerframework/com/google/common/util/concurrent/AggregateFutureState$AtomicHelper;
.source "AggregateFutureState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/util/concurrent/AggregateFutureState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SafeAtomicHelper"
.end annotation


# instance fields
.field final remainingCountUpdater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<",
            "Lorg/checkerframework/com/google/common/util/concurrent/AggregateFutureState;",
            ">;"
        }
    .end annotation
.end field

.field final seenExceptionsUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lorg/checkerframework/com/google/common/util/concurrent/AggregateFutureState;",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;)V
    .locals 1
    .param p1, "seenExceptionsUpdater"    # Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .param p2, "remainingCountUpdater"    # Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 141
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/checkerframework/com/google/common/util/concurrent/AggregateFutureState$AtomicHelper;-><init>(Lorg/checkerframework/com/google/common/util/concurrent/AggregateFutureState$1;)V

    .line 142
    iput-object p1, p0, Lorg/checkerframework/com/google/common/util/concurrent/AggregateFutureState$SafeAtomicHelper;->seenExceptionsUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 143
    iput-object p2, p0, Lorg/checkerframework/com/google/common/util/concurrent/AggregateFutureState$SafeAtomicHelper;->remainingCountUpdater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 144
    return-void
.end method


# virtual methods
.method compareAndSetSeenExceptions(Lorg/checkerframework/com/google/common/util/concurrent/AggregateFutureState;Ljava/util/Set;Ljava/util/Set;)V
    .locals 1
    .param p1, "state"    # Lorg/checkerframework/com/google/common/util/concurrent/AggregateFutureState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/util/concurrent/AggregateFutureState;",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 149
    .local p2, "expect":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Throwable;>;"
    .local p3, "update":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Throwable;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AggregateFutureState$SafeAtomicHelper;->seenExceptionsUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v0, p1, p2, p3}, Lcom/google/common/util/concurrent/AbstractFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 150
    return-void
.end method

.method decrementAndGetRemainingCount(Lorg/checkerframework/com/google/common/util/concurrent/AggregateFutureState;)I
    .locals 1
    .param p1, "state"    # Lorg/checkerframework/com/google/common/util/concurrent/AggregateFutureState;

    .line 154
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AggregateFutureState$SafeAtomicHelper;->remainingCountUpdater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
