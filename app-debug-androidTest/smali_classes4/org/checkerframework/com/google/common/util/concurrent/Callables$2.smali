.class final Lorg/checkerframework/com/google/common/util/concurrent/Callables$2;
.super Ljava/lang/Object;
.source "Callables.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/util/concurrent/AsyncCallable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/util/concurrent/Callables;->asAsyncCallable(Ljava/util/concurrent/Callable;Lorg/checkerframework/com/google/common/util/concurrent/ListeningExecutorService;)Lorg/checkerframework/com/google/common/util/concurrent/AsyncCallable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/checkerframework/com/google/common/util/concurrent/AsyncCallable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$callable:Ljava/util/concurrent/Callable;

.field final synthetic val$listeningExecutorService:Lorg/checkerframework/com/google/common/util/concurrent/ListeningExecutorService;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/util/concurrent/ListeningExecutorService;Ljava/util/concurrent/Callable;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lorg/checkerframework/com/google/common/util/concurrent/Callables$2;->val$listeningExecutorService:Lorg/checkerframework/com/google/common/util/concurrent/ListeningExecutorService;

    iput-object p2, p0, Lorg/checkerframework/com/google/common/util/concurrent/Callables$2;->val$callable:Ljava/util/concurrent/Callable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/Callables$2;->val$listeningExecutorService:Lorg/checkerframework/com/google/common/util/concurrent/ListeningExecutorService;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/Callables$2;->val$callable:Ljava/util/concurrent/Callable;

    invoke-interface {v0, v1}, Lorg/checkerframework/com/google/common/util/concurrent/ListeningExecutorService;->submit(Ljava/util/concurrent/Callable;)Lorg/checkerframework/com/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
