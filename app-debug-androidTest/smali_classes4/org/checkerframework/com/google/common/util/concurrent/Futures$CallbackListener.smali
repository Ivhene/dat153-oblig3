.class final Lorg/checkerframework/com/google/common/util/concurrent/Futures$CallbackListener;
.super Ljava/lang/Object;
.source "Futures.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/util/concurrent/Futures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CallbackListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final callback:Lorg/checkerframework/com/google/common/util/concurrent/FutureCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/util/concurrent/FutureCallback<",
            "-TV;>;"
        }
    .end annotation
.end field

.field final future:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Future;Lorg/checkerframework/com/google/common/util/concurrent/FutureCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "TV;>;",
            "Lorg/checkerframework/com/google/common/util/concurrent/FutureCallback<",
            "-TV;>;)V"
        }
    .end annotation

    .line 1004
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/Futures$CallbackListener;, "Lorg/checkerframework/com/google/common/util/concurrent/Futures$CallbackListener<TV;>;"
    .local p1, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TV;>;"
    .local p2, "callback":Lorg/checkerframework/com/google/common/util/concurrent/FutureCallback;, "Lorg/checkerframework/com/google/common/util/concurrent/FutureCallback<-TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1005
    iput-object p1, p0, Lorg/checkerframework/com/google/common/util/concurrent/Futures$CallbackListener;->future:Ljava/util/concurrent/Future;

    .line 1006
    iput-object p2, p0, Lorg/checkerframework/com/google/common/util/concurrent/Futures$CallbackListener;->callback:Lorg/checkerframework/com/google/common/util/concurrent/FutureCallback;

    .line 1007
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1013
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/Futures$CallbackListener;, "Lorg/checkerframework/com/google/common/util/concurrent/Futures$CallbackListener<TV;>;"
    :try_start_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/Futures$CallbackListener;->future:Ljava/util/concurrent/Future;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/util/concurrent/Futures;->getDone(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 1020
    .local v0, "value":Ljava/lang/Object;, "TV;"
    nop

    .line 1021
    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/Futures$CallbackListener;->callback:Lorg/checkerframework/com/google/common/util/concurrent/FutureCallback;

    invoke-interface {v1, v0}, Lorg/checkerframework/com/google/common/util/concurrent/FutureCallback;->onSuccess(Ljava/lang/Object;)V

    .line 1022
    return-void

    .line 1017
    .end local v0    # "value":Ljava/lang/Object;, "TV;"
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 1018
    .local v0, "e":Ljava/lang/Throwable;
    :goto_0
    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/Futures$CallbackListener;->callback:Lorg/checkerframework/com/google/common/util/concurrent/FutureCallback;

    invoke-interface {v1, v0}, Lorg/checkerframework/com/google/common/util/concurrent/FutureCallback;->onFailure(Ljava/lang/Throwable;)V

    .line 1019
    return-void

    .line 1014
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_2
    move-exception v0

    .line 1015
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/Futures$CallbackListener;->callback:Lorg/checkerframework/com/google/common/util/concurrent/FutureCallback;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/checkerframework/com/google/common/util/concurrent/FutureCallback;->onFailure(Ljava/lang/Throwable;)V

    .line 1016
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1026
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/Futures$CallbackListener;, "Lorg/checkerframework/com/google/common/util/concurrent/Futures$CallbackListener<TV;>;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/Futures$CallbackListener;->callback:Lorg/checkerframework/com/google/common/util/concurrent/FutureCallback;

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/base/MoreObjects$ToStringHelper;->addValue(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
