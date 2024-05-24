.class abstract Lorg/checkerframework/com/google/common/util/concurrent/AggregateFutureState$AtomicHelper;
.super Ljava/lang/Object;
.source "AggregateFutureState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/util/concurrent/AggregateFutureState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "AtomicHelper"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/com/google/common/util/concurrent/AggregateFutureState$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/com/google/common/util/concurrent/AggregateFutureState$1;

    .line 125
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/util/concurrent/AggregateFutureState$AtomicHelper;-><init>()V

    return-void
.end method


# virtual methods
.method abstract compareAndSetSeenExceptions(Lorg/checkerframework/com/google/common/util/concurrent/AggregateFutureState;Ljava/util/Set;Ljava/util/Set;)V
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
.end method

.method abstract decrementAndGetRemainingCount(Lorg/checkerframework/com/google/common/util/concurrent/AggregateFutureState;)I
.end method
