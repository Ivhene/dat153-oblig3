.class Lcom/android/dx/command/dexer/Main$ClassDefItemConsumer;
.super Ljava/lang/Object;
.source "Main.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dx/command/dexer/Main;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClassDefItemConsumer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field futureClazz:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Lcom/android/dx/dex/file/ClassDefItem;",
            ">;"
        }
    .end annotation
.end field

.field maxFieldIdsInClass:I

.field maxMethodIdsInClass:I

.field name:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/dx/command/dexer/Main;


# direct methods
.method private constructor <init>(Lcom/android/dx/command/dexer/Main;Ljava/lang/String;Ljava/util/concurrent/Future;II)V
    .locals 0
    .param p2, "name"    # Ljava/lang/String;
    .param p4, "maxMethodIdsInClass"    # I
    .param p5, "maxFieldIdsInClass"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Future<",
            "Lcom/android/dx/dex/file/ClassDefItem;",
            ">;II)V"
        }
    .end annotation

    .line 1921
    .local p3, "futureClazz":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lcom/android/dx/dex/file/ClassDefItem;>;"
    iput-object p1, p0, Lcom/android/dx/command/dexer/Main$ClassDefItemConsumer;->this$0:Lcom/android/dx/command/dexer/Main;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1922
    iput-object p2, p0, Lcom/android/dx/command/dexer/Main$ClassDefItemConsumer;->name:Ljava/lang/String;

    .line 1923
    iput-object p3, p0, Lcom/android/dx/command/dexer/Main$ClassDefItemConsumer;->futureClazz:Ljava/util/concurrent/Future;

    .line 1924
    iput p4, p0, Lcom/android/dx/command/dexer/Main$ClassDefItemConsumer;->maxMethodIdsInClass:I

    .line 1925
    iput p5, p0, Lcom/android/dx/command/dexer/Main$ClassDefItemConsumer;->maxFieldIdsInClass:I

    .line 1926
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dx/command/dexer/Main;Ljava/lang/String;Ljava/util/concurrent/Future;IILcom/android/dx/command/dexer/Main$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/dx/command/dexer/Main;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/util/concurrent/Future;
    .param p4, "x3"    # I
    .param p5, "x4"    # I
    .param p6, "x5"    # Lcom/android/dx/command/dexer/Main$1;

    .line 1913
    invoke-direct/range {p0 .. p5}, Lcom/android/dx/command/dexer/Main$ClassDefItemConsumer;-><init>(Lcom/android/dx/command/dexer/Main;Ljava/lang/String;Ljava/util/concurrent/Future;II)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1931
    :try_start_0
    iget-object v0, p0, Lcom/android/dx/command/dexer/Main$ClassDefItemConsumer;->futureClazz:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/dex/file/ClassDefItem;

    .line 1932
    .local v0, "clazz":Lcom/android/dx/dex/file/ClassDefItem;
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1933
    iget-object v2, p0, Lcom/android/dx/command/dexer/Main$ClassDefItemConsumer;->this$0:Lcom/android/dx/command/dexer/Main;

    invoke-static {v2, v0}, Lcom/android/dx/command/dexer/Main;->access$2800(Lcom/android/dx/command/dexer/Main;Lcom/android/dx/dex/file/ClassDefItem;)Z

    .line 1934
    iget-object v2, p0, Lcom/android/dx/command/dexer/Main$ClassDefItemConsumer;->this$0:Lcom/android/dx/command/dexer/Main;

    invoke-static {v2, v1}, Lcom/android/dx/command/dexer/Main;->access$2900(Lcom/android/dx/command/dexer/Main;Z)V

    .line 1936
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1944
    iget-object v2, p0, Lcom/android/dx/command/dexer/Main$ClassDefItemConsumer;->this$0:Lcom/android/dx/command/dexer/Main;

    invoke-static {v2}, Lcom/android/dx/command/dexer/Main;->access$1400(Lcom/android/dx/command/dexer/Main;)Lcom/android/dx/command/dexer/Main$Arguments;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/dx/command/dexer/Main$Arguments;->multiDex:Z

    if-eqz v2, :cond_1

    .line 1950
    iget-object v2, p0, Lcom/android/dx/command/dexer/Main$ClassDefItemConsumer;->this$0:Lcom/android/dx/command/dexer/Main;

    invoke-static {v2}, Lcom/android/dx/command/dexer/Main;->access$1700(Lcom/android/dx/command/dexer/Main;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1951
    :try_start_1
    iget-object v3, p0, Lcom/android/dx/command/dexer/Main$ClassDefItemConsumer;->this$0:Lcom/android/dx/command/dexer/Main;

    invoke-static {v3}, Lcom/android/dx/command/dexer/Main;->access$1900(Lcom/android/dx/command/dexer/Main;)I

    move-result v4

    iget v5, p0, Lcom/android/dx/command/dexer/Main$ClassDefItemConsumer;->maxMethodIdsInClass:I

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Lcom/android/dx/command/dexer/Main;->access$1902(Lcom/android/dx/command/dexer/Main;I)I

    .line 1952
    iget-object v3, p0, Lcom/android/dx/command/dexer/Main$ClassDefItemConsumer;->this$0:Lcom/android/dx/command/dexer/Main;

    invoke-static {v3}, Lcom/android/dx/command/dexer/Main;->access$2000(Lcom/android/dx/command/dexer/Main;)I

    move-result v4

    iget v5, p0, Lcom/android/dx/command/dexer/Main$ClassDefItemConsumer;->maxFieldIdsInClass:I

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Lcom/android/dx/command/dexer/Main;->access$2002(Lcom/android/dx/command/dexer/Main;I)I

    .line 1953
    iget-object v3, p0, Lcom/android/dx/command/dexer/Main$ClassDefItemConsumer;->this$0:Lcom/android/dx/command/dexer/Main;

    invoke-static {v3}, Lcom/android/dx/command/dexer/Main;->access$1700(Lcom/android/dx/command/dexer/Main;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 1954
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1936
    :cond_1
    :goto_0
    return-object v1

    .line 1944
    .end local v0    # "clazz":Lcom/android/dx/dex/file/ClassDefItem;
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 1937
    :catch_0
    move-exception v0

    .line 1941
    .local v0, "ex":Ljava/util/concurrent/ExecutionException;
    :try_start_2
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 1942
    .local v1, "t":Ljava/lang/Throwable;
    instance-of v2, v1, Ljava/lang/Exception;

    if-eqz v2, :cond_2

    move-object v2, v1

    check-cast v2, Ljava/lang/Exception;

    goto :goto_1

    :cond_2
    move-object v2, v0

    :goto_1
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1944
    .end local v0    # "ex":Ljava/util/concurrent/ExecutionException;
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_2
    iget-object v1, p0, Lcom/android/dx/command/dexer/Main$ClassDefItemConsumer;->this$0:Lcom/android/dx/command/dexer/Main;

    invoke-static {v1}, Lcom/android/dx/command/dexer/Main;->access$1400(Lcom/android/dx/command/dexer/Main;)Lcom/android/dx/command/dexer/Main$Arguments;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/dx/command/dexer/Main$Arguments;->multiDex:Z

    if-eqz v1, :cond_3

    .line 1950
    iget-object v1, p0, Lcom/android/dx/command/dexer/Main$ClassDefItemConsumer;->this$0:Lcom/android/dx/command/dexer/Main;

    invoke-static {v1}, Lcom/android/dx/command/dexer/Main;->access$1700(Lcom/android/dx/command/dexer/Main;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1951
    :try_start_3
    iget-object v2, p0, Lcom/android/dx/command/dexer/Main$ClassDefItemConsumer;->this$0:Lcom/android/dx/command/dexer/Main;

    invoke-static {v2}, Lcom/android/dx/command/dexer/Main;->access$1900(Lcom/android/dx/command/dexer/Main;)I

    move-result v3

    iget v4, p0, Lcom/android/dx/command/dexer/Main$ClassDefItemConsumer;->maxMethodIdsInClass:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Lcom/android/dx/command/dexer/Main;->access$1902(Lcom/android/dx/command/dexer/Main;I)I

    .line 1952
    iget-object v2, p0, Lcom/android/dx/command/dexer/Main$ClassDefItemConsumer;->this$0:Lcom/android/dx/command/dexer/Main;

    invoke-static {v2}, Lcom/android/dx/command/dexer/Main;->access$2000(Lcom/android/dx/command/dexer/Main;)I

    move-result v3

    iget v4, p0, Lcom/android/dx/command/dexer/Main$ClassDefItemConsumer;->maxFieldIdsInClass:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Lcom/android/dx/command/dexer/Main;->access$2002(Lcom/android/dx/command/dexer/Main;I)I

    .line 1953
    iget-object v2, p0, Lcom/android/dx/command/dexer/Main$ClassDefItemConsumer;->this$0:Lcom/android/dx/command/dexer/Main;

    invoke-static {v2}, Lcom/android/dx/command/dexer/Main;->access$1700(Lcom/android/dx/command/dexer/Main;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 1954
    monitor-exit v1

    goto :goto_3

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :cond_3
    :goto_3
    throw v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1913
    invoke-virtual {p0}, Lcom/android/dx/command/dexer/Main$ClassDefItemConsumer;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
