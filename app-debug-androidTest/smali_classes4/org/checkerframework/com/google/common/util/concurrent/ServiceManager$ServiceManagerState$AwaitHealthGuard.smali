.class final Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState$AwaitHealthGuard;
.super Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;
.source "ServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AwaitHealthGuard"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;)V
    .locals 1
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    .line 489
    iput-object p1, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState$AwaitHealthGuard;->this$0:Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    .line 490
    iget-object v0, p1, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lorg/checkerframework/com/google/common/util/concurrent/Monitor;

    invoke-direct {p0, v0}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;-><init>(Lorg/checkerframework/com/google/common/util/concurrent/Monitor;)V

    .line 491
    return-void
.end method


# virtual methods
.method public isSatisfied()Z
    .locals 2

    .line 497
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState$AwaitHealthGuard;->this$0:Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    iget-object v0, v0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->states:Lorg/checkerframework/com/google/common/collect/Multiset;

    sget-object v1, Lorg/checkerframework/com/google/common/util/concurrent/Service$State;->RUNNING:Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    invoke-interface {v0, v1}, Lorg/checkerframework/com/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState$AwaitHealthGuard;->this$0:Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    iget v1, v1, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->numberOfServices:I

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState$AwaitHealthGuard;->this$0:Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    iget-object v0, v0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->states:Lorg/checkerframework/com/google/common/collect/Multiset;

    sget-object v1, Lorg/checkerframework/com/google/common/util/concurrent/Service$State;->STOPPING:Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    .line 498
    invoke-interface {v0, v1}, Lorg/checkerframework/com/google/common/collect/Multiset;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState$AwaitHealthGuard;->this$0:Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    iget-object v0, v0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->states:Lorg/checkerframework/com/google/common/collect/Multiset;

    sget-object v1, Lorg/checkerframework/com/google/common/util/concurrent/Service$State;->TERMINATED:Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    .line 499
    invoke-interface {v0, v1}, Lorg/checkerframework/com/google/common/collect/Multiset;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState$AwaitHealthGuard;->this$0:Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    iget-object v0, v0, Lorg/checkerframework/com/google/common/util/concurrent/ServiceManager$ServiceManagerState;->states:Lorg/checkerframework/com/google/common/collect/Multiset;

    sget-object v1, Lorg/checkerframework/com/google/common/util/concurrent/Service$State;->FAILED:Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    .line 500
    invoke-interface {v0, v1}, Lorg/checkerframework/com/google/common/collect/Multiset;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 497
    :goto_1
    return v0
.end method
