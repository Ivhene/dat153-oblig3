.class final Lorg/checkerframework/com/google/common/util/concurrent/AbstractService$StateSnapshot;
.super Ljava/lang/Object;
.source "AbstractService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StateSnapshot"
.end annotation


# instance fields
.field final failure:Ljava/lang/Throwable;

.field final shutdownWhenStartupFinishes:Z

.field final state:Lorg/checkerframework/com/google/common/util/concurrent/Service$State;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/util/concurrent/Service$State;)V
    .locals 2
    .param p1, "internalState"    # Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    .line 581
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService$StateSnapshot;-><init>(Lorg/checkerframework/com/google/common/util/concurrent/Service$State;ZLjava/lang/Throwable;)V

    .line 582
    return-void
.end method

.method constructor <init>(Lorg/checkerframework/com/google/common/util/concurrent/Service$State;ZLjava/lang/Throwable;)V
    .locals 4
    .param p1, "internalState"    # Lorg/checkerframework/com/google/common/util/concurrent/Service$State;
    .param p2, "shutdownWhenStartupFinishes"    # Z
    .param p3, "failure"    # Ljava/lang/Throwable;

    .line 585
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 586
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    sget-object v2, Lorg/checkerframework/com/google/common/util/concurrent/Service$State;->STARTING:Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    const-string v3, "shutdownWhenStartupFinishes can only be set if state is STARTING. Got %s instead."

    invoke-static {v2, v3, p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 590
    if-eqz p3, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    move v2, v0

    :goto_2
    sget-object v3, Lorg/checkerframework/com/google/common/util/concurrent/Service$State;->FAILED:Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    if-ne p1, v3, :cond_3

    move v0, v1

    :cond_3
    xor-int/2addr v0, v2

    xor-int/2addr v0, v1

    const-string v1, "A failure cause should be set if and only if the state is failed.  Got %s and %s instead."

    invoke-static {v0, v1, p1, p3}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 596
    iput-object p1, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService$StateSnapshot;->state:Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    .line 597
    iput-boolean p2, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService$StateSnapshot;->shutdownWhenStartupFinishes:Z

    .line 598
    iput-object p3, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService$StateSnapshot;->failure:Ljava/lang/Throwable;

    .line 599
    return-void
.end method


# virtual methods
.method externalState()Lorg/checkerframework/com/google/common/util/concurrent/Service$State;
    .locals 2

    .line 603
    iget-boolean v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService$StateSnapshot;->shutdownWhenStartupFinishes:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService$StateSnapshot;->state:Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    sget-object v1, Lorg/checkerframework/com/google/common/util/concurrent/Service$State;->STARTING:Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    if-ne v0, v1, :cond_0

    .line 604
    sget-object v0, Lorg/checkerframework/com/google/common/util/concurrent/Service$State;->STOPPING:Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    return-object v0

    .line 606
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService$StateSnapshot;->state:Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    return-object v0
.end method

.method failureCause()Ljava/lang/Throwable;
    .locals 3

    .line 612
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService$StateSnapshot;->state:Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    sget-object v1, Lorg/checkerframework/com/google/common/util/concurrent/Service$State;->FAILED:Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "failureCause() is only valid if the service has failed, service is %s"

    iget-object v2, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService$StateSnapshot;->state:Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    invoke-static {v0, v1, v2}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 616
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService$StateSnapshot;->failure:Ljava/lang/Throwable;

    return-object v0
.end method