.class Lorg/checkerframework/com/google/common/util/concurrent/Monitor$1;
.super Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;
.source "Monitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/util/concurrent/Monitor;->newGuard(Ljava/util/function/BooleanSupplier;)Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/util/concurrent/Monitor;

.field final synthetic val$isSatisfied:Ljava/util/function/BooleanSupplier;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/util/concurrent/Monitor;Lorg/checkerframework/com/google/common/util/concurrent/Monitor;Ljava/util/function/BooleanSupplier;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/util/concurrent/Monitor;
    .param p2, "monitor"    # Lorg/checkerframework/com/google/common/util/concurrent/Monitor;

    .line 373
    iput-object p1, p0, Lorg/checkerframework/com/google/common/util/concurrent/Monitor$1;->this$0:Lorg/checkerframework/com/google/common/util/concurrent/Monitor;

    iput-object p3, p0, Lorg/checkerframework/com/google/common/util/concurrent/Monitor$1;->val$isSatisfied:Ljava/util/function/BooleanSupplier;

    invoke-direct {p0, p2}, Lorg/checkerframework/com/google/common/util/concurrent/Monitor$Guard;-><init>(Lorg/checkerframework/com/google/common/util/concurrent/Monitor;)V

    return-void
.end method


# virtual methods
.method public isSatisfied()Z
    .locals 1

    .line 376
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/Monitor$1;->val$isSatisfied:Ljava/util/function/BooleanSupplier;

    invoke-interface {v0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v0

    return v0
.end method
