.class final Lorg/checkerframework/com/google/common/util/concurrent/Futures$3;
.super Ljava/lang/Object;
.source "Futures.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/util/concurrent/Futures;->inCompletionOrder(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$delegates:Lorg/checkerframework/com/google/common/collect/ImmutableList;

.field final synthetic val$localI:I

.field final synthetic val$state:Lorg/checkerframework/com/google/common/util/concurrent/Futures$InCompletionOrderState;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/util/concurrent/Futures$InCompletionOrderState;Lorg/checkerframework/com/google/common/collect/ImmutableList;I)V
    .locals 0

    .line 843
    iput-object p1, p0, Lorg/checkerframework/com/google/common/util/concurrent/Futures$3;->val$state:Lorg/checkerframework/com/google/common/util/concurrent/Futures$InCompletionOrderState;

    iput-object p2, p0, Lorg/checkerframework/com/google/common/util/concurrent/Futures$3;->val$delegates:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    iput p3, p0, Lorg/checkerframework/com/google/common/util/concurrent/Futures$3;->val$localI:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 846
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/Futures$3;->val$state:Lorg/checkerframework/com/google/common/util/concurrent/Futures$InCompletionOrderState;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/Futures$3;->val$delegates:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    iget v2, p0, Lorg/checkerframework/com/google/common/util/concurrent/Futures$3;->val$localI:I

    invoke-static {v0, v1, v2}, Lorg/checkerframework/com/google/common/util/concurrent/Futures$InCompletionOrderState;->access$300(Lorg/checkerframework/com/google/common/util/concurrent/Futures$InCompletionOrderState;Lorg/checkerframework/com/google/common/collect/ImmutableList;I)V

    .line 847
    return-void
.end method
