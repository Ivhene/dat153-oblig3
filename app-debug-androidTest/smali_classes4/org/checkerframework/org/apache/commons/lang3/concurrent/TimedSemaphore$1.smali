.class Lorg/checkerframework/org/apache/commons/lang3/concurrent/TimedSemaphore$1;
.super Ljava/lang/Object;
.source "TimedSemaphore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/org/apache/commons/lang3/concurrent/TimedSemaphore;->startTimer()Ljava/util/concurrent/ScheduledFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/org/apache/commons/lang3/concurrent/TimedSemaphore;


# direct methods
.method constructor <init>(Lorg/checkerframework/org/apache/commons/lang3/concurrent/TimedSemaphore;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/org/apache/commons/lang3/concurrent/TimedSemaphore;

    .line 420
    iput-object p1, p0, Lorg/checkerframework/org/apache/commons/lang3/concurrent/TimedSemaphore$1;->this$0:Lorg/checkerframework/org/apache/commons/lang3/concurrent/TimedSemaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 423
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/lang3/concurrent/TimedSemaphore$1;->this$0:Lorg/checkerframework/org/apache/commons/lang3/concurrent/TimedSemaphore;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/lang3/concurrent/TimedSemaphore;->endOfPeriod()V

    .line 424
    return-void
.end method
