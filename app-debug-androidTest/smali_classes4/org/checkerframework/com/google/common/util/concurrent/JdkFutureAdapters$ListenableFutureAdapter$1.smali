.class Lorg/checkerframework/com/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter$1;
.super Ljava/lang/Object;
.source "JdkFutureAdapters.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter;

    .line 149
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter$1;, "Lorg/checkerframework/com/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter$1;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter$1;->this$0:Lorg/checkerframework/com/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 158
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter$1;, "Lorg/checkerframework/com/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter$1;"
    :try_start_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter$1;->this$0:Lorg/checkerframework/com/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter;->access$000(Lorg/checkerframework/com/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/util/concurrent/Uninterruptibles;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    goto :goto_0

    .line 159
    :catchall_0
    move-exception v0

    .line 163
    :goto_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter$1;->this$0:Lorg/checkerframework/com/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter;->access$100(Lorg/checkerframework/com/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter;)Lorg/checkerframework/com/google/common/util/concurrent/ExecutionList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/util/concurrent/ExecutionList;->execute()V

    .line 164
    return-void
.end method
