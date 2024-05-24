.class final Lorg/checkerframework/com/google/common/util/concurrent/AbstractService$IsStoppedGuard;
.super Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;
.source "AbstractService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "IsStoppedGuard"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService$IsStoppedGuard;->this$0:Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;

    .line 168
    invoke-static {p1}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->access$000(Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;)Lorg/checkerframework/com/google/common/util/concurrent/Monitor;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;-><init>(Lorg/checkerframework/com/google/common/util/concurrent/Monitor;)V

    .line 169
    return-void
.end method


# virtual methods
.method public isSatisfied()Z
    .locals 1

    .line 173
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService$IsStoppedGuard;->this$0:Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractService;->state()Lorg/checkerframework/com/google/common/util/concurrent/Service$State;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/util/concurrent/Service$State;->isTerminal()Z

    move-result v0

    return v0
.end method
